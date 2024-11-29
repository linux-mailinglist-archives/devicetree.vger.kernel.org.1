Return-Path: <devicetree+bounces-123366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D19519D4445
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 00:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90D79282C1A
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 23:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FB2E1C8317;
	Wed, 20 Nov 2024 23:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WaOoXn9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0188319F410
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732143746; cv=none; b=HmI6l3jDRZtVD1Gx5+M22RxUGCZH7Y6xusMWEju+CgTKllJ1pQhczXMiHAUdbdATFEp2JdC1NQjwrBb7TUL06sqyYQCx8MyRywtHPbRMIce/hhVMZ8pY1g9INxgibJvSRhpoiikGe+bzVT+37VdXXroTKkSaHj0tjAHNLm5c9h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732143746; c=relaxed/simple;
	bh=r722JIbjWKTV6x5kIRUMPrrtZ91RAYRiLvlDgi1scsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JXRcCH6Cvy92rNuazTHvkNHpA55NhPQEDzIEmXLJDr/mcEe8cL/hpQ6RsROv+j9CCe+sFzpXxd2uFA9rKhs33nA45TTLLoeliAlUdj/N68oF4XxDglEloP581D83vQoEzd59E8HqRHnhwPJPLMbpx0lwMC/ouoXvzYoNyToonN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WaOoXn9t; arc=none smtp.client-ip=209.85.167.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f68.google.com with SMTP id 2adb3069b0e04-53b15bc0731so7139e87.2
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 15:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732143742; x=1732748542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C99xPu0F2JrLLvKVuob7osXujIs4pqASysQpASNt43U=;
        b=WaOoXn9ter8ri2p2KOWZL+1QR70McZ6/gJJ1dCWTQArNeJJV3CcCCdzTQMm6//Hiw8
         MkY4fV/T8nXQw0h91ZuCnTVajQWhu76QYG+80re/aIaP7U+Xmf4NeE24wUl3cWv5AMGv
         zLCLRM8CLItyQ91JCPsUOBUJ6OZ69shr4HO/zK++sulV6E9ZLJWWN/Dw/oOOzjcLyrKZ
         ic7FONw2lGOvK2cl5XPJOXJQekCYEQeEa1U/laPF1790PVScsy9ONKK0+FQQexOxLNoa
         81yU6IK8txaFbScrwvRGzzoyDm1BbCT0030TyGPkvWu6u4pqWLsFuaNBVJCMv4XofbVo
         OQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732143742; x=1732748542;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C99xPu0F2JrLLvKVuob7osXujIs4pqASysQpASNt43U=;
        b=FM3pv08qGPRFlgyYHk7TVHh8TqgO2/tXV9FHEmruF24m9F9+i40voEUEWaWZxBCNKF
         NHdDwMXRv1y+tbfmCKr25j2kuSIHIG97RA0CH6ULReqeDMkEIJrP0cb6jWr0BP7342d/
         UcfSagBulYC2JnmeYk2bLV3E6fCYCP04wm2+oJmuzYi6VxATx6oPOotWAozSjDCSJQTe
         PRe6s1Y6imA2E0JDZ/zT8UGSv36F6AgXfwBZmImP8I32juWdkJwv/jfJHrEeAaz2JZzc
         eMeNLFwzcFEjurcQ51mEIAskCO86n/whFNY1exUYQ7VRPDBruiSWPH7Nc+WnQaw5OP2C
         WJMw==
X-Forwarded-Encrypted: i=1; AJvYcCV9RzjgSSBf7Kq48ZuGjoBMXa4WNWG6TIGI3GzLCrHiKHelyLkdgndx9Xyyg86HnJEiR2hUEbZmT+8v@vger.kernel.org
X-Gm-Message-State: AOJu0YwIj5wfEFQ/AEDae6Ib2ZcI0CW2rRLlkT9ghVkWh6CHOsVJ1iMj
	qZhYAeptuHI/sgZPxvRDv8AOt0+viLwGcNKVboXaXJFIDM5K+i1RC9CgRHhuKEg=
X-Gm-Gg: ASbGncvTcXpxDQsKXGsMP0pC8pDYgpv44pbJfboPVq+TUP/BWuNiqGEbC6FD3iacTY9
	Pu1KQX5aCPHBGQSxxmWK6wsFg/Q8pWxAGRWNBXQhVc3iVH9v5jBKvUby5NRiD540VT8vqSxMWXs
	FS6Rkhe1X6Ej55hfunjTNekORI3Il5jds92M0xXIO/gyu+aYwLKImqaI1B/VxzBkueDPASluYdd
	HaupNb9PwheCiTz8MVmXm5mmZEP/J3k7BQNfJV/LAvbKVi1hlRll0RPg/ORC/65DCZ1wlRJauYZ
	Fh1QMZu6Mr3MlqS4VtNsqCduGbEh
X-Google-Smtp-Source: AGHT+IF/LUBkOpj9adAK7WT3mpKAbftOM6gI9+oD0hdR5L9Ychgb0xD20dJNLpqrS9C2lqgIaJYcTQ==
X-Received: by 2002:a05:6512:2311:b0:53d:a4d8:1b3d with SMTP id 2adb3069b0e04-53dc1369787mr532834e87.10.1732143741959;
        Wed, 20 Nov 2024 15:02:21 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd3ee026sm773736e87.14.2024.11.20.15.02.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 15:02:20 -0800 (PST)
Message-ID: <bb58d02f-9ed6-476f-8bc6-ad56cb35e37f@linaro.org>
Date: Thu, 21 Nov 2024 01:02:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: media: Add qcom,x1e80100-camss binding
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
 <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-2-54075d75f654@linaro.org>
 <92f3f608-1ca6-4c41-9406-28c7ad589872@linaro.org>
 <66d1c50f-ebfc-41c7-95a4-5d555b336da4@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <66d1c50f-ebfc-41c7-95a4-5d555b336da4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Bryan,

On 11/19/24 17:11, Bryan O'Donoghue wrote:
> On 19/11/2024 14:34, Vladimir Zapolskiy wrote:
>> Hi Bryan,
>>
>> please find a few review comments below.
>>
>> On 11/19/24 15:10, Bryan O'Donoghue wrote:
>>> Add bindings for qcom,x1e80100-camss in order to support the camera
>>> subsystem for x1e80100 as found in various Co-Pilot laptops.
>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>>>    .../bindings/media/qcom,x1e80100-camss.yaml        | 354 +++++++++++
>>> ++++++++++
>>>    1 file changed, 354 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-
>>> camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-
>>> camss.yaml
>>> new file mode 100644
>>> index
>>> 0000000000000000000000000000000000000000..ca2499cd52a51e14bad3cf8a8ca94c9d23ed5030
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
>>> @@ -0,0 +1,354 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/media/qcom,x1e80100-camss.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Qualcomm X1E80100 Camera Subsystem (CAMSS)
>>> +
>>> +maintainers:
>>> +  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> +
>>> +description: |
>>> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: qcom,x1e80100-camss
>>> +
>>> +  clocks:
>>> +    maxItems: 29
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: camnoc_rt_axi
>>> +      - const: camnoc_nrt_axi
>>> +      - const: core_ahb
>>> +      - const: cpas_ahb
>>> +      - const: cpas_fast_ahb
>>> +      - const: cpas_vfe0
>>> +      - const: cpas_vfe1
>>> +      - const: cpas_vfe_lite
>>> +      - const: cphy_rx_clk_src
>>> +      - const: csid
>>> +      - const: csid_csiphy_rx
>>> +      - const: csiphy0
>>> +      - const: csiphy0_timer
>>> +      - const: csiphy1
>>> +      - const: csiphy1_timer
>>> +      - const: csiphy2
>>> +      - const: csiphy2_timer
>>> +      - const: csiphy4
>>> +      - const: csiphy4_timer
>>
>> What does happen to csiphy3? Could it fall through the cracks?
>>
> 
> Nope.
> 
> For whatever reason csiphy4 is the name here. I guess different SKUs
> have been fused out this way. I'd assume there's some version that does
> csiphy0-csiphy4 inclusive.
> 
> Not here though.
> 
>>> +      - const: gcc_axi_hf
>>> +      - const: gcc_axi_sf
>>> +      - const: vfe0
>>> +      - const: vfe0_fast_ahb
>>> +      - const: vfe1
>>> +      - const: vfe1_fast_ahb
>>> +      - const: vfe_lite
>>> +      - const: vfe_lite_ahb
>>> +      - const: vfe_lite_cphy_rx
>>> +      - const: vfe_lite_csid
>>> +
>>> +  interrupts:
>>> +    maxItems: 13
>>> +
>>> +  interrupt-names:
>>> +    items:
>>> +      - const: csid0
>>> +      - const: csid1
>>> +      - const: csid2
>>> +      - const: csid_lite0
>>> +      - const: csid_lite1
>>> +      - const: csiphy0
>>> +      - const: csiphy1
>>> +      - const: csiphy2
>>> +      - const: csiphy4
>>> +      - const: vfe0
>>> +      - const: vfe1
>>> +      - const: vfe_lite0
>>> +      - const: vfe_lite1
>>> +
>>> +  iommus:
>>> +    maxItems: 13
>>> +
>>> +  interconnects:
>>> +    maxItems: 4
>>> +
>>> +  interconnect-names:
>>> +    items:
>>> +      - const: cam_ahb
>>> +      - const: cam_hf_mnoc
>>> +      - const: cam_sf_mnoc
>>> +      - const: cam_sf_icp_mnoc
>>> +
>>> +  power-domains:
>>> +    items:
>>> +      - description: IFE0 GDSC - Image Front End, Global Distributed
>>> Switch Controller.
>>> +      - description: IFE1 GDSC - Image Front End, Global Distributed
>>> Switch Controller.
>>> +      - description: Titan Top GDSC - Titan ISP Block, Global
>>> Distributed Switch Controller.
>>> +
>>> +  power-domain-names:
>>> +    items:
>>> +      - const: ife0
>>> +      - const: ife1
>>> +      - const: top
>>> +
>>> +  ports:
>>> +    $ref: /schemas/graph.yaml#/properties/ports
>>> +
>>> +    description:
>>> +      CSI input ports.
>>> +
>>> +    patternProperties:
>>> +      "^port@[03]+$":
>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>> +        unevaluatedProperties: false
>>> +
>>> +        description:
>>> +          Input port for receiving CSI data from a CSIPHY.
>>> +
>>> +        properties:
>>> +          endpoint:
>>> +            $ref: video-interfaces.yaml#
>>> +            unevaluatedProperties: false
>>> +
>>> +            properties:
>>> +              clock-lanes:
>>> +                maxItems: 1
>>> +
>>> +              data-lanes:
>>> +                minItems: 1
>>> +                maxItems: 4
>>> +
>>> +            required:
>>> +              - clock-lanes
>>> +              - data-lanes
>>> +
>>> +  reg:
>>> +    maxItems: 12
>>> +
>>> +  reg-names:
>>> +    items:
>>> +      - const: csid0
>>> +      - const: csid1
>>> +      - const: csid2
>>> +      - const: csid_wrapper
>>> +      - const: csiphy0
>>> +      - const: csiphy1
>>> +      - const: csiphy2
>>> +      - const: csiphy4
>>> +      - const: vfe_lite0
>>> +      - const: vfe_lite1
>>> +      - const: vfe0
>>> +      - const: vfe1
>>> +
>>> +  vdda-phy-supply:
>>> +    description:
>>> +      Phandle to a 0.9V regulator supply to PHY core block.
>>> +
>>> +  vdda-pll-supply:
>>> +    description:
>>> +      Phandle to 1.2V regulator supply to PHY refclk pll block.
>>
>> I believe it's very unlikely that the SoC pads are called like this,
>> as we discussed it in the recent past.
>>
>> Please rename the properties to reflect the names inherited from
>> the actual hardware.
> 
> I believe we agreed to convert to the PHY infrastructure after 8550,
> 7280 and x1e80100.
> 
> So these names should rename as is.

my ask is not related to the planned PHY conversion, it's much simpler and
easily doable, just reflect the proper pad names in the property names.

There is no such hardware objects on the SoC, which names can be associated
to "vdda-phy" or "vdda-pll" property names. Okay, split of CSIPHY specific
supplies can be done separately, but can you introduce here property names
like "vdd-csiphy-0p9-supply" and "vdd-csiphy-1p2-supply"?

Also you put a description like "supply to PHY refclk pll block", but if I
remember correctly once you've said that the datasheet (of another SoC)
does not give any clues about the usage of the supply, thus it invalidates
the given description.

I'm unhappy that people tend to copy defects, which are trivial to fix or
avoid at least.

--
Best wishes,
Vladimir

