Return-Path: <devicetree+bounces-326756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OHTQGplKV2rYIgEAu9opvQ
	(envelope-from <devicetree+bounces-326756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:53:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FDA75C13E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:53:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=D5eEkzfW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326756-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326756-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 412933144DB4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEE73D47A7;
	Wed, 15 Jul 2026 08:47:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127170.xmail.ntesmail.com (mail-m127170.xmail.ntesmail.com [115.236.127.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3705D3D3D11
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 08:47:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784105254; cv=none; b=t0WateJI4tOeZbRuNdUsBCwndvMRRhfXakiXQhpkZB6/nPPiSAw8Bi6YQDBC1Jezdv7StiezOhkhnzhQGlOtzDsTt/Dl8J0hDFrWqRKyOdwgeV16hyOE58LH7Lch7V9N2PU1WdX64IClnZjmrVUR/2ycI24I1aB4HJ20yZG8CXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784105254; c=relaxed/simple;
	bh=H2qnXEImwoz2zrzCd/qOrzTqaRIv16NPS/LflTFmdns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ii+GG2H9VsaK/WFqocI3+yMdD1YjYBiU0jMzcAm58CDgoKkeOnPUs/JX8/sgAxolDJainzRAzwazzcMlS4sO/TfkcOiun6PzYlWpTiyO/S3SUXt4P0W+ChXBS4yGrF71NfuN0tXwZLpykFywySoeda1hnEN23hCf2WyIxqALz8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=D5eEkzfW; arc=none smtp.client-ip=115.236.127.170
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4644b288e;
	Wed, 15 Jul 2026 16:32:08 +0800 (GMT+08:00)
Message-ID: <00d3f58e-73bb-41da-a2df-dfeeca644b6f@rock-chips.com>
Date: Wed, 15 Jul 2026 16:32:07 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] drm/bridge: analogix_dp: Restore mandatory samsung
 DP DT properties
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, robh@kernel.org,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
References: <20260707040613.1992841-1-damon.ding@rock-chips.com>
 <20260707040613.1992841-4-damon.ding@rock-chips.com>
 <20260707041711.4F7351F000E9@smtp.kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260707041711.4F7351F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9f64e79dc103a8kunmb5bc9ffe10ec8e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCShhLVkpIGE5KGkkYQktLSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=D5eEkzfWlQsu8P+ISq0oa6wJ8Fp89x3afKPHLzKZvgX2lw9+6aZwVlxKVWZEnPs8FJw9gB1HyUInUGo5sG6lF8usQP/Cti1YYzJXaqiAg3P+iHzT5vpLiFPZi78Tbf+TYkyKnMW/6neIZfvs9qsVEtaBK6JQyK+xJMcYCB+BA98=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=5k3VLyTE2W0brh6QXzfvnZyb5UNm/t6xk2HiFeq09E0=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326756-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:luca.ceresoli@bootlin.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9FDA75C13E

On 7/7/2026 12:17 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Critical] Failing probe when deprecated DT properties are missing breaks DT ABI and prevents their deprecation.
> --
> 
> --- Patch [3]: [PATCH v6 3/5] drm/bridge: analogix_dp: Restore mandatory samsung DP DT properties ---
> commit b573dba50acc6087122ffa4a65680322f4d004f8
> Author: Damon Ding <damon.ding@rock-chips.com>
> 
> drm/bridge: analogix_dp: Restore mandatory samsung DP DT properties
> 
> This commit reverts a change that made the samsung,link-rate and
> samsung,lane-count properties optional for Exynos DP. It adds error checking
> to fail the probe early if these properties are missing, aiming to prevent
> link training failures caused by zero values.
> 
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index 8cf6b73bceac0..293d8adfe9856 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> [ ... ]
>> @@ -1258,10 +1259,14 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>>   		 * NOTE: those property parseing code is used for
>>   		 * providing backward compatibility for samsung platform.
>>   		 */
>> -		of_property_read_u32(dp_node, "samsung,link-rate",
>> -				     &video_info->max_link_rate);
>> -		of_property_read_u32(dp_node, "samsung,lane-count",
>> -				     &video_info->max_lane_count);
>> +		if (of_property_read_u32(dp_node, "samsung,link-rate", &val))
>> +			return dev_err_probe(dp->dev, -EINVAL,
>> +					     "Failed to get samsung,link-rate\n");
> 
> [Severity: Critical]
> Does failing the probe when this property is missing break the DT ABI?
> 
> Since samsung,link-rate is a deprecated property, a modern schema-compliant
> Device Tree might intentionally omit it. If a system boots with such a DT,
> this check will fail the probe with -EINVAL and disable the display.
> 
> Could the driver instead fall back to hardware maximums or sensible defaults
> when the deprecated property is absent, rather than returning an error?
> 

I'm afraid it's difficult to provide a universal sensible default value 
here.

The samsung,lane-count and samsung,link-rate values vary significantly 
across Exynos DP device trees, so a generic fallback to hardware 
maximums cannot guarantee stable link training.

Even though these two properties are marked deprecated, all existing DTS 
files in our projects have already populated them completely. Moreover, 
the current link training logic relies on these two parameters; omitting 
either will directly cause link training failures at runtime.

Therefore, retaining the mandatory property check in probe is a 
reasonable approach for now.

>> +		video_info->max_link_rate = val;
>> +		if (of_property_read_u32(dp_node, "samsung,lane-count", &val))
>> +			return dev_err_probe(dp->dev, -EINVAL,
>> +					     "Failed to get samsung,lane-count\n");
> 
> [Severity: Critical]
> Does making samsung,lane-count mandatory similarly break backward compatibility
> for valid Device Trees that have intentionally omitted this deprecated property?
> 

I don't think so. Missing either property will inevitably cause link 
training failure, and all functional DTs have these deprecated 
properties filled in already.

>> +		video_info->max_lane_count = val;
>>   		break;
>>   	}
>>
> 

Best regards,
Damon


