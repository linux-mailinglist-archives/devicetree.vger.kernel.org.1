Return-Path: <devicetree+bounces-107696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6776898FD15
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 07:38:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 751B41C20D9F
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 05:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 117815FB9C;
	Fri,  4 Oct 2024 05:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="f5VS20yM"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D38B1D5ADA
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 05:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728020294; cv=none; b=Tj/wjkOwIrm8BL6psU2/5NRaUEFag0Hu/BzusErNNjZAFYWl5+YPHKSVVtCUq1TfBe9A0Xc1YpFTsF/elzm83YsogRdmHKA+MrQOIJX/NsfBv/IT8TFj9zdaV6CJanTa4CQ4fn1O6rue+FVJwiLvvb6tSjDXTMA/+vHZf1G6thU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728020294; c=relaxed/simple;
	bh=FxmJxS9uBAdGBa7PUdCZF781yGWwspWbs/fEs3AcUl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=a4tbkVcVLf3a/j3fyLQA2/whZfEqHncdLVYkPFKLhzQuErM3oVDS6h8xZcpZF+QTeyN8zUJR3+gV+P2GmUvjeUZTjiEKLoEd9bPkjvNq/jZstEs3d/HPxuKJGfH6ay1CZajenfq3KRsaRLDp0WRwlZBSk+4Qmn8HRxrg1IP16rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=f5VS20yM; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1728020287; x=1730612287;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FxmJxS9uBAdGBa7PUdCZF781yGWwspWbs/fEs3AcUl4=;
	b=f5VS20yMDpMzyfH47b6/diOmEsVlaRf+5Wky8UZL6/Pi+jyJ+6W809zfi1s9oIOT
	IhMwyZfi8H36GKvJmUXrQNoGsukc10z3wIgKYZhnPUz2x6U5TM8T230P0firvgHa
	/CIvl3okzw1yYOJpa56adOnqQsRHYpnrwxyiOYfi7fw=;
X-AuditID: ac14000a-4577e70000004e2a-44-66ff7f3fe620
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id FF.28.20010.F3F7FF66; Fri,  4 Oct 2024 07:38:07 +0200 (CEST)
Received: from [192.168.10.3] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 4 Oct 2024
 07:38:05 +0200
Message-ID: <b993461c-96df-4855-988e-f24540168271@phytec.de>
Date: Fri, 4 Oct 2024 07:38:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: display: bridge: sil,sii9022: Add
 data-lines
To: Krzysztof Kozlowski <krzk@kernel.org>, <andrzej.hajda@intel.com>,
	<neil.armstrong@linaro.org>, <rfoss@kernel.org>
CC: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<simona@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<bbrezillon@kernel.org>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
	<robh@kernel.org>, <upstream@lists.phytec.de>
References: <20241003082006.2728617-1-w.egorov@phytec.de>
 <20241003082006.2728617-2-w.egorov@phytec.de>
 <fbb7d268-76f9-4d2e-9168-c927ccfdac50@kernel.org>
 <d28be8e9-b235-43e0-aaed-dd65a87c5797@phytec.de>
 <ca913f6a-c028-456d-9f9f-0c3183d8a921@kernel.org>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <ca913f6a-c028-456d-9f9f-0c3183d8a921@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLIsWRmVeSWpSXmKPExsWyRpKBR9e+/n+awZyrmhYnri9isri/+DOL
	xeqW6YwWa/aeY7KYf+Qcq8WVr+/ZLJ7PX8docfLNVRaLl7PusVmcP7+B3aJz4hJ2i8u75rBZ
	LPy4lcWirXMZq8X7nbcYLSbNu8lq8X/PDnaL2e/2s1tseTOR1aL7nbqDiMfebwtYPHbOusvu
	MbtjJqvH4j0vmTw2repk8zgx4RKTx51re9g85p0M9LjffZzJo7+7hdVj8+lqj8+b5AJ4orhs
	UlJzMstSi/TtErgyLv5tZCvYIVHx4kgjawPjKuEuRk4OCQETid/H37KA2EICS5gkft5T7GLk
	ArLvMErsm/yNESTBK2Aj8f3TVyYQm0VARWLiivPMEHFBiZMzn4A1iwrIS9y/NYMdxBYWCJH4
	cvYGWFxEoFxiwrsmFpChzAKbmCU+v97NCrGhhUni9s1zYFXMAuISt57MB9vAJqAucWfDN1YQ
	m1PATuLgtxvsEDUWEovfHISy5SW2v53DDHG2vMSLS8tZIN6Rl5h27jUzhB0qsfXLdqYJjMKz
	kBw7C8m6WUjGzkIydgEjyypGodzM5OzUosxsvYKMypLUZL2U1E2MoCQgwsC1g7FvjschRiYO
	xkOMEhzMSiK887b/TRPiTUmsrEotyo8vKs1JLT7EKM3BoiTOu7ojOFVIID2xJDU7NbUgtQgm
	y8TBKdXAGHcpW4PzzSn1J/Pup651VGnb8EAmbfbU6szvBb19AjPKmH583nzNLvB+7AJ+8XOL
	TC0Ly0PvbffcHXl57rwlX9TbHy2on+bp+fX3ZlEp7Rn3ZI8y9Ry87//4eVtfzOTLkVrHlp/S
	T9E5fa9gTnx2wh7H9WyRTEfcNRXO56rpO55W6qx6UCb1QomlOCPRUIu5qDgRAD08O2TwAgAA



Am 03.10.24 um 15:26 schrieb Krzysztof Kozlowski:
> On 03/10/2024 13:56, Wadim Egorov wrote:
>>
>>
>> Am 03.10.24 um 12:03 schrieb Krzysztof Kozlowski:
>>> On 03/10/2024 10:20, Wadim Egorov wrote:
>>>> The SI9022 HDMI transmitter can be configured with 16, 18, or 24 input
>>>> data lines. This commit introduces the data-lines property to the input
>>>
>>> lines? lanes? What are lines? like pins?
>>
>> Yes, "lines" in this context refers to the number of pins used for the
>> input pixel data bus, which can support 16, 18, or 24-bit wide data
>> buses. These are parallel data lines (or pins) that carry uncompressed
>> digital video to the HDMI transmitter.
>>
>>>
>>>> endpoint, specifying the number of parallel RGB input pins connected
>>>> to the transmitter.
>>>>
>>>> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
>>>> ---
>>>>    .../bindings/display/bridge/sil,sii9022.yaml        | 13 ++++++++++++-
>>>>    1 file changed, 12 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml b/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml
>>>> index 5a69547ad3d7..24306f8eb107 100644
>>>> --- a/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml
>>>> @@ -81,9 +81,20 @@ properties:
>>>>    
>>>>        properties:
>>>>          port@0:
>>>> -        $ref: /schemas/graph.yaml#/properties/port
>>>> +        unevaluatedProperties: false
>>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>>>            description: Parallel RGB input port
>>>>    
>>>> +        properties:
>>>> +          endpoint:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +            properties:
>>>> +              data-lines:
>>>
>>> No, this will confuse everyone. Considering lack of description how
>>> anyone would figure out what this means?
>>
>> I guess from working with the hardware/reference manual and using this chip?
>>
>> I don't think it is overly confusing, especially since the port is
>> already described as the "Parallel RGB input port" which clearly implies
>> the use of pins for data transmission.
> 
> 
> I am surprised you do not find data-lanes and data-lines confusing. For
> non-native English speakers this even might sound the same.
> 
> You used earlier pins and bits, so maybe it's the same as bus-width,
> which is already used all over the bindings, including one of the bridges.

Thanks, the bus-width property seems to be a better fit here. I'll 
rework my patches.

> 
> Anyway a generic property should go to video-interfaces.
> 
>>
>> I am open to other suggestions if you believe a different name would
>> improve clarity.
>>
>> Btw, bridge/toshiba,tc358768.yaml, which performs a similar function,
>> also uses the term data-lines.
> 
> Then this has to go to common schema.
> 
> Oh, wait, video-interfaces already have it!
> 
> Best regards,
> Krzysztof
> 


