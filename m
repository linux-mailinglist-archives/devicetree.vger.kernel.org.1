Return-Path: <devicetree+bounces-148468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55861A3C17A
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 15:12:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66FFC189EC41
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA001202C43;
	Wed, 19 Feb 2025 14:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TFExlLpO"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573441FDE03;
	Wed, 19 Feb 2025 14:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739973796; cv=none; b=uT7wATafTSRNE1LFHPyqdxogS2N7k6gLD/N+l9PffPj/V/nybwDOy3+qu4Qr9qTfD4JtQU5RAqNkqaOZpaKT+3mbEq6KmTSPmH00SUFDQwOrcT5qts0FiPQBpCZqnkyuMInIlGcLmQvUXlBh+NJmNyS2cF9iPcmV/5p0evlhhOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739973796; c=relaxed/simple;
	bh=+yoyTgslXEGlaSowE8SMsWkFERto3CdZJqou3uuI6Ok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XRXub6Up4fVSgzNS1c3OP0556gDlhiXQpjD9NMDhPggFO9/qjcb9UfyLZRCToZB4+8PwtBAM/WgEdT3gVCCtyHutB/2E/uShYCmsSAmWRZX4KJSs5fbHnszLXny+oc0VncO5GcMSbif00FiiTGE8Z/zK9ETP2LW/40WpSIxdp2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=TFExlLpO; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739973791;
	bh=+yoyTgslXEGlaSowE8SMsWkFERto3CdZJqou3uuI6Ok=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TFExlLpOj3jsnWCm2u34v6V3QmBM165e/qPBc7wdqoPKkaAkfZWJS0t5LphRnbsIq
	 49LT+aBrQ1rbAogEwlX7fOJOpgFUwZ5PIVU6z/JLjPGY5hzZMRwjRsXjE+ESCWQdj+
	 5rdavkl1WwyCgYZe1jJBfjNr1XHZcsDJIBydJkC1r7+jb8xfQ6FnDtTowrRWoC4xsq
	 naZGbKRUnSlDxZ6oLNlzlCCmGZ6scV1NAE2hxKwQi0DJrf8SHa0gui19+MTnLB3E3R
	 7JmUQ4nAzY3cxsD1t4liVDbbOGx75GTc2x99/d+JwWApIDNDDz5+1Yq7/qXuyXNck9
	 Rf4IsUiiQItTA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4EFDB17E0860;
	Wed, 19 Feb 2025 15:03:10 +0100 (CET)
Message-ID: <c534a79b-c253-4d7e-9bc1-9efa491d1db0@collabora.com>
Date: Wed, 19 Feb 2025 15:03:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] dt-bindings: display: mediatek: Add compatibles
 for MT8188 MDP3
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mchehab@kernel.org, matthias.bgg@gmail.com, moudy.ho@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, sebastian.fricke@collabora.com,
 macpaul.lin@mediatek.com
References: <20241218105320.38980-1-angelogioacchino.delregno@collabora.com>
 <20241218105320.38980-2-angelogioacchino.delregno@collabora.com>
 <CAAOTY_9J4TE=qo+00N7T6-daMET+eTt8psp+eV1DXdgrz+avEQ@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAAOTY_9J4TE=qo+00N7T6-daMET+eTt8psp+eV1DXdgrz+avEQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 19/02/25 14:49, Chun-Kuang Hu ha scritto:
> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> 於
> 2024年12月18日 週三 下午6:53寫道：
>>
>> Add compatible strings for the AAL, COLOR, MERGE and PADDING
>> hardware components found in MediaTek's MT8188 SoC.
>>
>> This hardware is compatible with MT8195.
> 
> Acked-by: Chun-Kuang Hu <chunkuang.hu@mediatek.com>

Thanks CK, much appreciated.

Cheers!

> 
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   .../bindings/display/mediatek/mediatek,aal.yaml        |  4 ++++
>>   .../bindings/display/mediatek/mediatek,color.yaml      |  4 ++++
>>   .../bindings/display/mediatek/mediatek,merge.yaml      |  4 ++++
>>   .../bindings/display/mediatek/mediatek,padding.yaml    | 10 +++++++---
>>   4 files changed, 19 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
>> index cf24434854ff..1479035da409 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
>> @@ -25,6 +25,10 @@ properties:
>>             - mediatek,mt8173-disp-aal
>>             - mediatek,mt8183-disp-aal
>>             - mediatek,mt8195-mdp3-aal
>> +      - items:
>> +          - enum:
>> +              - mediatek,mt8188-mdp3-aal
>> +          - const: mediatek,mt8195-mdp3-aal
>>         - items:
>>             - enum:
>>                 - mediatek,mt2712-disp-aal
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
>> index 7df786bbad20..799c0b8fc1f9 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
>> @@ -27,6 +27,10 @@ properties:
>>             - mediatek,mt8167-disp-color
>>             - mediatek,mt8173-disp-color
>>             - mediatek,mt8195-mdp3-color
>> +      - items:
>> +          - enum:
>> +              - mediatek,mt8188-mdp3-color
>> +          - const: mediatek,mt8195-mdp3-color
>>         - items:
>>             - enum:
>>                 - mediatek,mt7623-disp-color
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml
>> index dae839279950..415a25bc18fa 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml
>> @@ -25,6 +25,10 @@ properties:
>>             - mediatek,mt8173-disp-merge
>>             - mediatek,mt8195-disp-merge
>>             - mediatek,mt8195-mdp3-merge
>> +      - items:
>> +          - enum:
>> +              - mediatek,mt8188-mdp3-merge
>> +          - const: mediatek,mt8195-mdp3-merge
>>         - items:
>>             - const: mediatek,mt6795-disp-merge
>>             - const: mediatek,mt8173-disp-merge
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,padding.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,padding.yaml
>> index be07bbdc54e3..86787866ced0 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,padding.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,padding.yaml
>> @@ -20,9 +20,13 @@ description:
>>
>>   properties:
>>     compatible:
>> -    enum:
>> -      - mediatek,mt8188-disp-padding
>> -      - mediatek,mt8195-mdp3-padding
>> +    oneOf:
>> +      - enum:
>> +          - mediatek,mt8188-disp-padding
>> +          - mediatek,mt8195-mdp3-padding
>> +      - items:
>> +          - const: mediatek,mt8188-mdp3-padding
>> +          - const: mediatek,mt8195-mdp3-padding
>>
>>     reg:
>>       maxItems: 1
>> --
>> 2.46.1
>>


