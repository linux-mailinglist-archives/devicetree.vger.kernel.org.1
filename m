Return-Path: <devicetree+bounces-47798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC5886E9A3
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 20:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A70F2B28EE9
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 19:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 837CB3B79C;
	Fri,  1 Mar 2024 19:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ea8WiC1u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D86A3BB36
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 19:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709321449; cv=none; b=Qtckh8TS2dnUCYk70vL4dBpC/Q1+XBnwhD8mpjiPt3viaOdOZEKBwrqR1my16T7i3FsMydjXbUPJUzMssExbhqR/E2SDjT0VcjaQ42Vtf75ImFyOiIlpcSjH1RxgCiaicxCdEwdvZ/J3A4ALVuCAsmp4mHoefDa6eUh7OF8VEZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709321449; c=relaxed/simple;
	bh=bovezvqHWUeGRLJrL1za6GTBNIWSNaKOq8obIMP1cqQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Giw5ebcMZt3cAY8vBAvWsIa2kzDUD09osysPbaRD7hpHO0nEIdCG2SR3ZpV0lu5zs2/kDWl8NMq0JXJBiuvAVAoa5vr4Cfu5VwfbY0/objl1pk8X87bSPf9dKMemLEIRMWbqUJWTQpVEheA2Ywrtrolmh8sw6Cejypkh8snfyLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ea8WiC1u; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56682b85220so4398394a12.1
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 11:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709321446; x=1709926246; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZQMRmheFifq/WpXDe3SA79/DIiAdiSyLo/HW0/iubJ4=;
        b=ea8WiC1uA046zkwIPIp5+yxdmx4CMYrSY9TCxmmGwkOydeNavDz+x2b0AAM4NIOEYz
         Hfr1MO7VpPdKBe2Zs9AwEVotheIa+2I3BTdTes1HTQWKF77EBOGaAULVntJacX6H7dmC
         UA5J6CO5cub/a66aYgKh7FK/aXywxtSEZ7bOWSMzK7lN0MFKPBRqD0thaZi5EUcOio7Z
         1kQY5Z1bTPCnQgMm/vNh3Tln0h6x3ac6Mv+hm6M1twBRbVGi1+OBPboZp/rLoo0f4A4X
         G933lLj/4RMTiKt2V9NoCnRhUNKqGcza6ca26FDzqN4ywJm5t0nJ73eOXajh81Lf9j3I
         +Uxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709321446; x=1709926246;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQMRmheFifq/WpXDe3SA79/DIiAdiSyLo/HW0/iubJ4=;
        b=ZAidNKEZbV1BiBgM+CaaSGuM1dADPLsVeSIbd9ep8dw12K25i9o98C/Ja66wrOaXDq
         MpHfdj6W5CRDV2KtJx+6um7ObOgqR1cffd8a0Wy0GJtOFMcCLvoD9AcLMTqyG7PcsXUt
         lZ6w/qxNW6Pl7kMSQOVx3j9FetCClAhT8GJid8T17kgDV9KbQpWUqkBKGy2Kxf1n3XYc
         r2xKr2ByLXheuoIZZ/gfAFWqPdVyBBLSIE8u7SXRoMUIcy685QisrkWZo6Hsmwg7wZti
         /smjvZIH45duwgqNDl8OoVmJOKJl4ZFivuc8fFgxHtZn2oajwOBNtjAu2AJMQoU20EvD
         MnbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTCIX+9dQMSL+DUXyqqG0Aa3OgZUU9Mh9spDSsEXCWSkyxlGla7GTY1ozH//ok2NAF4IbNCbEKy+yOeS5NwTknh+EVh5xFl2dNYQ==
X-Gm-Message-State: AOJu0YwG1n7bINV3kYU/LQHPozo8c4SYWIIY6CqcTJ/3KAszmNFOK65m
	UAtDwxJV7urJaNKDa1qcihJjs5hnyXtC187wYI4Pjhpx8dLAkpDdhtAKnISxjSg=
X-Google-Smtp-Source: AGHT+IE4ArrojHin/rL/6cNIV3f9HYnBd9lNkk1MtDa+7rcyZZJxYufn+4934WH67fZ9s9jslTb8Vw==
X-Received: by 2002:a50:cc4d:0:b0:566:418d:7ba9 with SMTP id n13-20020a50cc4d000000b00566418d7ba9mr1903028edi.1.1709321446007;
        Fri, 01 Mar 2024 11:30:46 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id m13-20020aa7d34d000000b0056486eaa669sm1818680edr.50.2024.03.01.11.30.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Mar 2024 11:30:45 -0800 (PST)
Message-ID: <9fcebf32-a3da-49ab-b3d9-9450fb7e1985@linaro.org>
Date: Fri, 1 Mar 2024 20:30:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: remoteproc: Add Arm remoteproc
Content-Language: en-US
To: abdellatif.elkhlifi@arm.com, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Drew.Reed@arm.com,
 Adam.Johnston@arm.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-remoteproc@vger.kernel.org
References: <20240301164227.339208-1-abdellatif.elkhlifi@arm.com>
 <20240301164227.339208-4-abdellatif.elkhlifi@arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240301164227.339208-4-abdellatif.elkhlifi@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/03/2024 17:42, abdellatif.elkhlifi@arm.com wrote:
> From: Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>
> 
> introduce the bindings for Arm remoteproc support.
> 
> Signed-off-by: Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>
> ---
>  .../bindings/remoteproc/arm,rproc.yaml        | 69 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +

Fix order of patches - bindings are always before the user (see
submitting bindings doc).

>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/arm,rproc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/arm,rproc.yaml b/Documentation/devicetree/bindings/remoteproc/arm,rproc.yaml
> new file mode 100644
> index 000000000000..322197158059
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/arm,rproc.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/arm,rproc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Remoteproc Devices

That's quite generic... does it applied to all ARM designs?

> +
> +maintainers:
> +  - Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>
> +
> +description: |
> +  Some Arm heterogeneous System-On-Chips feature remote processors that can
> +  be controlled with a reset control register and a reset status register to
> +  start or stop the processor.
> +
> +  This document defines the bindings for these remote processors.

Drop last sentence.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - arm,corstone1000-extsys
> +
> +  reg:
> +    minItems: 2
> +    maxItems: 2
> +    description: |
> +      Address and size in bytes of the reset control register
> +      and the reset status register.
> +      Expects the registers to be in the order as above.
> +      Should contain an entry for each value in 'reg-names'.

Entirely redundant sentences... instead this all just list items with
description.

> +
> +  reg-names:Do not need '|' unless you need to preserve formatting.
> +    description: |
> +      Required names for each of the reset registers defined in
> +      the 'reg' property. Expects the names from the following
> +      list, in the specified order, each representing the corresponding
> +      reset register.

Really, drop.

> +    items:
> +      - const: reset-control
> +      - const: reset-status
> +
> +  firmware-name:
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      Default name of the firmware to load to the remote processor.
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - firmware-name
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    extsys0: remoteproc@1a010310 {

Drop label, not used.

> +            compatible = "arm,corstone1000-extsys";

Use 4 spaces for example indentation.

> +            reg = <0x1a010310 0x4>, <0x1a010314 0x4>;
> +            reg-names = "reset-control", "reset-status";
> +            firmware-name = "es0_flashfw.elf";
> +    };
> +
> +    extsys1: remoteproc@1a010318 {
> +            compatible = "arm,corstone1000-extsys";

These are the same examples, so keep only one.

> +            reg = <0x1a010318 0x4>, <0x1a01031c 0x4>;
> +            reg-names = "reset-control", "reset-status";
> +            firmware-name = "es1_flashfw.elf";
> +    };

Best regards,
Krzysztof


