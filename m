Return-Path: <devicetree+bounces-112430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5A79A215B
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 13:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 052F31F23DB1
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB5A1D365B;
	Thu, 17 Oct 2024 11:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vg1CzZYh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A9D1D5173
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729165416; cv=none; b=ELNnP8QixD34TzDIfQX3K0Z2e5lWAkS+r1XjQCRR8e2KAUZUsTxmkb7ssk+jA9ufyBOdeRm3JqJsaH2uZjWgNY9/7Gr8o4hhTNd85yvlECpDYCy1/59R+3UYnpTUpP5XW8JtW9Lc65e7XoPWXpQD+RTNna/o8ZMO4f+pqA+HGVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729165416; c=relaxed/simple;
	bh=ubEqsk7Ig5iFOdbE24B9pLincMbi3XaIGSJyOkgwGpo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=urDSjtTz1bl3XAubHa7Tt57fpuLkFhA/S6BgujFJpvTImduLMqAdqXo1ZruFrGtSmFmflHvw71gPl28LpbOm3wWghxf/OHIejmy5Ifv7899rvauo0PsSJUc9b784svqt6JZMtHUjmqdtADTfMJe+oSgN2Jwx0U7TVf8a0Ubx7Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vg1CzZYh; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb470a8b27so17294561fa.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 04:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729165411; x=1729770211; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ilU4PmpLqbMcogSG19oOG5S7m+hmpv/WG1OFB1c98V8=;
        b=Vg1CzZYhRBI1cEocwKCizDNHCi6Qci6BV9fv4lC0CNeJTQUgmTEzmeEmVaQMETIwZ3
         z+WefqNCm4ij9NToZpbdhbBzluXJcwP0Ma/hLQbBxPY79B0idP1/pjK8OVWODlmOCb8L
         hKvMvLUjyrO3EnkcfDIYamLxai28Mn4hFu0GvEmIqaAhOnesBYL+DoVar5dIAFSknbLv
         3vfxKU5v6/mkTgKykQcdCwOwqbmpoJKGNtaNijVi8QyB8LEbE0TdxXj+hkkWRwCgr1xJ
         eruDW9zh9fhSEWt+sMZnt+8G69XwcJdsVKhbt5BDOIP0Z4Q+O80W1ptQqHv/bgGjPy8F
         g86Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729165411; x=1729770211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ilU4PmpLqbMcogSG19oOG5S7m+hmpv/WG1OFB1c98V8=;
        b=DQ5DA3jizTnZEP7fFpyCbocitFIYTkYXAMODcgI1YTriPj4s8KWNFX7va2dhSevO87
         jWlEtd9yvmHNEZJT/ySvKcnGud9GGz41E9Bz02fFQj4vh/RlY5KS6SGLRy69iXQ/j00O
         zB/afWX8GRml5bT5Hw8fvsky7th7zXkUe7Es0Yd97RxrAmEO5L+yy4qjzLdush5ewSMM
         4Feid7uzhwN11RyCTOhCo/qfGAT03sN/CTdiG5yaQXZud2aCsWrqeDPYdVTmz7PNqvFq
         u0qhs7baofTay6TYcTeqCh5Beyshu/8T7PDRQi8EK5CCLkfiYTwtp+/kUHtLhGRG0Uy0
         YdIw==
X-Forwarded-Encrypted: i=1; AJvYcCVTbl6cSolUOv/3ZurfCfw0Fs+WiG3xgYTChv+kAOQgZPGdAKCsMv6FNdQ6jwRSt25ACz8Q0LAOW1yp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2UILs0ytHbezYiOh0Of6c7mQYCgJofJGt3y7Rd4sulYqjJtLl
	4RW0EySyUTl76Kh1qSFpjLXtQGnY+rfUXw0hRGPOGINBjbea0Gp/2I7kGOaKUAoe7HbjkTYSGHS
	MI8jnqEC2UkhVhrZrtFZA/fEttAY=
X-Google-Smtp-Source: AGHT+IGSSFSoVHFSfoI1G7JpBHTTCBuPiRHMprK3hhgSGdIW+KXIb8WghYi1CGfYLBo24MaSdr44fp/Hs3V9XILRJlA=
X-Received: by 2002:a05:651c:2224:b0:2fb:5d19:4689 with SMTP id
 38308e7fff4ca-2fb6d9aeec1mr8300661fa.1.1729165411164; Thu, 17 Oct 2024
 04:43:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240821143420.2564869-1-festevam@gmail.com> <CAOf5uwnUPDPVzM7vNPn-tGrt2ENuuUzVfKh1q7AiORcAMZm0UA@mail.gmail.com>
In-Reply-To: <CAOf5uwnUPDPVzM7vNPn-tGrt2ENuuUzVfKh1q7AiORcAMZm0UA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 17 Oct 2024 08:43:19 -0300
Message-ID: <CAOMZO5DVy7x62zfX5UbDZUi=c8nbSHfD=Q39faZTBz87bz3W=g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mn-bsh-smm-s2pro: Remove invalid audio
 codec clock
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, ariel.dalessandro@collabora.com, 
	Fabio Estevam <festevam@denx.de>, Dario Binacchi <dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

On Tue, Aug 27, 2024 at 9:03=E2=80=AFAM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi Fabio
>
> On Wed, Aug 21, 2024 at 4:34=E2=80=AFPM Fabio Estevam <festevam@gmail.com=
> wrote:
> >
> > From: Fabio Estevam <festevam@denx.de>
> >
> > According to ti,tlv320dac3100.yaml, 'clocks' is not a valid
> > property.
> >
> > Remove it to fix the following dt-schema warning:
> >
> > Unevaluated properties are not allowed ('clocks' was unexpected)
> >
> > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts b/a=
rch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> > index c6ad65becc97..475cbf9e0d1e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> > @@ -64,7 +64,6 @@ tlv320dac3101: audio-codec@18 {
> >                 DVDD-supply =3D <&buck5_reg>;
> >                 reset-gpios =3D <&gpio1 6 GPIO_ACTIVE_LOW>;
> >                 ai31xx-micbias-vg =3D <MICBIAS_AVDDV>;
> > -               clocks =3D <&clk IMX8MN_CLK_SAI3_ROOT>;
> >         };
> >  };
>
> Let's just give a test to the board

Have you had a chance to test it?

