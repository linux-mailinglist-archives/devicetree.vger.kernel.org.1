Return-Path: <devicetree+bounces-148139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B65A3ACA0
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 00:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32BB01687C2
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 23:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08C541DDC20;
	Tue, 18 Feb 2025 23:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gtaqD/GW"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF0B1CEAC3;
	Tue, 18 Feb 2025 23:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739922018; cv=none; b=IcLZ+tqD+kEFbBgN//lMz4Vs2mqZsel0/ZW59pBbr2sAdMQXPHdpZeJof95Vy2DhNvZnrh1Ar4l0s8HlInBmIimRVPIifGBE7nCKXqCliYTYYlLaWAEvdn/zXDw0fGl5pxZaBIGv79YJtE4zsbVsbdDBuQae+EModyYBUVKSw8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739922018; c=relaxed/simple;
	bh=vtJYJScwIgD7t/Kjv9WAvIrpkcvjsYEil5lQtdhNnDE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FYY7Agfa2ANSdHZs3eeTW2GKeB3vw+XDcNsATJ2biYERDLKqzQilN400h31+oEJMnGgxzY9UDSHiPwnwA1jrdFBsvfwRcQIfLKseNKwMGBdDMexXTNIq6Db914uGBHwQrHo22h7Zkw/F9gUoPGe+mHCCO/yzehPhJC/Lgzm7pxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=gtaqD/GW; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739922015;
	bh=vtJYJScwIgD7t/Kjv9WAvIrpkcvjsYEil5lQtdhNnDE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gtaqD/GWX2crjMIVsm9VhPgIp6ynjZ09aQZr76a03msFBEu3FN4S2lLI3hKVIXR6g
	 2LOCyx9ZvSLA2TOXcjTszgbUuSNTbm1pbAWf0hAavTRc+y2+rR8S5pcR5E2wOcF8tR
	 LRplrtXfSFculPVtvURaCiLm3OcJ5reQycDBmNKAfUAstLCB74ZnIj1JtUDQNODQ4a
	 PsSfM1eMYJZBW7KBtqIiKNy3XmfNDycBWITJZVKFPkmnkjVddJqR+8RPSF3Sjl54be
	 1+K0vAO/qvlBsPPMzC1rIMLXxt4k7mfTjUcjcl7YqwJxTtAnEeoQmXZqMMltmntcOq
	 eKv7Rd4oXgWSg==
Received: from [192.168.1.143] (144.232.221.87.dynamic.jazztel.es [87.221.232.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 881CB17E1411;
	Wed, 19 Feb 2025 00:40:13 +0100 (CET)
Message-ID: <0dd48599-448f-4472-9a8a-54b7f0379c13@collabora.com>
Date: Wed, 19 Feb 2025 01:40:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HDMI1 PHY PLL clock source
 to VOP2 on RK3588
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>, airlied@gmail.com,
 andy.yan@rock-chips.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kernel@collabora.com,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, robh@kernel.org,
 simona@ffwll.ch, tzimmermann@suse.de
References: <1919367.CQOukoFCf9@diego>
 <20250218121749.1382322-1-liujianfeng1994@gmail.com>
 <lnuceofdwm6lgibworaghcujp6rrncvn4e2xc2vzltimjw3rqu@jur7x5cxt5ue>
 <2425191.NG923GbCHz@diego>
 <ldgdrytto5y2xf3ois23j4ymtajtwmqlxjr2zyqhwbbxcx6f6y@gzb37fntx2x6>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ldgdrytto5y2xf3ois23j4ymtajtwmqlxjr2zyqhwbbxcx6f6y@gzb37fntx2x6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

On 2/18/25 6:05 PM, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Feb 18, 2025 at 03:53:06PM +0100, Heiko Stübner wrote:
>> Am Dienstag, 18. Februar 2025, 15:13:07 MEZ schrieb Sebastian Reichel:
>>> On Tue, Feb 18, 2025 at 08:17:46PM +0800, Jianfeng Liu wrote:
>>>> On Tue, 18 Feb 2025 11:00:57 +0100, Heiko Stübnerwrote:
>>>>> So I guess step1, check what error is actually returned.
>>>>
>>>> I have checked that the return value is -517:
>>>>
>>>> rockchip-drm display-subsystem: [drm] *ERROR* failed to get pll_hdmiphy1 with -517
>>>>
>>>>> Step2 check if clk_get_optional need to be adapted or alternatively
>>>>> catch the error in the vop2 and set the clock to NULL ourself in that case.
>>>>
>>>> I tried the following patch to set the clock to NULL when clk_get_optional
>>>> failed with value -517, and hdmi0 is working now. There are also some
>>>> boards like rock 5 itx which only use hdmi1, I think we should also add
>>>> this logic to vop2->pll_hdmiphy0.
>>>>
>>>> @@ -3733,6 +3751,15 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>>>>  		return PTR_ERR(vop2->pll_hdmiphy0);
>>>>  	}
>>>>  
>>>> +	vop2->pll_hdmiphy1 = devm_clk_get_optional(vop2->dev, "pll_hdmiphy1");
>>>> +	if (IS_ERR(vop2->pll_hdmiphy1)) {
>>>> +		drm_err(vop2->drm, "failed to get pll_hdmiphy1 with %d\n", vop2->pll_hdmiphy1);
>>>> +		if (vop2->pll_hdmiphy1 == -EPROBE_DEFER)
>>>> +			vop2->pll_hdmiphy1 = NULL;
>>>> +		else
>>>> +			return PTR_ERR(vop2->pll_hdmiphy1);
>>>> +	}
>>>> +
>>>
>>> This first of all shows, that we should replace drm_err in this
>>> place with dev_err_probe(), which hides -EPROBE_DEFER errors by
>>> default and instead captures the reason for /sys/kernel/debug/devices_deferred.
>>>
>>> Second what you are doing in the above suggestion will break kernel
>>> configurations where VOP is built-in and the HDMI PHY is build as a
>>> module.
>>>
>>> But I also think it would be better to have the clocks defined in the
>>> SoC level DT. I suppose that means vop2_bind would have to check if
>>> the HDMI controller <ID> is enabled and only requests pll_hdmiphy<ID>
>>> based on that. Considering there is the OF graph pointing from VOP
>>> to the enabled HDMI controllers, it should be able to do that.
>>
>>
>> I was more thinking about fixing the correct thing, with something like:
>>
>> ----------- 8< ----------
>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>> index cf7720b9172f..50faafbf5dda 100644
>> --- a/drivers/clk/clk.c
>> +++ b/drivers/clk/clk.c
>> @@ -5258,6 +5258,10 @@ of_clk_get_hw_from_clkspec(struct of_phandle_args *clkspec)
>>         if (!clkspec)
>>                 return ERR_PTR(-EINVAL);
>>
>> +       /* Check if node in clkspec is in disabled/fail state */
>> +       if (!of_device_is_available(clkspec->np))
>> +               return ERR_PTR(-ENOENT);
>> +
>>         mutex_lock(&of_clk_mutex);
>>         list_for_each_entry(provider, &of_clk_providers, link) {
>>                 if (provider->node == clkspec->np) {
>> ----------- 8< ----------
>>
>> Because right now the clk framework does not handle nodes in
>> failed/disabled state and would defer indefinitly.
> 
> Also LGTM.

Thank you all for the feedback and proposed solutions!

I'm currently on leave and without access to any testing hw, but I'll be
back in a couple of days.

Regards,
Cristian

