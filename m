Return-Path: <devicetree+bounces-316611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1STiNNLhQWrDvQkAu9opvQ
	(envelope-from <devicetree+bounces-316611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 05:09:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F646D59C7
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 05:09:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b="Jy7T/u28";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316611-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316611-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 673483001FB1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 03:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9BF37BE8A;
	Mon, 29 Jun 2026 03:08:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973183.qiye.163.com (mail-m1973183.qiye.163.com [220.197.31.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173E035E92F;
	Mon, 29 Jun 2026 03:08:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782702538; cv=none; b=VMw21sS6POQrM8OWev6tUHbV4w6OglnzpM3F6UBy5GI26Vw81t9HPD5Ax2E6G5bD78uixOdv1Q3/TlV/GEIx/BFKcAgBrlpD8KK/nVXcTF5RA9thL1+h4EHPtrLMkFJG/O2p5ia5w3ccehkoadEIaA5nJ5oCPv0NioGQWgnzKKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782702538; c=relaxed/simple;
	bh=F99FZXoLe6WSw3sG+7NTs4ty8+muEj3Q2FczZK1t5UQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MGe28Xza9BTj2TPslS/52+q53zfN/Q3ponYq/7pf4WyaA/4MepeO9FxBkIhLFYVf0dnZuK3hbc1ugUPL4oKaYwwTQ2XIUQwxxKJozYw2pXmoAMrDwzV0ZrhksysyE+o6lyL+THbWjwGUvEVdfXU4zpjbcB0vTYPkV5ZvxOjvkac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Jy7T/u28; arc=none smtp.client-ip=220.197.31.83
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4414d26eb;
	Mon, 29 Jun 2026 09:53:02 +0800 (GMT+08:00)
Message-ID: <cb533b04-e550-4eb4-8a8f-6d17c3d43a48@rock-chips.com>
Date: Mon, 29 Jun 2026 09:53:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] drm/bridge: analogix_dp: Add validation for
 samsung,lane-count property
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, nicolas.frattaroli@collabora.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 dmitry.baryshkov@oss.qualcomm.com, dianders@chromium.org,
 m.szyprowski@samsung.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260604085220.2862986-1-damon.ding@rock-chips.com>
 <20260604085220.2862986-4-damon.ding@rock-chips.com>
 <178249136513.1374898.11400378046460567437.b4-review@b4>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <178249136513.1374898.11400378046460567437.b4-review@b4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9f11147a4003a8kunm26f77d9422c470
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGExMVh5DSUkaHRpOSUtLT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Jy7T/u28jP/+4T2VA2B9kxcFXAX9Dsq0ShxLHsURI3PTBcA0yO9T5KXoRBqEUSEuSuuttXE1GmOzP+PWv7OtI23helQrMLrSBkS5sop9hRxcLvUyMJF8AERH+JkKsMXw9cy7+oLAcg8pQYGhVPkRyg/D5ZPafYOGQAK8JHC5ptI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=W782AbfO1D1R5eEJlgStJCNw/OtsvmDShB2b7uB9ZM8=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316611-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_RECIPIENTS(0.00)[m:luca.ceresoli@bootlin.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:nicolas.frattaroli@collabora.com,m:cristian.ciocaltea@collabora.com,m:sebastian.reichel@collabora.com,m:dmitry.baryshkov@oss.qualcomm.com,m:dianders@chromium.org,m:m.szyprowski@samsung.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,msgid.link:url,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67F646D59C7

Hi Luca,

On 6/27/2026 12:29 AM, Luca Ceresoli wrote:
> On Thu, 04 Jun 2026 16:52:19 +0800, Damon Ding <damon.ding@rock-chips.com> wrote:
> 
> Hello Damon,
> 
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index 7a85774aaac1..e120ef3320c1 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1261,8 +1262,11 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>>   		 */
>>   		of_property_read_u32(dp_node, "samsung,link-rate",
>>   				     &video_info->max_link_rate);
>> -		of_property_read_u32(dp_node, "samsung,lane-count",
>> -				     &video_info->max_lane_count);
>> +		ret = of_property_read_u32(dp_node, "samsung,lane-count",
>> +					   &video_info->max_lane_count);
>> +		if (ret || !drm_dp_lane_count_is_valid(video_info->max_lane_count))
>> +			return dev_err_probe(dp->dev, ret ? ret : -EINVAL,
>> +					     "failed to parse samsung,lane-count\n");
> 
> I think this report by sashiko makes sense:
> 
>    >  sashiko-bot@kernel.org <sashiko-bot@kernel.org>:
>    >
>    >  [Severity: High]
>    >  Does this make the optional and deprecated samsung,lane-count property a
>    >  strict requirement?
>    >
>    >  If samsung,lane-count is absent from the device tree, of_property_read_u32()
>    >  returns -EINVAL. This causes the condition to evaluate to true, aborting the
>    >  probe with an error.
>    >
>    >  According to the device tree bindings
>    >  (Documentation/devicetree/bindings/display/samsung/samsung,exynos5-dp.yaml),
>    >  this property is marked as deprecated and explicitly optional because the
>    >  lane count can be read from the monitor. Does this patch break compatibility
>    >  with device trees that rightfully omit this deprecated property?
> 
>   (via: https://patch.msgid.link/20260604090935.7FC051F00898@smtp.kernel.org)
> 
> Can you comment on this?
> 
> 

I was also confused about this handling at first. From commit 
0d0abd894ead ("drm: bridge: analogix/dp: add max link rate and lane 
count limit for RK3288"), its commit message does not explain why 
samsung,lane-count was changed from a mandatory to optional property.

After digging into the code flow, I found that 
analogix_dp_full_link_train() picks the smaller value between the 
platform-supported lane count and the lane count retrieved from sink 
DPCD for link training. If the samsung,lane-count property is 
missing/invalid here, link training will end up using an unexpected lane 
count configuration.

Additionally, I checked Samsung’s upstream device trees that utilize 
this DP controller, and all of them carry the lane-count property. Based 
on this observation, I believe restoring the strict mandatory 
requirement for this property makes sense.

Should I create an independent fix patch to revert these two properties 
to mandatory, instead of bundling the fix in this series?

Best regards,
Damon


