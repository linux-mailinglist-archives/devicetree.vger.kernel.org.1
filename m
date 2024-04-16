Return-Path: <devicetree+bounces-59690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A96E8A6A69
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8C6128181B
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 12:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAD212AAC5;
	Tue, 16 Apr 2024 12:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TgTsVXOy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A480712A15A
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 12:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713269648; cv=none; b=B1KsrB4WbyD8I+zmHGFaSVtLd/6Fg1ErRO44m7FJ/nBOlZAi4k+Bg9XZYnJwF5y7a8Q4SfMjve2L8Cb+iyVF0AALlasqXVLeimUKwJosKsEMrzr7Nj7O3k8AISVqGqA7pvxDM4AajPCeLRZxLgP0xQBii+0lMOwtHpzYSbDJ8gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713269648; c=relaxed/simple;
	bh=48Gr5eNn+Ssi4i2JyFoZuqgowPbwgV2AjpZpW+lUl3I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NJvYNZ0OH+5swrIxo15Za/72IZjUSuy7MJu8tdcKKkmEfgVl5H5gJl5HBoojhhSFEaQpG4Mh/BZeSBiUWtjTjKOan1m6LPQjOZa0L2raehXtKgCYtrXQcr0SDZgrN25iYwzGihNrx/ufsrGjnw2vYMFfo4sETxZWgRDeCsbSIn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TgTsVXOy; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5aa400b917dso2805190eaf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 05:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713269646; x=1713874446; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z6x8KfkMeFuCLUkF0VuQt50edEuiXuMJGbYVUcWevqo=;
        b=TgTsVXOy1BpfAVmNZd6pMis8Xm+uhVRYhI58Qf5crvUjjKkK2v9QVI4lbTBpSMDkdc
         pg1Rakbv+OYxgl3xZ88b3I60ow/heXASw5e0dysEHExpeoiAZdCIxAVD1WtzUnAR+yCd
         meOrqtKhi0Zpen295B1WWAqNwm9L7+waTIs/ZNjlwGwlFcjjdZ9CumLzTI+59roVspIL
         L3DYE/ADhw7hpVujQQpAUOsDq3n7CN1UWKyOXcQSHuWE9ZYCyb+ZXkMYq4WRrxjJRhKW
         N4eLvb+KucEpq7wDI2B8ZD2sTNJ2TeI2n06jtbZUFVAHCyrN8OJyuw8zkSJ9IDzYIcyq
         WU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713269646; x=1713874446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z6x8KfkMeFuCLUkF0VuQt50edEuiXuMJGbYVUcWevqo=;
        b=i9N7Vhj30FSw0jIxzkcLY2zojLU97GgCoSmqgOqiFVqigcW6IibYB0IGci6svJIu8b
         QTpXIA5R7miWOaQy9SLAeSvUfd5il0uCjM422byLDE8Cu+YFrP6qxcAtpNyMhWhf8OLy
         HtGJLOzTyda64MQUK8lx0yKRTRAiudnpWCuo1lXSDW3N+j0vE40730dQsIO9xVjpjYLj
         ghxXtnOTLyEBH6oRGviBiRY4d24uOZulYJdi62MSSSJ2Qr+gFEdhlvPHeK1x8dHzs25O
         9aI8PZwGfKd8t6PAiTmxOKU5TbwfKMkiGBAUZIh9msGBwrSLolpu68OBVWaWoKB14CPo
         YOiA==
X-Forwarded-Encrypted: i=1; AJvYcCUEaJCC6MTBUzTzjnnEjXgtWvc5V/rnmMNOxqtTlJ6W0kksqtCrTxs9Mi4dGfRooVOEWneklgjCMQcjdaFAupuSAG8erHzeJXx+RQ==
X-Gm-Message-State: AOJu0Ywuj8bW27Z8GLpOpcRzzOQ0lnI/sgZeichIrIgRjB3EQ42IBfxO
	D/yI/qQtz9f4yg8qtMzMMhPpHVV7ToBBC1UvRYYQFZGywxCZhqqaCT7Aqr34ZkR29a3wm5TdDe3
	6XmB7VeQXhONLjZDOIpXzz5xDdBetOxlsAdwDhQ==
X-Google-Smtp-Source: AGHT+IHjbw9BdGe0LBffamuGVcO3Fjs/dxkO1OlPwbcLBOwnYZIDIIIMJZvaH9S0UdI3wP+pcdkx10/t2jWsgTG3mgE=
X-Received: by 2002:a4a:9893:0:b0:5ac:9fc0:cc6a with SMTP id
 a19-20020a4a9893000000b005ac9fc0cc6amr6760168ooj.4.1713269645676; Tue, 16 Apr
 2024 05:14:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-7-peter.griffin@linaro.org> <560e9a5b236728f62be4bfd8df187071c4bffb23.camel@linaro.org>
In-Reply-To: <560e9a5b236728f62be4bfd8df187071c4bffb23.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 13:13:54 +0100
Message-ID: <CADrjBPois-nLGkNdXRp9SF2t4xv1fr4MvSK7yT-7GA+QwkA2NA@mail.gmail.com>
Subject: Re: [PATCH 06/17] arm64: dts: exynos: gs101: Add the hsi2 sysreg node
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

Thanks for the review.

On Fri, 5 Apr 2024 at 08:33, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Hi Pete,
>
> On Thu, 2024-04-04 at 13:25 +0100, Peter Griffin wrote:
> > This has some configuration bits such as sharability that
> > are required by UFS.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/=
boot/dts/exynos/google/gs101.dtsi
> > index 38ac4fb1397e..608369cec47b 100644
> > --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > @@ -1265,6 +1265,12 @@ cmu_hsi2: clock-controller@14400000 {
> >                       clock-names =3D "oscclk", "bus", "pcie", "ufs_emb=
d", "mmc_card";
> >               };
> >
> > +             sysreg_hsi2: syscon@14420000 {
> > +                     compatible =3D "google,gs101-hsi2-sysreg", "sysco=
n";
> > +                     reg =3D <0x14420000 0x1000>;
>
> Should the length not be 0x10000?

The downstream kernel uses a length of 0x1000 for all the
foobar-sysreg nodes, but checking the specs it does indeed seem that
the length should be 0x10000 (and that is what we've used for all the
other sysreg nodes upstream).

Will update this in v2.

regards,

Pete

