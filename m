Return-Path: <devicetree+bounces-53198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A0888B6F4
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 02:36:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FA722C812C
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 01:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27F0208C3;
	Tue, 26 Mar 2024 01:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="itgmM2iL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1D082D76
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 01:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711416984; cv=none; b=myDzoE4AIwDnYbNri1wi9BAj+42jmOpBUtJ5N6aHuTAmHH4LftA5BDPspQ+Rm2Eq8I4R/DU4wAIHReIlMy2dhWDRKXX/AbaAZiaGnxI82hAlwB2TtdlSxKgy9dJRmE5UPMyMSv1xuIxbwCb/liFDhb7jsrLyLc6x0mfEG5Tk7Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711416984; c=relaxed/simple;
	bh=tCQybncCyylSiSFwYBDS7DYwZwG92wpYUyt99WynvKY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KVoHyNUglJ7Hd1KvhkyTArnKRXDuabtx0Xs01X/mU3bRnTAPlMm3UZYGQnVlBE0XXUBGxCXc7rZ9c9+rA356GCTUo0tqNFs2KG6jOin49DPqEXXM8yNdCKT+G2ShKwgQugvwWrb7hV9b05pVLiNGNiCkjBT3Kp2ZFgon87g/WyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=itgmM2iL; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-431347c6c99so79611cf.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 18:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711416982; x=1712021782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCQybncCyylSiSFwYBDS7DYwZwG92wpYUyt99WynvKY=;
        b=itgmM2iLNPYvoW6KnTo8S9KwMp+TjeQvrTiwrnJoVZYEpy9xF9TT5pzionq/1BuMqC
         SSFGc7E0Z11e3qNfUwb4VKcAKIpUN31ScGWGrJQMp4hr/AoIMHkB1Fi9l9gHmhc2cQ3A
         ehjNVqUyj6cf+fiCQdNCRoDBsnvSz3mXyLc0g561WUI1riNrGfUMKa26kRpEqDUpJ+vg
         cN0lMWPy3wkI5ERMJ7zy86ldJ+/+dHtzccXGA/wjTnHXcxbEUO7PzhljkYNX31E96iPr
         z1mBEEsBQM5u08Z2Q4PRxYnRsnYwg2FpBQTkOAImg62wsy3OIRfehYAMPMTdaLx4N8UO
         6ifQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711416982; x=1712021782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tCQybncCyylSiSFwYBDS7DYwZwG92wpYUyt99WynvKY=;
        b=W6JllSC3g6l1up12Ap6runKRk2uILZIxLEY84iqYP8z5qtD0sSRuEC5/PhC1b2ju25
         9e5pddl7pCerBQ/oB7SZOXvTXeuWkkCS7CZJg6Ws4bP1EaEaQ6R3nf7H6UJYsog7R47Z
         qzCGIw/6LtFYiHGc9TcjfsX7fdouYSQErB3FjZptsQTDo0TPxFMelqk9RYxLPb/Ie6AE
         Lkd2TdS6UIIBbDhaewv3azJjZO1IIKQ6wqUqTORbyRob2SJdO6IrTiyAwDLd2VG7Ruva
         /G39BmaC4ij4F1w0X2pEybcsFOjOsXL53Ug4glyjADvIECLM04NpuU3T8UE/xo2KjkK1
         Vmyg==
X-Forwarded-Encrypted: i=1; AJvYcCX4F/oIt2R3ZBErUMn8Rmvqo8J9B2eV+ZWLpqh31ey2xEApnVe1HU3upAOGs+weWB4zdzccoNcYtqL12/qq+5crM8jdipFNuttt6g==
X-Gm-Message-State: AOJu0YwP7w6xZkhpuMbPZMBT83Cs9DAPffjDLCwQs8nkvMpzs86dx7FD
	pETOEVMyQCfN8tSHalO7r1V21GicrFusMRhDEgfw5/a3ri9+5hEwNHefhz8WbGVILDIuvwGEQ8W
	TNx7f8BsP++/I5Hq0kx7XcvpETrHIze/WpgOG
X-Google-Smtp-Source: AGHT+IGgGcwcgUzMgkYI2jlgeKoVTTvtP5lEBpDOK5cAEiTTvk606224kG1I/0QlbKwNkYXw5EAYik7Rk5X48MvaFqk=
X-Received: by 2002:a05:622a:6114:b0:431:3d4d:92ed with SMTP id
 hg20-20020a05622a611400b004313d4d92edmr29488qtb.9.1711416982092; Mon, 25 Mar
 2024 18:36:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240224052436.3552333-1-saravanak@google.com>
 <ZfvN5jDrftG-YRG4@titan> <CAGETcx8+vw0Vr0NWzjOAvxAZ07M4U7BWPAgO9avCngW0-9e_kA@mail.gmail.com>
 <Zf7I65PiOR2wX1Uo@titan> <CAGETcx_=MmfgDajM16iJ4Of9Yr2Sy6ZpU=MyhYgnmOJFUTD_oA@mail.gmail.com>
 <ZgIZ4LmFOqdiDJBH@titan>
In-Reply-To: <ZgIZ4LmFOqdiDJBH@titan>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 25 Mar 2024 18:35:45 -0700
Message-ID: <CAGETcx-Emvu41nB3UDnb4Gh2aJEKu_hFcHX89uWnBTnaqvpN8g@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Fix stupid bug in
 remote-endpoint parsing
To: John Watts <contact@jookia.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, kernel-team@android.com, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 25, 2024 at 5:42=E2=80=AFPM John Watts <contact@jookia.org> wro=
te:
>
> Hello there,
>
> On Mon, Mar 25, 2024 at 03:49:44PM -0700, Saravana Kannan wrote:
> > Ok, I think I understand now what's going on. fw_devlink does not know
> > that "sound" device will not populate "multi" as a child device.
> > Typically in such situations, "sound" would probe as a device and add
> > its child DT nodes devices. At that point, the cycle is only between
> > "multi" and "test_codec" and fw_devlink will detect that and not
> > enforce any ordering. However, in this case, "sound" doesn't have any
> > child devices and just depends on the remote endpoints directly.
> >
> > We already have "ports", "in-ports" and "out-ports". Is there a reason
> > none of them will work for your use case and it has to be "multi"?
> > When you use one of those 3 recognized node names, things are handled
> > correctly.
>
> audio-graph-card2 uses 'multi' to define DAI links that have multiple
> endpoints. It also suports codec2codec and dpcm.
>
> > I think the right fix is the use of post-init-providers. Because even
> > if you do the above, all it does is let fw_devlink see that there's a
> > cyclic dependency in DT. And it'll stop enforcing the probe and
> > suspend/resume ordering. Ideally we want to enforce a specific order
> > here. test_codec first and then sound.
>
> Is there a way to do this automatically so all the existing audio-graph-c=
ard2
> device trees aren't broken? As it stands it seems like this driver is now
> broken due to this change.

Ok, I have a solution. Have the audio-graph-card2 find the fwnode of
"multi" and mark it as "not a device" by doing something like this in
the driver. That should help fw_devlink handle this correctly.

fwnode.flags |=3D FWNODE_FLAG_NOT_DEVICE;

>
> > Maybe. But the logs would be more helpful.
>
> If you have a way for me to get more logs please tell me.
>
> > > > post-init-provider =3D <&multi>;
> >
> > Did you try this? Did it help?
> >
> > -Saravana
>
> No I haven't tried this yet. I shall try it soon. But I wouldn't consider
> this a useful fix as it requires upgrading existing device trees.

Definitely do this though as a forward looking improvement. It'll help
make the suspend/resume more deterministic and will eventually let
things happen in an async manner.


-Saravana

