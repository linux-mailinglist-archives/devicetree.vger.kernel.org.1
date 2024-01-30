Return-Path: <devicetree+bounces-36572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DE9841DA5
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 319A31F21853
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 08:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8789558108;
	Tue, 30 Jan 2024 08:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GYNdplpe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2AEB58210
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 08:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706602901; cv=none; b=bCKAtPxi63r2mHyeKY9K7s9zpTyvfqHHIwmR/WR7lO2TWDKKUB04JCrocLjPUS91oSip+OnViezdidVSV6n3iBNr/7zGTAsSp9fYwIKNSTBj8zdEdURBrWjsz+vO+PfFW6bn7qate1bCowhuGjJf4MvWDQ1Bwrqv2KJtZ+AQ6ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706602901; c=relaxed/simple;
	bh=fx0+vcCkkIks+355SLDRLuqghCmEj8CIRU+eyv1l/X0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oqgkpinWUB9m3kyraY9B+NLJgYRXlZu4aHoNoyMYh99g+b4GFRHv55K6z08XEGYuAbahO2fvVP9IGfbMnt6ybDM7Pam3tk4jrw+snRN7+EejUTsqtqCmOZJoULyHVFUAj04HQso0iqUygGVTkY06kOvucbanOk/AgzbM/wDGRMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GYNdplpe; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a35385da5bbso424028666b.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 00:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706602898; x=1707207698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tw4TWLdYBqcNqmZWlY505Isa7+xe9qE0yDc5p5FEukc=;
        b=GYNdplpedWupugrPMXrNjYJ4ibjGzwUhvSYA18req/1ml8vrlyjmhrmogWeAFK6P6A
         SROmQDXOp7oVnBRixoh95Eirkb+9etFmj4gyvEX8xnDs75qP+IjoAxuUJA4GVzaTPZRs
         ONhSGjGHWaUhVEMpGWDSL9z0jyL0u0HUKOVNOHt6jAsL0+aMqfqJfWrbZP9GQQL9EoQx
         HEpN/G1MCCtrBnTpVHD1ssgltWbsunJwby/hP9FYPhqL47D28Psy2lfDHgzTSUkewN5X
         dnL5ZEOV6VpKyJYEUu5cL+iKqK3cJyuLC7rAjqHSA5XUnY7gSttg8lNLJ9lLwpOanwyW
         u1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706602898; x=1707207698;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tw4TWLdYBqcNqmZWlY505Isa7+xe9qE0yDc5p5FEukc=;
        b=a8cN4LkBPO80DKJzoNStmwfE7tzlyO49+CddH4i6okndMuulb1po72gmnbsGL2ITg2
         7TcTC3/5Ho9TuUNilw+xt0GGfOFL947EGgeMSns15xnTyon5kU1J4o+v8czrMr+QWjev
         XOGY2x5/Z6iK2jGN5+h6bZKkaRbZI6ohPKgRHzSVwQ0xzTj6GaHheqFD2qhnK0NFV1Mj
         1UO95rSTzjUPAQ4qoXzLtzKQ28EZGcttK9FphC0HIALNonVLe+y4ZulKbf5Xu2NZS+3Z
         Damlp2nFRLccf991jdsI2xBpudXcbUlwjtab2r4QcnXNOGBL3DVkyt5NUnsksVpX/j3c
         Y1dA==
X-Gm-Message-State: AOJu0Yz8lPqhxF7xo7SBC9xilMt5NhXx1MVtoVfSIShj9U4dIIZTItpF
	5d4ydygDxnWX6e7RNPh8LXzrt7Uf4NKpQ7HQWBQt20S55eK0xS+sB/LUOfYvHGU=
X-Google-Smtp-Source: AGHT+IFo7qcgjrwccrP/luUQkzu6Uyebouwam07phTKFnjG5oItOJN5PtfH0cFccTgGTGnWGntRoag==
X-Received: by 2002:a17:906:c281:b0:a35:6a61:e3dc with SMTP id r1-20020a170906c28100b00a356a61e3dcmr4317779ejz.16.1706602897960;
        Tue, 30 Jan 2024 00:21:37 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id ku17-20020a170907789100b00a32fb8e79e1sm4820501ejc.65.2024.01.30.00.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 00:21:37 -0800 (PST)
Message-ID: <b749512c-b9c3-4b0e-85e2-cf5114534102@linaro.org>
Date: Tue, 30 Jan 2024 09:21:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] regulator: dt-bindings: microchip,mcp16502: convert to
 YAML
Content-Language: en-US
To: Andrei Simion <andrei.simion@microchip.com>,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org,
 claudiu.beznea@tuxon.dev, lgirdwood@gmail.com, broonie@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20240129135336.98197-1-andrei.simion@microchip.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240129135336.98197-1-andrei.simion@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/01/2024 14:53, Andrei Simion wrote:
> Convert devicetree binding mcp16502-regulator.txt to YAML format.
> 
> Signed-off-by: Andrei Simion <andrei.simion@microchip.com>

Thank you for your patch. There is something to discuss/improve.

> ---
> Changes v1 -> v2:
> - reverse subject prefixes
> - line break after file "description:"
> - drop description for reg
> - drop regulator-name
> - add regulator-initial-mode
> - unevaluatedProperties just after $ref: regulator.yaml#
> - additionalProperties  just before "required"
> - node names generic in example
> - use 4 spaces for example indentation


> +
> +  reg:
> +    maxItems: 1
> +
> +  regulators:
> +    type: object
> +    description: List of regulators and its properties.
> +      A node that houses a sub-node for each regulator within
> +      the device. Each sub-node is identified using the node's
> +      name. The content of each sub-node is defined by the
> +      standard binding for regulators;

This is a friendly reminder during the review process.

It seems my or other reviewer's previous comments were not fully
addressed. Maybe the feedback got lost between the quotes, maybe you
just forgot to apply it. Please go back to the previous discussion and
either implement all requested changes or keep discussing them.

Also: you can keep just one line of description. Rest is redundant.


Best regards,
Krzysztof


