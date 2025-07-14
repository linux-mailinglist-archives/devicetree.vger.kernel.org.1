Return-Path: <devicetree+bounces-196067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAC0B04120
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 184DF188D0A5
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 14:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E28C255E4E;
	Mon, 14 Jul 2025 14:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U4TgVQW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE1422129F
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 14:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752502439; cv=none; b=VnXoIOdMzaJu/zY8EkgJUYRoJN1VQ1k7PkscpYt6C8QSZODie6tpRV1PUdb4y34Nk2iTCFBgSHySt9vnfVwO33KgVq0LKOJNkzdzCc5/561zP9VgmZd47LMWGGyaJZEuJKay15JgxCr6tnuQ7WPlzJ5NfTaDVh9NfAd1vWhP4Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752502439; c=relaxed/simple;
	bh=wCIdKtNSrC0FHDfQjLImfojsGLriWqqzsA7IN5oCePM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qmcsAX2+O/huvP1gkfnqzlXIsUUiRiuvYVKxDty1TrmShnQgXioZgPsnM6MEcw6PLR8bhDX7fEbjItTP/w+G5wXiYd7iyQpT7uufI9MtCAGZRHW/ndtRmfp0ZT4ApkfeHO2Dzt3kG50hmLaz9OaW/qU6AGCZaJ258e+Q4u00z6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U4TgVQW4; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-32f474ded39so3871551fa.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 07:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752502435; x=1753107235; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OiyN54HqkGhaI3X2oE54WY0+m9go1W47ITpgZXXs7J0=;
        b=U4TgVQW4o4706aj+htZpqRSmaNX2SHB+0VSeQkNVAWvrmY8FXCHT2rtlbBOrXzSOiS
         WfcxnOIjuCjAJ/yubGqQHIwHRFQDXxdbvibYbIXJKCzyN8DOLIaYzGjboJxupGEnLxHb
         tvz2Stl9Yxh5XprlP019NdEgnsLiNHOiI/TqfSXLRQsHoAcwdG1xwR/STBIBZTzfEX4n
         rR9YtkKibR4Ll7Ev6dbHW+NL8r6GJsLYbwLhehx3qiyvKLEejOHBp3cg5pthx4W76rNe
         FQj4Zj68II0XnadD2u0fbjdDCJE4SecWqp14e+NjnXuY0nhCgxB3BdZrvCZvbbiFyrzH
         VobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752502435; x=1753107235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OiyN54HqkGhaI3X2oE54WY0+m9go1W47ITpgZXXs7J0=;
        b=WE0vSJ8yyWmlaFtEB1JzsgnJrGq5F+Qa9pVb62i+AWoBPYY5oqXsBG7/gsVKSrChbe
         QUWceu42A+czI+W+DjKPopqhDwNc7x/GO7vsMxNHIMj573rYJA5qoxgTtfKR8hajzbKQ
         MA8N4Ft0/r2Bg/SyeFv840gJyZihbPMOORJpOWfRZRWQDu8FuNfI/yrYsOok0yshdZ+D
         iF852OwfdL6N8Q1Ls3c55tydkYiwnBcavng3+vVK0dHRkGkVx1M8qzBcKTYH9thPfQlN
         29rrqgTjHLqSXGEhnW6bFzh3rWqy9EUOyi9JbaMbFipDRUoPyw8hwEzb6HtHuWSqV5XG
         JV7A==
X-Forwarded-Encrypted: i=1; AJvYcCX6zEWiZb4dozaLfytuZ72xoKsQA6eSZgOlM6rmUNdec4e3Zcb2pL8mzbkAPsCMsQE94WP6ZdJGA1KY@vger.kernel.org
X-Gm-Message-State: AOJu0YxrMZbHEJ18QqjVXuSwY9QxFYiBdLf5b5vIJ61Jc/pfoZiPXrX6
	NQsrFJH15/udkvwrsux7YMXdmVVyXAhT4AYYqQoV/GdJYiYV8qtGNXVgKadCGCfhT7c=
X-Gm-Gg: ASbGncshHN64QUEfeAjBE1lBuwZWaF5cQ9041/3FbMM89sNo7ewwAvM2NDp87K5LWFP
	N9UXz0Om2aw8q3Wz/r9f4EMxyDcsQCAs1X1Y+CWsreY1+9Uli5LcaqGUEkVhy+lSJRhtZ1G/KzD
	Q/ZNpJx3UMHowc6b84iNqHUo6jXTkciC7p2wmiDic7bY86yH8lrtQUF3GhH5Lbl9IqtCJ6oLu2E
	UnPde0F1kLRr3IqsRwsJXH7NK4VQm8LxcuWqPB6qC49bxv3Y3ljyt/Xa4BnoAonHHPL4gknElod
	OQVENU7CJT/jLjkhNAY7xZcGXRNomxGfARHirsNamteEZ1z9mFrSvTZuNZt2CN7WLu7Z8cHaDWp
	Sawsus3O0THC89vBTqWjmK3jEQfo7lUyVw/TbJgzXv99j8m3XCgZgsgTw+WkmmoztpqVAkPqjZ8
	Vj
X-Google-Smtp-Source: AGHT+IGC8Q7q44pTIG5Hqdyx76e0tz+NV3O/Al80pmn7k0s9+o2E96eS2uXy7hjZVJc9Tqvik/DEmQ==
X-Received: by 2002:a05:651c:b21:b0:32b:3b00:406b with SMTP id 38308e7fff4ca-3306ce94988mr4877941fa.4.1752502435259;
        Mon, 14 Jul 2025 07:13:55 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8ed35bsm15350211fa.84.2025.07.14.07.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:13:54 -0700 (PDT)
Message-ID: <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
Date: Mon, 14 Jul 2025 17:13:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/10/25 19:16, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> have their own pinouts on the SoC as well as their own individual voltage
> rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml     | 95 ++++++++++++++++++++++
>   1 file changed, 95 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..e0976f012516452ae3632ff4732620b5c5402d3b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm MIPI CSI2 Combo PHY
> +
> +maintainers:
> +  - Bryan O'Donoghue <bod@kernel.org>
> +
> +description:
> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
> +  modes.
> +
> +properties:
> +  compatible:
> +    const: qcom,x1e80100-mipi-csi2-combo-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_axi
> +      - const: cpas_ahb
> +      - const: csiphy
> +      - const: csiphy_timer
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +  phy-type:
> +    description: D-PHY or C-PHY mode
> +    enum: [ 10, 11 ]
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - vdda-0p8-supply
> +  - vdda-1p2-supply
> +  - phy-type
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/phy/phy.h>
> +
> +    csiphy0: csiphy@ace4000 {
> +        compatible = "qcom,x1e80100-mipi-csi2-combo-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <0>;
> +
> +        clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +                 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +                 <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
> +        clock-names = "camnoc_axi",
> +                      "cpas_ahb",
> +                      "csiphy",
> +                      "csiphy_timer";
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +
> +        phy-type = <PHY_TYPE_DPHY>;
> +    };
> 

There is no ports at all, which makes the device tree node unusable,
since you can not provide a way to connect any sensors to the phy.

--
Best wishes,
Vladimir

