Return-Path: <devicetree+bounces-133486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B619FAB42
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 08:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E4631885554
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 07:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1999A18E02A;
	Mon, 23 Dec 2024 07:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vHL4HBK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040DD16C687
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 07:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734939934; cv=none; b=B1y+w69tObhRGrF+5rQuW1FoTC2jtWbF/BiP4q/VsqvDd68OD3N2T7t5XhP4v3/ZbPvwGkSWRQ7GY685/RE+d3DACvpzvnqmHLTMno4lrOE36UUKIPSm0mB7zxVEus9ryB7jUUS2FTKJiu7qwhT8nyxfeZC+Jy8HnA/IDCA8IWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734939934; c=relaxed/simple;
	bh=szSMFpu0X/jKqyAJJIRLoz8ialA5hbvm/LWaFM/VFz4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lIrZs4kjPy1erf9OjlxTwfYzQA858Qn04kaRev342GvTJhbX4KM7a/vSY4ZtWTw7j4UnQZQ5OhtepOBYhc7D0iy0hQd9/mSo637/C3+1lIR+Br/EV/6j+znI6Nxa/MyR8AZrJxzM7XrQiNUqbBiHnzwkJP/z0Qo6wt5aKQCLpD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vHL4HBK4; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385df53e559so3126391f8f.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 23:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734939929; x=1735544729; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=szSMFpu0X/jKqyAJJIRLoz8ialA5hbvm/LWaFM/VFz4=;
        b=vHL4HBK4fi5VOKMvNN2LTvJ/3FoFHWfInmQbr1eS9uY2GCulCkjL6iy37kAyR29Use
         wBS70STY+qUyVFGvP2SOi+cNv1fHgmPZ9tvB/P0v5K/sa/xKE5H9y0UZoN3RdX//SaTN
         koETAbOhbfE7DcF0CrhpPTXWvnGwhdqZcfUKTZGWaq2tYBPL5DdfvfmSp6YxTQOU0F/i
         VWLv/HnoCP56ZFKYN8dBEYAIkhWAL3bZPfURQGi1C6QATAt2b1QaDqE0+U41MMa//IsA
         hlA2EaIeStVSxlrZBS5uVsSOBaLS00UwmS28/yj2r70aw0WVyrhdhAX6Pd0qXAHco2MN
         yJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734939929; x=1735544729;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=szSMFpu0X/jKqyAJJIRLoz8ialA5hbvm/LWaFM/VFz4=;
        b=wQWP1jf/H3mf++8kY8PD9WaMqFCziJtPa+YcUm8E0OKZjBHUD+xONg26CrvQH+G4zy
         amn1EPNXar9qIDgltgg6HVvr38qE/XQjwSZqtIj0X8QCe/rC77+KGkhM6BNl078kpsUR
         NVa082QfLs+df0hhtWDGbJrSKLP5WNkzG17Mi+y360MbER6XMOywM6rwgDqFc19yIzCk
         3ZDgEJu5g5BB2pOV/cYffqO+MBY78Mq4AT7ZnI2z2TsUfkNA24HG2dqfLYrHWUYYP3Ux
         szwQPS/AfQrxkQ1qIMPUoZRxkrr/kiK9t7Y7/fKByqL0sILjp2BbuVLYkqxcYKgrYD14
         Su4g==
X-Forwarded-Encrypted: i=1; AJvYcCXAKiapnp8ms4vbjtytQuYxlPXD8XUD7i3UhZgRtMem9Qmi5vseQ7v4tmhJBhBEYszYsWa8Ik5sxDah@vger.kernel.org
X-Gm-Message-State: AOJu0YwtDvkgJp+X+9dwoaCig7n914Gdak0/mhuLRMOEd0sXhtJq8uGL
	KnfwY62fXr8l6yZhP1ORh5ACUyEpttWvJNg0x7cGMrN/Epp5hU6YIDL0pSBMw4Q=
X-Gm-Gg: ASbGncu8ZE8RzJOO7V4gDqPhxSWTlQY9OVH4R4uukDcncfRkr7+45yKDb7aRXAAhGp1
	iggER2EJcEsOJOjwiT1jqv3J6sg2MMj02vHugJ7zf1NuoCcsm8U4uRP7JIKl5Pykh+U5BejEOE8
	10o1S1jl2nYT6XZZhHtEtpu7SKxDFdw3LWHfCxf4iRKLavN2l7cMBDbPeOtRZhjXCEa4PXE8Pzt
	cnIBcTYwBdvo5zphTSHCPEagD5xbBlavuwq+uYGgPFc9lEJssZwB8lJsaQoqg==
X-Google-Smtp-Source: AGHT+IGDaeMCJrgzifSr2TvDYMPQhcDT2MRZ+98RU5GMa6SGyaKWu+e0yHVKL1/bnGNvSM8bZo3RoA==
X-Received: by 2002:a5d:598f:0:b0:385:ed20:3be6 with SMTP id ffacd0b85a97d-38a221fa7f9mr10193192f8f.22.1734939929304;
        Sun, 22 Dec 2024 23:45:29 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8a6e19sm10645963f8f.100.2024.12.22.23.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 23:45:28 -0800 (PST)
Message-ID: <cfdc5b1b03140e3d2ce3fb58e8b342dc2ac06d04.camel@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: google: add gs101-raven and
 generic gs101-pixel
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Griffin
	 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Date: Mon, 23 Dec 2024 07:45:27 +0000
In-Reply-To: <d0c1511f-b052-4690-aefb-3fb41e1e5875@kernel.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
	 <20241220-gs101-simplefb-v2-1-c10a8f9e490b@linaro.org>
	 <d0c1511f-b052-4690-aefb-3fb41e1e5875@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

On Sun, 2024-12-22 at 12:38 +0100, Krzysztof Kozlowski wrote:
> On 20/12/2024 12:27, Andr=C3=A9 Draszik wrote:
> > Raven is Google's code name for Pixel 6 Pro. Since there are
> > differences compared to Pixel 6 (Oriole), we need to add a separate
> > compatible for it.
> >=20
> > We also want to support a generic DT, which can work on any type of
>=20
> There are no such generic DT devices upstream, so we cannot add bindings
> for them.

Do you have a better suggestion for the wording?
How about 'gs101-based Pixel base board'?

> > gs101-based Pixel device, e.g. Pixel 6, or Pixel 6 Pro, or Pixel 6a (as
> > a future addition). Such a DT will have certain nodes disabled / not
> > added. To facilitate such a generic gs101-based Pixel device, also add
> > a more generic gs101-pixel compatible. We can not just use the existing
> > google,gs101 for that, as it refers to the SoC, not a board.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0Documentation/devicetree/bindings/arm/google.yaml | 18 ++++++++++=
++++----
> > =C2=A01 file changed, 14 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Docume=
ntation/devicetree/bindings/arm/google.yaml
> > index e20b5c9b16bc..a8faf2256242 100644
> > --- a/Documentation/devicetree/bindings/arm/google.yaml
> > +++ b/Documentation/devicetree/bindings/arm/google.yaml
> > @@ -34,11 +34,21 @@ properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0 const: '/'
> > =C2=A0=C2=A0 compatible:
> > =C2=A0=C2=A0=C2=A0=C2=A0 oneOf:
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: Google Pixel 6 / Oriole
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: Google GS101 Pixel devic=
es, as generic Pixel, or Pixel 6
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Oriole), or 6 =
Pro (Raven)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 minItems: 2
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 3
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum:
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 - google,gs101-oriole
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: google=
,gs101
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - g=
oogle,gs101-oriole
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - g=
oogle,gs101-raven
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - g=
oogle,gs101-pixel
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - g=
oogle,gs101
>=20
> SoC cannot be a board in the same time.

Can you please expand? google,gs101 is the SoC, the other ones are boards.
Is the commit message unclear?

>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allOf:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - contains:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 const: google,gs101-pixel
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - contains:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 const: google,gs101
>=20
> This should be fixed list.

OK. (This was inspired by Documentation/devicetree/bindings/soc/xilinx/xili=
nx.yaml)

Cheers,
Andre'


