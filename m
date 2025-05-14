Return-Path: <devicetree+bounces-177161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA91AB68D2
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 12:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2B723A562B
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9504727056A;
	Wed, 14 May 2025 10:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wc/IYILC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9434325DD09
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 10:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747218583; cv=none; b=mvIZxVtQY/UVT77sYek0wmVK44Nhc+2hdVL5g7/hVHNP/9jUGm4+rHm9e8UtfM2RkDIkb7t4gxiAD9BKcCJTJNaQc2sHZWLd9eNgf4SNPUVyRqWzNVGFQR8KLxJC34EB/GirCnThax7CvPlU8swF6G+/OhNCRSYJrY+5AJD2vTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747218583; c=relaxed/simple;
	bh=RJXzNpSAcHShZIk1m3pF10sKxteBO3dbbHyuTCEUET0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hTnwsH386yL3WJpplq/4swbd0CEHvMWAP14yXYhd1i1erafD5YmIUcgWXE1M/ZfBGQsw6c3ei+x+uyGx/cWjGqVCQ8WSJCMQ5YIKG6e8LuCiQF7z2U6ij1ZezK8c7dZ7uISq3oA4r27R4mTtrMn0tu+gs4K5BMlDOqhlcWMv250=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wc/IYILC; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a1f8c85562so3516751f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 03:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747218579; x=1747823379; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ePg3tJASnNM57hKgSxlRFPyIUggUvcLPatD9RWreDX0=;
        b=wc/IYILCdyTZwyYLsmj6LmxC1XzenpiBhXItxOi/vWPh6CUIQoI7MjkD7/v5g925oQ
         Uh9mHCGQKiqzDUH57dKUEImq8TlZ/QCTo/pC0n+Yn8UjmYVgmh0iv4637kGDqRqv6vDe
         TFCqmGNA/S3v9OANIxUcwqUSxWNOzHuf+XPBSoG50ZyB32pfgNM6TX78TcOPajEB52x5
         iPlZePEIgBrJ9eZRHPnZLrpiOWdUa1qayVTAJ6jLVs1HRKhVHgFiGrWuGT7d5ZdB0hwE
         r3zDMOybz4dmAYAi4b9cn3ll05eRDovlu/8YzWjgIQ9dI9FxpMzysmFS0zKyAmzUPyvi
         qBPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747218579; x=1747823379;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ePg3tJASnNM57hKgSxlRFPyIUggUvcLPatD9RWreDX0=;
        b=Jqu6cdoKM3iFmTW6lS4n0nkCvWiP+A/llaTmdVSN8ICzp88Bp8bY4/7SQZYN/0THQC
         KZ4xyx1U1/ixG3KI5QA82+hAGGxtaHkkNpvEOf7GSnVGiQluqdr6jlVMkoNso1QkRyeT
         brElch8JPFV6EKh850blRmCB/uAAnFtz8kWgRCSisFwUS0hHTgrS9Z8xzKOaXdZBwWMI
         +6ChOuXIGRbATEgk7Q/fZhXC3SeXroDbPrJJSQ/cngoo9gKjJy+ae0cFyFI9n5iG9KeF
         jA2AJ6UmTULHcoS6pms1/ZoMO+Ujy2xb4u/5GLGVRx0SQkIBy49lZxeNv5XJlf+g/uIS
         wFow==
X-Forwarded-Encrypted: i=1; AJvYcCWuLgpHvuvs0OpBoGXaUpBcOgUMZHrEKd1o2wzz4k29Xhix0qPSMlz0xZQQGs3MVlZ9n777YBOjmH2f@vger.kernel.org
X-Gm-Message-State: AOJu0YzpXPvevPiVE2wPSLaPLlgihAI0MntcCFJ3KQ1jdTOlA6/iiY8k
	Y5Iaehxa2MYVSVhwnlFq21E6Ma3rgySjb5Ughovn3aopUouOFre6GDeu7mLkS1U=
X-Gm-Gg: ASbGncs1afhlABD84yMWjhHmWn3rPEJ61yrlQrgWcdzMYizhtlghEUUd0hSzfg1z5Rw
	CqDhvJJio70KRP6pN9D1LNj0GlUZpMJ9B1tF12xnATJgMML4V6siOBC4bQ1xXjzRRHJjVJ7WxYJ
	+ivY9U/4hGKuKXv5RBly9OSkOU0GY8iJZtdrTOtV6fD6/tG6DC7kbtP7P0jNld/kYI8zETdJHc7
	rT5jypcVg3QWxgtzHb3jslysHw7MMpxPtEeY1q6sND9kSwKBEJNXl9vo2nMgOlTHFg/JOEkQPmJ
	nlggevPCtMKEbEqyxtxu29lNHq0hSX2bBxDcT3gfiCijBZuVPSdD0PNyc3YU1dDUZArY8wlZZS3
	4fJsnC+c7DVNS
X-Google-Smtp-Source: AGHT+IHjhoBaynMax8DR4vj3heXMVE+0fDfHEiV7SJCVMWgYWeESkB2IAbrN10SkOnXtoBTQY+++DQ==
X-Received: by 2002:a05:6000:18a5:b0:3a1:fd29:b892 with SMTP id ffacd0b85a97d-3a34994b07bmr2207420f8f.49.1747218578833;
        Wed, 14 May 2025 03:29:38 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57dde01sm19583563f8f.15.2025.05.14.03.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 03:29:38 -0700 (PDT)
Message-ID: <5905cee1-9ad3-4984-86b4-1709aaed1c1c@linaro.org>
Date: Wed, 14 May 2025 11:29:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/05/2025 15:39, Vladimir Zapolskiy wrote:
> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
> MIPI C-/D-PHY interfaces on Qualcomm SoCs.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>   1 file changed, 110 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> new file mode 100644
> index 000000000000..ef712c5442ec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,csiphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm CSI PHY
> +
> +maintainers:
> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> +
> +description: |
> +  Qualcomm SoCs equipped with a number of MIPI CSI PHY IPs, which
> +  supports D-PHY or C-PHY interfaces to camera sensors.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sm8250-csiphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vdda-csi-0p9-supply:
> +    description: Voltage supply, 0.9V
> +
> +  vdda-csi-1p2-supply:
> +    description: Voltage supply, 1.2V
> +
> +  '#phy-cells':
> +    const: 0
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    description: CAMSS CSIPHY input port
> +
> +    patternProperties:
> +      "^endpoint@[0-1]$":
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            minItems: 1
> +            maxItems: 4
> +
> +          bus-type:
> +            enum:
> +              - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +              - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
> +        required:
> +          - data-lanes
> +
> +    oneOf:
> +      - required:
> +          - endpoint
> +      - required:
> +          - endpoint@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - '#phy-cells'
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8250-csiphy
> +    then:
> +      required:
> +        - vdda-csi-0p9-supply
> +        - vdda-csi-1p2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,camcc-sm8250.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    phy@ac6e000 {
> +      compatible = "qcom,sm8250-csiphy";
> +      reg = <0x0ac6e000 0x1000>;
> +      clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
> +               <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
> +      interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
> +      vdda-csi-0p9-supply = <&vreg_l5a_0p88>;
> +      vdda-csi-1p2-supply = <&vreg_l9a_1p2>;
> +      #phy-cells = <0>;
> +
> +      port {
> +        csiphy_in: endpoint {
> +          data-lanes = <1 2 3 4>;
> +          remote-endpoint = <&sensor_out>;
> +        };
> +      };
> +    };

I have something similar in the csiphy rewrite I've been doing.

Lets sync up IRL to discuss.

---
bod

