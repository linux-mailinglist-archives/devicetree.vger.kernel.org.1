Return-Path: <devicetree+bounces-138023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E73A0B77D
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 249AA188607E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 12:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86FB9233159;
	Mon, 13 Jan 2025 12:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Dy0k6PBF"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8748C22F15B;
	Mon, 13 Jan 2025 12:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736772665; cv=none; b=f7b14mzR2RYFtR2zCHGVEuxEsSXU2oKp8VOQO2fmhyCNiDszbnw/h/MqZ6GuChEL1YhkGACN39H4UpRDoDVL+Z/iPW2Jg7Wx8WWwgRAq+PAdGXGttLJJ89TFl2A31G811MfnABMCkkkzF0dbpEQrnJSvcaqYB7jH90QtUJOFdHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736772665; c=relaxed/simple;
	bh=l5Yi6dDEY/SW8SVIP06gR3s9bTtz+F9A6zrpSwBrNTk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uk7QEgbIPZpaaMvO1S1bDTVWxlQ8ojslCRpG84AakoqDy6aL8n7C4/cH0OBYEpp4wVBXTuxHuQF+RSPeHg/B2OlFe/ScCoSvJ2cKbvemKEy7VgWzX1QGIw9/1WrytxVy2F300uAwFwkVh0SvpG+VZt1eD3eihX0MmeQwush7fLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Dy0k6PBF; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736772661;
	bh=l5Yi6dDEY/SW8SVIP06gR3s9bTtz+F9A6zrpSwBrNTk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Dy0k6PBF18AOmyn3UeO46HEbOcPjhLi4tKlmGaXxz3wjQ1Kn4XX8BWL4mqoAs3fU1
	 fH6uGhumN1OnXXajFVFjoKWiA6ggJUGAX+F6rjImRWXuvLkWI5Q88E5wu3j4oq+yW5
	 VianQ4HEe/WRpAWn9KSiLsRg6cCZJHmMHDp2OGBIM2l6F10pT2QRcUaigN4NavkfXZ
	 5EDp6ICYiNdWnhry0i1uyM06Ls0I1EdoG+Anta98o0vLJbRG2FdKvirUvvyqAGKp36
	 NlyyIBuc3LgY3tuujNDEp9CQNE+ME46PGQ6lMa8gFHxRa1boAtZOLPyKRZ3wl936ks
	 aqup0t6zj6n0g==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9BF9317E04AC;
	Mon, 13 Jan 2025 13:51:00 +0100 (CET)
Message-ID: <09c87f13-477d-4721-b27d-f2f2e48f4f71@collabora.com>
Date: Mon, 13 Jan 2025 13:50:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/12] Add Mediatek Soc DRM support for mt8196
To: "paul-pl.chen" <paul-pl.chen@mediatek.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, chunkuang.hu@kernel.org
Cc: matthias.bgg@gmail.com, p.zabel@pengutronix.de,
 jason-jh.lin@mediatek.com, nancy.lin@mediatek.com, singo.chang@mediatek.com,
 xiandong.wang@mediatek.com, sirius.wang@mediatek.com,
 sunny.shen@mediatek.com, fshao@chromium.org, treapking@chromium.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 10/01/25 13:33, paul-pl.chen ha scritto:
> From: "Paul-pl.Chen" <paul-pl.chen@mediatek.com>
> 
> Add support multiple mmsys instances in the one mediatek-drm instance.
> 

Hello Paul,

EXDMA, BLENDER and OUTPROC seem to have many things in common with the current
mtk_disp_ovl.c driver.

Please commonize code from mtk_disp_ovl to reuse in these three components that
you're adding, as there is a lot of code duplication.

Thanks,
Angelo

> Nancy.Lin (7):
>    soc: mediatek: add mmsys support for MT8196
>    soc: mediatek: mutex: add mutex support for MT8196
>    drm/mediatek: add EXDMA support for MT8196
>    drm/mediatek: add BLENDER support for MT8196
>    drm/mediatek: add OUTPROC support for MT8196
>    drm/mediatek: add ovlsys_adaptor support for MT8196
>    drm/mediatek: Add support for multiple mmsys in the one mediatek-drm
>      driver
> 
> Paul-pl.Chen (5):
>    dt-bindings: arm: mediatek: mmsys: add compatible for MT8196
>    dt-bindings: soc: mediatek: add mutex yaml for MT8196
>    dt-bindings: display: mediatek: add EXDMA yaml for MT8196
>    dt-bindings: display: mediatek: add BLENDER yaml for MT8196
>    dt-bindings: display: mediatek: add OUTPROC yaml for MT8196
> 
>   .../bindings/arm/mediatek/mediatek,mmsys.yaml |   5 +
>   .../display/mediatek/mediatek,blender.yaml    |  50 ++
>   .../display/mediatek/mediatek,exdma.yaml      |  77 ++
>   .../display/mediatek/mediatek,outproc.yaml    |  57 ++
>   .../bindings/soc/mediatek/mediatek,mutex.yaml |   2 +
>   drivers/gpu/drm/mediatek/Makefile             |   4 +
>   drivers/gpu/drm/mediatek/mtk_crtc.c           | 350 ++++++--
>   drivers/gpu/drm/mediatek/mtk_crtc.h           |   6 +-
>   drivers/gpu/drm/mediatek/mtk_ddp_comp.c       | 134 +++-
>   drivers/gpu/drm/mediatek/mtk_ddp_comp.h       |   6 +
>   drivers/gpu/drm/mediatek/mtk_disp_blender.c   | 352 ++++++++
>   drivers/gpu/drm/mediatek/mtk_disp_blender.h   |  17 +
>   drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  66 +-
>   drivers/gpu/drm/mediatek/mtk_disp_exdma.c     | 447 +++++++++++
>   drivers/gpu/drm/mediatek/mtk_disp_outproc.c   | 244 ++++++
>   drivers/gpu/drm/mediatek/mtk_disp_outproc.h   |  22 +
>   .../drm/mediatek/mtk_disp_ovlsys_adaptor.c    | 758 ++++++++++++++++++
>   drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 287 ++++++-
>   drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  28 +-
>   drivers/soc/mediatek/mt8196-mmsys.h           | 447 +++++++++++
>   drivers/soc/mediatek/mtk-mmsys.c              | 204 ++++-
>   drivers/soc/mediatek/mtk-mmsys.h              |  18 +
>   drivers/soc/mediatek/mtk-mutex.c              | 233 +++++-
>   include/linux/soc/mediatek/mtk-mmsys.h        |  60 ++
>   include/linux/soc/mediatek/mtk-mutex.h        |   2 +
>   25 files changed, 3734 insertions(+), 142 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,blender.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,exdma.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,outproc.yaml
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_blender.c
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_blender.h
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_exdma.c
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_outproc.c
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_outproc.h
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovlsys_adaptor.c
>   create mode 100644 drivers/soc/mediatek/mt8196-mmsys.h
> 




