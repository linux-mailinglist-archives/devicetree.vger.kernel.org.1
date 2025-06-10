Return-Path: <devicetree+bounces-184120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6160AD30B1
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:40:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2636A189015F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6488328134C;
	Tue, 10 Jun 2025 08:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QjdNqlvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E006B28000A
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749544753; cv=none; b=iaREVaK1OBE+K46YNxzxcyvlu5z2peJmqoYbOccMweKmYPG6Uy4L4VwyxZO8MZVeQcZsD0LtHKt1kxn79mPFz3gTIcij3Dw7FKg93WkhLA0MEF5N9/3Ny4n7SftZ/AhDiYgocXe8CK3OM4ceoZO/2mAzqeaCBPlJ6giHvoH2zww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749544753; c=relaxed/simple;
	bh=Yl4VK5rapXeTeoJSO8TtkOTrZLDEqTO12ZY4/dzcD+U=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BqA+I3ltK2Q9243iuHmdm8Cr+1M9Rb0Q+qPMk/1YPc46vLlq/gHBJSIiLYK9QrY2WF68fMl+GAswtJlqiPcBQ4RYtxtSZqu43Pe6fKurLR1D3XRE/J5lRoVc2saTgXk84G2SUOXyqy7OjRKZVc/uCnAK8/P/var6z0wrT2YE+Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QjdNqlvb; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-450d668c2a1so41517445e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749544749; x=1750149549; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Yl4VK5rapXeTeoJSO8TtkOTrZLDEqTO12ZY4/dzcD+U=;
        b=QjdNqlvbVtV/1IHx2p5MIEVmfvFmv7GtiPiU8legWaocfKjNdHysysQo4h6cNUqZ+e
         OTMf2Mism+kkeKvq11TzU3s+St3N+sAfCqE7EDwUp7Hbapa5HIP2Vbk64egX9HISYu7b
         Y4Lpp/74+8OCyr5YjFFfpTGNSzzlxS1XL9jzrntxB082g80t7AMHan/BWflkZChTk6RQ
         a4dIkvke1p8eJdaEoHaTAHfus7EiV+7xANQYuS+N52QlBLjPYpcF8FVqR70oYZZMLWEL
         t7YRu/EqnVU54W3SaEMegVOCbP67hv6lZsKQLEA4iFRRh1TLYve+DN9eZrcVgv3QhjoW
         o1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749544749; x=1750149549;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yl4VK5rapXeTeoJSO8TtkOTrZLDEqTO12ZY4/dzcD+U=;
        b=ImWdBFKJ55Qjjxu19gAkwJzXCg3DmRzfbygrBjyts5FCtXwIXOicVXFMq8IHtGBX/c
         23lkUY9kUK8gaVqGo7mf1DaBhDtHHHOsYs+5KPJk8zCa0X4PtdDuJxW34nba5ithsX1W
         14XL/0vrif2woTZpi/tnlHM/7QZdFM8Fm6P8buVAqZKn/5bq5292onL4QWbUnWKgis67
         nZVPWH1kzdD+vwCumCeWQgTmu7iY16FAoSgGNg2EnLqGi9szlGFXaDlV1IzDGnOnJ901
         p3pH730jdyRiqRji5bbTWDLXggGsbRJzjjzDKFMb4GkH7Sxi8zLPlBMBLfqHGx7qb6N7
         wm1w==
X-Forwarded-Encrypted: i=1; AJvYcCWTXZRxZ2MB58mhZD9AKskGgiu9n7srkwEciHHJRfwcdctO4pyp8EKf2ziyoLKtlUO02fZp/NKPHy6a@vger.kernel.org
X-Gm-Message-State: AOJu0YxlAaEhogzQayzqxXvPqUXjKQY68+X6UK1BPT5MfN6EHij5c2RU
	3rBdQ1yX3AZwVioiWuRjUujQfrFAsoSQndk9tzZxJCzzhlo1PXYW7jHC96lFfbwm6VI=
X-Gm-Gg: ASbGncuIKsielth6pp5Z9UOGdAULFPgDdNkskadzWOO5dc1c/JxCA+Afp5M3XjbE/De
	qjCIsT0GBMAvu/Jo/MNzfB1pggrw9Bpp0Q8/Kgku70pPmtGlMLFs2/ffY0XiaFMcXF8HZ8jY9b2
	MtoZFJSUIm2FzpuPuWRyxqC3mG0AbcUpja51F71MDvsJ0LleZ8RxC/MWp1Fno2w6bB18TjgVk2O
	1aQNbX7PQb9t94moGCBIGk8JKRhtGzsPXfRjTM+V8wpO4MyRsUmAtGYvD3PKRTQw6Iya8QvIQO6
	WX0exC42LCHfqcrp+6+PkMO08TRFT+3FyRH2I8Q6lUxnx4SMomsNG0xCb5PbXMnxE3wjO+caAN8
	Rwg==
X-Google-Smtp-Source: AGHT+IEgnzAuPZxC9PK7wFrxzn2rTCPjmEyvknSgU3kvtfzCGxGRajpBv/Wk8P5qBxM/ob8j0SfRdA==
X-Received: by 2002:a5d:5f94:0:b0:3a4:ebfc:8c7 with SMTP id ffacd0b85a97d-3a5513ed8dfmr2108902f8f.8.1749544749195;
        Tue, 10 Jun 2025 01:39:09 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a5322ae43fsm11467552f8f.25.2025.06.10.01.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:39:08 -0700 (PDT)
Message-ID: <f44579e51082cd2d77dec514c1d2128981f6b3dc.camel@linaro.org>
Subject: Re: [PATCH v2 06/17] dt-bindings: firmware: google,gs101-acpm-ipc:
 update PMIC examples
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>, Lee
 Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,  Bartosz
 Golaszewski	 <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, Will McVicker
	 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Date: Tue, 10 Jun 2025 09:39:07 +0100
In-Reply-To: <20250606-s2mpg1x-regulators-v2-6-b03feffd2621@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
	 <20250606-s2mpg1x-regulators-v2-6-b03feffd2621@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.55.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Copying my comment below from v1 of this series to make sure it doesn't get=
 lost.

On Fri, 2025-06-06 at 16:03 +0100, Andr=C3=A9 Draszik wrote:
> In a typical system using the Samsung S2MPG10 PMIC, an S2MPG11 is used
> as a sub-PMIC.
>=20
> The interface for both is the ACPM firmware protocol, so update the
> example here to describe the connection for both.
>=20
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
> =C2=A0.../bindings/firmware/google,gs101-acpm-ipc.yaml=C2=A0=C2=A0 | 40 +=
+++++++++++++++++++--
> =C2=A01 file changed, 37 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm=
-ipc.yaml
> b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
> index 62a3a7dac5bd250a7f216c72f3315cd9632d93e1..408cf84e426b80b6c06e69fda=
87d0f8bfc61498d 100644
> --- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.ya=
ml
> +++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.ya=
ml
> @@ -36,6 +36,15 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const: samsung,s2mpg10-p=
mic
> =C2=A0
> +=C2=A0 pmic2:
> +=C2=A0=C2=A0=C2=A0 description: Child node describing the sub PMIC.
> +=C2=A0=C2=A0=C2=A0 type: object
> +=C2=A0=C2=A0=C2=A0 additionalProperties: true
> +
> +=C2=A0=C2=A0=C2=A0 properties:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const: samsung,s2mpg11-pmic
> +

Since we have two PMICs here, but can not use the 'reg' property (as the
addressing is based on software, i.e. the ACPM firmware), I've opted
for 'pmic' (existing) and 'pmic2' (new) as nodenames.

Maybe 'pmic-main' and 'pmic-sub' would be more appropriate, but 'pmic' is a
bit more standard I believe. I'm open for better suggestions :-)

Cheers,
Andre'

