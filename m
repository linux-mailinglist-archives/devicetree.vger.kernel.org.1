Return-Path: <devicetree+bounces-140581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F12EAA1A6CB
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 16:13:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA86F3A3FF0
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 15:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0D0211A3A;
	Thu, 23 Jan 2025 15:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Oj8HRSQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC431CA8D;
	Thu, 23 Jan 2025 15:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737645197; cv=none; b=DeRql9Bht2Df1y6GToTVX1G8cdFgXT0/4bH64wf+IzkqKETpa8Mt54hvy82jg/M9NcsFvhimWjLPu9RsXPBYYCr/gQjbthW91eGbyDiAQuZZiTchTgRXzdgPQilMGrxchAmqkC5rtAyAlakF6pOUvmtdc/CNGKOTuRvKvzhRNM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737645197; c=relaxed/simple;
	bh=PJ7aYCbtXYZu+NJO1JN2by/s67/mM6chwppH2LXXzu4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TO0b6rBkbrnEvslc3A1eqNeXy2t//sZsqDm9MuTJ2ApKTQSYhGWwEf6C0zGGpXQU7xpwW4KQyGfAx3FuSX+wqPWiwIqUOtA04R61x//k8H3ZeSJOUPiklvau+q29PRaOP3WEdjRKRa+vXf2yRAdZ/RLrMK9+9tV9oJN9MuWmRzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Oj8HRSQ3; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737645195; x=1769181195;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=PJ7aYCbtXYZu+NJO1JN2by/s67/mM6chwppH2LXXzu4=;
  b=Oj8HRSQ3JKt9aq/VC+jaeYsJ9uAGfuuEuSvcpZHsx3WaWwGBTB3uFD7w
   ds4Qqbe0FXyE9FKPDS0tUH0KwXpFct3GoeLsdPVPxmd9QYY6ExZf8CpXK
   IQIw2zXILMfx679oDt9yQ/AT/xn3sYHmy1AjebVIfyqgM0wwSg63M5O2y
   7qcyMUJIEhStGOV5scTOnHTyHQ89KEnO/f1zBNPcJFfCVuQfTb1jm57zB
   W2QodRwTlg7VDlPBgw94bJhSFMMKGeLHR7EkqDKZd7zL5wt9IjPe8nyxS
   5R7VW784BKHidfRdVRJ9OYZY6fRtjSDqPd68p0Ul1hgJ+kDOSfejcscSO
   g==;
X-CSE-ConnectionGUID: I1qbp6bTQj6TYIQKy8Y31A==
X-CSE-MsgGUID: +vICVcG6SJ28mJBz/j7poA==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="48645061"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; 
   d="scan'208";a="48645061"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 07:12:41 -0800
X-CSE-ConnectionGUID: iA8pr0lGR2G7SnmEsAU9RQ==
X-CSE-MsgGUID: pnYUQ/TcQBKbHiLGBBM+LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; 
   d="scan'208";a="107299297"
Received: from unknown (HELO localhost) ([10.237.66.160])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 07:12:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Damon Ding
 <damon.ding@rock-chips.com>
Subject: Re: [PATCH v6 01/14] drm/rockchip: analogix_dp: Replace DRM_...()
 functions with drm_...()
In-Reply-To: <87ikq5n2di.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-2-damon.ding@rock-chips.com>
 <87ikq5n2di.fsf@intel.com>
Date: Thu, 23 Jan 2025 17:12:31 +0200
Message-ID: <875xm5mun4.fsf@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Thu, 23 Jan 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 23 Jan 2025, Damon Ding <damon.ding@rock-chips.com> wrote:
>> According to the comments in include/drm/drm_print.h, the DRM_...()
>> functions are deprecated in favor of drm_...() or dev_...() functions.
>>
>> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
>> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS().
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v6:
>> - Use drm_...() uniformly rather than mixing drm_...() and dev_..()
>> - Pass 'dp' in drm_...() rather than 'dp->drm_dev'
>> ---
>>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
>>  1 file changed, 15 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> index 0844175c37c5..dd33d7540e4b 100644
>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>  
>>  	ret = clk_prepare_enable(dp->pclk);
>>  	if (ret < 0) {
>> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
>> +		drm_err(dp, "failed to enable pclk %d\n", ret);
>
> Please don't do this.
>
> You're supposed to pass struct drm_device to drm_err() and friends. Not
> some random struct pointer that just happens to have a ->dev member.
>
> The drm_* macros may change at any time to actually expect the correct
> type.

And with [1] I'm hoping "at any time" becomes "real soon now".

BR,
Jani.


[1] https://lore.kernel.org/all/cover.1737644530.git.jani.nikula@intel.com


-- 
Jani Nikula, Intel

