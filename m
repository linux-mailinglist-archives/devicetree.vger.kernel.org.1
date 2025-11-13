Return-Path: <devicetree+bounces-238027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB86C5688E
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9642D4ED797
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D617A32549D;
	Thu, 13 Nov 2025 09:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ETK0wmAc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E252D5A07
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763024716; cv=none; b=KcE6cR8IKLMvwpwxBWIjry3wyh8/vzu1GRwcl7FunoZ8clAgh27CsnXuyGBk6nfpeyrTsAsqQdieHIREBI0+JIXdkSKvKlSEZ3MhHsa8V00SPN3kGC8fWGzcTxMAE4R+OntGfGLcCfqP7H89WjdBcevK81CAKdfTPHN0OgT6LjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763024716; c=relaxed/simple;
	bh=3UjOMsFb9kbRymmKpTR/5HYw4uxQJJRFpFEQGX6ehQ0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=crJlQi+JCcb4Wi2vsebIZduQRfl46PsxE2oKYKfSnV2+oGCuDGH6odLQkXLmqL77/TzEu/Lruq7C1PI+9boG96b5P25BE0+TVslnm28ezUjm7UFUjh8+lTD/7O1eNciyqsCkJXuzlMZ8Sgp8c72gx7Zr4gbp9D3RNCn+RXU5YOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ETK0wmAc; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so6429225e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763024713; x=1763629513; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3UjOMsFb9kbRymmKpTR/5HYw4uxQJJRFpFEQGX6ehQ0=;
        b=ETK0wmAcq4nSLOjQOFfUeAkCIIl+h1s2voNEnzZWznsB18q5WDplOTjpXFmyueQIco
         Ohwhi3N86hVSztcZyWD2OVGTIZ8fAYs3zh/jcXjRaVzboD+cpV58BWFnxj2cCpV2isjG
         rzONsJPUaHwS0T6YsTT7icw9ggCIuCiYNmKwVroxnaIdiwRsON3fDMvMqwDSMDLA1FFU
         tHtDGeEBz2BUcaZ+GSYtjo1kBAq85rIvvRWvARVRyi1OrhfswUww7M5t8z4ApORijDkD
         yhdMdJliL5FhXjxUaQSiqT9nyDjq8t4ALjFV5Q4SRvLZPHoL4Uu5Mw5mvMGSeNJlOUFw
         bdNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763024713; x=1763629513;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3UjOMsFb9kbRymmKpTR/5HYw4uxQJJRFpFEQGX6ehQ0=;
        b=TWurFvhhmUxIHPRBVrdBRXnU5r2t/5rLa3Gad0nywhoHD6t4daIABqqarg0cjvGPNn
         Z9+dyEeH5bCC9qspwtb3Y1GalwWZzIF0ZWMvkshg8R1KsbDC2Fy+U2X61fMHZG9dEDeS
         3WrmN7QYBI/d9V9WVgUTvmGqMZVdjS+1IZ2nLxKnPf2FXJtQCwUYUvL14pffOnQmun0J
         H6bHVDHUhPBc22KzIfyamBZKpwkuUHNjFfid14/livvS92exmZVuRhxEMY5RhJmTy3zn
         m/1YVxZ219LyAWTN/Mwt02dxmHcivLPY3Q+g+/gU+9QCMBuEW2pKeNbzOQUTx+PKha4W
         lg+A==
X-Forwarded-Encrypted: i=1; AJvYcCUOG1qKy7FmFThyI0QxUXwq/Q0xdrhN/wf6eKnjDDIPLNTR6Pv/s4O66bZ4rSWLZLaCTzFXbsH+gvYT@vger.kernel.org
X-Gm-Message-State: AOJu0YxGNWvwE5+agV2ylKw/ZxbhtXPe0nZ3xqchTf34hSNBFIrso3xx
	4C1yncyflUJB4amyQ4b0ItXgY9oBZcQ6zu6K+ODvyxSI3jnMjika2uE1qbV4RBkXicI=
X-Gm-Gg: ASbGncsGtmdSNOBR1VS/tmfRca/U24gmOKRI+hVVIwKinJ396Wn1+y+DHt/53fc8dWu
	d3wK/7nZj43IfT7X3ORwvylDjx0JjsX/oxTaVULGV7KDjSv/afLqbBheRBJwluhgeF0RHI9JU3x
	hPsA951oBDZ4+RZ9DbFmg1tXPcE99FAXcCE0Y38LgaQkSpOKddJyhNAAWSwxuLAPVNGfz7XpGS1
	3b6+BThoIlvkzLv8Ml3003mYsLEFLpFmstbPDnAv28btFsR0Hnfnd/oA5eJG7TtiWDju5FZ/xvr
	ICYv4Kluz57y2aHRq2oPC81UwGXduOrpjiIiLhvD/OQdHXt/cn1nJHhRUpYW42QXApgKTIB2Kjy
	rBIhviQTP2fDzBxSrcAMWbylOOS1+kqm1pqgfAZcWMpsdVpNfG0hkA2PbcW2axuqZPORjrJWCwu
	SSgqrz
X-Google-Smtp-Source: AGHT+IEtWoaffuaVTqHh20HuWI5Dpw76dp6as3Uhkrib83c8uxD8cJiQ4F+dYLKDixdUDUaZQUzkpA==
X-Received: by 2002:a05:600c:4455:b0:477:7bca:8b34 with SMTP id 5b1f17b1804b1-47787071919mr61751085e9.6.1763024713192;
        Thu, 13 Nov 2025 01:05:13 -0800 (PST)
Received: from [10.1.1.59] ([212.129.72.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f203afsm2532796f8f.39.2025.11.13.01.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 01:05:12 -0800 (PST)
Message-ID: <27a5521cd7ddbed0e870ac416dc829722f1b36a5.camel@linaro.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: nvmem: add google,gs101-otp
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Srinivas Kandagatla	
 <srini@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski	 <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Peter
 Griffin	 <peter.griffin@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Date: Thu, 13 Nov 2025 09:05:10 +0000
In-Reply-To: <20251112-gs101-otp-v2-1-bff2eb020c95@linaro.org>
References: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
	 <20251112-gs101-otp-v2-1-bff2eb020c95@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-11-12 at 08:29 +0000, Tudor Ambarus wrote:
> Add binding for the OTP controller found on Google GS101.
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> =C2=A0.../bindings/nvmem/google,gs101-otp.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 56 ++++++++++++++++++++++
> =C2=A01 file changed, 56 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yam=
l b/Documentation/devicetree/bindings/nvmem/google,gs101-
> otp.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..ea87216761dbab9a7a5cecd87=
a553a6a2a1783f7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/google,gs101-otp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google GS101 OTP Controller
> +
> +maintainers:
> +=C2=A0 - Tudor Ambarus <tudor.ambarus@linaro.org>
> +
> +description: |
> +=C2=A0 OTP controller drives a NVMEM memory where system or user specifi=
c data
> +=C2=A0 can be stored. The OTP controller register space if of interest a=
s well

If there's another version:

-> if of interest
-> is of interest

In any case:

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Cheers,
Andre

