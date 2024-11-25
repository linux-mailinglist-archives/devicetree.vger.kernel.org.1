Return-Path: <devicetree+bounces-124408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB209D8AB2
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:55:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04B3D168BE9
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9B91B4F1E;
	Mon, 25 Nov 2024 16:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="F8ckYirK"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D958C1B4126;
	Mon, 25 Nov 2024 16:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732553730; cv=none; b=QBytq9wfiqI42drokmRCDERTsmpsjkbZZAvNxRXRv4hTNmCbtQjqLiGL7DmbWZOIp+GjrpZc3sIYKdyPJV3ieAY2PfQ0heNm323qJq7yT272M0a1ngqVu1OOH7LlHllltsj4DjKKdZLePjMRyNaIO9MR64ga+jnWXBBWivgmh0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732553730; c=relaxed/simple;
	bh=g7ZFlFRwgvLlLhUGEJJ8enN5gy7+MkcR980Ufjiw3N0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gy62DBZcdl3ADvud7ikOub2ZZWULcjTIjyMpbOgxSfv5QnyN2+hGAVKhhN0Y1y+cbFN4SMZXvafwhc5/nrbII3Vb2/RssXZAR647nvUOO0x+29vmpOeidwV8CMp9xn/WyvhB/4OoBflSo7q9QIqQ7NOw0FcTIk7VXIbZ4obZr4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=F8ckYirK; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1732553724;
	bh=g7ZFlFRwgvLlLhUGEJJ8enN5gy7+MkcR980Ufjiw3N0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=F8ckYirKSeB1nSa/dAQa+nGHYDN6IFCY2QLCzMNSq7/dlav3MOXuwyvaMi9j1FxIw
	 8VGqeXiqYUMGsUQy/nRSgKlBqc/p4zpNI9GESE6g2skvZbqW3UeqbiDS6fq2EFmLqY
	 7/I+Dud7vqPzeBRhPevUAOgsfE1Y6fiol+JZ5wkfjnHOpFssXl3A/9ChHGZWPpkXYA
	 sFZZS5z05n8vpifBuQgwEvF93qDvgpIXbz4DMfvGghnXdUCgeHqMmzeetJ9fdQ31pk
	 VKH3PWyJ+a7BVqlqcM0+kXSFhKLLDL21nwzEehBgGRqQWcAz88mqM6MJoZ2HNSww2n
	 aMGx/GQrEBJOw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C9CF617E376B;
	Mon, 25 Nov 2024 17:55:23 +0100 (CET)
Message-ID: <15864b39-c68d-4240-926b-87d5d3876c8c@collabora.com>
Date: Mon, 25 Nov 2024 17:55:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/6] drm/mediatek: mtk_dpi: Use an array for pixclk
 factor calculation
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
Cc: "linux-mediatek@lists.infradead.org"
 <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "simona@ffwll.ch" <simona@ffwll.ch>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>
References: <20241120124420.133914-1-angelogioacchino.delregno@collabora.com>
 <20241120124420.133914-4-angelogioacchino.delregno@collabora.com>
 <6e07043e70111920848cc3d22e5c60371c0fb65d.camel@mediatek.com>
 <120c65e7c21821a72fa5165e578cc1c39cf0c864.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <120c65e7c21821a72fa5165e578cc1c39cf0c864.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 22/11/24 07:23, CK Hu (胡俊光) ha scritto:
> Hi, Angelo:
> 
> On Fri, 2024-11-22 at 11:54 +0800, CK Hu wrote:
>> Hi, Angelo:
>>
>> On Wed, 2024-11-20 at 13:44 +0100, AngeloGioacchino Del Regno wrote:
>>> External email : Please do not click links or open attachments until you have verified the sender or the content.
>>>
>>>
>>> Setting the TVD PLL clock requires to multiply the target pixel
>>> clock by a specific constant factor to achieve the target PLL
>>> frequency, and this is done to reduce jitter to acceptable levels.
>>>
>>> On all MediaTek SoCs, the factor is not retrieved by any real kind
>>> of calculation but rather by checking if the target pixel clock
>>> is less than a specified frequency, hence assigning a function
>>> pointer for just a bunch of if branches does enlarge the code
>>> size for little reason.
>>>
>>> Remove all SoC-specific functions, add a structure `mtk_dpi_factor`
>>> that holds a clock frequency and corresponding PLL factor, and
>>> declare the constraints for each SoC in form of an array of said
>>> structure.
>>> Instead of function pointers, this structure (and its size) is then
>>> assigned to each SoC's platform data.
>>>
>>> The "calculation" is then performed with a new static function
>>> mtk_dpi_calculate_factor(dpi, mode_clk) that iterates through all
>>> of the entries of the aforementioned array and returns the right
>>> factor.
>>>
>>> If no factor is found, the lowest possible factor is returned,
>>> mimicking the same flow as all of the old per-SoC calculation
>>> functions.
>>>
>>> This commit brings no functional change.
>>
> 
> [snip]
> 
>>>   static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
>>>                                      struct drm_display_mode *mode)
>>>   {
>>> @@ -529,7 +550,7 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
>>>          unsigned int factor;
>>>
>>>          /* let pll_rate can fix the valid range of tvdpll (1G~2GHz) */
>>> -       factor = dpi->conf->cal_factor(mode->clock);
>>> +       factor = mtk_dpi_calculate_factor(dpi, mode_clk);
> 
> mode_clk is defined in next patch.
> keep mode->clock in this patch to keep my reviewed-by tag.
> 

Oh! Nice catch!
That happened during the final cleanup, heh :-)

Thanks btw, I will fix that in v2.

Cheers,
Angelo

> Regards,
> CK
> 
>>>          drm_display_mode_to_videomode(mode, &vm);
>>>          pll_rate = vm.pixelclock * factor;
>>>
>>> @@ -964,48 +985,6 @@ static const struct component_ops mtk_dpi_component_ops = {
>>>          .unbind = mtk_dpi_unbind,
>>>   };
>>>
> 
> 




