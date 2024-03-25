Return-Path: <devicetree+bounces-53190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC8688B481
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 23:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF6591C3D3C5
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 22:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087347FBD5;
	Mon, 25 Mar 2024 22:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="BZ9lbj8s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F53B7F7E8
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 22:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711407023; cv=none; b=QEU+GvRAvdyHb2a8Twi8FGT4+rZiabhVJgyCSQx4k4r4hr9cc6s+SGx5po992sQHANt0scU/qEGM0pdjJgqi49YXVY9Ucp1iZ2ut8RmEb949uT2BJt9S8Q1nE2nCVRFz5XfADuDWZdP10y6ZGhYAA9Kz9fIOFArvX5WyHw4rcz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711407023; c=relaxed/simple;
	bh=CPQo4U3neeVYvpscRpNTGn7MkPpc75PWWbiOuiCgEOg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tjPqlkl94vNeC482hh1Bg3bzxLeub9epYZ48bo5wXCAcSb2IlmrWJqimbaUNEPzwjjQQsrI8X0MaPKx0lve/+NdT2kkY/Jc/TLc5UhGFZHMjzb7IkH2DS+hva3punUY5O+bkk3d4/ic4q1FhreZyFo1JEMfd+/EBbKCq2P/kYvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=BZ9lbj8s; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-428405a0205so60081cf.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 15:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711407021; x=1712011821; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9uiPc2CXK0rh4vlRTmKReFu4D/t2JCY05B9NWh6jZ4=;
        b=BZ9lbj8sSS3aKWGwbQAaOFVXE6eYl0oltnkrMjdD/7ZLhqh9/g7KiOmMmSAmhERDgb
         B4gelXEMxFzVwgWjq8X0cPOiZFpxd0kSgMr43cKA38EVDM4aQE7/svBeNq5Ht91lsc0+
         hrp2gaTQe7CpCGlbXrv/eIWNE+9EIrHt/+Mj/ov81qrEafGZniBJq6erJEI80w3X/1A0
         cbbAysjWklgQMDyklybIukVYeqmHtB5bPdGj1KQNhr0TU1ZsGU03QxKLrKrgmAHU6Th2
         2dKqHB/PtmTCQoaMRrKz1mqBncfh1HvOLmZIhYvWx5N7RWRyUg+oXTnXXCwuFbmSDkD4
         gnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711407021; x=1712011821;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9uiPc2CXK0rh4vlRTmKReFu4D/t2JCY05B9NWh6jZ4=;
        b=P26N7KTAUiSO4/AI99HzcFTfa7UASTVzOTYLHMD8iMfeMKyqsGe6Bc3Oybj1Pr9A2P
         2ylmHHd9cOHypEf1ptkQBXclioQLQo0RvYRCXJthSvHMLNTq5XHv+mGwfJ1rSXK6lHm9
         4KyseE8spYTQbFDrUuY1KgWL/WLTwGsDj8FnP+4T2bSuZQvHVwTadXvO3863pOmW4quZ
         YimfwmXPX6HP1VL5In+F1MZrCgolEeVIdwp+0BJ9w4nlfozQvC1R0UxGNOnNEcSQ9B1H
         B6t9hTdVudn/NofmQeLx0iQ0YxohDqdyHcorTP+gRaFgeW39xCdz+v5eNw6sv4nNsIJo
         imAg==
X-Forwarded-Encrypted: i=1; AJvYcCVrfqbF+Bxb9tHYaa1VhwfoN/tU/Wnj/4B0EOWOXaopOUkxsHuOGiKPoahwOsjoaCheFWkyrVfBd8BD6VrdGtzHso8YP4Xpa1fZFg==
X-Gm-Message-State: AOJu0YyINUCwzdtHpmAabaj3ThdP8IvWSBK5UhXR0IFVM39BYSBx6iPw
	pyeZZ09nYY0neSiPOEL50CTWb7AOojYv8md/zIeQFAvijh7ApWS4sxx7vwFkg2A5j0A6o9rLPtE
	8StcvEYH+RWDE2LL/Y+pR4GR8CYpxOR/hePeq
X-Google-Smtp-Source: AGHT+IESv3d0bJqCxKfN5Ct2QrJ0e+2U26WAOijsthnoOFCRawVLwk1AgyIZaLEyfrF5guSwUhXe7HEsE9lSU4E9/DU=
X-Received: by 2002:a05:622a:1c0f:b0:431:5dd4:a67e with SMTP id
 bq15-20020a05622a1c0f00b004315dd4a67emr56115qtb.14.1711407021008; Mon, 25 Mar
 2024 15:50:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240224052436.3552333-1-saravanak@google.com>
 <ZfvN5jDrftG-YRG4@titan> <CAGETcx8+vw0Vr0NWzjOAvxAZ07M4U7BWPAgO9avCngW0-9e_kA@mail.gmail.com>
 <Zf7I65PiOR2wX1Uo@titan>
In-Reply-To: <Zf7I65PiOR2wX1Uo@titan>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 25 Mar 2024 15:49:44 -0700
Message-ID: <CAGETcx_=MmfgDajM16iJ4Of9Yr2Sy6ZpU=MyhYgnmOJFUTD_oA@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Fix stupid bug in
 remote-endpoint parsing
To: John Watts <contact@jookia.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, kernel-team@android.com, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 23, 2024 at 5:20=E2=80=AFAM John Watts <contact@jookia.org> wro=
te:
>
> Hello again,
>
> On Fri, Mar 22, 2024 at 06:53:57PM -0700, Saravana Kannan wrote:
> > Hmmm.... cycle detection should work here and not enforce probe
> > ordering. I'd appreciate help with debugging that. Let me look at it
> > on Monday. Can you enabled all the debug logs in drivers/base/core.c
> > and tell me what cycle detection is telling about these nodes?
>
> Hmm. It's not saying anything more than what I've already sent.

Sorry, I was asking for the logs. But now I'm looking at this again, I
think I understand what's going on.

> I think this is because /sound/multi isn't a device, it's just a
> subnode used in audio-graph-card2.

Ok, I think I understand now what's going on. fw_devlink does not know
that "sound" device will not populate "multi" as a child device.
Typically in such situations, "sound" would probe as a device and add
its child DT nodes devices. At that point, the cycle is only between
"multi" and "test_codec" and fw_devlink will detect that and not
enforce any ordering. However, in this case, "sound" doesn't have any
child devices and just depends on the remote endpoints directly.

We already have "ports", "in-ports" and "out-ports". Is there a reason
none of them will work for your use case and it has to be "multi"?
When you use one of those 3 recognized node names, things are handled
correctly.

Btw, between "test_codec" and "sound", which one is supposed to probe
first? I'm guessing "test_codec" needs to probe first for "sound" to
probe?

> Removing the multi { } section and using direct graph connections
> 'fixes' this.

I think the right fix is the use of post-init-providers. Because even
if you do the above, all it does is let fw_devlink see that there's a
cyclic dependency in DT. And it'll stop enforcing the probe and
suspend/resume ordering. Ideally we want to enforce a specific order
here. test_codec first and then sound.

> I think this might be because usually in a graph each node containing
> ports is a device, such as a display panel, a bridge, an LCD
> controller. These kind of form a dependency chain.
>
> In this case all the ports in multi act as a way to glue multiple
> ports together for the audio-graph-card2.
>
> Does that help?

Maybe. But the logs would be more helpful.

>
> > But the better fix would be to use the new "post-init-providers"
> > property. See below.
> >
> > >
> > > / {
> > >         ...
> > >
> > >
> > >         test_codec {
> > >                 compatible =3D "test-codec";
> > >                 prefix =3D "Test codec";
> > >                 #sound-dai-cells =3D <0>;
> >
> > post-init-provider =3D <&multi>;

Did you try this? Did it help?

-Saravana

> >
> > Right now there's a cyclic dependency between test_codec and multi and
> > this tells the kernel that test codec needs to probe first.
> >
> > Similar additions to the other nodes blocked on multi.
> >
> > Thanks,
> > Saravana
>
> John.

