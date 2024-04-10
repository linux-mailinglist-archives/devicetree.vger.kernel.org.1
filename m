Return-Path: <devicetree+bounces-57958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A70389FBD5
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 17:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B69A2281851
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 15:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07ADF16F0D7;
	Wed, 10 Apr 2024 15:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Dy2Hy/Uj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870A016EC1B
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 15:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712763534; cv=none; b=L2UUzsRJjSCysygusD9dWnYfT07syQJxuydi/VXNhh8+oi2m2Pe4uAtpTTTtTpdUfH0BdbCwiwZaRMEFMQ/RuQM0NWfYatovgmRUHCi9Rojx2GI54X/30qnxSfDfTITkfw8ep64/9ZfT6M7/ngaNZ8paRci/4wKHm50E0NZr600=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712763534; c=relaxed/simple;
	bh=GGGXqb/dRvAmsbMVacoTodVUEkGNMLSBqd77vagY4mQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IlwYd6WzCemRKVZIKbJTo81Z5AXYpi/ZbiPsqjqXVddkEGiRqJ+C/8ko1dUnapi5Bv8a9RJa6PsspvhFXcg7Ja14mx85MR78abxRB4sH8IaQW2kqI/rD/EX8Vksj203QSOdk37b2023QRwM0kyL4KZgs9LNQu6xyBcHD3YVjgr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Dy2Hy/Uj; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d29aad15a5so64871721fa.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 08:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712763531; x=1713368331; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ziNLBEavMFMG0GfbRRHA8010gbB3jZaJU46gRxSDrTY=;
        b=Dy2Hy/Ujea2R04iIFyIwia0nK0gPMal06imVzZwZrjlDxhjjJG0HwCpnLmGHp6/PO6
         rw7Lhq79YhZATzPEHAdVkrtW96iTGcATxfvOQAmomAb2pa1xnRKQXBD02n9WmpmVBaBy
         JqsYSlQ+QVR4PY6B8sW/B/4HVv3UlD+EhboIMD+aDkq32sfsxhjgazaaa8RLwzsIx1oS
         PIMCUCnzQm3TCDUXAIFZIG8AS2ctvtmn+hoJSynxNgXXkuQkYN/NIt0uIwTSx8AQIhVr
         H6UtHgYewYrCgDqJ85DALlD6aH7ElIC3gDrXo2PVpJy6wKKrFEgcv+e6YbUvLFPFFQfH
         gjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712763531; x=1713368331;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ziNLBEavMFMG0GfbRRHA8010gbB3jZaJU46gRxSDrTY=;
        b=lTfAuKlzu0zOSuoSzc442icfyvB9tn4FZ6r8BL8pKqRxhemCjBgrauhXjkz6Gd+l7/
         SRDxZg7LPixxCTrfvnJdLQAtNW030mQnS2702t7VdlJeM7X7DZmt1JtyuiZvfH53xHQ4
         ioYepWk12/SKp5OIlLXHAXpi6/pm688FvsxtgDfKl3v1Sy68ERRcQ1dsjpX75V8FDgr5
         O3vbDJlEmFP2WwHT/cuUx0+2GhJVNmIlQt3I3uykJseVxPSZXtD1FSDKaqjNibOuucli
         CF6rCZX7R4t4YgYpHgvj3n3DVt9OzZwpjf12Ji8p9MG7x3OOc5p+cIPpqCOQuyuo8ETj
         fG7Q==
X-Forwarded-Encrypted: i=1; AJvYcCU/KyxcZi14uJoRRjHpcWfync3f9p318yBi1w5APjNwRyNSXVexyJz4sa1WaLOuBAQREBF/L0I139PW6yOFXZAVKxKBGBLVR5Sf5g==
X-Gm-Message-State: AOJu0YzaGiFxRHFSJbb2D3ZaNQKKBWl+JTdS9iGyfpNTTqAlv5Llkxvf
	o7LLIHd+AeDnQ85uifNI1rp9Q8XjpTy/pxK7s5PE4r+MxAEsMOJ+76arg9uj0ZM=
X-Google-Smtp-Source: AGHT+IG2wwHYacJLlQJ1p8tbRHpThfXnZhkjy+riyIarl5DIopRdALbX2un4cz4Xr1qBJqWWBM+Yfw==
X-Received: by 2002:a05:651c:1a28:b0:2d8:34ad:7f4e with SMTP id by40-20020a05651c1a2800b002d834ad7f4emr2818446ljb.4.1712763530670;
        Wed, 10 Apr 2024 08:38:50 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id v7-20020a05600c470700b00416b2cbad06sm2591936wmo.41.2024.04.10.08.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 08:38:50 -0700 (PDT)
Message-ID: <757b554b-add9-4d0e-89cf-0a5569187f18@baylibre.com>
Date: Wed, 10 Apr 2024 17:38:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/18] ASoC: mediatek: mt8186: Unify mt8186-mt6366
 machine drivers
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
 <20240409113310.303261-14-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240409113310.303261-14-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 09/04/2024 13:33, AngeloGioacchino Del Regno wrote:
> @@ -318,16 +409,24 @@ static int mt8186_it6505_i2s_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
>   static int mt8186_sof_dai_link_fixup(struct snd_soc_pcm_runtime *rtd,
>   				     struct snd_pcm_hw_params *params)
>   {
> +	struct mtk_soc_card_data *soc_card_data = snd_soc_card_get_drvdata(rtd->card);
>   	int ret;
>   
>   	ret = mtk_sof_dai_link_fixup(rtd, params);
>   
>   	if (!strcmp(rtd->dai_link->name, "I2S0") ||
>   	    !strcmp(rtd->dai_link->name, "I2S1") ||
> -	    !strcmp(rtd->dai_link->name, "I2S2"))
> -		mt8186_i2s_hw_params_fixup(rtd, params);
> -	else if (!strcmp(rtd->dai_link->name, "I2S3"))
> -		mt8186_it6505_i2s_hw_params_fixup(rtd, params);
> +	    !strcmp(rtd->dai_link->name, "I2S2")) {
> +		if (soc_card_data->card_data->flags & DA7219_CODEC_PRESENT)

Is the flag missing like you did for mt8195-mt6359.c ?
			if (!(codec_init & MT6359_CODEC_INIT)) {
				dai_link->init = mt8195_mt6359_init;
				codec_init |= MT6359_CODEC_INIT;


> +			mt8186_i2s_hw_params_32le_fixup(rtd, params);
> +		else
> +			mt8186_i2s_hw_params_24le_fixup(rtd, params);
> +	} else if (!strcmp(rtd->dai_link->name, "I2S3")) {
> +		if (soc_card_data->card_data->flags & DA7219_CODEC_PRESENT)
> +			mt8186_i2s_hw_params_24le_fixup(rtd, params);
> +		else
> +			mt8186_i2s_hw_params_32le_fixup(rtd, params);
> +	}
>   
>   	return ret;
>   }

-- 
Regards,
Alexandre

