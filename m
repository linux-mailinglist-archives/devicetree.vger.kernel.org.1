Return-Path: <devicetree+bounces-226063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2488BD3527
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:03:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BA583C4009
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F2D242D66;
	Mon, 13 Oct 2025 14:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eJFtRhjt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9C5233D85
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760364197; cv=none; b=TYn46mFYPTpHRMsXq16sA+p8jd2frzXXgOOWv76yRjyT7hP7EYl9wtxVpVzmEFUqkmhb7pPxbpN6POuJXJE46dbByhfQ6y7CnTrtjRolFSJRcVWLued8UIDtLfevb4s3x+te74YMLeIQWTm0NIuQVXi4omay+XmudKvQ/itAyAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760364197; c=relaxed/simple;
	bh=0pa4lQo6WdcD3iZoUXfVz3eROSCmrkBGjXHPB2KVS+U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p4kQhfHoDdhFkfG65oC4bU81vbZnpn4WPz3C/17zVS39edWySHa4fK6EL4AcTvEmwNS9ixOd/QlqwHm/74UN28uF94XIwmjuREoy9xQM+Ka1lf+SgiBv3SUtvDBQTCNrRYYJApVHMEA2EW8TTU6z4BQAgaQY+OhTZPMOCrXO34g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eJFtRhjt; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8738c6fdbe8so67944946d6.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 07:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760364194; x=1760968994; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EsvwD+Fi4syTXky3R6aiFFqllKikijYJhVHTrHzkF44=;
        b=eJFtRhjt3Zu3BT7C7gTzBbfuwYP4T3t12VTDyTENXFsbjBUzQRN02xvsZezeG6cGIm
         ry/e1bPXyoDK3XeRjqKPchiL52018EvQKKfBzuYmE5ZujY0dV0oxxl/iuXHDwPjD0s8I
         SxqmTws10Xa64PcqVAIRA+e72Zr7QDGiDN6biP59eYn3tYuTRLsdMqH94KBn6cPvmukg
         bL9qr1DXzWF5fHDXyUm+GgLoipLyKYZ+A5lAckwftMWbwwvW3AUjIhaeZi9MiCl1ZL6P
         7gH5tXWzJQC3OUXwjoKXejXeom+ZgMTNTusogEAVpyEoucnaYNAoqeHmlBj8ygCnoJHr
         8OQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364194; x=1760968994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EsvwD+Fi4syTXky3R6aiFFqllKikijYJhVHTrHzkF44=;
        b=qScRRK++eU8MRI/zmNEzILFrN1Q3e/rx8wR2MfALqiC4Ou4tuiJiUkhNg0AvEry/UF
         WGVbW7li3gURAQgy9wiM4UEx0OBkSmpi4lLcfnMwQl3+b/DpOD4nYXDTPqlRhOukwGkT
         laAS4lWRtclohm846ecJS+n6j0btYisfT5skiouFYzjnn0I06+BAv229/w67bTR0QrBL
         kIqfdt+DkWUAVrFTnEO84ueWvJ7PlSqESj9dsjalsmYDbDJgNV6ve98iQPYbkq3tJtZd
         gWRwlNV8PfKTLSUjO7fQKdxzJpgwCvb4mIMEbzLyzTdBXocwwPBQ4Ww10kcBth0BwHK+
         ATgg==
X-Forwarded-Encrypted: i=1; AJvYcCUjCJsoS0FMFBQahto6e8qR8sI1BHFwI/+u7dfO+HLHzCS3JU4MA/iNsQhufH7iB63DWGfQ4ZJzXaQp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9dAIxD+S32qoprPc8ET8wpI9++ZD0rUsi0vjJ0Vl4XwnTiCH9
	f/76u0zVm3y/7BrlbaZ/ckP05ntTEN3VsVmUKrr90IIPIARFDTHbWYAuQVnOS+uvuRO5hNY9EKP
	3gDZYFsmwQgx6c64mb4tnKZiNUTAPA9g=
X-Gm-Gg: ASbGncsZ0Qnl31AlTU3hzCMTtO4IlZVsf0VoaQ+w5Ooz6J/YRvSRdAKmu/boTwV12s+
	/+mLr+lreD7/m0N33cG0SwaXH/V0UDKNYSzPRJePxacTn3gncN9YYkj7SW0wdGR6tcR/D991GX2
	z3k/TGCMCwXZkuNBGGTizN2U4RIXwh2tW6TotUrHQUVTA2/Uf6BoEkmAkjaICoavbaMbb54Awdt
	xK1OA9JmrSEPiLePuYqYfFMvCsRYyvk8QwTCA==
X-Google-Smtp-Source: AGHT+IFvq5k1EuebtHjH8NtC18O9Z9IQYxbVQCJ9hJgUzNYb51sqTyvtRgLwUZEROHyWBv2AmHidhVXrKQI11wj9UYk=
X-Received: by 2002:a05:6214:5018:b0:7e6:7392:f7df with SMTP id
 6a1803df08f44-87b3a784170mr279102566d6.6.1760364194107; Mon, 13 Oct 2025
 07:03:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAP_9mL5=GmtJF3nSbfX6gRzPc=fAMrTOfMuOLyWFwq5D4OYUFw@mail.gmail.com>
 <20251013130010.143271-1-amadeus@jmu.edu.cn>
In-Reply-To: <20251013130010.143271-1-amadeus@jmu.edu.cn>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Mon, 13 Oct 2025 22:03:01 +0800
X-Gm-Features: AS18NWAoIMYqp_P27rsiPm63GVautCNYpIalpnf8xGliTTm_E7ySNqCl1fUxC1Y
Message-ID: <CAP_9mL7eaDBtVE-VUEMojG9wz34Cfa+N4Ekorj165M=_4zpPbQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Chukun Pan <amadeus@jmu.edu.cn> =E4=BA=8E2025=E5=B9=B410=E6=9C=8813=E6=97=
=A5=E5=91=A8=E4=B8=80 21:00=E5=86=99=E9=81=93=EF=BC=9A
>
> Hi,
>
> > +&pinctrl {
> > +     gmac0 {
> > +             eth_phy0_reset_pin: eth-phy0-reset-pin {
> > +                     rockchip,pins =3D <2 RK_PD3 RK_FUNC_GPIO &pcfg_pu=
ll_up>;
> > +             };
> > +     };
>
> Leave a blank line.
>
> > +     gmac1 {
> > +             eth_phy1_reset_pin: eth-phy1-reset-pin {
> > +                     rockchip,pins =3D <2 RK_PD1 RK_FUNC_GPIO &pcfg_pu=
ll_up>;
> > +             };
> > +     };
>
> > +     gpio-leds {
> > +             status_led_pin: status-led-pin {
> > +                     rockchip,pins =3D
>
> No line break required here.
>
> > +                             <2 RK_PD7 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
>
> > VBUS on usb2phy0_otg is floating, this USB port only works on
> > device (peripheral) mode.
> > phy-supply is optional, so this should be fine, right?
>
> Yes, if there is no log like this:
> supply phy not found, using dummy regulator
...

> > VBUS on usb2phy0_otg is floating, this USB port only works on
> > device (peripheral) mode.
> > phy-supply is optional, so this should be fine, right?
>
> Yes, if there is no log like this:
> supply phy not found, using dummy regulator

I have checked the log, 'supply phy not found, using dummy regulator'
not present on usb, but present on gmac.

