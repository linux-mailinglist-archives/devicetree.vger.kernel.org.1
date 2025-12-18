Return-Path: <devicetree+bounces-247921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDABCCCB4B
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D581301A1D5
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3AB536BCF4;
	Thu, 18 Dec 2025 16:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K2UdJi9P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4602332C933
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 16:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766074806; cv=none; b=QxVkB5KIKpFDZJA/QmbbCTgkKleRdwTZqHXjUUm5nO6jq5v0OKcApPrR+bG8cr6ubGsSGgd05NkBtgemU09shCogzDoe2OA4V8ZtZCnfip2UIBJnADGNi4pZPIQycwO8vVrqdvYRuvZ6KdpaM9cOGQValVC2wADd68sLj0UHlEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766074806; c=relaxed/simple;
	bh=hVY1lx5jquwRW6anCUI5JtIMpN3jK3n+nWSoUPPGJdE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ucuZm9Dl4slrENhU4WfWuH9OMrn5XeCUmi9dXY7jdCgGp55gS+mHTbQhXi3XUI4owaekMHKiUPa4wKt6XFAcOA4BO8v2Lw0zBM4fS4Ls7d2/nsJfe+ot5MxYgn3V029+dFZBW5Qzv538KloHUYJlXqzIs2xiyNRuDkYvZYCgiIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K2UdJi9P; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b8e5d1611so7549a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766074804; x=1766679604; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9i8cWPPpk3qhAbSDSCLeR0U+nXf0Qia9C/CB0RwOtJs=;
        b=K2UdJi9P5rEL1+wmBsG8/h99vFOO833p9W1exabDatXkYgVDDPTocWugBDFOo6He5j
         hFz8Ns7431drdic262p7HD96qH2ke0qCkIJOu2fodzQQqs/kxR/cjaq1C9XFoT4yTRHY
         VuemeKUBjmHMRpymsOfCxJkk8TE1KemYtXXAQ7R0W+K4byrUv4Zq2srBjhMkL0kTQlqp
         Dw9IikOqnxsp0wH9dSldvBL5Bx9f5MlJlfW5in5tpVOrm2fLizZFlFoqT+NF6LlmVt/T
         f6CTDa4rfY7GFnWqjHIq7gQBeIrZ02jUFfNhsgdV56jatvIwgiCmfO9kdi0RmweVbaeB
         8e+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766074804; x=1766679604;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9i8cWPPpk3qhAbSDSCLeR0U+nXf0Qia9C/CB0RwOtJs=;
        b=Crcl8xQu6z1mHuf/5pTseopnQVmuDcXuv+wZXHQKXt2z7TgDBlg5GUj9xPsnXf9ID5
         pIavthO8OGDUhz9THAjYkPabm7G5S7SyNtJtPUv7kwara2z91PCm8ebgRs/UApUTTJcm
         a1UHHVkzjJMY18X5RjxLGkTvRayAUmeF30DPG91JfOLSAXqFptoNyHc1Ug1EMXV9L6qw
         bFsAS3GH3XduvU07N5bh60p3n/kYdVaXYfu7QBp/4aC9jhMVMkfJqifPTJ2+P9JXvUh9
         i6fx0hgaGp9gMfMQwkGNl8PxCCqyJPXlq2m03QaS6F8pZ4GLqyDozKtR16ykzST6+alL
         M9mg==
X-Gm-Message-State: AOJu0YyEN2mNI8ZZe1TJ6ykKs7EkjXGCH8hxdZd+WH43G/x6SYc8w9rM
	V4Fi1oTIMfACq/6e9iPrwcvhn6uMRkOGfSNnvFPmLlmpeAxGZ1CIJGax
X-Gm-Gg: AY/fxX7NChPlLGy3N9J9ebG3MZiJSKPcAqxIwJx2PGsp0DMATXqiUZKX7rrdaYpDWTg
	rvXkIRbhAG2meO4/QM/dCqbfddpyhgk38d2DSi9YmkW1KtVL5njOBIBRMpEu0Qe4sXGHcd2kC92
	mzQzSpzeA7Q3cVBOZHUX9qp0KnAgsxgjj8LFifnFBDM99KlEhJlAaigj2XHQCeyXhKNdNZ6yEBF
	6+SPW33Hj5Kgmmmfyq51skKOeiNCY1F9UfaPd5/MeYiaYN5dsLltMtJCsoiYibHGyAYJ+G/dMv3
	ElGus6S1ISJxl/YQhu51P7zMRsRnNbYd/n410BwcQya4A4HvBXTK9vjJ7T5pij7wzEDDoAzKRwh
	h/E+NwQdL3xuaohGRAyAnKvzzEDNm0xfI/5C6/Q2GyptXFGKMyEMh/5ovcwI0LHlmj7WZJurWt1
	M3YIDxlOaLkon+fuFezmeqvylPFLTvJBSg0d7wUTmUtg==
X-Google-Smtp-Source: AGHT+IEK/Oq/yKYYYk/vo1yGLO9cpqS5uZ1Iib4terF5s9b5DAyEzWO01hv02K28pdINOt39Pnr/Dg==
X-Received: by 2002:a05:6402:1ed1:b0:649:815e:3fac with SMTP id 4fb4d7f45d1cf-6499b2fe480mr19443071a12.23.1766074803307;
        Thu, 18 Dec 2025 08:20:03 -0800 (PST)
Received: from [10.25.219.74] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b585d3f17sm3033124a12.8.2025.12.18.08.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 08:20:02 -0800 (PST)
Message-ID: <55d6fb81-5309-463e-a624-dc80f960aa24@gmail.com>
Date: Thu, 18 Dec 2025 08:20:05 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Add compatible for i.MX95
 15x15 FRDM board
To: Lei Xu <lei.xu@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 justin.jiang@nxp.com, qijian.guo@nxp.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20251217-127-v2-0-67cb12e56242@nxp.com>
 <20251217-127-v2-1-67cb12e56242@nxp.com>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <20251217-127-v2-1-67cb12e56242@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 12/17/2025 9:56 PM, Lei Xu wrote:
> Introduce a new DT compatible string for the NXP i.MX95 15x15 FRDM
> development board, a compact and cost-effective platform based on
> the i.MX95 applications processor.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Lei Xu <lei.xu@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 68a2d5fecc43..4b6188d39be6 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1432,6 +1432,7 @@ properties:
>          items:
>            - enum:
>                - fsl,imx95-15x15-evk       # i.MX95 15x15 EVK Board
> +              - fsl,imx95-15x15-frdm      # i.MX95 15x15 FRDM Board
>                - fsl,imx95-19x19-evk       # i.MX95 19x19 EVK Board
>                - toradex,verdin-imx95-19x19-evk  # i.MX95 Verdin Evaluation Kit (EVK)
>            - const: fsl,imx95


Reviewed-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>


