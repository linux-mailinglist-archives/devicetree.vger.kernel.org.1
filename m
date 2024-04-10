Return-Path: <devicetree+bounces-57931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E745489F952
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 16:06:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19CDFB31ACD
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 13:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF0F3179651;
	Wed, 10 Apr 2024 13:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kosRFtIz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E04D1791FE
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 13:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712756779; cv=none; b=BzypiBsa7qphpr68sYWLnMZky+4omuu6rAsmRTCOXBTwPAB/sKObkad76B2zBa7hIo/ENXyWDc39Obr7MywGOz7QWbLRQSyVj5GiijwAsRIqpXBNj0dVaUmHIf86ini2jtGarH6YDJVogJYkPO9Eb1E0XOsU3WenHK91/BvQzYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712756779; c=relaxed/simple;
	bh=QvOn6cvji9QTSJm7bpuEUbJNN7acKTTuonvs3yRgL0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nPWjpPTHQP6OHDLSJS3Mn/5u2jEnLKdDG4rtMcCHbtZdHVhP6CBUUoL0AI0hsL6k7b1NY4jys89maAqCsa8h34vNswYiSg2th1FI+QWxUrT+cW53yAT/7e4PeNMuZ3hAfv/GQP1HJjLNSauLtWJgvTXCjUnVtBe0zMA7YsgcJTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kosRFtIz; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-416c4767b07so6225775e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 06:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712756774; x=1713361574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QNwy39mEHd5CSC3eirYZIbXLLfL+/dRw/DVFAe0gv+k=;
        b=kosRFtIzXWMOjy6UyvSE09lRqzPywlytuBuK9KZsw+HUecFw3ulP8T4Hj1atCemzXp
         fMELPqqsbOi1Oi4qEJUBGAIP/gpLrRL8oEOFfk6m3ep4wFj8laHEFqkAUQdXRNgRUhXP
         P9Kt1satLlxq1NcEE3KUZX8sQvijWC4GZ+RaoqZy+oQCJNhaYx4ARlTEc2fWy8JEBWPw
         60cTE9y2b7Ufmy06uXwZdOlv0g/J+V+f8RcHNmXnNYSNXPKLQ2QZtWjPfkwEv8++n0wd
         Ku7EhaErnD3W+KowFxvKYCdstb4uL8Arpvrd9uzVPqoxw8nhAmyITzYyDGQhin6J5akF
         vJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712756774; x=1713361574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNwy39mEHd5CSC3eirYZIbXLLfL+/dRw/DVFAe0gv+k=;
        b=oqwUBmV2XDJP20isD58Pyr6/ubQG2Kt+T34yEo61t7nBNQcWYcGNASTcV9EUja9sV8
         yMan2e3Z486lqsnBRPHh0prIwcBFVGiWNHpstEfSIGaGx/5haaC+/KjztXzY0fez3tYL
         O2Xfi3o2COd8WVwrZP9lNivgGPk6IcEfQfIdA81g7L3icl0g6dPM1/godMaGwh7a9eOX
         xDgmgDcPIuFllO1NESuWCIa9ysEv/JxK1i2RX/s7sD8cIcKzKQUvIAjlvv5sOf6sU+Cm
         3ZBLi90Z0jZIPIGliUgNR48DMJ9yCVNqi2HzM9AugE3aQK1/oCU69UKzXH1/d4f5JMPV
         DBLw==
X-Forwarded-Encrypted: i=1; AJvYcCWIIx0CCT6a58D0SN7MZY3OkDBA4kJ2znNgxnfVre/2eAdDYeKEqbi1iwXrPxr5jd0IbQMZpIcQ61HvUnaK+f5ipoEBdaAa7IRptw==
X-Gm-Message-State: AOJu0YziApdt5iPnh9DpLSoBFl9KNp9hvY+lBb43XatMMkUA+NE2OmCF
	9tmqr2MXi6sz4Qk8+cdMPxoQolPZsRpjHqgEccStxSuN4eIOJKzqS0q4oESucfM=
X-Google-Smtp-Source: AGHT+IGxsQggXycRi+dm4Bw4Xi8pQLO4aefRSNITx/omDNTFi8n4uULRx1pb1qcEcpuljXdkWzOSMA==
X-Received: by 2002:a05:600c:4446:b0:416:c990:d668 with SMTP id v6-20020a05600c444600b00416c990d668mr1409845wmn.8.1712756774480;
        Wed, 10 Apr 2024 06:46:14 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id o4-20020a05600c4fc400b004170e0aff7asm1931574wmq.35.2024.04.10.06.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 06:46:14 -0700 (PDT)
Message-ID: <dba5a3d3-97ba-491a-9290-35ffd42c740b@baylibre.com>
Date: Wed, 10 Apr 2024 15:46:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/18] ASoC: mediatek: mt8195: Migrate to
 mtk_soundcard_common_probe
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 broonie@kernel.org
Cc: wenst@chromium.org, lgirdwood@gmail.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, perex@perex.cz, tiwai@suse.com,
 trevor.wu@mediatek.com, maso.huang@mediatek.com,
 xiazhengqiao@huaqin.corp-partner.google.com, arnd@arndb.de,
 kuninori.morimoto.gx@renesas.com, shraash@google.com,
 nicolas.ferre@microchip.com, u.kleine-koenig@pengutronix.de,
 dianders@chromium.org, frank.li@vivo.com, allen-kh.cheng@mediatek.com,
 eugen.hristev@collabora.com, claudiu.beznea@tuxon.dev,
 jarkko.nikula@bitmer.com, jiaxin.yu@mediatek.com, alpernebiyasak@gmail.com,
 ckeepax@opensource.cirrus.com, zhourui@huaqin.corp-partner.google.com,
 nfraprado@collabora.com, alsa-devel@alsa-project.org,
 shane.chien@mediatek.com, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20240409113310.303261-1-angelogioacchino.delregno@collabora.com>
 <20240409113310.303261-5-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240409113310.303261-5-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 09/04/2024 13:32, AngeloGioacchino Del Regno wrote:
> @@ -29,6 +30,13 @@
>   #define RT1019_SPEAKER_AMP_PRESENT		BIT(1)
>   #define MAX98390_SPEAKER_AMP_PRESENT		BIT(2)
>   
> +#define DUMB_CODEC_INIT				BIT(0)
> +#define MT6359_CODEC_INIT			BIT(1)
> +#define RT1011_CODEC_INIT			BIT(2)
> +#define RT1019_CODEC_INIT			BIT(3)
> +#define MAX98390_CODEC_INIT			BIT(4)
> +#define RT5682_CODEC_INIT			BIT(5)
> +

Why are you using defines+single variable to track inited parts in the 
probe function but do it in the different way for legacy_probe using 
bool: is5682s, init6359 ? AFAII, both can use the same method with the 
defines above.

>   #define RT1011_CODEC_DAI	"rt1011-aif"
>   #define RT1011_DEV0_NAME	"rt1011.2-0038"
>   #define RT1011_DEV1_NAME	"rt1011.2-0039"

-- 
Regards,
Alexandre

