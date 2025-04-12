Return-Path: <devicetree+bounces-166239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B146A86AAE
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 06:03:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C692465689
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 04:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5591531E9;
	Sat, 12 Apr 2025 04:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="edrK/mwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5416A2907
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 04:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744430593; cv=none; b=hrFf/AkbzrGUogfmFaBfhL/N2AGx8cS+PFRD+R8PmHLZFCYJ+PRj5Clf6S3ZfV39zCH0QGnRHQ36lsXUosFK6sxXaMsJw/QNmEvXSnD1vLTARr7eFXw2lshrUj4si1+xc3Z1sI4OYKJ7swQgqLFPs7R6DtxJ4UFrCsCE4e/RSo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744430593; c=relaxed/simple;
	bh=wXyqIaTpw9afllPvX5CGHehKOzXZG0L9KEgBgbEVOgg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UyuOfXJ1yGcDCFo3+xbuS/jLDurl49pCXmbkXPS9vT6YOtcXd+fz0QNzX+bV7hAbEhAh1er7mNFaoVfLdrwCedEeQleFSBqvOlPYAVqqMX/hQ+GmIIEFqvsOBo0MadDRQiCR6n3g2SDtLebjivZv1BB+KJ3ydX3c94tca9T+64c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=edrK/mwL; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so4459304a12.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 21:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744430590; x=1745035390; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IUbODakS+dMo9JCC0ZJQTM4QsCGguqQTrC9WcbsAzHs=;
        b=edrK/mwLFUIry7ph3sLO3Bv/TpqNnzheb0e3QbxERFA3dQPx7EUNrjoV62oErdz4CG
         aHyNb+7S6UFsoKC3Q3Dw9iqAEMXwrYwk5NFfEmbXiU1+rzq0FnDemk9K/arA6HVXoTRU
         wfRR/cZEyynbZ0TGMwM2b4jS5dwBo8xcAoXgTfPnPcffE238ZN/vMeIreV7rb4gu3xm3
         +uUDe3hOTEteMB0D3Ul7kR94QRRWtsWnX/dZ62HVnIB3JwbnM9r5PbfRAxQ+vCGaqpYh
         mfqDmhHTRa1oGvzNGTUh1PovTw14DtNKJuL8E2U/cDuokGryI/7fyouGRejkgJDuS8wy
         +oRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744430590; x=1745035390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUbODakS+dMo9JCC0ZJQTM4QsCGguqQTrC9WcbsAzHs=;
        b=niXBEGr05VfF/FcAgKmJtby6wp5IQZknHVgTuwS5hvaFieveu03sTtYSqqLNMDcCOy
         8NADrnZKJTx7DDKJ90NnYBgtaWXhDgZeBIjHXCGflbGa30iYFm2zNg1iU32FcjUmm/dS
         MpwaIsgikKOKJcvCpLbTMlF2p6jiptP2nj2mg7NgG83ysQM2TidQns8NRjdCgEb06zY9
         zVZnX27xEjRqjNOk9kWaKWGcYAkwSBWDAVvmbU0+RS9hnoguCy+v1t4KWNmRtud7I9NY
         Yj+0LExTG4Gkd8wyecCqF7OzY533splWF1WJfQwIDAfyxR9G8/WA3ssqh/tr9isDymi6
         kgig==
X-Forwarded-Encrypted: i=1; AJvYcCUdWEDxKyZfPgvkgLfhPZKGn4aSnZcTu0a7JSUmY0hKSQyTMTVarNfSxqUs7jFXjXX3ELQ2jZyRSQI4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz3tpbmsG2ak57lbdRIL+NxYZ8XRxF1TB1n1dtL5ofW/6l4+AQ
	dvzHyOL/ULRqL1GCVkNIedOKnobjb5DQ17aP7o7/XNIugMfFoUcPUrevl6ViQmbCt7E/aLzuGnl
	SCwRW7hMSb6DR5gd4reyqzj97cb06q4cSUhX7HA==
X-Gm-Gg: ASbGnctJ9TZfUNTf/T3d+ZBgmrQr6qywTyzJvzY1G1GO2aeM6yg0cdv2bE6dpCc6H23
	BQ6C1zvMzCLJMvMtVglix3h8wsAn/TBzYmB+SEgqV/m/MRww5G3MsVHs7odBBMKQ6VYrt+VFYPS
	W622i4G0HykinEBu0F9KnXAcMq7g==
X-Google-Smtp-Source: AGHT+IGsh1nJdWpngVYdZEjRa500viVTDTIM2UIG4kOF5wKJ53y1JA8yU/LJhMtvputUGsrQYMa3hGX2PPtSxqSmAd8=
X-Received: by 2002:a17:907:3f17:b0:ac6:f6ea:cc21 with SMTP id
 a640c23a62f3a-acad36bde74mr430450766b.55.1744430588921; Fri, 11 Apr 2025
 21:03:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250411131423.3802611-1-guodong@riscstar.com>
 <20250411131423.3802611-10-guodong@riscstar.com> <6fywndrxglozw2oqrfs66l3hxxsrv5uf5hdiuyv4a2uczwiiki@tmijrmuidlin>
In-Reply-To: <6fywndrxglozw2oqrfs66l3hxxsrv5uf5hdiuyv4a2uczwiiki@tmijrmuidlin>
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 12 Apr 2025 12:02:56 +0800
X-Gm-Features: ATxdqUFY_6ozkYJSalNYLyr5XEWoGtVTgxstwPMi-eNqZST8o16MQumLG_Ya4qg
Message-ID: <CAH1PCMY6xKULTbekr+p6mA_gRDogeg5tyMHFuTKG5SzbVMACfQ@mail.gmail.com>
Subject: Re: [PATCH 9/9] riscv: defconfig: Enable PWM support for SpacemiT K1 SoC
To: Inochi Amaoto <inochiama@gmail.com>
Cc: ukleinek@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org, p.zabel@pengutronix.de, 
	drew@pdp7.com, geert+renesas@glider.be, heylenay@4d2.org, tglx@linutronix.de, 
	hal.feng@starfivetech.com, unicorn_wang@outlook.com, duje.mihanovic@skole.hr, 
	elder@riscstar.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 12, 2025 at 6:52=E2=80=AFAM Inochi Amaoto <inochiama@gmail.com>=
 wrote:
>
> On Fri, Apr 11, 2025 at 09:14:23PM +0800, Guodong Xu wrote:
> > Enable CONFIG_PWM and CONFIG_PWM_PXA in the defconfig
> > to support the PWM controller used on the SpacemiT K1 SoC.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  arch/riscv/configs/defconfig | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfi=
g
> > index 4888529df1d8..9bd972867e0a 100644
> > --- a/arch/riscv/configs/defconfig
> > +++ b/arch/riscv/configs/defconfig
> > @@ -259,6 +259,8 @@ CONFIG_RPMSG_CTRL=3Dy
> >  CONFIG_RPMSG_VIRTIO=3Dy
> >  CONFIG_PM_DEVFREQ=3Dy
> >  CONFIG_IIO=3Dy
> > +CONFIG_PWM=3Dy
>
> > +CONFIG_PWM_PXA=3Dy
>
> Why not m? This can reduce the Image size.
>

Thanks Inochi. It's better to use m.
I will fix that in the next version.

-Guodong

> >  CONFIG_THEAD_C900_ACLINT_SSWI=3Dy
> >  CONFIG_PHY_SUN4I_USB=3Dm
> >  CONFIG_PHY_STARFIVE_JH7110_DPHY_RX=3Dm
> > --
> > 2.43.0
> >

