Return-Path: <devicetree+bounces-297881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJpcGPqLBmqkkgIAu9opvQ
	(envelope-from <devicetree+bounces-297881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 04:59:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B81C548DE3
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 04:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D801D3003613
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 02:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D310C3C769C;
	Fri, 15 May 2026 02:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="bNuiS2Dr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49226.qiye.163.com (mail-m49226.qiye.163.com [45.254.49.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A9C3C81AA;
	Fri, 15 May 2026 02:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778813942; cv=none; b=P57zp0V9M4/8EiAg9Rp45jjsubiI5oaxJ3ccoefO/lM5r5LDn0HcRmMzzpZ+cMcJ5vy2KzRNJ4yo3XRgEyeP0YnK1Y+RCjZXoUy+cA7EIJlO3icZFLgxrejUawT8ockpFDYm5DKHxUVoc/gl8Jp9Oc9/kF5WgDaGFn/GRnS7YK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778813942; c=relaxed/simple;
	bh=PvGdAfskjOnfJFGxIFXft0jY6m3RugZRW95j804rXso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N/2VSLbdrYXJwnFF8ZguRH4C16+2WCB1Ft7jM7zwCP1dFr1MUgpVxLRWKinqwzHqjUrTbEF9gRHivNuiSDjKx05aEyeJ/7zwWhno1q0qA588m0s+1HP1JMZsyxdN1Lkan2/JEbRV3wH632ExWAIpBO3RV2gId1uzAum6/SnfE5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=bNuiS2Dr; arc=none smtp.client-ip=45.254.49.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e805fe57;
	Fri, 15 May 2026 10:53:37 +0800 (GMT+08:00)
Message-ID: <f9fd086e-9d9f-40a3-9393-7cfa5c426c66@rock-chips.com>
Date: Fri, 15 May 2026 10:53:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] dt-bindings: display: bridge: analogix-dp: Add
 data-lanes support for endpoint
To: Conor Dooley <conor@kernel.org>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, nicolas.frattaroli@collabora.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 dmitry.baryshkov@oss.qualcomm.com, luca.ceresoli@bootlin.com,
 dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260514070133.2275069-1-damon.ding@rock-chips.com>
 <20260514070133.2275069-3-damon.ding@rock-chips.com>
 <20260514-jolly-confining-997882e502c7@spud>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260514-jolly-confining-997882e502c7@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9e298dc37203a3kunm6bd5d8e111d35b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGhofSVZPShpPHUtKTB
	pLTEtWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSEpKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=bNuiS2Dre4Q5BTbn3B1+0fBx2UlyKHcHIU2sndZ4rhJCriwHPmLgl2XgQ0+5OezFxNij6gzxyCaFuJ9XbQD19js2/mtL18ORxirq3opoRFCafpHIl1GwXZuzlWA27nAx7xFTpabrXENpRkIAGv0cmL/NRF6OFA+Vs0hUey4n0NI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wiOcpYgO5JDj+FjoQaOM0eym/Auz/dWfyTv2lzex6Rs=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 9B81C548DE3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297881-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Action: no action

Hi Conor,

On 5/15/2026 2:19 AM, Conor Dooley wrote:
> On Thu, May 14, 2026 at 03:01:32PM +0800, Damon Ding wrote:
>> Add data-lanes property support to the port@1 endpoint for physical
>> lane mapping configuration.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../bindings/display/bridge/analogix,dp.yaml  | 24 +++++++++++++++----
>>   1 file changed, 20 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> index 62f0521b0924..a82f9b7776c0 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> @@ -36,19 +36,35 @@ properties:
>>         Hotplug detect GPIO.
>>         Indicates which GPIO should be used for hotplug detection
>>   
>> +  data-lanes:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    deprecated: true
> 
> Why are you adding a new property as deprecated? Why does this duplicate
> what you're adding to the port node? At the very least, your commit is
> lacking an explanation.
> pw-bot: changes-requested
> 

Thank you for the review.

I referenced the implementation in 
Documentation/devicetree/bindings/display/msm/dp-controller.yaml. After 
evaluating QCOM DP driver and other drivers, I agree that implementing 
'data-lanes' in the endpoint node is the preferred and common approach 
nowadays.

The top-level `data-lanes` property together with the `deprecated` mark 
was leftover content from my early reference and arrangement, which I 
neglected to delete before submitting. It is redundant, unreasonable and 
should not have been added at all.

I will fix it in the next version.

Best regards,
Damon

> 
>> +    minItems: 1
>> +    maxItems: 4
>> +    items:
>> +      maximum: 3
>> +
>>     ports:
>>       $ref: /schemas/graph.yaml#/properties/ports
>>   
>>       properties:
>>         port@0:
>>           $ref: /schemas/graph.yaml#/properties/port
>> -        description:
>> -          Input node to receive pixel data.
>> +        description: Input node to receive pixel data.
>>   
>>         port@1:
>>           $ref: /schemas/graph.yaml#/properties/port
>> -        description:
>> -          Port node with one endpoint connected to a dp-connector node.
>> +        description: Port node with one endpoint connected to sink device node.
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            properties:
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +                items:
>> +                  enum: [ 0, 1, 2, 3 ]
>>   
>>       required:
>>         - port@0
>> -- 
>> 2.34.1
>>


