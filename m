Return-Path: <devicetree+bounces-188602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DF9AE4198
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 15:06:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73737168354
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F4024DD13;
	Mon, 23 Jun 2025 13:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NCh1IHh0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70B524DCE3
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750683997; cv=none; b=VTAW9RLJRge3qLmy/S/GwLF3nxb3GaqaTU5LQtstVR3yy3DevoJY4dN/GXkAgzSmpaFUuwpJKDQ4acoz0LR29IbKbD0B9rQGTgA/KHYr6nRO0uyZAzjNXO90izfYqRSy8YKP42fuf7nJI3LekZS5y8Udc96m1zdN2nwrShgoGP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750683997; c=relaxed/simple;
	bh=Ssu5m3659nNMrzkp8GTKz8YxIMB7XTwKxR5PImrDZtE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dRl4StRkZWe+9se8u0DIE/HXfdYePDbu8Vn1MlR5MSDoxWYv7zHe6cS2azYqM8+nbJRHTlfsCeWRK6NVSxx+rKuTFgV98+KHyZbF3HtF1zY+2rhrsi0JSldeulzKEkGDAS/5dgyL77AVbGD3k/Fzmo6uPB4h/krN+y2E3uoauqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NCh1IHh0; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-553cbe3e77dso729152e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750683994; x=1751288794; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OPWvvPtyfW6cvFRrpdLyiuP0wVdJIV9Knmno897bePk=;
        b=NCh1IHh0OABZzaEG+ph5Nsttwu1c0AcFXogbrxBMbCYW4uQQ+0MLMG5GG0fv6aTR4/
         0T0GNf2UBaoUti3F8bA4V3OE1o6H+fofpzkJvZZpmKnFK0rK1BcRrsr0DQ84SXjEXn0m
         MksopTZFyKH65lhfynoiGqujYTK2PFVWFOVZ/HePaX15VezlI3//AXJF/ZSHEw3emImy
         wXs+mHCtAFQ8cRN8nUIRjefu5uzuGB7/RZNpAiSWEM3Yq6ze7SqGY+owEx/yu5bV2bcU
         j25hhNTeAdVH1Xhfa4rOIqeoi7TAssmDyuVMbcDAyV0yKw9/le3Ws5OA/DB3L9FbVAY3
         FQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750683994; x=1751288794;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OPWvvPtyfW6cvFRrpdLyiuP0wVdJIV9Knmno897bePk=;
        b=NhHNySgeSnBTvmuzN/8j2gO1fvbt4FoB+AnuYsq1iJo4Ed+FPksrUsQf89AzSQY24n
         jXA59WDkPPCTtGcAlPD4nOJokR+qbaFOFTXaKhXWTEoLqrsYDed7hSCA7hw3NHdkO5ob
         yarcgKqdDC/x2AbL+PUqYDRInIn7m4Mxd3OtvcFRf9S5H1093iJCO9+Wytt1UcWzQF8Y
         7abg9Jw1PbNKPJY9syMJrjMy6Pju1rXtn/romRpPHl1zNQEP3FWwwA+cRfpg0/Y9LwYj
         UbHW0AfrMd3/ABBQK0oDOPM5JxoJN0ssZpoETS9hzzrtKABM75Rkm2DWOLsrsrS3UnYe
         HQFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNJOeTaI+PK5EbTXmTFk9aKqOqE/VsEngIxensZPNmEac11FDRek++jJv/nistgSurUn4Qzzq2goYB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6k1lLchbcPlZAELrvKngL0OsgYm25FJF4F2Uv6sbmofYJIRcg
	MLk1e6w2D6dwaY1FWjdMLNVt7FS1xfvajExk6JymcDO87IYgKmsQmk2mcS4iPFd4jeE=
X-Gm-Gg: ASbGncvcGPiGKsWW9oKYNWkBDpJQCIBNv3uFDs0D2Js/mrUsD9jGreeFs6IOIEwt/nD
	qCOdxFeYisLvFequ4y/3Nw7d3zmdW2DqgamEMBOjwvpEOgDqv91cdRorDFDG8iOpW3GilhVmGU/
	1TOyV2yLByRNcfkmwlbP55DOmB5BGO/6umb51lUDTa5pnEHVcVFPvnG8lz5ZNF2dqP0cJ8cD7wM
	WE6o1a5Yt4Ouzdb7SgazseqWZHbo4RL01GOy18kwVhICEu5mXoEM25qfnRRm8MKA07SKGY6yvcz
	CDJuYnre3+++tfFs5IuRV9gFq/K059+6wEkomxc8hwOZsRU7RL2YxHP4v+PBRJpZCwlJ3mSiGaQ
	EgKQegbF6UW/DUGgIcDxIDuBPPr0GBLvSCDZAJKhe
X-Google-Smtp-Source: AGHT+IGF9wwyM1bJxn+39eMyyDzxWCYd+eWUA0IJo7ppfvKyky3eJv0f+LUJdPW1+5w6MNbHhR98Hg==
X-Received: by 2002:a05:6512:3e0f:b0:553:241d:4e73 with SMTP id 2adb3069b0e04-553e3c07c3bmr1347362e87.11.1750683993788;
        Mon, 23 Jun 2025 06:06:33 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41bc2d8sm1407881e87.101.2025.06.23.06.06.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 06:06:33 -0700 (PDT)
Message-ID: <0aaaf251-5070-42b1-99dc-d9f416340335@linaro.org>
Date: Mon, 23 Jun 2025 16:06:32 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] [RFT] arm64: dts: qcom: sm8250: extend CAMSS with
 new CSIPHY subdevices
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-10-vladimir.zapolskiy@linaro.org>
 <bed8c29c-1365-4005-aac7-1635a28295bf@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <bed8c29c-1365-4005-aac7-1635a28295bf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/23/25 12:31, Neil Armstrong wrote:
> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>> Following the new device tree bindings for CAMSS IPs introduce csiphy2
>> device tree node under SM8250 CAMSS, which allows to perform camera
>> tests of the model on an RB5 board with an attached vision mezzanine.
>>
>> Note that the optional 'phys' property is deliberately not added.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>> For testing only, do not merge.
>>
>>    arch/arm64/boot/dts/qcom/sm8250.dtsi | 14 ++++++++++++++
>>    1 file changed, 14 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> index f0d18fd37aaf..401a32679580 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> @@ -4613,6 +4613,10 @@ camss: camss@ac6a000 {
>>    					     "cam_sf_0_mnoc",
>>    					     "cam_sf_icp_mnoc";
>>    
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +			ranges;
>> +
>>    			ports {
>>    				#address-cells = <1>;
>>    				#size-cells = <0>;
>> @@ -4641,6 +4645,16 @@ port@5 {
>>    					reg = <5>;
>>    				};
>>    			};
>> +
>> +			csiphy2: phy@ac6e000 {
>> +				compatible = "qcom,csiphy";
>> +				reg = <0 0x0ac6e000 0 0x1000>;
>> +				clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
>> +					 <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
>> +				clock-names = "csiphy", "csiphy_timer";
>> +				interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
>> +				#phy-cells = <0>;
>> +			};
> 
> I would've expected the CSI PHY nodes to be out of the camss node, why would you
> keep them as subnodes since you would reference them via phys phandles ?
> 

This is a good question, and it may require a deeper discussion.

Below are a few observations and comments supporting the idea of
describing CSIPHY IPs as subnodes of CAMSS device tree node.

1. Formally CSIPHY IPs are still parts of CAMSS controller, if the
CAMSS IP is considered as a multifunction device containing a number
of IP blocks, then it might be logically consistent to place new
children device tree nodes under its intermediate parent IP device
tree node rather than parent's parent device tree node.

2. Probably a consideration like the one above dictated a placement
of Qualcomm DSI PHY (and many other sub-IPs) device tree nodes under
a larger MDSS device tree node, here an attempt to repeat the same
layout is done.

3. If CSIPHY device tree nodes are completely detached from CAMSS
device tree node, then not just "phys" but also new endpoint to endpoint
links should be added between CSIPHYs and CSIDs provided by CAMSS like
it's dictated by the established scheme of media device connections,
however these particular endpoint links are non-fixed and configurable
in runtime.

The last point can be excluded only if there is a clear agreement that
a chain of media endpoint-to-endpoint links from a sensor to ISP is
cut between PHY and ISP, with the originally proposed device tree layout
scheme it's not a problem, if PHYs are children of the ISP.

--
Best wishes,
Vladimir

