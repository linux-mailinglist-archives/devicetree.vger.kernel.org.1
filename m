Return-Path: <devicetree+bounces-57934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5FC89F93F
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 16:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F2EE1C20E7D
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C00BC16E87F;
	Wed, 10 Apr 2024 14:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DPm3wpYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADBA17555E
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 13:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712757601; cv=none; b=u6KTT/Zv3i5yiP7a2CAiGCvtPbTrMEqXZA20pexhOgvs909rGcPW2tIxgC2Ej9unwJR6N6zyyfrVoirKwC6yS1ExSVG6tOxb3DrJDszAgWcAE3yi609ysormU2QXhT2WA+/rKchkkkF9djhZL4VauBVyCbT/uDOhsVEdnsz1BL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712757601; c=relaxed/simple;
	bh=9VfcLjEoMTpi7xm+VUn6B0UvA2/X0m8cCVXK0p51Jw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o1RG2or8c+n1TMkxH+VtKBp756nZv+OEOZf2ZZMOhWLm+ctoXXlhWxCYWhF1P+4fL9EFD13fGZYl8FElvWxX9gf8leSKdT/xcOsea5KKPeygdHylt4AXWysbut4AhKXZ277UFN/NudeA9arkyoesGYVW8bV5pXC64zsNpB5ZrnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DPm3wpYw; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-343f8fc5c69so3064941f8f.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 06:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712757597; x=1713362397; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g67OSHlwNTDKaFrM3/uwoPsdE8uUwCxkLF5hYguHcs4=;
        b=DPm3wpYwzLFBH4up7aj4PkCtaEjUUp4IPlYcSQMWgeQO+1WBJHx1tiBaFCgfFS1pSe
         hkC5zZT/FI0S791G9HsFd1tq1oh6SRmJQgkluP0grplmHp8wjiB4kpkD+ZbkHjCQ7fX+
         C9cvPD1UCdn3g8XGN7kjTnZ3O3QQ3PlZw2I8qaO0eB1uobmTTtW+JfqC8dAYWd1HR/f2
         ZGd2YPOzvQLsl+2JOLrKv34lwB+dXuTc63Kvabjr9a3zeHu0YS8dcuaU/9I5LQZTm6QL
         xh6f87WG4v4guGr/2AgmIt5ZuNv2bEfgDkFMneXdLfaT5JVnS4wigDcvCzZ43tMpQyEg
         Z7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712757597; x=1713362397;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g67OSHlwNTDKaFrM3/uwoPsdE8uUwCxkLF5hYguHcs4=;
        b=mHfIgB/MV9kbd10HqiC4iq0igtDcxlBJF9DMmSK+zRjE69QYqCaNUyBIyJDW0sjsK8
         JDuEthWHo10ltoB6Pd+zpYOIpAhw53UiTD/m5FV+vmx4riCfnI8zcK25b9m046tcWwoY
         PvqHEAr0NZbL83eXd+78MhBEo8NAa0zAIUJb1j0SdUrcXbmEZMseuudUHhgCPSiXqTmj
         1qmF/4gArKuqcica/1hlRGgo1UqA2VL0lvHu2L75/y8hM+go2JVLo/4W7yQW/kcMsJTO
         jv31WdN4S87caSxnxgkO9yntu8biPR2HhwLuJCMa3MvZrHexDPHOpSf48a+rEB6LZJop
         wxiQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7WhY2HUBkYVgQ0G1XnJKxuKjbePjyHxNUElOnwUY8chB/8N5iDRPe50g10dmMpjeoeqmyLjx5cMYdH/y4ijHnPwxqOxL8ou39Wg==
X-Gm-Message-State: AOJu0YwmMfj366nY+axFcqjTxFOjeTYKgxylEr3VC8SeG0/7ovuJNtXM
	3DqjSnLqXP4uk9TxEVqcma1ioIIqNDQ2GgQVniKnDiHQSoov+9tnbAxE8Yv7azg=
X-Google-Smtp-Source: AGHT+IGRtn6DL2DEemnsBxsmvHHTd4nWEQsASvLDi6kfhHaIx+DPnIFaevFeAdtATqfu2OGeHdeMQw==
X-Received: by 2002:a5d:620c:0:b0:343:98ee:524 with SMTP id y12-20020a5d620c000000b0034398ee0524mr1624742wru.36.1712757597439;
        Wed, 10 Apr 2024 06:59:57 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id j15-20020a5d452f000000b00343e825d679sm13385379wra.87.2024.04.10.06.59.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 06:59:56 -0700 (PDT)
Message-ID: <cf0184c4-2b3e-4074-9e30-bf65ec7f0aaa@baylibre.com>
Date: Wed, 10 Apr 2024 15:59:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/18] ASoC: mediatek: mt8192: Migrate to
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
 <20240409113310.303261-6-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240409113310.303261-6-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 09/04/2024 13:32, AngeloGioacchino Del Regno wrote:
> @@ -1211,52 +1196,85 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
>   		if (dai_link->num_codecs && dai_link->codecs[0].dai_name &&
>   		    strcmp(dai_link->codecs[0].dai_name, RT1015_CODEC_DAI) == 0)
>   			dai_link->ops = &mt8192_rt1015_i2s_ops;
> -
> -		if (!dai_link->platforms->name)
> -			dai_link->platforms->of_node = platform_node;
> -	}
> -
> -	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> -	if (!priv) {
> -		ret = -ENOMEM;
> -		goto err_probe;
> -	}
> -	snd_soc_card_set_drvdata(card, priv);
> -
> -	ret = mt8192_afe_gpio_init(&pdev->dev);
> -	if (ret) {
> -		dev_err_probe(&pdev->dev, ret, "%s init gpio error\n", __func__);

I don't think __func__ is necessary.

> -		goto err_probe;
>   	}
>   
> -	ret = devm_snd_soc_register_card(&pdev->dev, card);
> -	if (ret)
> -		dev_err_probe(&pdev->dev, ret, "%s snd_soc_register_card fail\n", __func__);

I don't think __func__ is necessary.

> -
> -err_probe:
>   	of_node_put(headset_codec);
>   err_headset_codec:
>   	of_node_put(speaker_codec);
>   err_speaker_codec:
> -	of_node_put(platform_node);
> -err_platform_node:
> -	of_node_put(hdmi_codec);
> +	if (hdmi_codec)
> +		of_node_put(hdmi_codec);
> +
>   	return ret;
>   }
>   
> +static int mt8192_mt6359_soc_card_probe(struct mtk_soc_card_data *soc_card_data, bool legacy)
> +{
> +	struct mtk_platform_card_data *card_data = soc_card_data->card_data;
> +	struct snd_soc_card *card = card_data->card;
> +	int ret;
> +
> +	if (legacy) {
> +		ret = mt8192_mt6359_legacy_probe(soc_card_data);
> +		if (ret)
> +			return ret;
> +	} else {
> +		struct snd_soc_dai_link *dai_link;
> +		int i;
> +
> +		for_each_card_prelinks(card, i, dai_link)
> +			if (dai_link->num_codecs && dai_link->codecs[0].dai_name &&
> +			    strcmp(dai_link->codecs[0].dai_name, RT1015_CODEC_DAI) == 0)
> +				dai_link->ops = &mt8192_rt1015_i2s_ops;
> +	}
> +
> +	ret = mt8192_afe_gpio_init(card->dev);
> +	if (ret)
> +		return dev_err_probe(card->dev, ret, "%s init gpio error\n", __func__);

I don't think __func__ is necessary.

> +
> +	return 0;
> +}

Beside that,
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

