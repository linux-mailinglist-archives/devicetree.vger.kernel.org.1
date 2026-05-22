Return-Path: <devicetree+bounces-301521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KD7xIH2zD2rBOwYAu9opvQ
	(envelope-from <devicetree+bounces-301521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 03:38:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 656D45ADB71
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 03:38:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C723D3008A58
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 01:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCDC128DB49;
	Fri, 22 May 2026 01:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="LjJGTHD+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m21472.qiye.163.com (mail-m21472.qiye.163.com [117.135.214.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FD123EA8A;
	Fri, 22 May 2026 01:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.214.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779413871; cv=none; b=f6HZV//Z+grpXlTLA6bJPrqz5mBMbS6Zlj0mk4yxD/8jxh5ixphXfm8g0Dy2uv+9n/MhCBG6Iyr+79qd7c/aO9VjI8iG6+YOh1noAncV76lTyxpxQc1XN4FXgNSmuldl69OB7plkjIeKH+1QSKblT3rZQ0YAs8PhrC5H5f/f+R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779413871; c=relaxed/simple;
	bh=emy/XGSLdphWGVkIJrWhx0QjPHw1ViIB2ume88Zfs5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dhm+R4NiW9HRLk61P3CxvPi8kgMBDC5CI2aw65ZsQ6dfb3O2xU8Tnl2FHGKK37zeKOBqG1gdzA3XElSdmcmSm22NJH1qNewQoJk8PT7Xx9hmx+Dp6DwdIIxUw+4ZSdYfKY3NaFDyuk/Zx8dWkcODmTUNXItb2sNauIGbRmqhc5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=LjJGTHD+; arc=none smtp.client-ip=117.135.214.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3f600a29b;
	Fri, 22 May 2026 09:32:31 +0800 (GMT+08:00)
Message-ID: <e83c4a67-60a0-4615-bc42-3cff413cc363@rock-chips.com>
Date: Fri, 22 May 2026 09:32:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: display: bridge: analogix-dp: Add
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
References: <20260521114459.1394264-1-damon.ding@rock-chips.com>
 <20260521114459.1394264-2-damon.ding@rock-chips.com>
 <20260521-modify-quadrant-8d6a2e36727c@spud>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260521-modify-quadrant-8d6a2e36727c@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9e4d500a3f03a3kunm9d959ffda60d9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGEpDVkNNSRlJTUpDTBlJQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=LjJGTHD+borVrf6IPisbcVU/0kqdtEBiYenWZSDe0S4oyajEECA/VhRUivwJcJ27yf2MrRYNA3peUuTU3+wmUnwM6zJXlyyrV7ZRvLPdZnabyiiP1pflX5J68K2agkh1nszxyYnkPLOlg0d//0dm6KZZXu4hE63j8IKrsaNwgVc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7hndMH6djPqpqegY7jWQ0hx8/ee+d87YE9b4lTZzGfs=;
	h=date:mime-version:subject:message-id:from;
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
	TAGGED_FROM(0.00)[bounces-301521-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Queue-Id: 656D45ADB71
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/22/2026 3:50 AM, Conor Dooley wrote:
> On Thu, May 21, 2026 at 07:44:57PM +0800, Damon Ding wrote:
>> Add data-lanes property support to the port@1 endpoint for physical
>> lane mapping configuration.
>>
>> Lane mapping is mainly used for below scenarios:
>> 1. Correct PCB lane swap and differential line routing crossover
>>     without hardware changes;
>> 2. Adapt mismatched lane pin definitions between SoC and eDP panel;
>> 3. Support multiple panel hardware variants on the same board
>>     by configuring data-lanes in device tree only.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> Sashiko complaint here looks valid.
> pw-bot: changes-requested
> 

Yes, unevaluatedProperties: false should be added to both the port@1
and endpoint nodes.

Will fix in v3.

Best regards,
Damon

> 
>>
>> ---
>>
>> Changes in v2:
>> - Add lane mapping application scenarios in commit message.
>> - Remove redundant deprecated property 'data-lanes' for eDP node.
>> - Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.
>> ---
>>   .../bindings/display/bridge/analogix,dp.yaml    | 17 ++++++++++++-----
>>   1 file changed, 12 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> index 62f0521b0924..e34fdb21adb4 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> @@ -42,13 +42,20 @@ properties:
>>       properties:
>>         port@0:
>>           $ref: /schemas/graph.yaml#/properties/port
>> -        description:
>> -          Input node to receive pixel data.
>> +        description: Input node to receive pixel data.
>>   
>>         port@1:
>> -        $ref: /schemas/graph.yaml#/properties/port
>> -        description:
>> -          Port node with one endpoint connected to a dp-connector node.
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description: Port node with one endpoint connected to sink device node.
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
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


