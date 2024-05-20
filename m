Return-Path: <devicetree+bounces-67871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E49E8C9FC4
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 17:35:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC0AA284229
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2DF136E3A;
	Mon, 20 May 2024 15:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AfONF6W4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652B7136E0C
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 15:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716219304; cv=none; b=KMETAYHm97u/X9ZSC6D7+8YYabd7m2ZWX4L8bSPqjgmRhJ3X/N10/zANpdMDJ2nVL23oove3B+hQXFlpcADV2dj9vAUWXsRqYskLJQ4d+AtqE653jXaNpejufJ1HqOgDWY0stf5Af+6wwqp++lwAApQqrKJyHmVlKR/YVopDhcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716219304; c=relaxed/simple;
	bh=IoQWvodDnTJBxtwFCJd5WwPsGpjWytY+jWjP7MfHmvg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sbR1pVi+AiNaBQ3eSzIlH7+4OOnEH8AKFAjxFvV/jBT03EfGJgaTyu5OBooHocMyaMLWuEca0cTnAsUzY+tN6jwqOdVmDCJI0Vip8LsKw3WoFYE9aGxTEu5VGmZw8RPX5XOZsYqJJZMWcfA7xyM2iEA9alsJ2dajQ9bQJD5SqLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AfONF6W4; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-34e28e32ea4so2097529f8f.2
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 08:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716219301; x=1716824101; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sAGBZ1PEBcf/fJDsVPro0tPE1WsZuaRgTUZ3iHIhxSQ=;
        b=AfONF6W4e56KMqsJ9kp89m/lymI6yZeaWhNVkIOZKA2hrnCDdvEJatZtOH92lLIbEy
         O3YxE5uuWTUzxENS43uO7S+6v6o9HYaFqW+AbYkLnBn2Aqp8IaDt+CNkuvithoStBhPP
         tJdhq1jQpZav54QVvPplsi1VFOfwkjw4AAw1eHApEbW7uxn2kSYJyvZzlDDFbiT0krCr
         GaMAVveJjnmhz7ulFxU+ADZ9uo585eJHxVCaedfe0hHDnm5RxA47/RZdPUciMAaTTBl1
         jIrvcOf4pfeEs4ZqwgunXPfmLxUC8rSxkFpyXWDo7BN+cQevu+C6j2PGIq+d9q8LbbxX
         ecMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716219301; x=1716824101;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sAGBZ1PEBcf/fJDsVPro0tPE1WsZuaRgTUZ3iHIhxSQ=;
        b=DNa5JO2mQNwoYPz2QCJ+cD2E3qXhB+nzuJTNQtaKDieygGpeuk+ts+J8zkEY/rclkk
         /LDniABzFz3FLpdD1K1uo/WVjfvNY6PnTR4WDVAi+ZFurUMN0+Wmg0rSVTSG1Ey0hxQh
         4K1RKCFG6uj1WGcKEmikyjxrNR5oQ7lgHORY/qXPJy2P9Bs23eNWwy2NKDeStnwW0Vyu
         i7OWxy7mmbkBc0vJexxgvb7VCqRLVZ/stUooxxMY6caoER5WkvcmXW3yUVgrGULSO0t0
         4CSsIHarXI4BZl45u7vxjgpJj9SNjhSiFDOPKRCy9EyoYXjcdHzTytEmuRxDZmV37kma
         qevA==
X-Forwarded-Encrypted: i=1; AJvYcCXB1QXs5mzVAZLmTRdeCzfEdKzQ60AZWJfujgw6Nc7bvmDt6ToCv8GpEFaYoSZD3t5ZJ/5c3uyMVp1pi32EyyHqGWNjIQSgUaeYbQ==
X-Gm-Message-State: AOJu0Yz1oP6IwjPB7/j638c1wgyxA9jJlfsZQIYkYBiku+TY7kTF+Hcm
	NEyAB32fefNJxUcyEUEiOV1cAq65OQKmFYRnrk3oSaWxQb1BnKCX8l5P8druIzc5i6lRKfxTqDb
	F
X-Google-Smtp-Source: AGHT+IFNk692k3RqaMXye+c2Qq79nAeUMEO50j29S1MXyLQIcYzL4B0x4R28xGbxScdBA6EWOGa/VA==
X-Received: by 2002:adf:e586:0:b0:34c:b2df:6f01 with SMTP id ffacd0b85a97d-3504a737f13mr21144851f8f.21.1716219300694;
        Mon, 20 May 2024 08:35:00 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b79bcedsm29225112f8f.19.2024.05.20.08.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 08:35:00 -0700 (PDT)
Message-ID: <1de9d53c-bfc3-4d10-bf9a-b89ce756836b@baylibre.com>
Date: Mon, 20 May 2024 17:34:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] drm/mediatek: Implement OF graphs support for
 display paths
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 wenst@chromium.org, kernel@collabora.com
References: <20240516081104.83458-1-angelogioacchino.delregno@collabora.com>
 <20240516081104.83458-4-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240516081104.83458-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>

On 16/05/2024 10:11, AngeloGioacchino Del Regno wrote:
> It is impossible to add each and every possible DDP path combination
> for each and every possible combination of SoC and board: right now,
> this driver hardcodes configuration for 10 SoCs and this is going to
> grow larger and larger, and with new hacks like the introduction of
> mtk_drm_route which is anyway not enough for all final routes as the
> DSI cannot be connected to MERGE if it's not a dual-DSI, or enabling
> DSC preventively doesn't work if the display doesn't support it, or
> others.
> 
> Since practically all display IPs in MediaTek SoCs support being
> interconnected with different instances of other, or the same, IPs
> or with different IPs and in different combinations, the final DDP
> pipeline is effectively a board specific configuration.
> 
> Implement OF graphs support to the mediatek-drm drivers, allowing to
> stop hardcoding the paths, and preventing this driver to get a huge
> amount of arrays for each board and SoC combination, also paving the
> way to share the same mtk_mmsys_driver_data between multiple SoCs,
> making it more straightforward to add support for new chips.

-- 
Regards,
Alexandre

