Return-Path: <devicetree+bounces-57915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE81B89F337
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62DE21F2AFC2
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80AC115DBAF;
	Wed, 10 Apr 2024 12:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Qo/aNGXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6843515DBA5
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712753895; cv=none; b=j4jYDvzx8GklDhqsucSRuZS8oAruXz1MAw8Ermh9+B/Yc7QxN+015HipVJ2t00iKxJrbJ0TvJDj+vTAH9o49f5Sw32IyhlOt4mFCSryutCeQOBczi3DnDD7D75uqFyI5A4c/45fw1a4WY7mcIWKYvxV9P+78StvSWeKkoGFodtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712753895; c=relaxed/simple;
	bh=XvD5fOS/hQ7HPF9KYvW4fabBNiId/tBgRPWvKt02DhA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tAIpluQbvS4+QENQLfKxutLzeazHEef/VEIwN45n2tKXzhjVGJGnlYtFhsrG7kp01TftItkLubf8G5YrQTNEP/eAjA6X7DP6tUJ/1Tkh/xVgPnSFOmOfyNsJ6EIfwrQnoCiR5O2TKsRT0eYheHxqBDzLdXfLDM6aRo1y5JcQ3WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Qo/aNGXx; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-346359c8785so1021227f8f.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712753892; x=1713358692; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SAPCyLKBSHRTWSRRoqdJH1JxTgNtm+xffvG0gyEDWQ8=;
        b=Qo/aNGXxjrUKSLafOFe4kqGTXdywcDhIyb+D2RJoIL8MoP7akMSk1Mge0BuVmQQrpE
         KwRQAWfrHVtVfWFINSlOgPAhA4f9Vfq3os839cFuU0aSfvRx6Eg4hxippPBgbyudFq6x
         IDCyhs/jxVUs0IVXIOuTcfzwyzcsD6+zACc8BeYmW2rB4H/bdfkcnn1S39SnU7dlIMuI
         1TtQ1lRl/1cys3h25u5vJJtceF4PxApK+6BQMdyDlJLwkti/hKf7DBXCtM6coIFk8AXl
         VswfYJd1FxYFhUXinHRZ1VpcHd1eOzT+heN+JdkEeUkWh0tzUoKBLhixy+yRkjM5kjfV
         fqCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712753892; x=1713358692;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAPCyLKBSHRTWSRRoqdJH1JxTgNtm+xffvG0gyEDWQ8=;
        b=m06NQHVPapcUE7QsVDg0lIJnvCLegSzDPEOLu5DzrAt/cYOXHdryY4xCvAaKYu3Pcv
         7KpFCXzU80jMHhAquZoBUSwbr4ClM7cSQFzmg06HIHHdWgjWYHmfoh8Hbr6Yswdyop4K
         RMG2w5ov55a3e11cpE+i4XaWhnpaAyYDrl9W3j76e2l3ubWMckPENlygRpCDBoUhJCle
         4ZnvfR9WQKlGe/GJSI5wJRol6ivMsQ1d0F585g5yIsgya9QTz/evG8DFDsRZ2tfShQ3m
         XhX+yxUAndqiXRGVoolD9sdB06PYLhS6VyVTZHF8EZxdOqE7Jtn76eQGdoenkBW9ReVm
         plJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsflX0cffvpSbV+cGKFIOlD7xLmcydv7mGh4E+ZFufu7sZhR2WctdMR4OozO7qsGmz9mMkKdm9SKVcHPYuG+n6PiE1NqJSDdePHQ==
X-Gm-Message-State: AOJu0YzQ1x/FfXyj3V4tLRbsnJ6WFGwt9u/fJLf/CNZv7QOq0Htb/SU0
	BPFq49ajQ+HRpc4GI6JF807kHl//jbJAAimLQ0dh4863+COQRVssYckI5LpaRH8=
X-Google-Smtp-Source: AGHT+IHfa120qRAfspKcAyRMy5PXxHlCGJzmW0vlTzwyQGnoeYFwCg8fQKa0TokP1NrBdWntPAlpFg==
X-Received: by 2002:adf:ee8c:0:b0:346:47d6:5d17 with SMTP id b12-20020adfee8c000000b0034647d65d17mr1758280wro.57.1712753891611;
        Wed, 10 Apr 2024 05:58:11 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id l4-20020a5d4104000000b00343e392829dsm13404941wrp.97.2024.04.10.05.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 05:58:11 -0700 (PDT)
Message-ID: <4c43eafe-f173-4a35-962f-a5f5f020a587@baylibre.com>
Date: Wed, 10 Apr 2024 14:58:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/18] ASoC: mediatek: mt8188: Migrate to
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
 <20240409113310.303261-4-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240409113310.303261-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Similar changes has been done for mt8365, it works.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 09/04/2024 13:32, AngeloGioacchino Del Regno wrote:
> Add mtk_soundcard_pdata platform data for the MediaTek common sound card
> probe mechanism, including a driver/soc-specific probe extension (used
> for bits that cannot be commonized  hence specific to this driver), and
> change the probe function to mtk_soundcard_common_probe.

-- 
Regards,
Alexandre

