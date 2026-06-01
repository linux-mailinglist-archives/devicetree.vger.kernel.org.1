Return-Path: <devicetree+bounces-305143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEx6HMl8HWrEbAkAu9opvQ
	(envelope-from <devicetree+bounces-305143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 14:36:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BEF61F571
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 14:36:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DDA6300DDD9
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 12:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF3533750BC;
	Mon,  1 Jun 2026 12:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="KegN8No0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12870.netease.com (mail-m12870.netease.com [103.209.128.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232623750DC;
	Mon,  1 Jun 2026 12:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.209.128.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780316695; cv=none; b=YhiCR44AKf8tFPk0i6hFJoHA85oxKblL9PGbgv8QabSVOYhqhyBRL09oXFGzOO8iRSDB4eMfK7AxOAEXXxDIbLbR+llPxSmX8qpJs9DBc1aW0AX9a66fvzB4k/NM1tP8HO8c7tEcnLJJ8ywXkmLJGV/0fuzrSFhJAXBOhx0Zb8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780316695; c=relaxed/simple;
	bh=iealadPKrYm5bL7fbkOoqUbm7uIUh3SvErrMiWweYgU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GnyP1P6Dbll+An0fcRG1xyA4BUy/1dHn616hANMKVVt3NoKMw5oqOUWIrRv0oj0NsH18O/K3D/4INPQhFgMem41r1BHGGSzzKVAoqLdU/d6PqS22Pmk5GZaCu9SHyTXAmx4de/O4djI0seXlDO5xp4eZAaDPUuFBGXG3Dc7oiOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=KegN8No0; arc=none smtp.client-ip=103.209.128.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 409a07d3d;
	Mon, 1 Jun 2026 20:24:42 +0800 (GMT+08:00)
Message-ID: <ba122231-0def-4b62-add7-be3382f07805@rock-chips.com>
Date: Mon, 1 Jun 2026 20:24:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] drm/bridge: analogix_dp: Add validation for
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
References: <20260529040530.741336-1-damon.ding@rock-chips.com>
 <20260529040530.741336-3-damon.ding@rock-chips.com>
 <178014803941.21632.16225608049285101452.b4-review@b4>
 <DIW1WGLL0GW5.1BGU194UXN0HO@bootlin.com>
 <17160115-6c30-434b-9dab-b768110cd8d6@rock-chips.com>
 <178031536852.7135.7751258958371598959.b4-reply@b4>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <178031536852.7135.7751258958371598959.b4-reply@b4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9e8324b9ba03a8kunme45a265c281ad8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQxlDVk5KTh5NTEhKHh5JSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=KegN8No0Ul0g1aqkwFnVCU6MRRiskVQe+WisAx9eAMChEDDT3viYwbhU1XN65LT9ebEvkJOWvihiZci7HRQHo4FUp/8Sn1l+ubqE9gxZ4o8l8cp7xNKXSy8DxHomGPyqLdKVrAMfk0NLXDEi4PZuKElRlVOH2HSQQ8eEjwwsqbw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=o8OCB2l+ncUQMl80H2dawRBtZl8BrvrP7FFvN2SV8qM=;
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
	TAGGED_FROM(0.00)[bounces-305143-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Queue-Id: C4BEF61F571
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 6/1/2026 8:02 PM, Luca Ceresoli wrote:
> Hello Damon,
> 
> On 2026-06-01 10:59:27+08:00, Damon Ding wrote:
>> Hi Luca,
>>
>> On 5/30/2026 9:38 PM, Luca Ceresoli wrote:
>>
>>> On Sat May 30, 2026 at 3:33 PM CEST, Luca Ceresoli wrote:
>>>
>>> Meh, messed up with 'b4 review' :-/ Apologies
>>>
>>> "This sashiko report" [0] was about an enum being signed, so '== 0' could miss
>>> negative numbers coming from bogus DT values higher than 1^31.
>>
>> Ah, I agree. It would be better to add a new inline function to validate
>> that the lane count passed from DT is exactly 1, 2, or 4, just as
>> Sashiko suggested.
>>
>>>>
>>>
>>> And this was about "Additionally, does this check inadvertently allow 3,
>>> which is an invalid DisplayPort lane count?"
>>
>> Yes, the DisplayPort specification only allows lane counts of 1, 2, or
>> 4. I did miss the check for the invalid value 3 in the current code.
>>
>> (BTW: I did not find a common helper function in drm_dp_helper.h to
>> validate valid DP lane counts (1, 2, 4). I'm not sure if it would be
>> better to add a generic lane count validation function to the DP helper
>> library instead, to avoid duplicating the same functionality across
>> individual DP drivers. Perhaps other DP experts could provide some
>> advice on this.)
> 
> A bool function in common code, to be reused by all DP drivers, would be
> good.
> 
> 
> 

Yes, will do in v5.

Best regards,
Damon


