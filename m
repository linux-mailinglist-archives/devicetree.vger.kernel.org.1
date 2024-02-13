Return-Path: <devicetree+bounces-41189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C26852B5B
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:41:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C612E1C20B21
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDD111864C;
	Tue, 13 Feb 2024 08:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r6jM4c5c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A2F182A1
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707813688; cv=none; b=GBVU6U9X77bIOWi9IO0ThZ42ignf6nP2yHlrNaXcAeGcV9v2mQrT0XwLzI8X10VXN7oENHeNJzlI2VklLfDtEAsRejR9Rq+N6/A5adWxUqunl+sKi+/ZcY/pV/hXzBGneUjQUeE3dZBxe8EoVBW7+fhSRhK8MPcW6kbYBHJ6gGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707813688; c=relaxed/simple;
	bh=hPWmFm4xOMyOYZWX7mniGCz9+Fr/ZZHFxN3XwUY3SGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vxu7pnTyVNvsXSF9xsTJ7YSvyJkAOu4q1gql/3FyBS4hYGWbYV2Q3DDBWwqVSzc4ZQViMneo6Al4mgGheixi9MPx0Vl5D18+uCfoVpGqeQYStlIvCDu2hIyZT2UxWy0pyHgPMtESxGSIkBMtoyOzJOxOzlpFjKL1iFU1lCav5Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r6jM4c5c; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-410ed9f8621so11575525e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707813685; x=1708418485; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Elw2QVaNkQ4rL2xxLyGZjRSAhs18pKU57JuyRhuNOHk=;
        b=r6jM4c5canw4H16qbNwQHePAgMXe50tzAzjRpHaPEgcvJAgM+v83tjCqbJ0qS/tiND
         slTMIrjtShGqxE5eaMUjqfIaenwDHJBjFDmVzPLcREQ7GYFSNjm2LSGx6l7fs7Spbfdy
         A4iNuVJlXMtqIcMa3jVmeRLorhoEoY+FqIuINio9vGCGcrqWC39JR0XNbLsZUi0gGVeO
         gRpQZNoIeyHApG+oEgO8XXZjWAfqFidHgvNGlhpEGVyTQxo/6Q4AnQJxTHC4c54Fzkmh
         IrL140i0izhBIsR+Aw0KEh83KXDB+HW++b1E6JoXYnqFUFi3padR55bO9/mrrsbTMgAx
         sqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707813685; x=1708418485;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Elw2QVaNkQ4rL2xxLyGZjRSAhs18pKU57JuyRhuNOHk=;
        b=oLLXGKsp0T4jRtIDa5COoQGjTnelxGcI0Su7ym2jujAYaOVF/hyCopL8HsGZA4jnFB
         qlzVnfuGdFozA44xji/HJyQTQ0xoih+i0hnsEHkKsSvCYWTaoOYxEiYjTsXTr93t7FOZ
         6fcl6iI3Od/Ff+xvktJj9iVAIA1OcwARpnlknGir6DS+vuqcE+TK76mIwt/np8Wf33zT
         APXy7n0fqRIeFi3uYT8kQgZm2baWzx3ReUuTF0kkkwvfFN4Ho6lJSe9WDJX9zK9NdsX1
         7NSvDbeSAzzT4iKn7biAUUBDhbavAqHK/QkLNP/ryVIQalh10/RHOHGC/JB/cO7Mt+W+
         2gvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXalyA0d5b6MOnWr9V56upc0OGEQHx2vUnQa9UbCtGsFmg+o+4a4wuIe+FJl0RyDIxrK+3P1zeDybSp6Vrn/ne3Re4w//CzizoCyg==
X-Gm-Message-State: AOJu0YwcB8pAmpFole5B7oqO7SJaRSU789/Nwhi3hvREgGfhsJmicq1i
	X8+vLGpVQBhnIKmFSXdeY9dJEp0smvyP8w2KjiOmIWbODQCRSbRjaYFcFdFWyDo=
X-Google-Smtp-Source: AGHT+IF1/t76Fzxra3TAMt/4bG4QepPpU1vkKPjNtqOZeYIaAjk3tm5hf8eUGzplp0SAfxKIHUI/1w==
X-Received: by 2002:a05:600c:190b:b0:410:cba3:e9bd with SMTP id j11-20020a05600c190b00b00410cba3e9bdmr3593951wmq.28.1707813685543;
        Tue, 13 Feb 2024 00:41:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVRk4K88UmfydCUdygJRAB+ERtrG3vEUR+8x5kBqJDLX1Vq6MyGyDVc9adaJYhYNsYlmRX3KgsZxBixDZwTjd3T0NA27ihXNS4C7ZWh9d61VNNZU7uut/2i/NXyx7T8wIcKcy9EdUpP5HDYGTpw1TEAl1MAoTFbfrFk32ARMksG0r0ddK7OzDAoEoR7AmDagxrAa5Y9pycMulJpy0OgvnzBQn+EqYdz2pzfeWuWuomeIHYWKvw2omUD/nqk0/vY4qQoW5WS4Wbr8B8/NmGL8Rt0b2l/sfuaKtQy7690ocesRomrIzwInYFJ907laa2uBOlpgbI/V7v62tiuNTSukDZ73eeDHOvJ4+X+NvHQx7ajp6RfirjP4YmweuUeFShq
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id jg8-20020a05600ca00800b00410820995dcsm10446311wmb.23.2024.02.13.00.41.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 00:41:25 -0800 (PST)
Message-ID: <959b8135-a687-4781-993c-5fa5ba3b9c8e@linaro.org>
Date: Tue, 13 Feb 2024 09:41:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: arm: amlogic: add fbx8am binding
Content-Language: en-US
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <8a148279-05e1-4f00-87c1-6ed9ed1cb3dd@freebox.fr>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <8a148279-05e1-4f00-87c1-6ed9ed1cb3dd@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 18:50, Marc Gonzalez wrote:
> Add binding for the Amlogic Meson G12A-based Freebox Pop (fbx8am).
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>   Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index caab7ceeda45a..fce12e44c00af 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -148,6 +148,7 @@ properties:
>                 - amlogic,u200
>                 - radxa,zero
>                 - seirobotics,sei510
> +              - freebox,fbx8am

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

Best regards,
Krzysztof


