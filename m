Return-Path: <devicetree+bounces-91739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1571C94A593
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 12:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D6C51F21D2F
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 10:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D5F11DE846;
	Wed,  7 Aug 2024 10:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="hjIQp5q/"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397431D1730
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 10:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723026738; cv=none; b=GbDD93IW8QLMmbwO+sTCLsiUZveMubrIycD1iEsnKMDusHmI8eQhmB+SUJeW365ogGk03vkll+267XiCPTqijBZTBwl6yZSu8ifH/aVA0CSBa5dSGi5bdaC6X4eb7wkVdO+iQQDcLORU7jTGzcBk8jRStXRzj+dPD3Spg7gI5HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723026738; c=relaxed/simple;
	bh=aRML168McbfXXQc/cLp+6jloAgdo6tbmrv+VbX7mwhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=W7FZ/n1Y2rjWWCj7YryOBVbYw+uvfJO86SknJ2f1tQk35H/g+skAXZemMT9BalikRm5zBa3wHybK5ipjSWOb8KBBFq99g789V2R9U2c9nVUCtu368DUbaAYnG2Mr6c7iB8uMjeUrc9QvbvOvy5Kh8bWvD+tWai+pStlxH4QOme8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=hjIQp5q/; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 4b7fa36c54a811ef9a4e6796c666300c-20240807
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID; bh=sf1S9oVkkutAs2zx8fudewRJ3coTfcL4YfvkKNpQpPA=;
	b=hjIQp5q/IMlf5pV38H5mg9E5VGq+W7rD+QuXsUu4sMiZfZ9kUAf6aNIzuHdnOH7f+mYwH8H57Cn7JeD73M6y8DNBY59lUVncECIEfvAtBBVUKmas+fGftdUB4z/BisoViisiKEqUvrU2yIb81e25fmXbFOXWf53qohivt9OL6a8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:d284386b-000d-4999-826c-85f3f93180ab,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:900e800e-581f-42a8-8c8e-0df96f3eec79,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: 4b7fa36c54a811ef9a4e6796c666300c-20240807
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1490027269; Wed, 07 Aug 2024 18:32:06 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 7 Aug 2024 03:32:07 -0700
Received: from [172.21.84.99] (172.21.84.99) by mtkmbs11n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.1118.26 via Frontend
 Transport; Wed, 7 Aug 2024 18:32:06 +0800
Message-ID: <31f7251a-7759-1260-7cb7-e239c9baa0a7@mediatek.com>
Date: Wed, 7 Aug 2024 18:32:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] dt-bindings: regulator: mediatek,mt6397-regulator:
 convert to YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, AngeloGioacchino Del
 Regno <angelogioacchino.delregno@collabora.com>, Matthias Brugger
	<matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
CC: =?UTF-8?B?QmVhciBXYW5nICjokKnljp/mg5/lvrcp?= <bear.wang@mediatek.com>,
	=?UTF-8?B?UGFibG8gU3VuICjlravmr5Pnv5Qp?= <pablo.sun@mediatek.com>, Macpaul
 Lin <macpaul@gmail.com>, =?UTF-8?B?U2VuIENodSAo5YKo5qOuKQ==?=
	<Sen.Chu@mediatek.com>, =?UTF-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>,
	=?UTF-8?B?Q2hyaXMtcWogQ2hlbiAo6Zmz5aWH6YCyKQ==?=
	<Chris-qj.Chen@mediatek.com>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Chen-Yu Tsai
	<wenst@chromium.org>
References: <20240806122507.2766-1-macpaul.lin@mediatek.com>
 <dcc40975-93f6-440e-8887-7a40a0cb3898@linaro.org>
From: Macpaul Lin <macpaul.lin@mediatek.com>
In-Reply-To: <dcc40975-93f6-440e-8887-7a40a0cb3898@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/6/24 21:41, Krzysztof Kozlowski wrote:
> 	
> 
> External email : Please do not click links or open attachments until you 
> have verified the sender or the content.
> 
> On 06/08/2024 14:25, Macpaul Lin wrote:
>> Convert the MediaTek MT6397 regulator bindings to DT schema.
>> 
>> Signed-off-by: Sen Chu <sen.chu@mediatek.com>
>> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> 
> 
>> +
>> +patternProperties:
>> +  "^(buck_)?v(core|drm|gpu|io18|pca(7|15)|sramca(7|15))$":
>> +    description: Buck regulators
>> +    type: object
>> +    $ref: regulator.yaml#
>> +    properties:
>> +      regulator-allowed-modes:
>> +        description: |
>> +          BUCK regulators can set regulator-initial-mode and regulator-allowed-modes to
>> +          values specified in dt-bindings/regulator/mediatek,mt6397-regulator.h
>> +        items:
>> +          enum: [0, 1]
>> +      regulator-compatible:
>> +        pattern: "^(buck_)?v(core|drm|gpu|io18|pca(7|15)|sramca(7|15))$"
> 
> This should not be needed. Same in every other place.
> 
>> +    unevaluatedProperties: false
>> +
>> +  "^(ldo_)?v(tcxo|(a|io)28)$":
>> +    description: LDOs with fixed 2.8V output and 0~100/10mV tuning
>> +    type: object
>> +    $ref: regulator.yaml#
>> +    properties:
>> +      regulator-allowed-modes: false
>> +      regulator-compatible:
>> +        pattern: "^(ldo_)?v(tcxo|(a|io)28)$"
>> +    unevaluatedProperties: false
>> +
>> +  "^(ldo_)?vusb$":
>> +    description: LDOs with fixed 3.0V output and 0~100/10mV tuning
>> +    type: object
>> +    $ref: regulator.yaml#
>> +    properties:
>> +      regulator-allowed-modes: false
>> +      regulator-compatible:
>> +        pattern: "^(ldo_)?vusb$"
>> +    unevaluatedProperties: false
>> +
>> +  "^(ldo_)?v(cama|emc3v3|gp[123456]|ibr|mc|mch)$":
>> +    description: LDOs with variable output and 0~100/10mV tuning
>> +    type: object
>> +    $ref: regulator.yaml#
>> +    properties:
>> +      regulator-allowed-modes: false
>> +      regulator-compatible:
>> +        pattern: "^(ldo_)?v(cama|emc3v3|gp[123456]|ibr|mc|mch)$"
>> +    unevaluatedProperties: false
>> +
>> +required:
>> +  - compatible
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    pwrap {
>> +       pmic {
>> +            compatible = "mediatek,mt6397";
> 
> Messed indentation.
> 
> Use 4 spaces for example indentation.
> 
> Anyway, drop top node or better move the example to the parent device
> schema making it complete.
> 
>> +
>> +            mt6397regulator: mt6397regulator {
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation  <https://urldefense.com/v3/__https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html*generic-names-recommendation__;Iw!!CTRNKA9wMg0ARbw!ngXiiQwr5k1xuQ409K5BEaN120H9jRtwvbdy_u_VFuelciqoBoAYCD6Pi09Sy5YS3wfeZ5m876QLGXgDi-Pm8V4O08-MZ7s$>
> 
> 
>> +                compatible = "mediatek,mt6397-regulator";
>> +
>> +                mt6397_vpca15_reg: buck_vpca15 {
>> +                    regulator-compatible = "buck_vpca15";
> 
> Drop, same in other places
> 
>> +                    regulator-name = "vpca15";
>> +                    regulator-min-microvolt = < 850000>;
>> +                    regulator-max-microvolt = <1350000>;
>> +                    regulator-ramp-delay = <12500>;
>> +                    regulator-enable-ramp-delay = <200>;
>> +                };
>> +
> 
> 
> ;
> 
> Best regards,
> Krzysztof
> 

Thanks for the review.
All above issues should be fixed in patch v2 [1]
[1] https://lkml.org/lkml/2024/8/7/520

Best regards,
Macpaul Lin

