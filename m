Return-Path: <devicetree+bounces-123467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC8B9D494F
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 09:56:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11602284752
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C90C1CBA1B;
	Thu, 21 Nov 2024 08:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MAU3vaTh"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D3A1CB322;
	Thu, 21 Nov 2024 08:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732179315; cv=none; b=aaw9JaSLZsBLMKkycpT/XTPP8C/PvU4Ky/Obb9MGKtYNlW/463Fpioph6IdY3iHs4IVNayckkeacq5cJCLMqX7Ijur6UdJuDUV1VmQBIujpFie4z8aYuX2+bvV7v6OcsQexn6B/cN8CQyZSaf5vdQ0GV+uaO+FSH35lBm+Tjhd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732179315; c=relaxed/simple;
	bh=esX6pNIA4mdgAouLBmxFqcD5UvWUX2OcANV49HJchSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JlhrUuHic8sToQrkiLfYvBxxHr8s4uXu1Htwfo143CDxxh2ro8gEMIEsaEdXlzr6uzJkk5Zry45yvJlVm9Y8xGkr8BFOf/ktGAkAU/dM15fX3jM4V/dZOLZr+aFndoTdk7asFl3Q19d6aF74bBxIAkux1FLkIZlGSBQD9WLBIMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MAU3vaTh; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1732179311;
	bh=esX6pNIA4mdgAouLBmxFqcD5UvWUX2OcANV49HJchSs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MAU3vaThPKsD/1L/Zm+bwQdn1YX5Us5vGulfNUH3TnJIcJ8/hqH9BIhEw7XxzfyoU
	 Q1XUAf78dZwv9qYtCoNjJ7Xe+bgjm4OOcoqXtdgTs8ZlNlHQ/IMtZcfTKptZbt3+V0
	 r6U7/e0oDlT0Ulim2IXuDb3bxcWCF2iRNfowHVzrTfDjq1TZS8F7myWw3Bajp4DxXZ
	 5dXKJAf53L+C97Qo3P1MwZbkg+Inw7SQhewVYvMKs6lGtvIFldKjoaqII01ahDIrfM
	 rWWScEjKE3oG8DzOsLy35mai5+Ac2hmErQ+KcijVRs+HmxAMVPNJ2lRiBCjgjNnTWv
	 k1QG2KiWg3cag==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6A81F17E132F;
	Thu, 21 Nov 2024 09:55:10 +0100 (CET)
Message-ID: <72c1e62b-0bbf-4213-adbb-972caa1ebfee@collabora.com>
Date: Thu, 21 Nov 2024 09:55:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] Add GCE support for MT8196
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Moudy Ho <moudy.ho@mediatek.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org, Singo Chang <singo.chang@mediatek.com>,
 Nancy Lin <nancy.lin@mediatek.com>,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20241121042602.32730-1-jason-jh.lin@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241121042602.32730-1-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 21/11/24 05:25, Jason-JH.Lin ha scritto:
> This patch series adds support for the MediaTek MT8196 SoC in the CMDQ
> driver and related subsystems. The changes include adding compatible
> names and properties, updating driver data to accommodate hardware
> changes, and modifying the CMDQ API to support non-subsys ID hardware.
> 
> Jason-JH.Lin (8):
>    dt-bindings: mailbox: mediatek: Add GCE header file for MT8196
>    dt-bindings: mailbox: mediatek: Add MT8196 support for gce-mailbox
>    mailbox: mtk-cmdq: Add driver data to support for MT8196
>    soc: mediatek: mtk-cmdq: Add unsupported subsys ID programing flow
>    soc: mediatek: mtk-cmdq: Add mminfra_offset compatibility for DRAM
>      address
>    soc: mediatek: Add pa_base due to CMDQ API change
>    drm/mediatek: Add pa_base due to CMDQ API change
>    media: mediatek: mdp3: Add pa_base due to CMDQ API change
> 
>   .../mailbox/mediatek,gce-mailbox.yaml         |    4 +
>   drivers/gpu/drm/mediatek/mtk_ddp_comp.c       |    6 +-
>   drivers/mailbox/mtk-cmdq-mailbox.c            |  107 +-
>   .../platform/mediatek/mdp3/mtk-mdp3-cmdq.c    |    4 +-
>   .../platform/mediatek/mdp3/mtk-mdp3-comp.h    |    4 +-
>   drivers/soc/mediatek/mtk-cmdq-helper.c        |  133 +-
>   drivers/soc/mediatek/mtk-mmsys.c              |    1 +
>   drivers/soc/mediatek/mtk-mutex.c              |    2 +-
>   .../dt-bindings/mailbox/mediatek,mt8196-gce.h | 1449 +++++++++++++++++
>   include/linux/mailbox/mtk-cmdq-mailbox.h      |    3 +
>   include/linux/soc/mediatek/mtk-cmdq.h         |   22 +-
>   11 files changed, 1698 insertions(+), 37 deletions(-)
>   create mode 100755 include/dt-bindings/mailbox/mediatek,mt8196-gce.h
> 


Hello Jason,
I had a fast look at the changes that you're proposing with this series.

The reasons behind this are more or less understood on my side, but the
actual changes look a bit odd in the sense that passing a physical address
like this, on a first glance, not only looks like it may be dangerous, but
also looks like there's a lot of room for improvement.

Can you please point me at some driver/code (or a reference downsream kernel
for this SoC, which would be even better) so that I can take a look at how
is that being used?

Thanks,
Angelo

