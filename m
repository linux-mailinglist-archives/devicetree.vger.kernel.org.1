Return-Path: <devicetree+bounces-225225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 626CEBCBB6C
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 07:26:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1F30A4E3534
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 05:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 028D623D7D2;
	Fri, 10 Oct 2025 05:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MgL3ugY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210F51F4C8E
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760074003; cv=none; b=UmVKVC/HSmmxYjXIqOU9SyBGIVs5QmpuNlivda6GiWLuq7OYgNMx7kV3/KmaJ3x0yEiVfiY8TMH0sKpfOnPVw70pUQkwirVNZeur/qYkNGf/jrTeSfWML1tPhMFjxVDag6VgVcfPJY9v/bv6b74544Q/V37UT12VHBKVRKB7uGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760074003; c=relaxed/simple;
	bh=6ZQGF56icH764Mt7J7YN4sDhWdEqrpnUJtm3mz3jgl4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=c+GsUwnGbxHiZOqvQJaw6vDM8Zox1CRhFsnl8Ebi4svNDrTNrF3TGmJTHDPP3cpoFRBb/6zuTkDT7wkXtOvwbd1WaYTJgK8yUEGaNAkxwC8Mnfbq3D2w3z0djHrP/QjxEe47RiXYEcq0e1U7zrHqEeqFwt8bNyU8bJBWZNNg/zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MgL3ugY8; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b48d8deafaeso380354366b.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 22:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760074000; x=1760678800; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6ZQGF56icH764Mt7J7YN4sDhWdEqrpnUJtm3mz3jgl4=;
        b=MgL3ugY8xHj/erMK9BoeMUXC6yoxC+IKwdRacc4ftn5VDad3rxLagK3INGsm3I6U88
         9Of5j9URkIjVFrMh4hhoaEairr67z80p9T/2BlN5Jb5S4eNToX00kqi3NXDK7Uznem5J
         OfLi62zaea4nxYK8IM52xlfBgT7d2S35D/p+5JBTNfXaRuIbNlrMMe42r2N5+p8eYrEG
         3jFLWqpMjRQzzHMn/bXUfqWrjHc78stP/xh2KsTN87l1YYdf+zO+O7Aw2ctIqHEQsyHC
         0WHp+bEwQ0zJipk/xRCUBeO/AsHcnusV7ozDPbb/rNvjFTS9hHwtsCGX05wSLp8tx9DZ
         hfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760074000; x=1760678800;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6ZQGF56icH764Mt7J7YN4sDhWdEqrpnUJtm3mz3jgl4=;
        b=Jt2SDelmWwZ1nGkhNvxDjt5X/ge+OQCotcwIoxDrf74CTWm2DjHItLO6gZAsN+EUIv
         xya8S/iqXQiMaJmv6jjbbSkuxnDWx0fMlffKs4APH5zajBO6Lrvz6cJeSmTAS1ZUTS20
         t2KsFE92rJpaHFE3ZFkZbWYLi5CvqL4X+dEW4ZvtVCEyQ0c3gmgttFXbopCOSSBzN5VY
         k0OiBysCURu2sAx+gPLBKGf7r6PWVQ2bwdv4Ewa9saSDoAOdV7+C609P2OBAXhT1nHzd
         /RPCbkNBSLkddwwPk/pRoc4MUEIJf4ZUYjgojLROMKYnslt9ZCniunK5iGILMXzNKNvX
         1pHw==
X-Forwarded-Encrypted: i=1; AJvYcCVy8pukBpEceHh9JlgJVdy7HCOCi7k0zJpBNrHkfrRe9Xrm6xN4eWefWDtnwNCDG9QAWxsKL085Gktr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1WIxZhKkRGLZz8LbNblmdoMhJB131To+tD2gq4/NghYf2qSpn
	9Dxg+maXcjpOVpqK7FNmKm6U4sMK2dYwWXaWvkmtWEBHi6uZV04Tw98oea5lrYNti+A=
X-Gm-Gg: ASbGncudmFlbsoW/KQnD7S8PfEbWdA8QpTptx8Id5HZvFHrUf2fk77+BnCm1t29Hh+v
	Jv0McqHtQu8ZEcCPAJM9wynTkL88eaHw39J1Cb7bCMDYoxEmRSb1aqyRQXu8OcbYWSEsKSpxy6d
	4RBZvF0afyc2oiaggb28ZyV21+2l/wAuXNp0giVsdRu2FA1KuuOmOiRt7kBZrH2oVUvq3gNSi+D
	2PXlL9X2SeD4HPqfnNhD2jpFk0C3YhBgSzYjGTRihOrnQlZNGrmdgFLw4WlcF8to88oVcCtGqfH
	B/cyK5TQRL2dSfpvPnueugtAfaHFIGqEyEUtOEvGcvW2JTJQodvSQ4USulHVxa2B4T6+xpOW7so
	iiZ1KWG+o8Q2Z8rn+4G6U6WFTBHC/OiIY9AYzPgSmpeIDyJsA
X-Google-Smtp-Source: AGHT+IEF98Rap0U5ucjnQVUtn0KSvNbP6eAmxW5/uObKfUgC9D3KfjVTiQLvrdfy3ldcft7mxBgDmQ==
X-Received: by 2002:a17:907:fd89:b0:b40:cfe9:ed41 with SMTP id a640c23a62f3a-b50ac0cb1cemr924261166b.34.1760074000382;
        Thu, 09 Oct 2025 22:26:40 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d900cc52sm140260566b.60.2025.10.09.22.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 22:26:39 -0700 (PDT)
Message-ID: <4ab0d483175c17b476d2d51923b38b272802f60e.camel@linaro.org>
Subject: Re: [PATCH v2 03/10] dt-bindings: soc: samsung: gs101-pmu: allow
 power domains as children
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>,  Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Ulf
 Hansson <ulf.hansson@linaro.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Date: Fri, 10 Oct 2025 06:26:38 +0100
In-Reply-To: <20251009-gs101-pd-v2-3-3f4a6db2af39@linaro.org>
References: <20251009-gs101-pd-v2-0-3f4a6db2af39@linaro.org>
	 <20251009-gs101-pd-v2-3-3f4a6db2af39@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-10-09 at 16:25 +0100, Andr=C3=A9 Draszik wrote:
> The power domains are a property of / implemented in the PMU. As such,
> they should be modelled as child nodes of the PMU.
>=20
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>=20
> ---
> Note: Ideally, the newly added properties (ranges, etc.) should only be
> 'required' if "^power-domain@[0-9a-f]+$" exists as a patternProperty,
> as they're needed only in that case. As-is, this patch now causes
> warnings for existing DTs as they don't specify the new properties (and
> they shouldn't need to). Only if DTs are updated to include
> power-domains, such an update should also add the new properties.
>=20
> I've not been able to come up with the correct schema syntax to achieve
> that. dependencies, dependentRequired, and dependentSchemas don't seem
> to support patterns. Similarly,
> =C2=A0 - if:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 required:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ...
> =C2=A0=C2=A0=C2=A0 then:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 required:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ...
>=20
> doesn't allow patterns in the 'if' block (or I didn't get the syntax
> right).
> ---
> =C2=A0.../bindings/soc/google/google,gs101-pmu.yaml=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 42 +++++++++++++++++++++-
> =C2=A01 file changed, 41 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pm=
u.yaml
> b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> index 209ee2f80d449c3eec568188898b3c6f7ae0ddd4..d18a351b649c0736662e67bb6=
4de46afa01e399a 100644
> --- a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> +++ b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> @@ -27,6 +27,14 @@ properties:
> =C2=A0=C2=A0 reg:
> =C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 1
> =C2=A0
> +=C2=A0 '#address-cells':
> +=C2=A0=C2=A0=C2=A0 const: 1
> +
> +=C2=A0 '#size-cells':
> +=C2=A0=C2=A0=C2=A0 const: 1
> +
> +=C2=A0 ranges: true
> +
> =C2=A0=C2=A0 reboot-mode:
> =C2=A0=C2=A0=C2=A0=C2=A0 $ref: /schemas/power/reset/syscon-reboot-mode.ya=
ml
> =C2=A0=C2=A0=C2=A0=C2=A0 type: object
> @@ -50,18 +58,50 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0 description:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Phandle to PMU interrupt generation =
interface.
> =C2=A0
> +patternProperties:
> +=C2=A0 "^power-domain@[0-9a-f]+$":
> +=C2=A0=C2=A0=C2=A0 type: object
> +=C2=A0=C2=A0=C2=A0 description: Child node describing one power domain w=
ithin the PMU
> +
> +=C2=A0=C2=A0=C2=A0 additionalProperties: true
> +
> +=C2=A0=C2=A0=C2=A0 properties:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const: google,gs101-pd
> +
> =C2=A0required:
> =C2=A0=C2=A0 - compatible
> =C2=A0=C2=A0 - reg
> +=C2=A0 - '#address-cells'
> +=C2=A0 - '#size-cells'
> +=C2=A0 - ranges
> =C2=A0=C2=A0 - google,pmu-intr-gen-syscon
> =C2=A0
> -unevaluatedProperties: false
> +additionalProperties: false

Ooops, this line should have been part of patch 02 in the first place. Will
fix in next version.

Cheers,
Andre'


