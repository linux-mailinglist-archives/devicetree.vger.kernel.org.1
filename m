Return-Path: <devicetree+bounces-86724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C73829374A9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 10:03:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31A40B2266E
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 08:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F79C58AC4;
	Fri, 19 Jul 2024 08:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mYzcr/4u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE8551C45
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 08:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721376193; cv=none; b=mpcxmTqouwInb4A8lhytfLxGi0n8JAKHU0DKXnx8DjkmKPD+33VsB/wOlvVgb74DYP6ly9xl/NfakHtZsJfnyOBJALKB62ycd/t9xxjeC5XW/ApSdX5DZFeD9jPhyFCHaa6GxMFgIBzbCC7rrt6KY3IZVQcKYrltsGbvT1qJM9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721376193; c=relaxed/simple;
	bh=+6VT0XzZoxj9XDWHzC2JD7Qd5AsazCLCzcu5O/Uqc3I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aR3KlIp+k5B0autqp9dQCysiSC3nh202/3bjM+n+zbQ1jVAuFXzJHfUalYaK7YQVpJi5yc6g5EFi4600SX+5B4YQ0VdGzkMMrxWkiConEg585ZsgWbl5KBClO0RzP2Pdsl3gNWYwFp2LZkNex4jnsqeL4fRiDoBqGbbdbvTaV+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mYzcr/4u; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5a156557026so785884a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 01:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721376190; x=1721980990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z+V9iTvENoLkDMcxv1MaALvsWBKCPdjEAwX/SNQRJv8=;
        b=mYzcr/4umhHQnw06RhXwkMj2eIgquKDkQMP23g+IdcNP2chbhfZ40F2QszMnxhl92Q
         l43Q2WuXuAJiQt5ozZRleQ6dqLYchVz1tdSqs24E3t8v17EGHvuF7fXntsrbxzmUie33
         j2H/SGk3RTeTcvoVNJhuXT3DlGq0fZ0A8SSTHUsHEuwuViMkfS9rAb0MlLOOVJ4TXP2J
         ct96bQMGBQ8jVQWJa4hm6Vb7pHghoAlibmDR0pJK3b/UE8bq1OcZUm35qrkna3oCiVIc
         f744OB2Ka/+/Y4CAFtBgUixkW/pDlU0+mLCHMtl7FzUf0wuIS1JcjMxhIZZIg7GdibKQ
         y/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721376190; x=1721980990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z+V9iTvENoLkDMcxv1MaALvsWBKCPdjEAwX/SNQRJv8=;
        b=PS1Mcgxs8/1kI45Q8xRk+qZKMkzYHe4m1MSxDOO/zzDjZX9HJ0LGoLph00maJ68D0P
         mYltSmrsaUEg+9NnjZrFmkzZZC15y+fiiUgtKBoJG8dT9MeYb4EfXHrg7m/Lm4V+uoW7
         bMvR6CPKG4XfzVQgSwjXAqSipXTeI7yosZ776sVldUWqIHZ2eq6ovCklT8jb7OWqHs/A
         Wn18+4ZoKpLrTjBJLsZlrrvjMuBX2b1wtCPsGTHLs/Zhm6o50HPaiZwyNhdfkK3bSHxJ
         qKcsLu2EXS3gU4kjIcuZfwDOQgw6plh5ND0kJlJsOf1MCLKL6YkZKggOJbIJ7IDtpFkx
         OJ7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPCPku0plklL2g+ThwrGdcnkbKvtR/EYeQoJwBgkQW2H9L8VKaHFkuw+80zxjY4fCcqKkA1ZfL6KuLK+HC7rAUOGf1LcffGfFN6g==
X-Gm-Message-State: AOJu0Yx/uuvV7gQiNu9W/e5z7wI96HjxsSMscnVFHQQO/7B2nQgkUNt5
	lHKMkXQpHUx4n7jwDT4iss6B2pnOKmzI8rg0798TUIsSr0YYrIWmYXB3qZDklso=
X-Google-Smtp-Source: AGHT+IFSI/urq3kgCZ03qW/7Cfy3KmDoz5hvQStjC02N5fU8bds0AoRqbPquZ19VCIFBWcFmrd5RIA==
X-Received: by 2002:a17:906:ae84:b0:a75:2495:a6a3 with SMTP id a640c23a62f3a-a7a013c0f56mr554702166b.67.1721376189891;
        Fri, 19 Jul 2024 01:03:09 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a33ad4bfdsm72480666b.85.2024.07.19.01.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jul 2024 01:03:09 -0700 (PDT)
Message-ID: <45b4a493-875a-4c9c-aa45-a6f32f74b865@baylibre.com>
Date: Fri, 19 Jul 2024 10:03:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 12/16] ASoC: codecs: add MT6357 support
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Nicolas Belin <nbelin@baylibre.com>
References: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
 <20240226-audio-i350-v6-12-f754ec1a7634@baylibre.com>
 <1ca27c79-a83a-42a7-9e9b-766da0064c73@sirena.org.uk>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <1ca27c79-a83a-42a7-9e9b-766da0064c73@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 21/06/2024 14:44, Mark Brown wrote:
> On Wed, Jun 19, 2024 at 04:46:48PM +0200, amergnat@baylibre.com wrote:
> 
>> +	/* gain default values*/
>> +	regmap_update_bits(priv->regmap, MT6357_AUDENC_ANA_CON0, MT6357_AUDPREAMPLGAIN_MASK,
>> +			   UL_GAIN_0DB << MT6357_AUDPREAMPLGAIN_SFT);
>> +	regmap_update_bits(priv->regmap, MT6357_AUDENC_ANA_CON1, MT6357_AUDPREAMPRGAIN_MASK,
>> +			   UL_GAIN_0DB << MT6357_AUDPREAMPRGAIN_SFT);
>> +
>> +	regmap_update_bits(priv->regmap, MT6357_ZCD_CON1,
>> +			   MT6357_AUD_LOL_GAIN_MASK |
>> +			   MT6357_AUD_LOR_GAIN_MASK,
>> +			   DL_GAIN_0DB << MT6357_AUD_LOL_GAIN_SFT |
>> +			   DL_GAIN_0DB << MT6357_AUD_LOR_GAIN_SFT);
>> +
>> +	regmap_update_bits(priv->regmap, MT6357_ZCD_CON2,
>> +			   MT6357_AUD_HPL_GAIN_MASK |
>> +			   MT6357_AUD_HPR_GAIN_MASK,
>> +			   DL_GAIN_0DB << MT6357_AUD_HPL_GAIN_SFT |
>> +			   DL_GAIN_0DB << MT6357_AUD_HPR_GAIN_SFT);
>> +
>> +	regmap_update_bits(priv->regmap, MT6357_ZCD_CON3,
>> +			   MT6357_AUD_HS_GAIN_MASK, DL_GAIN_0DB);
> 
> We generally leave everything at chip defaults, why is this different?

Ok, after test, it isn't a problem to leave at chip defaults.

> 
>> +static int mt6357_codec_probe(struct snd_soc_component *codec)
>> +{
>> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(codec);
>> +
>> +	mt6357_codec_init(priv);
>> +	return 0;
>> +}
> 
> Why not just inline mt6357_codec_init() into the one user?

You're right.

> 
>> +static unsigned int mt6357_read(struct snd_soc_component *codec, unsigned int reg)
>> +{
>> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(codec);
>> +	unsigned int val;
>> +
>> +	regmap_read(priv->regmap, reg, &val);
>> +	return val;
>> +}
>> +
>> +static int mt6357_write(struct snd_soc_component *codec, unsigned int reg, unsigned int value)
>> +{
>> +	struct mt6357_priv *priv = snd_soc_component_get_drvdata(codec);
>> +
>> +	return regmap_update_bits(priv->regmap, reg, 0xffff, value);
>> +}
> 
> Why open code these, the core has standard adaptors for regmap?

You're right. snd_soc_component_write/read should be used instead

> 
>> +static const u32 micbias_values[MT6357_MICBIAS_ARRAY_SIZE] = {
>> +	1700000, 1800000, 1900000, 2000000,
>> +	2100000, 2500000, 2600000, 2700000
>> +};
> 
> Just use ARRAY_SIZE() for the size then the number can't be out of sync.
>
You're right.

-- 
Regards,
Alexandre

