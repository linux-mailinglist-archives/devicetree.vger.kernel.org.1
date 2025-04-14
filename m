Return-Path: <devicetree+bounces-166542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ECCA87A32
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:22:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F1BA7A77F6
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 08:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7D5259483;
	Mon, 14 Apr 2025 08:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="eXeObxhg"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B05C1B4234;
	Mon, 14 Apr 2025 08:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744618961; cv=none; b=qtSMJGNP/cdK9VdAsKUtxALDHa/Yn/9nhjRRNYVNtFb0e/L/fPW6LptHz4glnYyT5zxS57WNc2vGXGR7Lpa2wxkD9Xq621Y2gBQzHXsN+9EW+1iv/czO6Vq0RTzB6KPbvbmoBTidVl3G6mg+LNZoztNjcOkjADba0IT7otZafFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744618961; c=relaxed/simple;
	bh=J7kgNGPOmyZz9A2rdk2v+zLdC4mpEqoqLWaA4qwXMhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KiJKoWfxHUX8rNUH15Eg3DMAJ+ZnWwYtyPlzm9dxVF2FHCRYa+MXs67meh/1zXh3BGnjKBXrk47suXhKqPF8mgWHuTcuSFxktNc+/QwJNbhmwAalru22N030aIVTXTJ7BamoSwi7gVZToEdZ1MfKJIoa7T4gyNnBOI4GHK0uuG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=eXeObxhg; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744618951;
	bh=J7kgNGPOmyZz9A2rdk2v+zLdC4mpEqoqLWaA4qwXMhE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eXeObxhgf7PRxQPACAwqToAk5hWi2LVP3uZQJxTU/Fa93fcCkNhheAa8PVVAGEU/Y
	 teYN+2vAQ7PUpEGCPHUL3PdU9px19xZ6sF0nIcbThNjzAfLtyrU+s8eETIio1Qa9j2
	 eOimL552qskQESlp03Fmj4A5QxwXAcyVv9T1fNAsqnL9bZBGsDgfRZv2zBVDBhW91F
	 jeQZY+LIu2Go+YNpsTFv+zbMSvYLzMpVa52qeEfvjNi39I9OcBhITUeFaVtZHw6F4V
	 WlGjhV/e02f10XF7gYWf1Cn4vPsBtITEhBQvCkSkumYrZSTRd5xOke6rA30CzTVX7C
	 myGzuE1SalpsQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 330DD17E0FC1;
	Mon, 14 Apr 2025 10:22:30 +0200 (CEST)
Message-ID: <d6d42fc3-a10a-47f5-892e-b839ac66a70e@collabora.com>
Date: Mon, 14 Apr 2025 10:22:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] drm: panel: Add driver for Himax HX8279 DDIC
 panels
To: neil.armstrong@linaro.org
Cc: quic_jesszhan@quicinc.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, pablo.sun@mediatek.com,
 christophe.jaillet@wanadoo.fr
References: <20250410072456.387562-1-angelogioacchino.delregno@collabora.com>
 <20250410072456.387562-4-angelogioacchino.delregno@collabora.com>
 <0fc5612e-34a8-468c-a4f3-65b8686e2327@linaro.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <0fc5612e-34a8-468c-a4f3-65b8686e2327@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 11/04/25 10:51, neil.armstrong@linaro.org ha scritto:
> On 10/04/2025 09:24, AngeloGioacchino Del Regno wrote:
>> Add a driver for the Himax HX8279-D MIPI-DSI DriverIC with support
>> for the Startek KX070FHFID078 7.0" 1200x1920 IPS panel, found on
>> various MediaTek Genio Evaluation Kit boards and for the Aoly
>> SL101PM1794FOG-v15 10.1" 1200x1920 LCD panel found on some I.MX8MM
>> boards.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   drivers/gpu/drm/panel/Kconfig              |   11 +
>>   drivers/gpu/drm/panel/Makefile             |    1 +
>>   drivers/gpu/drm/panel/panel-himax-hx8279.c | 1365 ++++++++++++++++++++
>>   3 files changed, 1377 insertions(+)
>>   create mode 100644 drivers/gpu/drm/panel/panel-himax-hx8279.c
>>
>> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
>> index e059b06e0239..42bc6097bf10 100644
>> --- a/drivers/gpu/drm/panel/Kconfig
>> +++ b/drivers/gpu/drm/panel/Kconfig
>> @@ -154,6 +154,17 @@ config DRM_PANEL_LVDS
>>         handling of power supplies or control signals. It implements automatic
>>         backlight handling if the panel is attached to a backlight controller.
>> +config DRM_PANEL_HIMAX_HX8279
>> +    tristate "Himax HX8279-based panels"
>> +    depends on OF
>> +    depends on DRM_MIPI_DSI
>> +    depends on BACKLIGHT_CLASS_DEVICE
>> +    help
>> +      Say Y if you want to enable support for panels based on the
>> +      Himax HX8279 controller, such as the Startek KD070FHFID078
>> +      7.0" 1200x1920 IPS LCD panel that uses a MIPI-DSI interface
>> +      and others.
>> +
>>   config DRM_PANEL_HIMAX_HX83102
>>       tristate "Himax HX83102-based panels"
>>       depends on OF
>> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
>> index 1bb8ae46b59b..4fded6e66b05 100644
>> --- a/drivers/gpu/drm/panel/Makefile
>> +++ b/drivers/gpu/drm/panel/Makefile
>> @@ -16,6 +16,7 @@ obj-$(CONFIG_DRM_PANEL_EBBG_FT8719) += panel-ebbg-ft8719.o
>>   obj-$(CONFIG_DRM_PANEL_ELIDA_KD35T133) += panel-elida-kd35t133.o
>>   obj-$(CONFIG_DRM_PANEL_FEIXIN_K101_IM2BA02) += panel-feixin-k101-im2ba02.o
>>   obj-$(CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D) += panel-feiyang-fy07024di26a30d.o
>> +obj-$(CONFIG_DRM_PANEL_HIMAX_HX8279) += panel-himax-hx8279.o
>>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX83102) += panel-himax-hx83102.o
>>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX83112A) += panel-himax-hx83112a.o
>>   obj-$(CONFIG_DRM_PANEL_HIMAX_HX8394) += panel-himax-hx8394.o
>> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8279.c b/drivers/gpu/drm/panel/ 
>> panel-himax-hx8279.c
>> new file mode 100644
>> index 000000000000..72bddba2663f
>> --- /dev/null
>> +++ b/drivers/gpu/drm/panel/panel-himax-hx8279.c
>> @@ -0,0 +1,1365 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Himax HX8279 DriverIC panels driver
>> + *
>> + * Copyright (c) 2025 Collabora Ltd.
>> + *                    AngeloGioacchino Del Regno 
>> <angelogioacchino.delregno@collabora.com>
>> + */
>> +

..snip..

> 
> Thanks for this very nice driver, very well documented an clean :-)
> 
> Some bits to change for the dsi_multi handling, but overall very good!

Thanks to you for the review! :-)

Sending a v4 in 3..2..1...

Cheers,
Angelo

> 
> Neil



