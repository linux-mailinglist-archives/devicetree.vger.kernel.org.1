Return-Path: <devicetree+bounces-144644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCC6A2EBDD
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C01A3162409
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 11:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6431F3BBB;
	Mon, 10 Feb 2025 11:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="HEz9H+6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A539514D29B;
	Mon, 10 Feb 2025 11:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739188254; cv=none; b=BlGoHu5Tv+GgzxbhM+yt1ETDvj0PmigI5+cqepC/VPtfAxRmLnTl1YIiyDD7Amh9MOwu14r3jRzNFFGBEuok5KM56HVbjLxt/dIAxxsQGKV1ecg7fy6NLIu3Uesxs4DI8mQxbTTbyUU7brbNAJDbv+us8ZL22msAquk4YLHTEkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739188254; c=relaxed/simple;
	bh=+WeROGh0IxRi9ENLiNY69RRv2egDN0g2bYDLctyHo44=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sR+b+MYTArKfIWzNsaiyNLbKoJwFwdALWC4UI5UJZv0y6O47mxX29vzBZw8j/PyMBHbdJ0LjOTsT6QyFFf8ZnwYpxSCvHE+eaZHbKGXzXo3sN5AvEohF2ruTlFXhCwiYeMJbf0RXMA3VG2+R4Yrs7/rta0HMoCeUFdlQC67B3qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HEz9H+6Q; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739188250;
	bh=+WeROGh0IxRi9ENLiNY69RRv2egDN0g2bYDLctyHo44=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HEz9H+6QOsA296TDuoufEDidTU7hVQ6bZYMICdFoHQ/oorkC4Tv0eaj0Ukyn4tHVO
	 8vnoitsAR4mJmDb1TNiBo51HH8eevn+Jq5Rz6Vs5iXCKrC4j+jIhyrOjrbtVsfzEXw
	 ZArZ/75YuNonfRn3AZyxa/pNCregDZHtgDI5UZ7Yaw37odh+wZbVEbS7VqEX0iOYeh
	 fDkXjbc2lwrjBnM/ErdRjwcXF4u6OpNIl9EXqWaxrmSIyHtlWL3pTEEF4RT2nrY38W
	 LbWutO0VmtLnvJfyqmCkNEYdhqg3Gm5JPQOAhbo5qt+dWt/LeMewFSGJYOqv0L9MOw
	 WhBU6GAdaW0Lw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 74CA117E0239;
	Mon, 10 Feb 2025 12:50:49 +0100 (CET)
Message-ID: <b85aeb50-1cfc-4f26-a488-f01564108d61@collabora.com>
Date: Mon, 10 Feb 2025 12:50:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/34] drm/mediatek: mtk_hdmi_ddc: Switch to register
 as module_platform_driver
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
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
 <20250113145232.227674-11-angelogioacchino.delregno@collabora.com>
 <424656ad6c9fbd1c32a62d7ed7b35eb322e94720.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <424656ad6c9fbd1c32a62d7ed7b35eb322e94720.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 10/02/25 08:01, CK Hu (胡俊光) ha scritto:
> On Mon, 2025-01-13 at 15:52 +0100, AngeloGioacchino Del Regno wrote:
>> External email : Please do not click links or open attachments until you have verified the sender or the content.
>>
>>
>> In preparation for splitting out the common bits from the HDMI
>> driver, change the mtk_cec driver from being registered from the
>> HDMI driver itself to be a module_platform_driver of its own.
> 
> "change the mtk_hdmi_ddc driver"
> 
> I think ddc is not the common part, so the reason is not splitting out the common bits.
> 

Thanks, I didn't notice this typo!

Regards,
Angelo

>>
>> With this change, there are no more users of the mtk_hdmi.h header
>> so, while at it, also remove it.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   drivers/gpu/drm/mediatek/Makefile       |  6 ++----
>>   drivers/gpu/drm/mediatek/mtk_hdmi.c     |  2 --
>>   drivers/gpu/drm/mediatek/mtk_hdmi.h     | 13 -------------
>>   drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c |  2 +-
>>   4 files changed, 3 insertions(+), 20 deletions(-)
>>   delete mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi.h
>>
>> diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
>> index bdd3a062f797..43afd0a26d14 100644
>> --- a/drivers/gpu/drm/mediatek/Makefile
>> +++ b/drivers/gpu/drm/mediatek/Makefile
>> @@ -21,10 +21,8 @@ mediatek-drm-y := mtk_crtc.o \
>>
>>   obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
>>
>> -mediatek-drm-hdmi-objs := mtk_hdmi.o \
>> -                         mtk_hdmi_ddc.o
>> -
>>   obj-$(CONFIG_DRM_MEDIATEK_HDMI) += mtk_cec.o
>> -obj-$(CONFIG_DRM_MEDIATEK_HDMI) += mediatek-drm-hdmi.o
>> +obj-$(CONFIG_DRM_MEDIATEK_HDMI) += mtk_hdmi.o
>> +obj-$(CONFIG_DRM_MEDIATEK_HDMI) += mtk_hdmi_ddc.o
> 
> It's not necessary to separate ddc to an independent module.
> 
> Regards,
> CK
> 
>>
>>   obj-$(CONFIG_DRM_MEDIATEK_DP) += mtk_dp.o
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> index da725182f0db..e648fb5714e7 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> @@ -31,7 +31,6 @@
>>   #include <drm/drm_probe_helper.h>
>>
>>   #include "mtk_cec.h"
>> -#include "mtk_hdmi.h"
>>   #include "mtk_hdmi_regs.h"
>>
>>   #define NCTS_BYTES     7
>> @@ -1804,7 +1803,6 @@ static struct platform_driver mtk_hdmi_driver = {
>>   };
>>
>>   static struct platform_driver * const mtk_hdmi_drivers[] = {
>> -       &mtk_hdmi_ddc_driver,
>>          &mtk_hdmi_driver,
>>   };
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.h b/drivers/gpu/drm/mediatek/mtk_hdmi.h
>> deleted file mode 100644
>> index e40bc4651995..000000000000
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.h
>> +++ /dev/null
>> @@ -1,13 +0,0 @@
>> -/* SPDX-License-Identifier: GPL-2.0-only */
>> -/*
>> - * Copyright (c) 2014 MediaTek Inc.
>> - * Author: Jie Qiu <jie.qiu@mediatek.com>
>> - */
>> -#ifndef _MTK_HDMI_CTRL_H
>> -#define _MTK_HDMI_CTRL_H
>> -
>> -struct platform_driver;
>> -
>> -extern struct platform_driver mtk_hdmi_ddc_driver;
>> -
>> -#endif /* _MTK_HDMI_CTRL_H */
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c b/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c
>> index 07db68067844..6358e1af69b4 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c
>> @@ -20,7 +20,6 @@
>>   #include <linux/of_platform.h>
>>
>>   #include "mtk_drm_drv.h"
>> -#include "mtk_hdmi.h"
>>
>>   #define SIF1_CLOK              (288)
>>   #define DDC_DDCMCTL0           (0x0)
>> @@ -337,6 +336,7 @@ struct platform_driver mtk_hdmi_ddc_driver = {
>>                  .of_match_table = mtk_hdmi_ddc_match,
>>          },
>>   };
>> +module_platform_driver(mtk_hdmi_ddc_driver);
>>
>>   MODULE_AUTHOR("Jie Qiu <jie.qiu@mediatek.com>");
>>   MODULE_DESCRIPTION("MediaTek HDMI DDC Driver");
>> --
>> 2.47.0
>>
> 



