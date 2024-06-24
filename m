Return-Path: <devicetree+bounces-79167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D346914384
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 09:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48F2E281795
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003A93B1BC;
	Mon, 24 Jun 2024 07:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zrSkIsGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5BB38DD6
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 07:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719213762; cv=none; b=eYJxW57sWebvPb/jsOszH2VbwlNXETCY8PQ3Nmgnp2L/OBM72ckTZVF/m+arIWrHciAhcbDSWwUL6eE6HtKT/YzOL0eqZmmPTEZpLE2Yq8CWFaKwK7agtZ0THkbBVW3Ku2igog1VTS6xio2/wdKKgCDyJBU+lD0/HgSaueAIkHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719213762; c=relaxed/simple;
	bh=jZ8x/WkPGnEIjqc1+cqPSKViLKaJLvzVCLyIqHHVX5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sEc8QcgbmBDdXeHH5JMN6pBW1+4k5xADUbDY8xBi7QVZBeWKjSqK8PqxJekS4HHCBuGwgwd48KeKI/C0f0uZbECYoIAFRuo7s7PHgNijPQx+mVzWneyKa9pNTL1nvqUkjHmmaWmeuJ9QTG1/QfbOxJLKFPzCXdikckZ6+mFVbB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zrSkIsGv; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-57d1679ee83so4012420a12.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 00:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719213759; x=1719818559; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P49JDi1xXPAYpLbhrU13RiWekT68KiQTL8uhFa+r3Dc=;
        b=zrSkIsGvgHhk5b6Unez81Ifk6PzTi5zIkEHCW9UaNdHLWyy21KY6jwuZG6c9G9SKmv
         Natychqkyjv9UzlwDZzPU5A2jJXxfmvWzMZNHLrquQRQnZ8K4J3evnBjdGNcKeWx6//O
         UCkXdqmn7KtidFccWISOvgVVClWHiv7EueB1LmMVF0DLKb0sbzGcDJnbWFYrU1skD50A
         /J6ZEWleZk9swXNkvbQw7bhNnAtySn6aQ0XkxfnJAvqRH/ZT2GOxDCeVkwQ0CsIFIRv8
         zjPwMV1AAP4kcXTBwONWHuh3tZNYnyux1MKydQbspRwPrmtePSpQO3V/zrjMa4wtJgJi
         MgOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719213759; x=1719818559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P49JDi1xXPAYpLbhrU13RiWekT68KiQTL8uhFa+r3Dc=;
        b=WrVi0/QBWtccit4M+0YSpAEH6H95UV0wCEFkenfRxTReSnY5qr0YX069rOuTwIjbEA
         d0XVIkAI6jVRJX5+/3+gGRC0bDEtjyYiEueRZyJxrmbqJ2qzLM/C7MuBb8DY8FrxfK51
         DfJoADGfL3U1GNzzOUvZMqCRAsYO5aNhQWzBETVc6t59isTGg4TxmTSbBVNEPwpX0Cn1
         PhN+1OtHgR2JcML+P1LbPj+Pu2pXHr8VTFqJBUoOLqlUOHxT66Sxksf05p6cOvgb2g5t
         KkIJCuVylLHcGBOf60kVVLNJ/qbjH71IWD3JboRVBRzCGAStDvCGeAtJXN9aP3D3OsVh
         j8Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWiHfpiMn6rN7JAPCZtJr/vtSKjfWgTqaNPMYUMJ0jBUWVmbp9OqFAJ3zZsEDHoUzMD7rqSLpcku/TQnrdhoUbfJ8TTcJefVNxUug==
X-Gm-Message-State: AOJu0Yx37N1kqojMvsUI70ns0rQ5hhcj1n4L9AhvhUednwYReqWl9PPG
	uCNpaZPUaNfu6yeequITtK24LY+XF2jTcTpdyzp5co6/m0YoeXDKBAGWWdV0MK4=
X-Google-Smtp-Source: AGHT+IEMa8s/IzqM0+yHmNkv5YbQAah63TcfDGwvHHxW+U4X+runaXjbqEZ9o5SWB9bNGeVYIuUvmA==
X-Received: by 2002:a17:906:9c96:b0:a72:5598:f03d with SMTP id a640c23a62f3a-a725598f1dfmr116904766b.59.1719213759525;
        Mon, 24 Jun 2024 00:22:39 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a710595adedsm238162166b.214.2024.06.24.00.22.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 00:22:39 -0700 (PDT)
Message-ID: <cc50cb9e-cbae-43dc-8845-da11a6fb7074@baylibre.com>
Date: Mon, 24 Jun 2024 09:22:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/15] drm/mediatek: add MT8365 SoC support
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabien Parent <fparent@baylibre.com>
References: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
 <20231023-display-support-v4-12-ed82eb168fb1@baylibre.com>
 <CAAOTY__ZLjuJHnGsVLvGkFK0WhJJ6r=miqewRHsPCJhqO=8qoA@mail.gmail.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <CAAOTY__ZLjuJHnGsVLvGkFK0WhJJ6r=miqewRHsPCJhqO=8qoA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 21/06/2024 17:24, Chun-Kuang Hu wrote:
> Hi, Alexandre:
> 
> <amergnat@baylibre.com>  於 2024年5月23日 週四 下午8:49寫道：
>> From: Fabien Parent<fparent@baylibre.com>
>>
>> Add DRM support for MT8365 SoC.
>>
>> Signed-off-by: Fabien Parent<fparent@baylibre.com>
>> Reviewed-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>
>> Signed-off-by: Alexandre Mergnat<amergnat@baylibre.com>
>> ---
>>   drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> index ce8f3cc6e853..e1c3281651ae 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> @@ -318,6 +318,10 @@ static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
>>          .mmsys_dev_num = 2,
>>   };
>>
>> +static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
>> +       .mmsys_dev_num = 1,
> You do not describe the pipeline information here. I think display
> function would not work.

Hi Chun-Kuang,

I don't describe the pipeline information here because I do it
in the DTS thanks to the OF graphs Angelo's serie [1].
I've tested DSI and DPI display, they work correctly ;)

[1] https://lore.kernel.org/all/20240618101726.110416-1-angelogioacchino.delregno@collabora.com/

-- 
Regards,
Alexandre

