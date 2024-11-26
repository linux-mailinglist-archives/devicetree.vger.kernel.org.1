Return-Path: <devicetree+bounces-124574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9F69D9469
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44DC3164071
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933751D515B;
	Tue, 26 Nov 2024 09:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="eIHU92X4"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632011B85C2;
	Tue, 26 Nov 2024 09:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732613135; cv=none; b=s6+eYSA4m6E48P1pDfoX8m1E6ZTszS6t3Ei72Dg81PmMJQhbD0U/F5sqmbgWppJ/G7laYVVtL/RTYMr0n/rYrJdXlWAgtqXHuMwL5LZlJ0YortLBbzWYwmydUvbk0SrMRVWBDcxOY4h0R4C1ey7ZSdo38sfafUHYMtk6jUs1kf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732613135; c=relaxed/simple;
	bh=q2gcjqVo2CyG1kSniuRv8nGxpUCYXEmQGCKgxWS+XDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WIswoemCi3xRbFLBVfERKIwejvUL1alnjUQ3UUermFdIexpKrpWo4XPKh/wJMvyQE57C79yVothdIgKGAQ6lJOCkLy49V0KhENhquH3oV1ruWItI+Uqvi4T6MG5EnKsg0utXRhmiqFYIgLEIbtUAu2xfrBEGlXjc/LOrx4xmo+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=eIHU92X4; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1732613126;
	bh=q2gcjqVo2CyG1kSniuRv8nGxpUCYXEmQGCKgxWS+XDs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eIHU92X404Ei+eJZb/9Itwx4Rr4WnjIIBxSufR6K2Ir/JF/jE5mvw2sX643UoDhOT
	 bAj8dMiwIkgt9FONq3ervcV6Viky4Q2fbl2jh6EuFkxJUjeZZbSW2i1x4fkhaf69V+
	 rJ+CeivsCv6JVSFl17xkWmT0Sc6YzcXuakw9wDssM+R5LDON8vyugxaqZ+PubmJDhR
	 7G/8NzEBg7KS+U2MAhs8sAI30acXwg+Vp73QUuDvlQRBu1BGOo0yO7X/30bH6QnBgV
	 Rp9gY8ofr3zYHAAGfrUt/h38gQ3kRa3Xh5g2CuyBQ5kN6k7fSPvEXKFtSqUZdbrq/e
	 ht+Qn/gi0Mugw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 55AC517E12D3;
	Tue, 26 Nov 2024 10:25:25 +0100 (CET)
Message-ID: <f1d16db0-a7e1-4cfd-85c6-8beef4385701@collabora.com>
Date: Tue, 26 Nov 2024 10:25:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 6/6] drm/mediatek: Add support for MT8195 Digital
 Parallel Interface
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "kernel@collabora.com" <kernel@collabora.com>,
 =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
 "mripard@kernel.org" <mripard@kernel.org>, "simona@ffwll.ch"
 <simona@ffwll.ch>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
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
 <20241120124420.133914-7-angelogioacchino.delregno@collabora.com>
 <1b966a136f02b5586749a9c3d0bcec6c75224e49.camel@mediatek.com>
 <33acccd3-e543-493e-a61c-282d894ef2b1@collabora.com>
 <fd48c582e99d6c07be4b66919fb6c309379ad752.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <fd48c582e99d6c07be4b66919fb6c309379ad752.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 26/11/24 04:07, CK Hu (胡俊光) ha scritto:
> On Mon, 2024-11-25 at 17:55 +0100, AngeloGioacchino Del Regno wrote:
>> External email : Please do not click links or open attachments until you have verified the sender or the content.
>>
>>
>> Il 22/11/24 08:23, CK Hu (胡俊光) ha scritto:
>>> Hi, Angelo:
>>>
>>> On Wed, 2024-11-20 at 13:44 +0100, AngeloGioacchino Del Regno wrote:
>>>> External email : Please do not click links or open attachments until you have verified the sender or the content.
>>>>
>>>>
>>>> Add support for the DPI block found in the MT8195 and MT8188 SoCs.
>>>> Inside of the SoC, this block is directly connected to the HDMI IP.
>>>
>>> In MT8173, DPI0 is directly connected to HDMI.
>>> The first version of this driver is just for MT8173 DPI0.
>>> Does MT8173 DPI0 need this modification?
>>> Or this modification is just for MT8188 and MT8195, then the description should be more than 'directly connected'.
>>>
>>
>> This is only for MT8188 and MT8195, and MT8173 does *not* need any modification.
>>
>> Please, what would you like to see in the description of this commit?
> 
> This patch does four jobs.
> 
> 1. Enable/disable tvd_clk for MT8195/MT8188 DPI.
> 2. Do not set pixel clock for MT8195/MT8188 DPI.
> 3. New DPI_INPUT_XXX and DPI_OUTPUT_XXX control for MT8195/MT8188 DPI.
> 4. Do not power on/off for MT8195/MT8188 DPI.
> 
> Maybe you should break into 4 patches and each one has different reason.

Yeah I thought about that as well, but there's a fundamental issue with splitting
the thing in multiple patches...

For enabling the tvd_clk in a separate patch, there's no problem - however, for the
others....

1. We need to introduce support for MT8195/88 DPI-HDMI, or the other patches would
    not make sense (nor apply, anyway); then
2. We stop setting pixel clock with another patch; then
3. we don't power on/off, etc etc

The problem with doing it like so is that the patch #1 that I described would be
introducing *faulty code*, because the support for that really depends on all of
the others being present (otherwise the block won't work correctly).

So... if you want, I can easily split out the tvd_clk enable/disable, but splitting
the rest wouldn't be clean.

Besides, keep in mind that... actually... for anything else that is not MT8195/88
DPI0 (so, for other SoCs' DPI and for 95/88 DPINTF) the tvd_clk is already getting
enabled by its child.. so, for those ones, a call to enable tvd_clk does exactly
nothing apart from incrementing (enable) or decrementing (disable) the refcount for
this clock by 1.

This means that the enablement/disablement of tvd_clk is actually important only
for the MT8195/88 DPI and has literally no effect on anything else that is
currently supported by the mtk_dpi driver anyway.

Still - if you want me to split out the tvd_clk en/dis patch, just confirm and I
will split that one out...

> 
> For #1 and #2, I've not reviewed the HDMI driver. Is the clock control influenced by new HDMI driver.

It kinda is - the HDMI-TX block gets its clock from the HDMI PHY's clock gen,
but eventually it is the HDMI driver that tells to the PHY driver what clock it
actually wants.

For #1, clk_prepare_enable() is ungating the clock that would otherwise gate the
PHY's PLL output to the HDMI block.

> If it is software reason, maybe we can modify the new HDMI driver and make DPI driver consistent with MT8173.
> If it is hardware reason. just describe the hardware reason.

Alright - the hardware reason is that the HDMIPHY generates the clock for the HDMI
TX block, and that enabling the clock assigned to tvd_clk is necessary to ungate
the PHY's ckgen output to the HDMI-TX (and I think - but not sure as I haven't
analyzed that yet - that HDMI-RX should have the same gating technique, but that's
definitely out of scope for this submission).

> 
> For #4, I don't know why DPI do not control power by its self?
> Even though other driver may control the same power, power manager has reference count,
> so each driver could control the same power by its self.

#4 is there both for a SW and for a HW reason.

The HW reason is that the DPI shall be powered on in a specific sequence in regard
to HDMI-TX, due to the setup that is required by both (and ungating clocks before
full configuration happens would lock up the hw block).

The SW reason is that mtk_crtc.c calls mtk_crtc_ddp_hw_init()->mtk_ddp_comp_start()
in its .atomic_enable() callback, which happens in the wrong sequence in regard to
HDMI because of the "natural" components order in the DRM framework (for MT8195/88!
because for the others it either is the inverse or it does not matter - so for
performance it's okay for it to be like that both on older SoCs and on DPINTF for
95/88) and this means that we *must not* call dpi_power_on() at that time but
we must rather follow the atomic_enable()/bridge_enable() order imposed by DRM
*also* for the clock en/dis calls in DPI.

Cheers,
Angelo

> 
> Regards,
> CK
> 
> 
>>
>> Cheers,
>> Angelo
>>
>>> Regards,
>>> CK
>>>
>>>>
>>>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>>>> ---
>>
>>




