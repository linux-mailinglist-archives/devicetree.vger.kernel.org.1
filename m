Return-Path: <devicetree+bounces-101668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A470972F5E
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 11:51:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C458EB23A07
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 09:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AB31891A5;
	Tue, 10 Sep 2024 09:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="HSb2h/AV";
	dkim=pass (1024-bit key) header.d=amazonses.com header.i=@amazonses.com header.b="i9VsMEaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from a7-29.smtp-out.eu-west-1.amazonses.com (a7-29.smtp-out.eu-west-1.amazonses.com [54.240.7.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54361188CAD;
	Tue, 10 Sep 2024 09:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.240.7.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725961843; cv=none; b=oelsD6qKDVpXMrC1tr+clnYwOKDmyl+VHs4nmb2rALcIfzGdF7PneaLghAoLLgAwgBslj34zuMufRBq8eVNKDEdI+G0y4BrD8xPNrGOq3+2O2iWE4SXR8NQA4O6td71XtR6W9/KBgAiXfxTbaiOiFy4r9OUgonc8iwqDvkbfa8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725961843; c=relaxed/simple;
	bh=0IVPpNyAsgXKj+Ov1MV+Lz4gLR4qqxyGnN+wU1Hih9E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EsPAWdJTyHsF2POcTAGPT0WI0kVPYuSLH/mBKEB+aoRrIgZyMXyIIU3yyrrYLBQyXAXsCpLoCXOgktsTghJxVQsR205Crj5UUwdIYykPHYEiPkSS2UYxO3Ssuo5FQ8TZkZ0oxRcHSzbUVpwLp1vOK6v8kDy0lobtdqF90mYbKIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=amazonses.collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HSb2h/AV; dkim=pass (1024-bit key) header.d=amazonses.com header.i=@amazonses.com header.b=i9VsMEaQ; arc=none smtp.client-ip=54.240.7.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazonses.collabora.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1725961839;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	bh=0IVPpNyAsgXKj+Ov1MV+Lz4gLR4qqxyGnN+wU1Hih9E=;
	b=HSb2h/AVHeQAcHmJm4OK62xZYmZJZChE2aYmlF6G/GWKwT0gDioOifMvuULsVaU/
	fO5Kdkpa5CXJJaIkDkLPjasjtPaK848Ohm+Td9tsDwdm4mT3DsgOHKpArLAHMv3Ki+L
	McI2e+sYx8FdDvLuy8vw5k52mqEqNGE30y/XYmbzhsmf5/PD/OrzMz8Y8ZGSCX8uHns
	2okTJQaj5AZzV2YHDh3fgdd7/G9gQHyuNnuAJlwaZVUT2oe0gnAH2vatURNNV+rNvj4
	jjr9QdhNv0/4+AlGFD1GQqotiGnnsiXc9yDxcbnx0e5nIx5rCleGjHhKlB2b6hfRFdr
	RgRM/DeWcw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1725961839;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Feedback-ID;
	bh=0IVPpNyAsgXKj+Ov1MV+Lz4gLR4qqxyGnN+wU1Hih9E=;
	b=i9VsMEaQ23fk8Q2EUnzb3AmX3KwSemtRQDqxJS1cTRSgS60L2mwhLUNBjko8Jfoq
	qAmPnA9AHCQvO8q3xwUo/EaGHUM04bGEZFiyFEKxqpPTRkhbRBHLcUMe31lLP0qgCHD
	1WkwhHpdval2O8ZQiveExfkxCgY4SQLY+4Jij564=
Message-ID: <01020191db57a3d1-2c076978-c7c0-4685-9621-10ecdc3c5e99-000000@eu-west-1.amazonses.com>
Date: Tue, 10 Sep 2024 09:50:39 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/3] drm/mediatek: Add support for OF graphs
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: chunkuang.hu@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, matthias.bgg@gmail.com, shawn.sung@mediatek.com, 
	yu-chang.lee@mediatek.com, ck.hu@mediatek.com, 
	jitao.shi@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	sui.jingfeng@linux.dev, michael@walle.cc, sjoerd@collabora.com
References: <01020191db2ac439-4e2dc95a-6323-4f0f-b9fc-c482948018a8-000000@eu-west-1.amazonses.com>
 <CAGXv+5Ff4+HS5_DSTX2U7SaCnZhWMWTN44wr+4_vYNrQQm_mDA@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAGXv+5Ff4+HS5_DSTX2U7SaCnZhWMWTN44wr+4_vYNrQQm_mDA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.10-54.240.7.29

Il 10/09/24 11:39, Chen-Yu Tsai ha scritto:
> On Tue, Sep 10, 2024 at 5:01 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>>
>> Changes in v9:
>>   - Rebased on next-20240910
>>   - Removed redundant assignment and changed a print to dev_err()
>>   - Dropped if branch to switch conversion as requested; this will
>>     be sent as a separate commit out of this series.
>>
>> Changes in v8:
>>   - Rebased on next-20240617
>>   - Changed to allow probing a VDO with no available display outputs
>>
>> Changes in v7:
>>   - Fix typo in patch 3/3
>>
>> Changes in v6:
>>   - Added EPROBE_DEFER check to fix dsi/dpi false positive DT fallback case
>>   - Dropped refcount of ep_out in mtk_drm_of_get_ddp_ep_cid()
>>   - Fixed double refcount drop during path building
>>   - Removed failure upon finding a DT-disabled path as requested
>>   - Tested again on MT8195, MT8395 boards
>>
>> Changes in v5:
>>   - Fixed commit [2/3], changed allOf -> anyOf to get the
>>     intended allowance in the binding
>>
>> Changes in v4:
>>   - Fixed a typo that caused pure OF graphs pipelines multiple
>>     concurrent outputs to not get correctly parsed (port->id);
>>   - Added OVL_ADAPTOR support for OF graph specified pipelines;
>>   - Now tested with fully OF Graph specified pipelines on MT8195
>>     Chromebooks and MT8395 boards;
>>   - Rebased on next-20240516
>>
>> Changes in v3:
>>   - Rebased on next-20240502 because of renames in mediatek-drm
>>
>> Changes in v2:
>>   - Fixed wrong `required` block indentation in commit [2/3]
>>
>>
>> The display IPs in MediaTek SoCs are *VERY* flexible and those support
>> being interconnected with different instances of DDP IPs (for example,
>> merge0 or merge1) and/or with different DDP IPs (for example, rdma can
>> be connected with either color, dpi, dsi, merge, etc), forming a full
>> Display Data Path that ends with an actual display.
>>
>> This series was born because of an issue that I've found while enabling
>> support for MT8195/MT8395 boards with DSI output as main display: the
>> current mtk_drm_route variations would not work as currently, the driver
>> hardcodes a display path for Chromebooks, which have a DisplayPort panel
>> with DSC support, instead of a DSI panel without DSC support.
>>
>> There are other reasons for which I wrote this series, and I find that
>> hardcoding those paths - when a HW path is clearly board-specific - is
>> highly suboptimal. Also, let's not forget about keeping this driver from
>> becoming a huge list of paths for each combination of SoC->board->disp
>> and... this and that.
>>
>> For more information, please look at the commit description for each of
>> the commits included in this series.
>>
>> This series is essential to enable support for the MT8195/MT8395 EVK,
>> Kontron i1200, Radxa NIO-12L and, mainly, for non-Chromebook boards
>> and Chromebooks to co-exist without conflicts.
>>
>> Besides, this is also a valid option for MT8188 Chromebooks which might
>> have different DSI-or-eDP displays depending on the model (as far as I
>> can see from the mtk_drm_route attempt for this SoC that is already
>> present in this driver).
>>
>> This series was tested on MT8195 Cherry Tomato and on MT8395 Radxa
>> NIO-12L with both hardcoded paths, OF graph support and partially
>> hardcoded paths, and pure OF graph support including pipelines that
>> require OVL_ADAPTOR support.
>>
>> AngeloGioacchino Del Regno (3):
>>    dt-bindings: display: mediatek: Add OF graph support for board path
>>    dt-bindings: arm: mediatek: mmsys: Add OF graph support for board path
>>    drm/mediatek: Implement OF graphs support for display paths
>>
>>   .../bindings/arm/mediatek/mediatek,mmsys.yaml |  28 ++
>>   .../arm/mediatek/mediatek,mmsys.yaml.orig     | 140 ++++++++++
>>   .../display/mediatek/mediatek,aal.yaml        |  40 +++
>>   .../display/mediatek/mediatek,aal.yaml.orig   |  93 +++++++
>>   .../display/mediatek/mediatek,ccorr.yaml      |  21 ++
>>   .../display/mediatek/mediatek,ccorr.yaml.orig |  88 ++++++
>>   .../display/mediatek/mediatek,color.yaml      |  22 ++
>>   .../display/mediatek/mediatek,color.yaml.orig |  96 +++++++
>>   .../display/mediatek/mediatek,dither.yaml     |  22 ++
>>   .../mediatek/mediatek,dither.yaml.orig        |  87 ++++++
>>   .../display/mediatek/mediatek,dpi.yaml        |  25 +-
>>   .../display/mediatek/mediatek,dpi.yaml.orig   | 122 +++++++++
>>   .../display/mediatek/mediatek,dsc.yaml        |  24 ++
>>   .../display/mediatek/mediatek,dsi.yaml        |  27 +-
>>   .../display/mediatek/mediatek,dsi.yaml.orig   | 126 +++++++++
>>   .../display/mediatek/mediatek,ethdr.yaml      |  22 ++
>>   .../display/mediatek/mediatek,gamma.yaml      |  19 ++
>>   .../display/mediatek/mediatek,gamma.yaml.orig |  96 +++++++
>>   .../display/mediatek/mediatek,merge.yaml      |  23 ++
>>   .../display/mediatek/mediatek,merge.yaml.orig | 110 ++++++++
>>   .../display/mediatek/mediatek,od.yaml         |  22 ++
>>   .../display/mediatek/mediatek,ovl-2l.yaml     |  22 ++
>>   .../mediatek/mediatek,ovl-2l.yaml.orig        |  78 ++++++
>>   .../display/mediatek/mediatek,ovl.yaml        |  22 ++
>>   .../display/mediatek/mediatek,ovl.yaml.orig   | 109 ++++++++
>>   .../display/mediatek/mediatek,postmask.yaml   |  21 ++
>>   .../display/mediatek/mediatek,rdma.yaml       |  22 ++
>>   .../display/mediatek/mediatek,rdma.yaml.orig  | 122 +++++++++
>>   .../display/mediatek/mediatek,ufoe.yaml       |  21 ++
>>   .../display/mediatek/mediatek,wdma.yaml.orig  |  76 ++++++
>>   .../bindings/gpu/arm,mali-bifrost.yaml.orig   | 250 +++++++++++++++++
>>   .../bindings/leds/leds-mt6323.txt.orig        |  60 +++++
>>   .../bindings/ufs/mediatek,ufs.yaml.orig       |  71 +++++
>>   drivers/gpu/drm/mediatek/mtk_disp_drv.h       |   1 +
>>   .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   |  40 ++-
>>   drivers/gpu/drm/mediatek/mtk_dpi.c            |  21 +-
>>   drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 253 +++++++++++++++++-
>>   drivers/gpu/drm/mediatek/mtk_drm_drv.h        |   2 +-
>>   drivers/gpu/drm/mediatek/mtk_dsi.c            |  14 +-
>>   39 files changed, 2433 insertions(+), 25 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml.orig
>>   create mode 100644 Documentation/devicetree/bindings/leds/leds-mt6323.txt.orig
>>   create mode 100644 Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml.orig
> 
> It looks like you accidentally imported a bunch of files from Git.
> 

Ouch. Yeah, looks like I did.

Will send a v10 soon, I apparently need some coffee :-P

Thanks,
Angelo

> ChenYu
> 
>>
>> --
>> 2.46.0
>>



