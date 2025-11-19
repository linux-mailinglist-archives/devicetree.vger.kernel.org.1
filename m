Return-Path: <devicetree+bounces-240375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF01EC70864
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 6CDD829173
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E53E530C37A;
	Wed, 19 Nov 2025 17:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TrA8ZFro"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1F230F92C
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 17:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763574576; cv=none; b=orCM/W9/LLjnVMY/Xif3/KyC5nPY/moSeIVXZk0hw5c/+biQKmBhwooyWQIv2kyGEJNHpNXGBGgFN9O//9gZTPTKT9zf3W0mO1cpiBBgHvD9XHH/0vhO05g+liGhX1ktpnCpcifPWF1OGWVMEkm9HI7sAMBKaskLipqvzOLyJXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763574576; c=relaxed/simple;
	bh=0pCFD5KvzUtit4qot1VdPXe6ibLJK2CITkuwqA5TScg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S7n72JWuqQ0pv+hn2h6jtL9fIiIn3xQ9YMcKcA8+vfgMIf8GRLkq1r7N9am59hh0SOLVn5ZIgF2SvlTuXIHiBgPiRx73i8L2UsH67F2QQprYLEr2+RUWNJnDX7XZrIrbR0c4C3EXJkpoDC1q/fNvSwi//MJ2WUfKGEQPZoQPK7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=TrA8ZFro; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763574564;
	bh=0pCFD5KvzUtit4qot1VdPXe6ibLJK2CITkuwqA5TScg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TrA8ZFroebQvyS5jU9CL/zRGJhsEpJo8D4mLi2orYcd3pgwklhxlmTC+IyC7Y8sJ0
	 3FGQ1lfHcOg9+mFQT8Ty4/GEsAQSk9Pdi4llNmPp7nFd/y1RsiJLYFyetKugjJVh8W
	 WOf7oKthWTrw7Uh9Q33s9BG/An5JOo9inkqcvRP4tGC1+qPXVrYG4BJ/qTDzt5/h+m
	 NRFBPNTJEHMeZGwzYNgQc+C4h4+YlLqZF5X4ygz3L37hqoTnNhgFrnTrSMpEfXB32Y
	 RxmZ33hDjpTksYZd4go/C4sRALybMV5mCH5t8/6298ffbhMNfYGPp5fV3A+5yoiQwK
	 b8bxS41uNLgSA==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C85FB17E0FFA;
	Wed, 19 Nov 2025 18:49:23 +0100 (CET)
Message-ID: <485c4a78-c20b-492a-8c27-07ef63323735@collabora.com>
Date: Wed, 19 Nov 2025 19:49:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
To: Chris Morgan <macromorgan@hotmail.com>, Maxime Ripard <mripard@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se,
 neil.armstrong@linaro.org, heiko@sntech.de, sebastian.reichel@collabora.com,
 jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org,
 andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org,
 robh@kernel.org, Laurent.pinchart@ideasonboard.com
References: <20251113192939.30031-1-macroalpha82@gmail.com>
 <20251113192939.30031-3-macroalpha82@gmail.com>
 <avdnpwnxs6cql7eyckdt37szpcf5ztgxlc7juwu6tqj5xxu56a@nrwljig2p67i>
 <SN6PR1901MB46548ED8D4BA1184E0EA7DC3A5D6A@SN6PR1901MB4654.namprd19.prod.outlook.com>
 <hgwfztkwk4qgvefwo2cdedzas3rzlhx6yek6dgldkgaq2jskvw@exxqujjpa6bl>
 <SN6PR1901MB46542ED12EF34220E3119460A5D7A@SN6PR1901MB4654.namprd19.prod.outlook.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <SN6PR1901MB46542ED12EF34220E3119460A5D7A@SN6PR1901MB4654.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/19/25 6:24 PM, Chris Morgan wrote:
> On Wed, Nov 19, 2025 at 10:02:23AM +0100, Maxime Ripard wrote:
>> On Tue, Nov 18, 2025 at 02:36:09PM -0600, Chris Morgan wrote:
>>> On Tue, Nov 18, 2025 at 09:46:04AM +0100, Maxime Ripard wrote:
>>>> Hi,
>>>>
>>>> On Thu, Nov 13, 2025 at 01:29:38PM -0600, Chris Morgan wrote:
>>>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>>>
>>>>> Add support for the dw-hdmi-qp driver to handle devices with missing
>>>>> HPD pins.
>>>>>
>>>>> Since in this situation we are now polling for the EDID data via i2c
>>>>> change the error message to a debug message when we are unable to
>>>>> complete an i2c read, as a disconnected device would otherwise fill
>>>>> dmesg with i2c read errors.
>>>>>
>>>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>>>
>>>> You must also disable any mode using the scrambler when there's no
>>>> hotplug interrupt available.
>>>
>>> Is there a simple way to do that? I'm not seeing any references to
>>> scrambling in the current driver.
>>>
>>> Should I just limit the rate to HDMI14_MAX_TMDSCLK (340000000)  under
>>> dw_hdmi_qp_bridge_tmds_char_rate_valid() if using EDID polling? A
>>> document I found online from Synopsys [1] claims that scrambling is
>>> used by default at rates above 340 (if I'm reading it right) and used
>>> opportunistically at rates below 340.
>>
>> Yep, that's what you should be testing for :)
>>
>> Maxime
> 
> Thanks, though now that I dig into it I'm a bit more confused on the
> best way forward. It looks like for today the driver is hard-limited
> to HDMI14_MAX_TMDSCLK because scrambling isn't supported. I'm assuming
> it will be at some point, suggesting that we *will* need this in the
> future. Is it sufficient to just add a comment there noting we need
> to check, or should I add a check there (that does nothing today)
> to ensure when we do support faster rates we are ready?

I plan to work on upstreaming the scrambling support soon.  Adding a TODO
comment would be enough for me to take care of the rest, but I'll still need
your help to get that tested, though. :-)

Cristian

