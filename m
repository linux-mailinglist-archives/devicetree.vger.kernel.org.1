Return-Path: <devicetree+bounces-91382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 968879491C6
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 15:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20A6F1F21F25
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 13:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F051C4618;
	Tue,  6 Aug 2024 13:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WEbliOug"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B096819F464
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 13:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722951671; cv=none; b=MKkG+YLaSeWJBYHx78ak0AQm+9cPItLEdt7kCkSYVn1+e2daZTYWGU9vZ5nVSgwo1cr/J8fJiN504a4xP9StrM1Tox0Sl5lcTw/6LPeYUZe/BIJxYnp6d45tiPbJjGwt6C0Obure4dweaum/hCsj0nyvXd2M5dc7Rv4lwAIfc24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722951671; c=relaxed/simple;
	bh=vTKjrkoKXVk110tUASFUoc/c0YV0HsO6L6VCJYYu7A8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FffF3GTwqTpo/whe/KZgj1JsR6+SsyVXb4xGdsbHmJqzazqpeGFSf4RX6hHqAqjk8V6pCkTf90ZFCkLRA8ZgAzjORy4mqRzpkDd+9ojynafhofNfsyD3MgPLLacdyfGa1qA5phZEb9Z20nvvmOhXLcS7tufJ3Jbl0QzpU9GDu90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WEbliOug; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5ba43b433beso680384a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 06:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722951668; x=1723556468; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KjZ+B7CJjhqP+m/bO5FTOcwF44QxPo4QaXX1t94Cl0s=;
        b=WEbliOug2N7SqUG/u2RGo0hYPDRMTrgUkrjIebjFlsCocBzfjTMbSzT4YpBuEw/7hZ
         mwCPDe+lmIpc40r/iivHdY/SXq5BqTwUDjZBHsFxg7WOsAT9iNKB2aKf3OGYhn+wtDoH
         0+i73yYTAkCynKZ49jJmo3ACJqg5cbMd7bHV9XRzF9NkWoMm8VBHJCjgjDnkh1wY7G+Q
         JHnVd0KnoNsmJ0YSsm4/dL59H3OnXAVzBnsYslAfa4iLcHC/62Ta5fe95jtK56uaMWxJ
         j7PqaFUOIuI6QcNNaKqsk432iNNVY5dHRBKZASWg+6Rr7K4+TN+4puzGexis2dBRv22F
         tfZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722951668; x=1723556468;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KjZ+B7CJjhqP+m/bO5FTOcwF44QxPo4QaXX1t94Cl0s=;
        b=XerCoP4F8YU2GYsAUQEOqigWdzs4nGb6A2u/Rtv5DsV5fPXuHhfeesy7Vdjkr32uGj
         eM47dTJw0XNCPEBEseaDk7c6bk1xdJG+wks79sZEtPy0JsQENHUvM2CSz4H6ezv/M1Rp
         R68KXBHw9rLxBTS6Q5ZIpPsz9tnhj/Vy8wtMgqjWEOO+17f4l9zbWs/HiCWwp9aWpd6B
         8FKMZNnKZ9MdNiaTMW0BMCDA92p0ON8qUNfptKW4BJxEKmx+5dnCGPT1bSf+LR/eHNK1
         205NGdeKAelKDvFBJFgJI1qDlpFswb33JciuUg49CnoHgv3L2YooMBt676RaYmUOTG5g
         Uxdg==
X-Forwarded-Encrypted: i=1; AJvYcCX3TpFOzCnsmbNh1NXQ0E911hZASCu3vf0g4ckInRGId2flOLuglHGoIATszMMhnH28QuSxqyC1kI5FZCH+wfaPz7Hc1nV0NSaOwg==
X-Gm-Message-State: AOJu0YwO1C2TMV8sV1yWHmttQecKfBcuKye2ndxxHfRWtiHluqPwEL7q
	dGE4xcW5yuslbUbMfQB2IdEedZp8uAxR9IklWO6fh3R+lVgaenIx/nEdCovG1xM=
X-Google-Smtp-Source: AGHT+IEr9YokcXMFBhP43yTLvzGZokvFgQOPmaCReSryinLWQzINmjuvffqaX2333pZrwtWihkAxXg==
X-Received: by 2002:a50:e613:0:b0:5a2:6502:b2ff with SMTP id 4fb4d7f45d1cf-5b7f36f8ac8mr10861582a12.3.1722951667914;
        Tue, 06 Aug 2024 06:41:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5b83bc4b902sm5938140a12.79.2024.08.06.06.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Aug 2024 06:41:07 -0700 (PDT)
Message-ID: <dcc40975-93f6-440e-8887-7a40a0cb3898@linaro.org>
Date: Tue, 6 Aug 2024 15:41:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: regulator: mediatek,mt6397-regulator:
 convert to YAML
To: Macpaul Lin <macpaul.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: Bear Wang <bear.wang@mediatek.com>, Pablo Sun <pablo.sun@mediatek.com>,
 Macpaul Lin <macpaul@gmail.com>, Sen Chu <sen.chu@mediatek.com>,
 Jason-ch Chen <Jason-ch.Chen@mediatek.com>,
 Chris-qj chen <chris-qj.chen@mediatek.com>,
 MediaTek Chromebook Upstream
 <Project_Global_Chrome_Upstream_Group@mediatek.com>,
 Chen-Yu Tsai <wenst@chromium.org>
References: <20240806122507.2766-1-macpaul.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240806122507.2766-1-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/08/2024 14:25, Macpaul Lin wrote:
> Convert the MediaTek MT6397 regulator bindings to DT schema.
> 
> Signed-off-by: Sen Chu <sen.chu@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>


> +
> +patternProperties:
> +  "^(buck_)?v(core|drm|gpu|io18|pca(7|15)|sramca(7|15))$":
> +    description: Buck regulators
> +    type: object
> +    $ref: regulator.yaml#
> +    properties:
> +      regulator-allowed-modes:
> +        description: |
> +          BUCK regulators can set regulator-initial-mode and regulator-allowed-modes to
> +          values specified in dt-bindings/regulator/mediatek,mt6397-regulator.h
> +        items:
> +          enum: [0, 1]
> +      regulator-compatible:
> +        pattern: "^(buck_)?v(core|drm|gpu|io18|pca(7|15)|sramca(7|15))$"

This should not be needed. Same in every other place.

> +    unevaluatedProperties: false
> +
> +  "^(ldo_)?v(tcxo|(a|io)28)$":
> +    description: LDOs with fixed 2.8V output and 0~100/10mV tuning
> +    type: object
> +    $ref: regulator.yaml#
> +    properties:
> +      regulator-allowed-modes: false
> +      regulator-compatible:
> +        pattern: "^(ldo_)?v(tcxo|(a|io)28)$"
> +    unevaluatedProperties: false
> +
> +  "^(ldo_)?vusb$":
> +    description: LDOs with fixed 3.0V output and 0~100/10mV tuning
> +    type: object
> +    $ref: regulator.yaml#
> +    properties:
> +      regulator-allowed-modes: false
> +      regulator-compatible:
> +        pattern: "^(ldo_)?vusb$"
> +    unevaluatedProperties: false
> +
> +  "^(ldo_)?v(cama|emc3v3|gp[123456]|ibr|mc|mch)$":
> +    description: LDOs with variable output and 0~100/10mV tuning
> +    type: object
> +    $ref: regulator.yaml#
> +    properties:
> +      regulator-allowed-modes: false
> +      regulator-compatible:
> +        pattern: "^(ldo_)?v(cama|emc3v3|gp[123456]|ibr|mc|mch)$"
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    pwrap {
> +       	pmic {
> +            compatible = "mediatek,mt6397";

Messed indentation.

Use 4 spaces for example indentation.

Anyway, drop top node or better move the example to the parent device
schema making it complete.

> +
> +            mt6397regulator: mt6397regulator {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +                compatible = "mediatek,mt6397-regulator";
> +
> +                mt6397_vpca15_reg: buck_vpca15 {
> +                    regulator-compatible = "buck_vpca15";

Drop, same in other places

> +                    regulator-name = "vpca15";
> +                    regulator-min-microvolt = < 850000>;
> +                    regulator-max-microvolt = <1350000>;
> +                    regulator-ramp-delay = <12500>;
> +                    regulator-enable-ramp-delay = <200>;
> +                };
> +


;

Best regards,
Krzysztof


