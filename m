Return-Path: <devicetree+bounces-131694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E160D9F4623
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 09:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BE0B164C2E
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 08:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3B51DB92E;
	Tue, 17 Dec 2024 08:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZcPs4Ep1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1BE415B543
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 08:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734424549; cv=none; b=ER1HxDoKA8JQMwrjyIhzeegZ9NtcVmtsD2StOZSsggdzfSPPQiXTA1VA8Lokfh114wpo9w0Gy/N5G2s7ADQG4FEm3Ca6rt8a+jIRSfw4jsncEcMeT4pNkI17pQwOI2QbBQvFcPWCd5YwWVKi3+MX2KQ4/ctAWDrknH7wQX/aJ1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734424549; c=relaxed/simple;
	bh=BFOUE/g3KYSfOJ9EcqDME5+uyWf1RjIYI1Lk9QI2s64=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=blkmwEtBaANJCBYSNSxqblAr1QY4gucbegWjuXiCI8yZ1truTlVX1xsNAz951sRL5aC/2uJdRuzzKds0e5jnPu1XcqsjMFEav4b4woH1QLefHgflrar2gpN7eDVvS8Wm4xUSjIJAh4YS7KOAmpdNSFbGzCg5JLJ4vxixJIw2cEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZcPs4Ep1; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a766b475so53018915e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 00:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734424546; x=1735029346; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oGp2naDju3CENf7tcYGJw5g9MBEf4TS9qtH9hPAoTWM=;
        b=ZcPs4Ep1Vm365e8uPk63MVY7vT5fhLTUL5wMGipDAX/g+gzb5V0+7L5R9Yr4V9qnP/
         z0ENS/ywoFjgZIPC8GdowG0ZiVjGsAmzMR6EXcooxkPI4Zy4LGBEThAF+pwKj9h5D83B
         7MOiK0g1C5OQ3S2gl9a9P1kY4tRUoXTjerCFpI+bBdSHgZEe35qXiqemBgA81iMtK/jL
         hutI5PbPCTwruyyM2/8y2+f2eQJzaSxYZSGE6g5P8ZIeu+v4N1FEq6UgsxYbD1y05mfS
         NN7/ZB4QltcmP8kzcpaYCpLzGEArFjqCILFqslDMf0MhnR8NnHkHGtzwPyFmwkFHX3ee
         s6Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734424546; x=1735029346;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oGp2naDju3CENf7tcYGJw5g9MBEf4TS9qtH9hPAoTWM=;
        b=QktNor+AQ8edocDdvIDjM6MjE9J5CnOx45gVorJuEfAN9e1gOcCVY5fCIaLXPpX0dW
         pkECQFEzL80dosluCIqFBQmeH3i2XSkHhBrIpMm/+WLnAFssfPzDZLXp1J/r9agYq4Q+
         wLerJ+HOVhcc/dXm+1c55znjWMXh42edGbLiVlEe9PPiW4g6/i+Q4uGeh466FExABQST
         3incNvKsIfWZp7NerRYOzBBFgJ0mIpjAq016GYUGO/iIsr/WtiMcSlA105z/op5HAfFp
         POf9x6yVAdz2UDlmHyozdWy8JCUc1ZYK3oea/s3LH4nNJlaVUUa4xTs3yF9zyEyaCk54
         g27w==
X-Forwarded-Encrypted: i=1; AJvYcCVp8Z2ZKsO/IWYGeRrT9kF+5hnt0zdmosNJ/Fc02SbKFwiAUAP53O/tgxdK1czKRq/V52kKbHo5fLP7@vger.kernel.org
X-Gm-Message-State: AOJu0YyM6tfyaRY7OwjTzwiaCQXsLHFvlA/cTxGoijYyJgOGqDz0dRc5
	7SjOFjWSMUCXedPw1wOkivKwfjYlo4FcimhKBBUzV7HyRRcPhomdgcGpNo4F0Nw=
X-Gm-Gg: ASbGncuWDFkJETq0W0PGf1cAA5DWpuo8JC2r2jEwyGxEAjzkIUyL2TC6tR9nMcMmg1z
	N/EiS9UD9PCYS0VjvJ4S6eKpEOD84ucwR+kcfdK1SOzQkrjgIJV/J5/f5uh+g4UQr8CSzZ44yGV
	mSwfJo6PM3DQYZiEyJlYS52lbWrTbj7hz+Jh8bdtf9Ojkgd4vQLWIGHTlzsKcQ4PHAIl5AJnFIi
	SmlwIPmMYRh9vH7iwcbZuw2/gmCOlKv1PQ6L8QyMWDAh9ppXPFXtZRYlhwQ
X-Google-Smtp-Source: AGHT+IHmaVzA+YB5mwrP2DxlfyoFUMTookYYnkdc4IP1vKUVoB3zOMtorvgOX4VjroHrHa2BsMY/HA==
X-Received: by 2002:a05:6000:156d:b0:385:f16d:48b4 with SMTP id ffacd0b85a97d-3888e0b994fmr12286812f8f.40.1734424546079;
        Tue, 17 Dec 2024 00:35:46 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c8016083sm10393582f8f.31.2024.12.17.00.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 00:35:45 -0800 (PST)
Message-ID: <239cf14ad538285cea2f6ccdf2bd8fbdd2180bbc.camel@linaro.org>
Subject: Re: [PATCH 4/4] arm64: dts: exynos: gs101-raven: add new board file
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>,
 kernel-team@android.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
Date: Tue, 17 Dec 2024 08:35:44 +0000
In-Reply-To: <2wyjctwn443oxl633qwxsxmyzqhinssrkoafgqhcc34tqgwnh5@ymrr57jxdnl6>
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
	 <20241216-gs101-simplefb-v1-4-8ccad1830281@linaro.org>
	 <2wyjctwn443oxl633qwxsxmyzqhinssrkoafgqhcc34tqgwnh5@ymrr57jxdnl6>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-12-17 at 08:39 +0100, Krzysztof Kozlowski wrote:
> On Mon, Dec 16, 2024 at 01:06:29PM +0000, Andr=C3=A9 Draszik wrote:
> > Raven is Google's code name for Pixel 6 Pro. Similar to Pixel 6
> > (Oriole), this is also based around its Tensor gs101 SoC.
> >=20
> > For now, the relevant difference here is the display resolution:
> > 1440 x 3120 instead of 1080 x 2400.
> >=20
> > Create a new board file to reflect this difference.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> >=20
> > ---
> > Note: MAINTAINERS doesn't need updating, it covers this whole directory
> > ---
> > =C2=A0arch/arm64/boot/dts/exynos/google/Makefile=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> > =C2=A0arch/arm64/boot/dts/exynos/google/gs101-raven.dts | 27 ++++++++++=
+++++++++++++
> > =C2=A02 files changed, 28 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/exynos/google/Makefile b/arch/arm64/bo=
ot/dts/exynos/google/Makefile
> > index 0a6d5e1fe4ee..7385f82b03c9 100644
> > --- a/arch/arm64/boot/dts/exynos/google/Makefile
> > +++ b/arch/arm64/boot/dts/exynos/google/Makefile
> > @@ -2,3 +2,4 @@
> > =C2=A0
> > =C2=A0dtb-$(CONFIG_ARCH_EXYNOS) +=3D \
> > =C2=A0	gs101-oriole.dtb \
> > +	gs101-raven.dtb
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101-raven.dts b/arch/a=
rm64/boot/dts/exynos/google/gs101-raven.dts
> > new file mode 100644
> > index 000000000000..75fd34797fa9
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101-raven.dts
> > @@ -0,0 +1,27 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Raven Device Tree
> > + *
> > + * Copyright 2021-2023 Google LLC
> > + * Copyright 2023-2024 Linaro Ltd
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "gs101-raviole.dtsi"
> > +
> > +/ {
> > +	model =3D "Raven";
> > +	compatible =3D "google,gs101-raven", "google,gs101";
> > +};
> > +
> > +&framebuffer0 {
> > +	reg =3D <0x0 0xfac00000 (1440 * 3120 * 4)>;
> > +	width =3D <1440>;
> > +	height =3D <3120>;
> > +	stride =3D <(1440 * 4)>;
> > +};
> > +
> > +&cont_splash_mem {
>=20
> Keep overriding/extending nodes ordered by label name.

OK - I had kept the original order (from dtsi), but will change.

Cheers,
Andre'


