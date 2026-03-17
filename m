Return-Path: <devicetree+bounces-276441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIW3HxDQuGlfjgEAu9opvQ
	(envelope-from <devicetree+bounces-276441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:52:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1762A3637
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:52:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 14FCF30244F9
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 03:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F4BB35DA62;
	Tue, 17 Mar 2026 03:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="PJJ2468G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973188.qiye.163.com (mail-m1973188.qiye.163.com [220.197.31.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD423563D7;
	Tue, 17 Mar 2026 03:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773719555; cv=none; b=peHQZusZ0Rpp54KSBqYhlvSBZfUc08PVidFXXI6UT8fvQoj3uF3aNKyeXo48VhwymOVMbHETPtjk3rtlUUk9IbeFVJ77iLpYsgb5IEddg0zirwaVskXJfBL0gvixjugiImyZh3enCPojLKs4lSOV2b+Bayq0ErzqU214q0HeJz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773719555; c=relaxed/simple;
	bh=P061vJZiOgF5jK0wBEuauq5InVZm1JOcdheZCSoeMpk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OXSXiEZ+tOgLmj9+vpHBXoCmpTl+oElzm04ccyqwzZeIsYi1V29ZKG9Lwt45BvUUb0r5ISGlqzV3m8eRB2wqSJaP3R6rS9hXJOMxPl/y68NKfV9Aw6W2l6U7t4hFjgypIUytyvzeXfk06lVA9pvr7u18+tvQ2oepreJqB8xyJN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=PJJ2468G; arc=none smtp.client-ip=220.197.31.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372ee763f;
	Tue, 17 Mar 2026 09:29:50 +0800 (GMT+08:00)
Message-ID: <a24e2a09-86a6-4c59-b219-7bfe9c74a4a5@rock-chips.com>
Date: Tue, 17 Mar 2026 09:29:50 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] drm/bridge: analogix_dp: Add support for RK3576
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, alchark@gmail.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 luca.ceresoli@bootlin.com, dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-4-damon.ding@rock-chips.com>
 <2032185.PYKUYFuaPT@workhorse>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <2032185.PYKUYFuaPT@workhorse>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9cf969dbe503a3kunm8ccf497d220f1e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNKSlZOSB8dQk9KHk8eT0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=PJJ2468GOrg1YUeWzfIDkcNmJ93zOHxs2Aqc+k9HqwCiHWzw6l7ATKA+c/pDZKGoII0WDacnZmHNKE5yxtnzLMvHZ5VIfc4R+7iD0rgoqt9aWl8OJvGBiHpo869fXb5vGZbLS4vw2/Kzk06d4gvMsWl2g3m2+2GZAYK4/X/rUO0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/B8DeTrHPb3y1Zv+MpxLUNG3NZwclQ3c6Iyu/xxMENc=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276441-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[collabora.com,rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AA1762A3637
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Nicolas,

On 3/16/2026 7:14 PM, Nicolas Frattaroli wrote:
> On Tuesday, 10 March 2026 11:53:06 Central European Standard Time Damon Ding wrote:
>> Expand enum analogix_dp_devtype with RK3576_EDP, and add max_link_rate
>> and max_lane_count configs for it.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
>>   include/drm/bridge/analogix_dp.h                   | 3 ++-
>>   2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index fe7158d9edde..c4e49e8186ab 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1248,6 +1248,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>>   		video_info->max_link_rate = 0x0A;
>>   		video_info->max_lane_count = 0x04;
>>   		break;
>> +	case RK3576_EDP:
>>   	case RK3588_EDP:
>>   		video_info->max_link_rate = 0x14;
>>   		video_info->max_lane_count = 0x04;
>> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
>> index 854af692229b..d1a6e6d44a2b 100644
>> --- a/include/drm/bridge/analogix_dp.h
>> +++ b/include/drm/bridge/analogix_dp.h
>> @@ -16,12 +16,13 @@ enum analogix_dp_devtype {
>>   	EXYNOS_DP,
>>   	RK3288_DP,
>>   	RK3399_EDP,
>> +	RK3576_EDP,
>>   	RK3588_EDP,
>>   };
>>   
>>   static inline bool is_rockchip(enum analogix_dp_devtype type)
>>   {
>> -	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
>> +	return type == RK3288_DP || type == RK3399_EDP || type == RK3576_EDP || type == RK3588_EDP;
> 
> I think we can make this easier to read with a switch statement. In
> a separate patch, we may also want to rename `is_rockchip` to
> `analogix_dp_is_rockchip`, as e.g. rockchip_drm_vop.c and exynos_dp.c
> both include his header file as well.
> 
> Switch statement would make the function look something like:
> 
> static inline bool is_rockchip(enum analogix_dp_devtype type)
> {
> 	switch (type) {
> 	case RK3288_DP:
> 	case RK3399_EDP:
> 	case RK3576_EDP:
> 	case RK3588_EDP:
> 		return true;
> 	default:
> 		return false;
> 	}
> }
> 

Good idea, will do in v2. :-)

Best regards,
Damon


