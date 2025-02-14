Return-Path: <devicetree+bounces-146771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6528A361FC
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 16:41:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D4061893223
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 15:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31686266F05;
	Fri, 14 Feb 2025 15:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bLW0E1nM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650D5266EED
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 15:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739547606; cv=none; b=ViXAqhD6Q1YNfsiZQncRP/Nu+ZDuEYhJKisz/X9xEGhImHWvjoLfWFVpaVoEUx9EN/YgKbWuO1xXtmTQ59O8GMSNtVjZPc/JElvzrNZC1h8Bk9kjw0qirc3lj+NaG2rKOkC4eNA3jhf958dR5TwDX+OPzwouhA4x1JANInhnMys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739547606; c=relaxed/simple;
	bh=Ur1csxx5e9sT2v6HE7Bvi1Gidx/ecW+iVa1/b716UdY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ah1+e82jBcv4BxP19uh3eH1skqMfYySv1QUuEsAWJlxyXaRhJSoUg31eR/1S/nUV92eAPJa0BWXMbyyrPm5VVVMtDstBhATyiDwsxX180WDVzXcO86Y5eWwCqNgiqwA0YXqmWREb4fo9l0d9faWAKGTjOjPT0Ffgtu3PCof2YE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bLW0E1nM; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e53ef7462b6so1757743276.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 07:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739547603; x=1740152403; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDlfNVO3NueDu0Qi3f7HcF0fEdO1uHUOCWWSlLIIhqA=;
        b=bLW0E1nMAvMJv7DVSgBs/pbO0Eo91IPzwo+XP6qFqlKS7sDRfHesMHtHo4w4KRuCAV
         qH3nr8wsBMDTS/Fm7xeL7SgCMz4gAq539W8EIbXJvMaKpJ7eynb+3kx+PLr3QOVVR5Hs
         rNZCQ7wioP9rzyB4OstwAh/ECXNgsosdm8i2VbHrGG2O2ockuQkSL0wf7byDfmgGZax8
         7Pc/vykyOHvOX4qYN3zqZQM6Tj4N967NqD+mvHGSVldkTfG317ksIv8bzJW6DGBaK8dh
         57IG1vYnKGWQ01QtJQPsDuhBqGBvveXO6ObSlLtMr2XsUf9luNHHIVl5EfP+jHIVMJE6
         HAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739547603; x=1740152403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDlfNVO3NueDu0Qi3f7HcF0fEdO1uHUOCWWSlLIIhqA=;
        b=HdtgtwJQHYyEbgFwC7jQRfHX0YrZLB9bfvgLxtzh2Bb+EurUN812fH1IjAt5HYovPu
         fEg9X4WXxC3cubQmdR7Z7EKjsNLkXlDsaflUM4PRd8iuzYOvz+30MSycLSpy6wg6p043
         vtat4kiZC10uFZcisPcjAy241/95b3V45kA6UvJQ87IGhjMdVL//yn9xAWe45a40EMJX
         aPg9rcrTpeOuPwPohbtQFb/ag6WMnT0ebFbPJjBBLWj2cS/aZC1/d/E8c+RZ6YXyOqzB
         dUC6QICsNs2VE7PLbUwMRhryiAPqJ4eerwzscvh/v+4I6CWw0TsFxFTakV9lu6wSX2E8
         Rh5A==
X-Forwarded-Encrypted: i=1; AJvYcCXsO4gPU+w4ACiCDoH9bkWtJPwkruizg9zUUhWQ3QJ2NGIKOeaL0No+EVyuLEOFWksm+/QwL3DrGZ8w@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5ONOYCbqSxe8EeEsWyQmIcNc/Xbt8Ep+aPgTtsOK5Nr/L+BP+
	TceY2w65eZS9SCCLVUZk8MfdY4ueO69GhCX9Wxwr5bCLvQxpFUyB+ypmjIJyGkfRsGcsyXBgsIG
	JETdlnwDffsvRQmRYQtb7WmDyGFlwK1YlevMk1w==
X-Gm-Gg: ASbGnct8XilYYd+k2HCjyYjTUJonEfj6Uncb7f1I3mvRFweS/N+Kg/R3FT3CkJpJGhQ
	U2Xb6VABLCdeps49LhsReWYYj3WorfJt4z64qSPI3a7zh5iTM+Jfztbu5bLBA9P/kY+6NcCGiIe
	Zcm8X27ki1a3TfYv2J0tOGyX/g8+EX+TE=
X-Google-Smtp-Source: AGHT+IH8EDa+4ekuWWbXXBr/riLIN3JlPX6Dn3pM/FPKZAsai8Udd4H0wlop9vjoHOYPmZSk7PdvYO6YAK4exwTSyGU=
X-Received: by 2002:a05:6902:188e:b0:e58:173e:abcc with SMTP id
 3f1490d57ef6-e5da8102d3fmr8204636276.8.1739547603265; Fri, 14 Feb 2025
 07:40:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250212234034.284-1-wachiturroxd150@gmail.com>
 <20250212234034.284-4-wachiturroxd150@gmail.com> <40370a0e-775b-42e3-bb6c-8cacaa0482cf@linaro.org>
 <Z67f+lDxISVubiJJ@droid-r8s> <2ed6c5d8-b559-4ffc-b08e-412bab1f7917@linaro.org>
In-Reply-To: <2ed6c5d8-b559-4ffc-b08e-412bab1f7917@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 14 Feb 2025 09:39:52 -0600
X-Gm-Features: AWEUYZlElBm9hQ_fT18iHek-VpX4yHKDlxdz_rBItX0Tc5O4FlTpOcx5z1N4lMA
Message-ID: <CAPLW+4mbJoLHJ7TDcn9z8-WOEAFSiH7wBMt4Rk3fsw0h1wSSMA@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] arm64: dts: exynos990: define all PERIC USI nodes
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Denzeel Oliva <wachiturroxd150@gmail.com>, alim.akhtar@samsung.com, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-serial@vger.kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 14, 2025 at 12:49=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linar=
o.org> wrote:
>
>
>
> On 2/14/25 6:17 AM, Denzeel Oliva wrote:
> > On Thu, Feb 13, 2025 at 07:38:35AM +0000, Tudor Ambarus wrote:
>
> >> node properties shall be specified in a specific order. Follow similar
> >> nodes that are already accepted, gs101 is one.
> >
> > Not all Exynos SoCs will follow the same order
>
> you an fix them then. Please follow
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-o=
f-properties-in-device-node
>
> >
> >> <&cmu_peric0 CLK_GOUT_PERIC0_TOP0_IPCLK_4>;
> >
> > Is
> >
> > GATE(CLK_GOUT_PERIC0_TOP0_IPCLK_4, "gout_peric0_top0_ipclk_4",
> >      "dout_peric0_uart_dbg",
> >      CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP0_IPCLKPORT_IPCLK_4,
> >      21, 0, 0), [Mainline CLK]
>
> I don't get this reasoning, sorry.
> >
> > You can find it in the cmucal-node.c driver downstream of the kernel. [=
0]
> >
> >>> +                   };
> >>> +           };
> >>> +
> >>> +           usi0: usi@105500c0 {
>
> cut
>
> >>> +                   serial_2: serial@10550000 {
> >>
> >> why not serial_0 since you're in USI0.
> >
> > Because it is simply displayed in the exynos9830-usi.dtsi [1]
>
> I don't think it matters what downstream specifies for labels. Use what
> common sense says.
>

Yeah, in upstream we don't care about downstream at all. Downstream
code is very often is quite low-quality and doesn't follow mainline
kernel conventions and best practices. Mentioning the downstream code
as an answer to questions like "why it was done this way?" would often
trigger people. In this case I think it should be consecutive
ordering, if there are no very good explanation why it shouldn't be
so. Then aliases can be used in the board dts if you need to keep a
fixed order in the system.

> >
> >>> +           };
> >>> +
> >>> +           usi_i2c_0: usi@105600c0 {
> >>> +                   compatible =3D "samsung,exynos990-usi", "samsung,=
exynos850-usi";
> >>> +                   reg =3D <0x105600c0 0x20>;
> >>> +                   samsung,sysreg =3D <&sysreg_peric0 0x1008>;
> >>> +                   samsung,mode =3D <USI_V2_I2C>;
> >>> +                   #address-cells =3D <1>;
> >>> +                   #size-cells =3D <1>;
> >>> +                   ranges;
> >>> +                   clocks =3D <&cmu_peric0 CLK_GOUT_PERIC0_TOP0_PCLK=
_6>,
> >>> +                            <&cmu_peric0 CLK_GOUT_PERIC0_TOP0_IPCLK_=
6>;
> >>> +                   clock-names =3D "pclk", "ipclk";
> >>> +                   status =3D "disabled";
> >>> +
> >>> +                   hsi2c_1: i2c@10560000 {
> >>> +                           compatible =3D "samsung,exynos990-hsi2c",
> >>> +                                        "samsung,exynosautov9-hsi2c"=
;
> >>> +                           reg =3D <0x10560000 0xc0>;
> >>> +                           interrupts =3D <GIC_SPI 398 IRQ_TYPE_LEVE=
L_HIGH>;
> >>> +                           pinctrl-names =3D "default";
> >>> +                           pinctrl-0 =3D <&hsi2c1_bus>;
> >>> +                           clocks =3D <&cmu_peric0 CLK_GOUT_PERIC0_T=
OP0_IPCLK_6>,
> >>> +                                    <&cmu_peric0 CLK_GOUT_PERIC0_TOP=
0_PCLK_6>;
> >>> +                           clock-names =3D "hsi2c", "hsi2c_pclk";
> >>> +                           #address-cells =3D <1>;
> >>> +                           #size-cells =3D <0>;
> >>> +                           status =3D "disabled";
> >>> +                   };
> >>
> >> shouldn't you define serial and SPI too?
> >
> > As shown in the node it only uses i2c which
> > corresponds to the exynos9830-usi.dts. [2]
>
> If you can't specify all the protocol modes for all the USI nodes, then
> make it clear in the commit message.
>

