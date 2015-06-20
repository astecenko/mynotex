// ***********************************************************************
// ***********************************************************************
// MyNotex 1.3
// Author and copyright: Massimo Nardello, Modena (Italy) 2010-2015.
// Free software released under GPL licence version 3 or later.

// In this software is used DBZVDateTimePicker component
// (http://wiki.freepascal.org/ZVDateTimeControls_Package#TDBZVDateTimePicker),
// a modified version of RichMemo component
// (http://wiki.lazarus.freepascal.org/RichMemo) and Dcpcrypt
// component (http://wiki.lazarus.freepascal.org/DCPcrypt).
// The source code of the modified version of RichMemo is available in
// the website of MyNotex.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. You can read the version 3
// of the Licence in http://www.gnu.org/licenses/gpl-3.0.txt
// or in the file Licence.txt included in the files of the
// source code of this software.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
// ***********************************************************************
// ***********************************************************************

unit UnitCopyright;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, LCLIntf;

type

  { TfmCopyright }

  TfmCopyright = class(TForm)
    bnCopyright: TButton;
    imImagecopyright: TImage;
    lbCopyrightSite: TLabel;
    lbCopyrightAuthor2: TLabel;
    lbCopyrightName: TLabel;
    lbCopyrightAuthor1: TLabel;
    lbCopyrightForum: TLabel;
    meCopyrightText: TMemo;
    procedure bnCopyrightClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbCopyrightForumClick(Sender: TObject);
    procedure lbCopyrightSiteClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fmCopyright: TfmCopyright;

implementation

uses Unit1;

{ TfmCopyright }

procedure TfmCopyright.bnCopyrightClick(Sender: TObject);
begin
  // Close the form
  Close;
end;

procedure TfmCopyright.FormCreate(Sender: TObject);
begin
  //Change form color
  fmCopyright.Color := fmMain.Color;
end;

procedure TfmCopyright.lbCopyrightForumClick(Sender: TObject);
begin
  // Open MyNotex forum
  OpenURL('http://groups.google.com/forum/#!forum/mynotex');
end;

procedure TfmCopyright.lbCopyrightSiteClick(Sender: TObject);
begin
  // Open MyNotex site
  OpenURL('http://sites.google.com/site/mynotex');
end;

initialization
  {$I unitcopyright.lrs}

end.

