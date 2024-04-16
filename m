Return-Path: <devicetree+bounces-59733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1028A6E6E
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 16:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A878F1C22849
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C902131746;
	Tue, 16 Apr 2024 14:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O3Ozc4xE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3250E12E1F7
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713278035; cv=none; b=azB3TG4ZLDy8ZUiGkqbekgMFU9IDdtr2Hv/csoUqRUkCNWab4GWcDUehQv1ZrBQ3SPdamCe61sBRlcHiRQgf3tbWgyVMbHeKR9Ort4A4JCv6iGiGeSoEOBqINjyTcVDkp7yS1yVL5gkHgKh0w2XOBKSUmnZ6Q0GIYvDpCeJcf88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713278035; c=relaxed/simple;
	bh=fa/DxXobOZz7ufW7MMuUoP20SVnc4eYC7N+Ri1bZCxc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ht7gcjBYMDXa/BHKviykC7XPgEPhYKkcVHvCJDF46IPvIIMuVcrjk3tDaiANXJFX9Hj/N7LbHupoQKxNAjrFltxEZHm/zvvJvgg+WpwQQZpXI/qeTGu5q7FpaqLlakO9zdbSu82rVJnz48qsYMztsM3tlaTEkL8/2e+0JT69zhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O3Ozc4xE; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5acda019ae6so91732eaf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 07:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713278032; x=1713882832; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFOshnHZVt7eovShCJGYyqtlZeqxkfrMezoV0SJga2Y=;
        b=O3Ozc4xEHpxgmskS84RsU9Q3nK8B3K2qGrNsfkwExS8BBeFMzik9aFry3RgPkEY5Ai
         PBGazbn6NvBuYyP1Wj2YOFhhZPrEesQtERJsT4jiy0fFb3QXszUBOcRoVTI3NPvQzzxS
         vZsjBPiDTsqhHVjxMBmxDDldDvJKEzlBG8ytezSQFWR40Ua27tWntCAjreH0a525WvOJ
         5UOo2GfHcdKxgTj9MDCZUAJAMBk5ZrBXTDZLF9u41Vik+KeUPXTSXtiFDVbdcNqcLO9B
         O0+ybgBN1I22hHF9ESMhO1u5vm71gj5MzGC0GDdbeCxQzeZ1McY2/N3eGo4rlWq1dWaS
         gwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713278032; x=1713882832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AFOshnHZVt7eovShCJGYyqtlZeqxkfrMezoV0SJga2Y=;
        b=NPzHChyJnmFOFWKJlmiZpnsWSyicrpBTv74Cu2wNgnOw7Sr8w9Hibj0SwfsvI4oOqo
         /oYX7ov6JcIefsxJB16q4cS7vQgU2kNPWoTikXuDysHkhiODQrkN5RmWx23pcttYPMua
         S4m4Bf17bPWhr40J/zCXOSJaCmQpFCyqFR+iqwjH3A6aV/qRXH1WYUUiL+5eXlSqvGgl
         6TlQFHVCknqNcvnWIdDzP0PG3hnkBZvi1UDsSD6nGwvEJAeFPspLu0IiiFx+5TbKnO2f
         uZ3EcWD+cDMhdiK3uPlRq0MwHerQN0ywiVJyzqfvdxON1SRlIg77Yra/jEOE/6Bgp2xH
         AlYQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7L/MTfDmhMSvJa0if3nXPH906+3bNNdVjuIXk8BI/vJNMOKpBAGkNqtMk5J53EsN1SCARfMQIQ1jis6MfxFQiHkxXPBtV46d0kA==
X-Gm-Message-State: AOJu0YyXmeV17C7SA6vN9ak0IljMahl31o+6rXj0cMUb7ZvYYW4KIvy3
	j7GrijyNZtmE41/ItdG/0IGuqoILuwPS4HPsHD4s2aSB1xdCxV7BG6MxGJTjtdxVAqpsDhFyzXF
	6RkyrCTTve06cTyA8p0HwNGPrdXnw8EQOGDyE+g==
X-Google-Smtp-Source: AGHT+IEhzO0EWt8vnjX98wzr993MD/IhGn+sVx3cYjsgq4VouGSkc835TnH2i1adzvBUpJ7lxv2taDV6TczYCuSnil4=
X-Received: by 2002:a05:6820:408a:b0:5ac:5c3b:a9b7 with SMTP id
 fi10-20020a056820408a00b005ac5c3ba9b7mr12436630oob.0.1713278032316; Tue, 16
 Apr 2024 07:33:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-6-peter.griffin@linaro.org> <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
 <CADrjBPqwLt6gzwMpkZvxp5sC-owdDYUN91F0-nV2NvEzek_v9g@mail.gmail.com> <fd7fe44ecbd99358bac583df3cc8192e250e758b.camel@linaro.org>
In-Reply-To: <fd7fe44ecbd99358bac583df3cc8192e250e758b.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 15:33:40 +0100
Message-ID: <CADrjBPpJ2AEYZhg1s1jd00UqH=R+sGUzpWyW-aQs95_Rbm0=CQ@mail.gmail.com>
Subject: Re: [PATCH 05/17] arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Tue, 16 Apr 2024 at 13:21, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Hi Pete,
>
> On Tue, 2024-04-16 at 12:56 +0100, Peter Griffin wrote:
> > Hi Andr=C3=A9,
> >
> > Thanks for the review.
> >
> > On Fri, 5 Apr 2024 at 08:38, Andr=C3=A9 Draszik <andre.draszik@linaro.o=
rg> wrote:
> > >
> > > On Thu, 2024-04-04 at 13:25 +0100, Peter Griffin wrote:
> > > > Enable the cmu_hsi2 clock management unit. It feeds some of
> > > > the high speed interfaces such as PCIe and UFS.
> > > >
> > > > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > > > ---
> > > >  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
> > > >  1 file changed, 12 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/ar=
m64/boot/dts/exynos/google/gs101.dtsi
> > > > index eddb6b326fde..38ac4fb1397e 100644
> > > > --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > > > +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > > > @@ -1253,6 +1253,18 @@ pinctrl_hsi1: pinctrl@11840000 {
> > > >                       interrupts =3D <GIC_SPI 471 IRQ_TYPE_LEVEL_HI=
GH 0>;
> > > >               };
> > > >
> > > > +             cmu_hsi2: clock-controller@14400000 {
> > > > +                     compatible =3D "google,gs101-cmu-hsi2";
> > > > +                     reg =3D <0x14400000 0x4000>;
> > > > +                     #clock-cells =3D <1>;
> > > > +                     clocks =3D <&ext_24_5m>,
> > > > +                              <&cmu_top CLK_DOUT_CMU_HSI2_BUS>,
> > > > +                              <&cmu_top CLK_DOUT_CMU_HSI2_PCIE>,
> > > > +                              <&cmu_top CLK_DOUT_CMU_HSI2_UFS_EMBD=
>,
> > > > +                              <&cmu_top CLK_DOUT_CMU_HSI2_MMC_CARD=
>;
> > > > +                     clock-names =3D "oscclk", "bus", "pcie", "ufs=
_embd", "mmc_card";
> > > > +             };
> > >
> > > This doesn't build because you didn't add the clock ids in the bindin=
g patch.
> >
> > These clock IDs are for cmu_top, not cmu_hsi2.
>
> Right. I replied to the wrong patch. Sorry for that. It is patch 7 that
> uses clock ids that are only added in patch 8. The clock ids from patch 8
> in include/dt-bindings/clock/google,gs101.h should be added in patch 1
> instead.

Ah I see, thanks for the clarification. I'll fix that in v2.

Thanks,

Pete

