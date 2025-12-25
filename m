Return-Path: <devicetree+bounces-249688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 264E2CDE08F
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 19:37:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECF573006A7F
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 18:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825E627703A;
	Thu, 25 Dec 2025 18:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JkJb9XCU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEA91FA15E
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 18:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766687844; cv=none; b=PBYBSWWU0bLnxNgkQT0TaCm0Lt7BFXJTaH/v3Uv4s6rmPvyeo7yTNXnGVpbIuLu7MHWewSgP1JBoLUcnHCG7WwJzovUrPzysUPQr9jv4BssovdN+K1Mb6GRAbJX3Lgy6TwHqfu4upVv/lSajGn1XGx/BeATxEf4SfBsAEjsr6jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766687844; c=relaxed/simple;
	bh=EeP3w6mxZsd240QO+T3jiig23vz+oT72Plo2mHGY5pE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VrTbS+lDZmlUst6DybaFeu09MwnOc46bvCJLXOsL+P6XfTM6t61owHBj7h5vFIJl9durxM2mOOo2cMdaswDvUwb9stqxZim4j2mowjiD1uzquxaOXmy9w68tkLIkFRs8WPsfBFdC1ycfngAdn8hMm/uSqGCEsHFgAeJp1CbFD4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JkJb9XCU; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b736ffc531fso1224860866b.1
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 10:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766687841; x=1767292641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EeP3w6mxZsd240QO+T3jiig23vz+oT72Plo2mHGY5pE=;
        b=JkJb9XCUAWeiTcMq7ESspZPfSsOgKBWu/brlSnUIZFwXWE2q9i7iixd2K0CF62grQl
         0qBQnU7BdEfoAt+s9TwV7Kgp27qW0tgwjsm9+qKAWDVmNAVMNz5xJ30fOVTG/XmCgPzK
         lD7/o2nVn0cDUnrU2ANLIAO6pHh7DURb3tRLYKS5L/T3eo72BfoL/MPXIAtKtZIhydac
         v2LGmtCIA+PJGlD/IrL+1qIzpyvghqtt1pI6E6bntfV0qnBYpAeMnjElJPIIhMh0CP1d
         1YszRu3IBy08gXRX5gpb9fsW7AQPZoEPjVv446x5+UZSKt/IyudW7ykAWmc2/dRmRwWC
         DGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766687841; x=1767292641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EeP3w6mxZsd240QO+T3jiig23vz+oT72Plo2mHGY5pE=;
        b=rYDA7OADRoqOfUT3bS9Ak4WHJAyedfCYbHEA3VDF3vHePTlzSaciAcn50iZ5Iysny0
         pvDfCju2e91ifiY+OPSYo+Li+c4HfksFQK+rcTCenSJBP9dMJERx8EicJic/iR48Oltj
         dKf3CiuN1SS91FMoSSknmEP+ECLsQ2NSxEsckISURMzqpamsqi625v0LlQKUAj0c2bOY
         F4kpk2NLvfIVMIDdhHfm2U8+G/XvXBua23UyIhaJSgBN1++Q7X0ihVp+2ZU39cEzfIYq
         Jj9mqkjXFUJ7YQSfiVDgDkjZJc/xrBUPgpDoxuwNmIgqx11ebbkBRRr4Ooxmh0OElha+
         RFdQ==
X-Gm-Message-State: AOJu0YwX8e8nQt2QSpXokFNBd237StskRWki1rMQOaRpEwQCbATLTzu8
	L/V7CS/R+8FakzKySf/oLBIlwQoyGr1tuCj4KUl4hfAcc9s7q8yPTQwa
X-Gm-Gg: AY/fxX40n157fWppAwqwt5OPhHaLAiCMyoOgl4xEMKKZIhthUonUo3M2nES3cmD3Obn
	GCyAKH6y6/x+/GEWjuQxnNnswiQZ3XB/6z9UJ72bJSovukXjo6emj9pmklOs2Cj6p289zdZHnB+
	0K+56yqeMWlY8DQ1NXSmmGsSTgv134ueL0YkoYdBhXTMBHpVDyIbrU/Brb5cpWtH3IQ1K6w+DHF
	oILIFM/kDF3zJQq3EshPIj0JZa3mUI8RAJ5gIXk+dgvOyCB5H31RiIMCGmqRpmCS1MfcBJpzaGs
	mavZZbVHa4bIA+/ar2NT7UKpWKRIPogT67DPP4d2RZUjqxRT2dK+8FgruvmZv6Uq+gSIVWx+4uW
	row0brP5NaqeI+9Dptx4ZlI8RsMUVbIDnen2F6V/Sv8rgl+cpUmO3SXGb+g1MRb/V0NJBvT6aec
	HmWKYm+cUueWJ2fGEmtiK7cM9arUdJctgF
X-Google-Smtp-Source: AGHT+IH4B3XzX8QXujzZunFfKEc/cY4W3MiVUX7/1rzA6qLulDTYIhj8orR5H1uD8QCD+qBxL3d2xw==
X-Received: by 2002:a17:907:1c27:b0:b7c:eb19:6a3f with SMTP id a640c23a62f3a-b803705e31cmr2146669666b.35.1766687841205;
        Thu, 25 Dec 2025 10:37:21 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b803d3cea32sm2033127866b.34.2025.12.25.10.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 10:37:20 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Linus Walleij <linusw@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-gpio@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>
Subject:
 Re: [PATCH 3/4] ARM: dts: allwinner: sun5i-a13-utoo-p66: delete "power-gpios"
 property
Date: Thu, 25 Dec 2025 19:37:18 +0100
Message-ID: <2409366.ElGaqSPkdT@jernej-laptop>
In-Reply-To: <20251225103616.3203473-4-wens@kernel.org>
References:
 <20251225103616.3203473-1-wens@kernel.org>
 <20251225103616.3203473-4-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 25. december 2025 ob 11:36:14 Srednjeevropski standardni =
=C4=8Das je Chen-Yu Tsai napisal(a):
> The P66's device tree includes the reference design dtsi files, which
> defines a node and properties for the touchpanel in the common design.
> The P66 dts file then overrides all the properties to match its own
> design, but as the touchpanel model is different, a different schema
> is matched. This other schema uses a different name for the GPIO.
>=20
> The original submission added the correct GPIO property, but did not
> delete the one inherited from the reference design, causing validation
> errors.
>=20
> Explicitly delete the incorrect GPIO property.
>=20
> Fixes: 2a53aff27236 ("ARM: dts: sun5i: Enable touchscreen on Utoo P66")
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
>=20

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



