Return-Path: <devicetree+bounces-152750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 298CAA4A16E
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 19:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22AAF189B24D
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 18:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311E3272904;
	Fri, 28 Feb 2025 18:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="SMx0uDl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5125A27127A
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 18:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740767236; cv=none; b=qfkIkrTNJP/aCgY6IuqN8gNxmyrjFUcKPvjuOlxsqTqKG/3ouuf31cwHZd0+u2hY7/bnulFciPDJuMZ/fXQd/68oGLXlEleYtNUZo5Rh/6VeNYt5BfmcUjnjGUgpQ1R63BPHdDcy/WO6yoPHGjk+N0/zbz7209Fj+BoqyUZ5bZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740767236; c=relaxed/simple;
	bh=XYXW1hqahyHMUMbdtCfSTrUwB7QRlNoF9BqkS0BM08I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ooP6xcZhaErVgzqkyyoCEWJMZjUWksRXaiXYm99Q5wbjB6bf1nOCjvhshetG3zzzustD/0stPb2z7ENETb4LoKMHvTz1kui00CGmLQUyz5SHLplVRWwpBvv7fP2X4R/Gw1yoo1jmhlZzSCzlhoj2rtztBlMaDyhd05e3QdKAT/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=SMx0uDl2; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B356E102901CB;
	Fri, 28 Feb 2025 19:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1740767226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ebfjXjv+bqlFowxWgcxVBRPIFf+y2ZFstbhRFYQ+B3o=;
	b=SMx0uDl2Mwn6/zecOEx6MQdyi0SH0kKNxIGNAfTZlFCp+iLnWFeP8mL1NQbqE9vBcwy/EA
	c59tK9X19cLR6C01stMKronJmlaTYccJe2s7OGzf3Bhfav4cncfDu2e9Sw65+JFdilJ11n
	j6HQT+DQYgi6QAFzpneNjPd1sFp/T9opiQZVYH4nXnvAMrcoUhzazc8HDqxYfJJry0Ujxw
	W4yHOYyE7zde/azlb7UohiwEy7thG/Ofuf+xYNWbzUDCgdyTZTvEVT9sm4WwJDYhoaCcbE
	GlgEtgDW2NFaNm97s7/KNeyle8S7FGEZxa/sJbSoBYve3u9mbM5AeK2jh4h/Uw==
Message-ID: <b0bfbb84-a3a8-403a-ad5a-95ebcd1eb00f@denx.de>
Date: Fri, 28 Feb 2025 17:48:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] drm/panthor: Implement optional reset
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Steven Price <steven.price@arm.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, devicetree@vger.kernel.org, imx@lists.linux.dev
References: <20250227170012.124768-1-marex@denx.de>
 <20250227170012.124768-5-marex@denx.de> <2180166.OBFZWjSADL@steina-w>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <2180166.OBFZWjSADL@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

On 2/28/25 11:06 AM, Alexander Stein wrote:

Hi,

>> diff --git a/drivers/gpu/drm/panthor/panthor_device.c b/drivers/gpu/drm/panthor/panthor_device.c
>> index a9da1d1eeb707..51ee9cae94504 100644
>> --- a/drivers/gpu/drm/panthor/panthor_device.c
>> +++ b/drivers/gpu/drm/panthor/panthor_device.c
>> @@ -64,6 +64,17 @@ static int panthor_clk_init(struct panthor_device *ptdev)
>>   	return 0;
>>   }
>>   
>> +static int panthor_reset_init(struct panthor_device *ptdev)
>> +{
>> +	ptdev->resets = devm_reset_control_get_optional_exclusive_deasserted(ptdev->base.dev, NULL);
> 
> If the description as a write-once register is true, wouldn't this
> already write to it?

It would. I believe the reset handling in the GPU driver should be 
generic. The reset has to be deasserted here to access the GPU registers.

The question is, whether the GPUMIX GPURESET bit should be modeled as 
simple reset, even if it really behaves as a 
set-and-never-can-be-cleared latched bit.

>> +	if (IS_ERR(ptdev->resets))
>> +		return dev_err_probe(ptdev->base.dev,
>> +				     PTR_ERR(ptdev->resets),
>> +				     "get reset failed");
>> +
>> +	return 0;
>> +}
>> +
>>   void panthor_device_unplug(struct panthor_device *ptdev)
>>   {
>>   	/* This function can be called from two different path: the reset work
>> @@ -217,6 +228,10 @@ int panthor_device_init(struct panthor_device *ptdev)
>>   	if (ret)
>>   		return ret;
>>   
>> +	ret = panthor_reset_init(ptdev);
>> +	if (ret)
>> +		return ret;
>> +
>>   	ret = panthor_devfreq_init(ptdev);
>>   	if (ret)
>>   		return ret;
>> @@ -470,6 +485,10 @@ int panthor_device_resume(struct device *dev)
>>   	if (ret)
>>   		goto err_disable_stacks_clk;
>>   
>> +	ret = reset_control_deassert(ptdev->resets);
>> +	if (ret)
>> +		goto err_disable_coregroup_clk;
>> +
> 
> This wouldn't work at all on a write-once register, no? Same for resume.
See above and also my reply to 2/9 .

