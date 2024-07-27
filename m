Return-Path: <devicetree+bounces-88548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB17A93E0A8
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 21:10:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 590071F2113B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 19:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A3E1862B2;
	Sat, 27 Jul 2024 19:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="BUpc1yWX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2206F15B570
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 19:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722107447; cv=none; b=uXKH1hY5ZA4ZbEihACZk5n+0pVBgFFJA+N0FD7Yv/HIbmyCfyakIQ/JOMYFICeApSISR8rfVgLGFgDi0NgHNFQZoVakQS9Q7rlZ88VLTOmbL+b9lNA7pEL03o/4QYkaB2uIcJNK5Terg3Ktz5fTwEAWdqMb8hiNIlvwMZh/ZuPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722107447; c=relaxed/simple;
	bh=XRJBv4prRAZ80meCtpugyYXP8y6zq81EO8DmSU7EQmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eXLUNt/GgrHuZR4KJPXPDbQp8YicTubak1AbSia7OdYNJh5Ijbj3GAbEintbO1gUza80KP+FiqRzcM41iwOGybUjxDr/FnxoQI63DRdDb0US4lSRSzlsQiGFAbswtNtzKHjXJ0xfu8rSDJctWgtnudqfesKQ1ZPX5muDQnXr+tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=BUpc1yWX; arc=none smtp.client-ip=91.218.175.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <aba35ecb-2357-4c4f-8366-08d14e40d436@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1722107442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vnZTjo/7pmFDEeMIrWbXmgk6xCg9PHf76iCLLIkf1sQ=;
	b=BUpc1yWXl1A9gUDv/LzaTVmzB/d7l1asUwM6acVHDHnrQRlZ82O55595uQzK4b3qtuAWoB
	BeTwNtbGNPa/hihoms9YkJzZ9VRMl5SeRzf8OlCOCLWUqrVYd3JCDqduQSFL6ZD/42gedN
	ns3+9GxixhIy+Nfcttbvm80cuiN0Ozs=
Date: Sun, 28 Jul 2024 03:10:21 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 00/19] Add Freescale i.MX8qxp Display Controller
 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, kishon@kernel.org,
 aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, frank.li@nxp.com
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <wky3mjl7fn773myatyrdsea6oc2xebkvrgmigmmoj36eswgqry@2kox5ad5dynl>
Content-Language: en-US, en-AU
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <wky3mjl7fn773myatyrdsea6oc2xebkvrgmigmmoj36eswgqry@2kox5ad5dynl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

Hi,

On 7/28/24 00:39, Dmitry Baryshkov wrote:
>> Hi,
>>
>> This patch series aims to add Freescale i.MX8qxp Display Controller support.
>>
>> The controller is comprised of three main components that include a blit
>> engine for 2D graphics accelerations, display controller for display output
>> processing, as well as a command sequencer.
>>
>> Previous patch series attempts to do that can be found at:
>> https://patchwork.freedesktop.org/series/84524/
>>
>> This series addresses Maxime's comments on the previous one:
>> a. Split the display controller into multiple internal devices.
>>     1) List display engine, pixel engine, interrupt controller and more as the
>>        controller's child devices.
>>     2) List display engine and pixel engine's processing units as their child
>>        devices.
>>
>> b. Add minimal feature support.
>>     Only support two display pipelines with primary planes with XR24 fb,
>>     backed by two fetchunits.  No fetchunit dynamic allocation logic(to be done
>>     when necessary).
>>
>> c. Use drm_dev_{enter, exit}().
>>
>> Since this series changes a lot comparing to the previous one, I choose to
>> send it with a new patch series, not a new version.
> I'm sorry, I have started reviewing v2 without noticing that there is a
> v3 already.
> 
> Let me summarize my comments:
> 
> - You are using OF aliases. Are they documented and acked by DT
>    maintainers?
> 
> - I generally feel that the use of so many small devices to declare
>    functional blocks is an abuse of the DT. Please consider creating
>    _small_ units from the driver code directly rather than going throught
>    the components. 

Well, I really don't think so. I don't agree.

I have checked the DTSpec[1] before type, the spec isn't define how
many is considered to be "many", and the spec isn't define to what
extent is think to be "small" as well.

[1] 
https://github.com/devicetree-org/devicetree-specification/releases/tag/v0.4

-- 
Best regards
Sui


