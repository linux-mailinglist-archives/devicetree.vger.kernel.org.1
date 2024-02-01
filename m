Return-Path: <devicetree+bounces-37541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F19845508
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 11:17:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E32571F244B6
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 10:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749FA15B98B;
	Thu,  1 Feb 2024 10:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OyN24PAm"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DAA15B102;
	Thu,  1 Feb 2024 10:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706782611; cv=none; b=pnZ4HaPhB5hmyy6cunhOnGSojbyZ4CFFTEYiENVreuHrp5JHglnoKE44gtGl9+WDfv02osXx9nq5Hm6ES2gSBTTXbHULJLpzqCuDNe2+tUImhne+lhMqFbVjJ2IPWjVJA56E63QDXkKn3AlqjQr2/9yTJieYxlZsY/AcyDCPgJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706782611; c=relaxed/simple;
	bh=o1wVIMmJ520BEQsqM1zAURXL/Zn0xmObwP0BDMXU0tE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=txU0Y3Z7N6BGe6ZcgI8vOtFtzZ/ozxPQtb31W5M86EiDlMChg+mGsFl1rspcMBLgeAgAJfzKf0O83ytSgZCftQfWUBI+i7Q+h7kcbzFNxP4b1eNuAGoGUnO/tHZYTkrym2GMFBT4xi8U6NHyhcGWeDHNEmGb4Go7maHKrSYsQbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OyN24PAm; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706782607;
	bh=o1wVIMmJ520BEQsqM1zAURXL/Zn0xmObwP0BDMXU0tE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OyN24PAmgPssyDz6LNpoS4vKe68IhaXzpboE/QWs9lBIfLX3OKEG0tWptllPgBmXe
	 5wbN1U84A9sgPBUaw7OG1MKf3+2nED7MU9/1HmNvwZziLcV+umKeH3o1GyXpS+dcIJ
	 kZfE069dG1fXd3nautF8hE8Fz6WmkMob3LfE1PBks0EYWXhQ/R3h4bCl+OxphF/jXU
	 FM68yojo/8cYHUrfFi8eJHbz3uqQqkHBCi9JqCCjTAEbxgpvm1+fcmr7cFIU0aptss
	 uadO8A5LRV7aLlTCn4TDCyl3CQxdN0ZWDtWFI3E+tR7lTNv1bpB0PRrbeVOecoJUVc
	 vzIPOyvY3HKBg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BC29E3782081;
	Thu,  1 Feb 2024 10:16:46 +0000 (UTC)
Message-ID: <488c6f38-02c6-4e62-b90b-d2ac112541ae@collabora.com>
Date: Thu, 1 Feb 2024 11:16:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/17] Support IGT in display driver
Content-Language: en-US
To: Hsiao Chien Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chen-Yu Tsai
 <wenst@chromium.org>, Sean Paul <sean@poorly.run>,
 Fei Shao <fshao@chromium.org>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231212121957.19231-1-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231212121957.19231-1-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/12/23 13:19, Hsiao Chien Sung ha scritto:
> This series is based on mediatek-drm-next.
> 
> This series adds support for running IGT (Intel GPU Tool) tests
> with MediaTek display driver. The following changes will be
> applied:
> 
> 1. Add a new API for creating GCE thread loop to retrieve CRCs
>     from the hardware component
> 2. Support hardware CRC calculation in both VDOSYS0 and VDOSYS1
> 3. Support alpha blending in both VDOSYS0 and VDOSYS1
> 

Hello,
is there still interest in upstreaming this?

We're interested in enabling more comprehensive IGT tests on MediaTek SoCs
and this series is definitely useful.

Regards,
Angelo

> Changes in v4:
> - Seperate the patch into smaller ones
> - Change the title of some patches
> - Revert the changes that are not related to the series
> 
> Changes in v3:
> - Modify the dt-binding document of Mediatek OVL
> - Set DRM mode configs accroding to the hardware capabilities
> - Replace cmdq_pkt_jump_absolute() with cmdq_pkt_jump()
> 
> Changes in v2:
> - Simplify CMDQ by adding commands that are currently used only
> - Integrate CRC related codes into new APIs for Mixer and OVL to reuse
> - Add CPU version CRC retrieval when CMDQ is disabled
> 
> Hsiao Chien Sung (17):
>    soc: mediatek: Add register definitions for GCE
>    soc: mediatek: Disable 9-bit alpha in ETHDR
>    dt-bindings: display: mediatek: ovl: Modify rules for MT8195/MT8188
>    drm/mediatek: Add OVL compatible name for MT8195
>    drm/mediatek: Set DRM mode configs accordingly
>    drm/mediatek: Support alpha blending in OVL
>    drm/mediatek: Support alpha blending in Mixer
>    drm/mediatek: Support alpha blending in display driver
>    drm/mediatek: Support CSC in OVL
>    drm/mediatek: Support more color formats in OVL
>    drm/mediatek: Turn off the layers with zero width or height
>    drm/mediatek: Support CRC in display driver
>    drm/mediatek: Support CRC in OVL
>    drm/mediatek: Support CRC in OVL adaptor
>    drm/mediatek: Add missing plane settings when async update
>    drm/mediatek: Fix errors when reporting rotation capability
>    drm/mediatek: Add comments for the structures
> 
>   .../display/mediatek/mediatek,ovl.yaml        |  12 +-
>   drivers/gpu/drm/mediatek/mtk_disp_drv.h       |   7 +
>   drivers/gpu/drm/mediatek/mtk_disp_ovl.c       | 326 +++++++++++++++---
>   .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   |  32 +-
>   drivers/gpu/drm/mediatek/mtk_drm_crtc.c       | 261 +++++++++++++-
>   drivers/gpu/drm/mediatek/mtk_drm_crtc.h       |  39 +++
>   drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |   7 +
>   drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  35 ++
>   drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  30 +-
>   drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  16 +
>   drivers/gpu/drm/mediatek/mtk_drm_plane.c      |  15 +-
>   drivers/gpu/drm/mediatek/mtk_ethdr.c          | 106 +++++-
>   drivers/gpu/drm/mediatek/mtk_ethdr.h          |   5 +
>   drivers/soc/mediatek/mtk-mmsys.c              |   1 +
>   include/linux/soc/mediatek/mtk-cmdq.h         |  10 +
>   15 files changed, 834 insertions(+), 68 deletions(-)
> 
> --
> 2.18.0
> 



