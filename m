Return-Path: <devicetree+bounces-251278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 627A8CF0D46
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 12:35:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85C653000E82
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 11:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D861927F18B;
	Sun,  4 Jan 2026 11:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ni173/3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3307D2116F6
	for <devicetree@vger.kernel.org>; Sun,  4 Jan 2026 11:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767526507; cv=none; b=a3ND9m4kWd/MDPFGTHNvF1ZkV61UXekIKzEgTi3nWz/MTSJZTsA0N+VIHjQjpZEGjqNMiNOkaI/KJ1PG2p0AgJ24Gnck0kISutnZ7VGc0pISCkkVtVhdIfGHdKg+5gZDP9c4UEk7QOLdYPNhbxZQE7dImrGoki66zgs1Fdk4fWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767526507; c=relaxed/simple;
	bh=2CH21Mjz+J5xlWvBvZkrmqJPne/CINe1RNjfFq8eZ80=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EttaKs9Ott7qBvKw/sZx3WKWVEs/8+XxCE1zCYAzczyHDScFyMTjtvOaKW+RBvj+7o/0nJUETuShQZ10AwH7y3oVyNce8xNwIVAviFZOX+TRln4+zsZh+ew3SV8yES0ZZZUoa7KghAuH2xj149AHelhAL0t8ZmLCRqgMnE/SdD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ni173/3A; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55b24eedd37so9694729e0c.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 03:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767526505; x=1768131305; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Uxk5fma9Zz72XWcwUam201+Y88drL6r+xukHn0NhFc=;
        b=Ni173/3AutzgwcAwdBZbRKpNMTjEJaeb7Hgx+Jw/Ko1D8fKtLAsGWNJGA2j18DJq+T
         O3CCd+GI897KP/kSZPRYRTT3VnExzPD3wvMsjdQQvNk1r4uWFJLAwL3sFHdW2CShIeY1
         b8XJRMvrLllJaAbTwnDdPdSle58NlG8Vhi6HdQ6g88DLVyMkzK8JtUqtWuEzlk3aRt+7
         MDErM9szzeZRUG1eGXG0PoGIGlyTcqmyafb9jKcIk9gCrzisZZKTBmoiC7aAJaYfDF7O
         aO6V4owfrnU2h00aE2igvgq/bslA+X4DdaFcXIpxXUp2AZTvHxHJOKeIIKeFjDRgzvBd
         NCFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767526505; x=1768131305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Uxk5fma9Zz72XWcwUam201+Y88drL6r+xukHn0NhFc=;
        b=CsimMIHa2y7UKR1dVf6McedoW1ZxaxfuPSOynQ2WdeRWWmBhW0UrO7zTIslo/WBefG
         4Bz9MGly2tzyFUudripGLBDoehLqJyWYzwTGd/yoxA/N6yXIToulkLnhlA6Y1qgzf68H
         PcC9t7MsZCoimKQhA610MeWOgLHx5CsdDyz7GP1MD9P8i084LJMHZooep0HRq8BIjHHK
         LeBFK6xEfa71jS/wBzjCe2kacUoxLypq22LnZUcFAyYpUlzR1I8jigD+8U8LlK0Ye9g+
         JpuRKp1RPpmaaMHig3lQMcocXRLDlLpyF3rPmRb2nSME/CJvwN++pDolhmv+2NQ3Wku+
         a0iw==
X-Forwarded-Encrypted: i=1; AJvYcCV7dVzvVSZ78SRputr5uvOx7Yiz278pmhuN/wNBPERJqbEYyR8tyFimJIs5nvHAdCxn+kjaCQRMVQOA@vger.kernel.org
X-Gm-Message-State: AOJu0YzXKbr4pdT3a4omQZFBfW/ZblcMi/zMXKDffMouLCfZ1vOp0J0m
	XcTBe8SNWvokf6fkYmGxnjsnzKJy0eunhxVfMb4a2wbEEjNd6vVJ33rj1/YTU6mjBUu+S8MYdq9
	Ie9kFCHYXgp34MYBSyPBKqQcU+I0rSOU=
X-Gm-Gg: AY/fxX6KWMH0cUoDm6KRoT6TwRkvsYkxRgq/9E2B3JxwvrYkzG7+JM2mwwwOI4pHjeK
	jjje71wPOl+KrPuqzL3ZGxca1A7bWM60As1HfFiulAiFiPoCs1Q6dESPU/6wbMXDltrocF7UNye
	7TJcYmAJzo45A1QN1otNqTD6ldIVry0VcIBtB/SJFaa8m1YjmwJrUlZv55v2b7yeE4Amm8zSQcV
	MrCg++J8nG2pGiPbxCRs/6gJ2EiB39OR2+l3rLiyx5Z1kLRVGNgYq+tdcX9iY9Adwc5fJogfWwK
	Vhfw
X-Google-Smtp-Source: AGHT+IHwLuSqVVKWRso4bp5bYDarpI9ooBPmOe4Byorg/dHejQoAr6ynmhHM4/TjAwV7ytAUkLi/fneXnZHsnPECwmg=
X-Received: by 2002:a05:6122:8c26:b0:559:ebd7:56e4 with SMTP id
 71dfb90a1353d-5615bceb93amr14979780e0c.5.1767526505003; Sun, 04 Jan 2026
 03:35:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224-checkscript_dt_bindings_fp-v1-1-0e18877ced62@gmail.com> <aVjgRs4ODrKiItvd@archie.me>
In-Reply-To: <aVjgRs4ODrKiItvd@archie.me>
From: Alex Tran <alex.t.tran@gmail.com>
Date: Sun, 4 Jan 2026 03:34:56 -0800
X-Gm-Features: AQt7F2pZGLtLwN7RAF8tT8mukxBm5U4sw0imIVnnlDEB-qFPecCvAbXVea4HmiA
Message-ID: <CA+hkOd4kH-6omKU2TTKZdxSeTK9Z7dqq6zVO8_NUxkWTfMG5Hw@mail.gmail.com>
Subject: Re: [PATCH] checkpatch: Fix false positive check for dt-binding docs
 and include
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 3, 2026 at 1:24=E2=80=AFAM Bagas Sanjaya <bagasdotme@gmail.com>=
 wrote:
>
> [CC'ing devicetree people]
>
> On Wed, Dec 24, 2025 at 05:41:17PM -0800, Alex Tran wrote:
> > The check for when to display a DT_SPLIT_BINDING_PATCH warning
> > is performed on all files that are not MAINTAINERS files.
> > This causes issues, specifically when checking against a
> > patch that only touches docs/dt-bindings or a patch that
> > only touches include/dt-bindings. The warning is still
> > displayed when it should not be, giving false positives.
> >
> > The check for when to issue a DT_SPLIT_BINDING_PATCH warning
> > is currently too pervasive and should only be performed when
> > a change under docs/dt-bindings is detected or include/dt-bindings.
> > If the current changed file is under include/dt-bindings or
> > docs/dt-bindings then it is compared to the last file detected
> > under include/dt-bindings or docs/dt-bindings. If there is a
> > difference then a warning is issued.
>
> Can you elaborate on example of where this issue occurs?
> I'm still confused...

I recently submitted a patch that converted a dt-binding from txt to
yaml format. The patch included the deletion of a txt file and the
addition of a yaml file under Documentation/devicetree. No files were
edited under the include/dt-bindings directory and yet the warning:
"DT binding docs and includes should be a separate patch.", was still
issued when running the checkpatch script.

> >
> > Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
> > ---
> >  scripts/checkpatch.pl | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > index c0250244cf7a3cb5e289b04fa4a9f644692dc278..fe3499bc9adda158c88231b=
48b3b0100f3af0ee1 100755
> > --- a/scripts/checkpatch.pl
> > +++ b/scripts/checkpatch.pl
> > @@ -2668,7 +2668,7 @@ sub process {
> >       my $authorsignoff =3D 0;
> >       my $author_sob =3D '';
> >       my $is_patch =3D 0;
> > -     my $is_binding_patch =3D -1;
> > +     my $is_doc_binding_patch =3D -1;
> >       my $in_header_lines =3D $file ? 0 : 1;
> >       my $in_commit_log =3D 0;          #Scanning lines before patch
> >       my $has_patch_separator =3D 0;    #Found a --- line
> > @@ -2924,13 +2924,13 @@ sub process {
> >                       }
> >                     > > +                             my $last_binding_=
patch_is_doc =3D $is_doc_binding_patch;  $checklicenseline =3D 1;
> >
> > -                     if ($realfile !~ /^MAINTAINERS/) {
> > -                             my $last_binding_patch =3D $is_binding_pa=
tch;
> > +                     if ($realfile =3D~ m@^(?:Documentation/devicetree=
/|include/dt-bindings/)@) {
> > +                             my $last_binding_patch_is_doc =3D $is_doc=
_binding_patch;
> >
> > -                             $is_binding_patch =3D () =3D $realfile =
=3D~ m@^(?:Documentation/devicetree/|include/dt-bindings/)@;
> > +                             $is_doc_binding_patch =3D () =3D $realfil=
e =3D~ m@^(?:Documentation/devicetree/)@;
> >
> > -                             if (($last_binding_patch !=3D -1) &&
> > -                                 ($last_binding_patch ^ $is_binding_pa=
tch)) {
> > +                             if (($last_binding_patch_is_doc !=3D -1) =
&&
> > +                                 ($last_binding_patch_is_doc ^ $is_doc=
_binding_patch)) {
> >                                       WARN("DT_SPLIT_BINDING_PATCH",
> >                                            "DT binding docs and include=
s should be a separate patch. See: Documentation/devicetree/bindings/submit=
ting-patches.rst\n");
> >                               }
> >
>
> I can't say for the actuall diff, though.
The diff is changing when the warning should be issued; If the current
file is under docs/dt-bindings or include/dt-bindings then it checks
if the last bindings file was a docs dt-binding file. And compares it
with the current file. If there is a mismatch then the current file
must be under include/dt-bindings and the warning should be issued,
otherwise not.

--
Yours,
Alex Tran

