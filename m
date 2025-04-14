Return-Path: <devicetree+bounces-166569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA3CA87B0D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D22E21893D4E
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 08:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 739B025A355;
	Mon, 14 Apr 2025 08:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Ndvzx4Qp"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25371258CD0;
	Mon, 14 Apr 2025 08:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744620774; cv=none; b=Z+zHUK7qYksCfnRYlGmTy5A2frV5zpFirb4iC/Npn7LZLISk7R/mUnWcxkqdN3DECuS1rM7TJN3kFAKSG50jQLjkiqsU6lVC3hwjlRBdQE7Lk2hvRH+jcc4TgUdSV+KRoUYJwlOfYrMKJErHAOlaIQYQ6oIcbz+wON5Na+RKwNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744620774; c=relaxed/simple;
	bh=InbklK980sc2Hl5l2LdpFp3sTcyRxx81UWaVcsxBvAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k59+oQ27NgbFAU/1g1FBSR0zYOUUKFu/3h45XMju8FvRN3ipZZYkjObP78O3zp3n4qgGz1OgP52ZemOHscHOrskoVqBJUvL6naVaDcVd78x5J/qcKkvQKDmIYsQDHYjPf8i+Fu2cXNCsZHyNGlxFJ6NEBYVx25EfIYS8YQgokmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Ndvzx4Qp; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744620770;
	bh=InbklK980sc2Hl5l2LdpFp3sTcyRxx81UWaVcsxBvAs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ndvzx4QpjvxRLVd/JpqTOQGcOTkRKjRxNoUTlHu+HJb/APV2XF33Fp6Rt3g72youU
	 JhVm5LhxHUFxGB/or1l5DQDcfJrKltBQhY8EErlj6nodXX7b3Kfo96rv2TScFzUwT4
	 1Wvqil1NVJFZLoFnMnKAACV+ZDVaQvfMb0cysSJCWJYnxzX2+AlZmxrnM3o5o/xQHh
	 eIeI6MHhV7uKdCX5AWoA00QVMBsch0NohzOaJznNCmMqkhV26ArInXUuKQYJ7BKuJc
	 TIm3W3qpMFDKPpUPWhokZV63FwLY/yq3IStFoSMqeM8+bE6yeKexpRm3CBboUz2vkX
	 WLYKA21xJ0Qiw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D406B17E0702;
	Mon, 14 Apr 2025 10:52:48 +0200 (CEST)
Message-ID: <bc6e0c12-2af8-4608-a05a-3d04209a4325@collabora.com>
Date: Mon, 14 Apr 2025 10:52:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 16/23] drm/mediatek: mtk_hdmi: Split driver and add
 common probe function
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
Cc: "robh@kernel.org" <robh@kernel.org>,
 "jie.qiu@mediatek.com" <jie.qiu@mediatek.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "simona@ffwll.ch" <simona@ffwll.ch>, "mripard@kernel.org"
 <mripard@kernel.org>, =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?=
 <jitao.shi@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 =?UTF-8?B?TGV3aXMgTGlhbyAo5buW5p+P6YieKQ==?= <Lewis.Liao@mediatek.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 =?UTF-8?B?VG9tbXlZTCBDaGVuICjpmbPlvaXoia8p?= <TommyYL.Chen@mediatek.com>,
 =?UTF-8?B?SXZlcyBDaGVuamggKOmZs+S/iuW8mCk=?= <Ives.Chenjh@mediatek.com>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
 "junzhi.zhao@mediatek.com" <junzhi.zhao@mediatek.com>
References: <20250409131318.108690-1-angelogioacchino.delregno@collabora.com>
 <20250409131318.108690-17-angelogioacchino.delregno@collabora.com>
 <b9eafca53149fec817433da3d10bf06a6c96f959.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <b9eafca53149fec817433da3d10bf06a6c96f959.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 11/04/25 10:18, CK Hu (胡俊光) ha scritto:
> On Wed, 2025-04-09 at 15:13 +0200, AngeloGioacchino Del Regno wrote:
>> External email : Please do not click links or open attachments until you have verified the sender or the content.
>>
>>
>> In preparation for adding a new driver for the HDMI TX v2 IP,
>> split out the functions that will be common between the already
>> present mtk_hdmi (v1) driver and the new one.
>>
>> Since the probe flow for both drivers is 90% similar, add a common
>> probe function that will be called from each driver's .probe()
>> callback, avoiding lots of code duplication.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   drivers/gpu/drm/mediatek/Kconfig           |  11 +-
>>   drivers/gpu/drm/mediatek/Makefile          |   1 +
>>   drivers/gpu/drm/mediatek/mtk_hdmi.c        | 542 +--------------------
>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 426 ++++++++++++++++
>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.h | 188 +++++++
>>   5 files changed, 633 insertions(+), 535 deletions(-)
>>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>>   create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.h
>>
>> diff --git a/drivers/gpu/drm/mediatek/Kconfig b/drivers/gpu/drm/mediatek/Kconfig
>> index e47debd60619..994b48b82d44 100644
>> --- a/drivers/gpu/drm/mediatek/Kconfig
>> +++ b/drivers/gpu/drm/mediatek/Kconfig
>> @@ -30,9 +30,18 @@ config DRM_MEDIATEK_DP
>>          help
>>            DRM/KMS Display Port driver for MediaTek SoCs.
>>
>> +config DRM_MEDIATEK_HDMI_COMMON
>> +       tristate
>> +       depends on DRM_MEDIATEK
>> +       select DRM_DISPLAY_HDMI_HELPER
>> +       select DRM_DISPLAY_HELPER
>> +       select SND_SOC_HDMI_CODEC if SND_SOC
>> +       help
>> +         MediaTek SoC HDMI common library
>> +
>>   config DRM_MEDIATEK_HDMI
>>          tristate "DRM HDMI Support for Mediatek SoCs"
>>          depends on DRM_MEDIATEK
>> -       select SND_SOC_HDMI_CODEC if SND_SOC
>> +       select DRM_MEDIATEK_HDMI_COMMON
>>          help
>>            DRM/KMS HDMI driver for Mediatek SoCs
>> diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
>> index 43afd0a26d14..78cf2d4fc85f 100644
>> --- a/drivers/gpu/drm/mediatek/Makefile
>> +++ b/drivers/gpu/drm/mediatek/Makefile
>> @@ -21,6 +21,7 @@ mediatek-drm-y := mtk_crtc.o \
>>
>>   obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
>>
>> +obj-$(CONFIG_DRM_MEDIATEK_HDMI_COMMON) += mtk_hdmi_common.o
> 
> The whole patch looks good to me.
> But make common part to a module looks a little bit more modularized.
> Let things to be simple, I would like the whole MediaTek hdmi driver be a single module.
> For MediaTek drm driver, it is already broken to mediatek-drm, hdmi, dp modules.
> Maybe someday dsi or dpi would be broken to modules.
> So I would like hdmi to be a single module which include v1, v2 and common part.
> If someday we need to optimize code size, then send patch to break hdmi module.
> 

Hello CK,

The HDMIv1 and HDMIv2 drivers are handling two *very* different IPs that can never
be *both* present at the same time on one SoC: having one Kconfig for both would
not only add unnecessary bloat (especially on older SoCs!!), but would actually be
wrong.

Also, please be aware that old LK bootloaders (smartphones/tablets) have a very
limited RAM carveout for kernel + ramdisk that should be around 8MB if I recall
correctly.

Remember as well that these devices *cannot* run different bootloaders as those
are only able to run *OEM signed* binaries in the early bootchain, so replacing
the bootloader is not a viable solution.

It's true, people can (and most probably want to and will) build this as a module
but, in my opinion, freedom should be given to have the HDMI driver built-in even
in these cases - and that's another good reason to keep them split.

This is done to avoid being hostile to old platforms, in full upstream spirit.

Regards,
Angelo

> Regards,
> CK
> 
>>   obj-$(CONFIG_DRM_MEDIATEK_HDMI) += mtk_cec.o
>>   obj-$(CONFIG_DRM_MEDIATEK_HDMI) += mtk_hdmi.o
>>   obj-$(CONFIG_DRM_MEDIATEK_HDMI) += mtk_hdmi_ddc.o
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> 


