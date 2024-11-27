Return-Path: <devicetree+bounces-125006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7119DA822
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A3BBB211CD
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F041FCD04;
	Wed, 27 Nov 2024 12:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y81wl/Y0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EBC4315D
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732712243; cv=none; b=k77kB3iD/lJ/GrCEoPR3ybeG8ONk/DZ5VDyhNDEQuLFE4iEanA6clmTbVCpLywoNe2z+5DhlG9j4pluHof2Pi4kDT0p+C5XhOjiA/5mZaCBImlhZBd3l3izVishVlUv8UPsLpig+4WOdUY/ITEBG0kdvEq2fNGUaZuuaQ0Vrv+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732712243; c=relaxed/simple;
	bh=/3QVXltBSBnwY1S9HcJrbTDVh0qKiIBiEGYRIXGOvhQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uM/712iCb4huUM1h57H+FtPe9s75l+2F0jXWK0wjVx0MW9M0Tc1MPSBzMHu8di8//E0bDBMNQCxOJ0c8XDbgQAm8eStaQXSdySWMQe3IgDlmeJ3370u0wbasn2qAeM02oo34BRvq1LhCIo0XZmdp7Vk7JYhJfn33T1G7USHvvDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y81wl/Y0; arc=none smtp.client-ip=209.85.167.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f65.google.com with SMTP id 2adb3069b0e04-53ddb4c05c0so670967e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732712240; x=1733317040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GMnA2TIQtFWhtYtMcjnAKHGq49js6Hrus6w+eGXStpw=;
        b=y81wl/Y08+Ru8XEJyIVItSVkx3WjOm+Db1n+dg+aAApQKmZlehnDsNfON6VP1WgnDP
         0/gqK3vGuXOWyxfMio82Nd3tbbQrt27yf8xtoC6X+PfZ8hMKGMr/d3I4vkaQ3NltNPan
         gCovmMGvXUX5PGnkRS30VxMpA3keMmYfJe/A/YRchGOdxXsjRwifXtpwXHoZVzyKGz3g
         Dv6vJp6COx+DregUVD3sa9jA5LREsSOWvy6zX7RMmYFtqeDdMQ1UuqtpAriA8NNMEINf
         i+UaqXo7GJWLMi1krreGXln/mHsObdxD+jERvu9mxieYQ+naq+BjnkVqvbrgKZVhVdFV
         7buA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732712240; x=1733317040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GMnA2TIQtFWhtYtMcjnAKHGq49js6Hrus6w+eGXStpw=;
        b=gVT0lDIfclo7TPWrHAXZ0b6SIZO6eYr24KLGxYeejzIZmtdkeQKtdn74ulOHw//jMv
         crRXleRkAKkFVUokbUjtu/bdwxkZK3fFZswM60wPj6t2pK8aeTlKOLvpZt06i4Q1gT3n
         U8qXABUl9QAXilHApC0CGqtv78quTc5Z/LWyXz/MbHiuSre+uwZWDcbahAHB+mxS8qhT
         /CQ8X4p9IR0HLwa9JscKXOWzYLBNW4WtXdro53wlw29qV6l0dhMrNVy9K2qhNppSpZ5j
         BdunQtFpzPvIsgo6xfY3HcR/aeka4O+dQHPqjUfGrIRpwES/rCayuZqBqb/PWLHB2LJQ
         DpLA==
X-Forwarded-Encrypted: i=1; AJvYcCXRGyfehWMYe24PzzZeEqLDJuAo0BqVijp0t9rFk+CPj5bqv5+ZoH03kEoZ4Shv+Fz956SWQdjyQFAC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0mYEmhzzQgnxT+3p8zcuH3qxz5B02qkSBQOQVEMDoCc5IVcx2
	W7XwfZTQxxQiqYcRg1m3J8mxvjJ1T+Osf3nxdfZv6ORJ8VUCxllHHJrZad/JgQU=
X-Gm-Gg: ASbGncvfj0sHsN636GRjFmz6DWvSSAP5C1W9DXdhoTzTUgiJfDLTCq9wsrFBrybQMSp
	7qQsJaSRNcy9aOeTPzrD+uLU1P3hA+fANa5UtBreP9U+7hkRtgWkeD5nNki9OM3XywfQ1r5R3ts
	AEKWmPAgaBsTPvSy25gahbzTUqcItmVxEHCs8KaP1gsbtpB5/z62OmqfvalJf/Fl082vbJYM7yi
	8Jl7g8vz973pWZkFhsH8q/ryvmIH2ErBdrD/wvHoA37OJJ+X5kKLXW0yRo19I43VKrotfsWWXv1
	bl6sL9kNFqjzJh1vLEHOg6/MKhhB
X-Google-Smtp-Source: AGHT+IEorNTlk8cNgkvDRFQKz1WeQVG+qF6iU+1q8AV+O6kv4z8kbCBsuwDicAF8+/dgchFW5mETbw==
X-Received: by 2002:a05:6512:33d6:b0:53d:e780:3ff5 with SMTP id 2adb3069b0e04-53df010a27dmr318412e87.9.1732712239632;
        Wed, 27 Nov 2024 04:57:19 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53ddd4c8fefsm1587593e87.125.2024.11.27.04.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 04:57:19 -0800 (PST)
Message-ID: <1a87e9d9-da7e-4b8b-807e-f56aa15acfc2@linaro.org>
Date: Wed, 27 Nov 2024 14:57:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add qcom,sc7280-camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 akapatra@quicinc.com, hariramp@quicinc.com, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241127100421.3447601-1-quic_vikramsa@quicinc.com>
 <20241127100421.3447601-2-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241127100421.3447601-2-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/27/24 12:04, Vikram Sharma wrote:
> Add bindings for qcom,sc7280-camss to support the camera subsystem
> on the SC7280 platform.
> 
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../bindings/media/qcom,sc7280-camss.yaml     | 415 ++++++++++++++++++
>   1 file changed, 415 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/media/qcom,sc7280-camss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-camss.yaml
> new file mode 100644
> index 000000000000..6fafb3631b15
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,sc7280-camss.yaml
> @@ -0,0 +1,415 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,sc7280-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SC7280 CAMSS ISP
> +
> +maintainers:
> +  - Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>
> +  - Hariram Purushothaman <hariramp@quicinc.com>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,sc7280-camss
> +
> +  reg:
> +    maxItems: 15
> +
> +  reg-names:
> +    items:
> +      - const: csid0
> +      - const: csid0_lite
> +      - const: csid1
> +      - const: csid1_lite
> +      - const: csid2
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy2
> +      - const: csiphy3
> +      - const: csiphy4
> +      - const: vfe0
> +      - const: vfe0_lite
> +      - const: vfe1
> +      - const: vfe1_lite
> +      - const: vfe2
> +
> +  clocks:
> +    maxItems: 32
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_axi
> +      - const: csiphy0
> +      - const: csiphy0_timer
> +      - const: csiphy1
> +      - const: csiphy1_timer
> +      - const: csiphy2
> +      - const: csiphy2_timer
> +      - const: csiphy3
> +      - const: csiphy3_timer
> +      - const: csiphy4
> +      - const: csiphy4_timer
> +      - const: gcc_camera_ahb
> +      - const: gcc_cam_hf_axi
> +      - const: soc_ahb
> +      - const: vfe0
> +      - const: vfe0_axi
> +      - const: vfe0_cphy_rx
> +      - const: vfe0_csid
> +      - const: vfe0_lite
> +      - const: vfe0_lite_cphy_rx
> +      - const: vfe0_lite_csid
> +      - const: vfe1
> +      - const: vfe1_axi
> +      - const: vfe1_cphy_rx
> +      - const: vfe1_csid
> +      - const: vfe1_lite
> +      - const: vfe1_lite_cphy_rx
> +      - const: vfe1_lite_csid
> +      - const: vfe2
> +      - const: vfe2_axi
> +      - const: vfe2_cphy_rx
> +      - const: vfe2_csid
> +
> +  interrupts:
> +    maxItems: 15
> +
> +  interrupt-names:
> +    items:
> +      - const: csid0
> +      - const: csid0_lite
> +      - const: csid1
> +      - const: csid1_lite
> +      - const: csid2
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy2
> +      - const: csiphy3
> +      - const: csiphy4
> +      - const: vfe0
> +      - const: vfe0_lite
> +      - const: vfe1
> +      - const: vfe1_lite
> +      - const: vfe2
> +
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    items:
> +      - const: ahb
> +      - const: hf_0
> +
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    items:
> +      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: IFE2 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: Titan GDSC - Titan ISP Block, Global Distributed Switch Controller.
> +
> +  power-domain-names:
> +    items:
> +      - const: ife0
> +      - const: ife1
> +      - const: ife2
> +      - const: top
> +
> +  vdda-phy-supply:
> +    description:
> +      Phandle to a regulator supply to PHY core block.
> +
> +  vdda-pll-supply:
> +    description:
> +      Phandle to 1.8V regulator supply to PHY refclk pll block.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    description:
> +      CSI input ports.
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port for receiving CSI data on CSIPHY 0.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port for receiving CSI data on CSIPHY 1.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port for receiving CSI data on CSIPHY 2.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port for receiving CSI data on CSIPHY 3.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +
> +      port@4:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port for receiving CSI data on CSIPHY 4.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - interconnects
> +  - interconnect-names
> +  - iommus
> +  - power-domains
> +  - power-domain-names
> +  - vdda-phy-supply
> +  - vdda-pll-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,camcc-sc7280.h>
> +    #include <dt-bindings/clock/qcom,gcc-sc7280.h>
> +    #include <dt-bindings/interconnect/qcom,sc7280.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/qcom-rpmpd.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        camss: camss@acaf000 {
> +            compatible = "qcom,sc7280-camss";
> +
> +            reg = <0x0 0x0acb3000 0x0 0x1000>,
> +                  <0x0 0x0acc8000 0x0 0x1000>,

Unsurprisingly above is the error, which has been already reported for
enumerous amount of times, I wish to stop poking it eventually, please
reference to the previously given review comments and fix all of them
before sending a new version of the changes.

--
Best wishes,
Vladimir

