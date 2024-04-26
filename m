Return-Path: <devicetree+bounces-63162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D03728B3E03
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 19:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 475201F26B18
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 17:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206AA16130A;
	Fri, 26 Apr 2024 17:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ryfl1wbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39037179641
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 17:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714152186; cv=none; b=l9pEmBPwJsKTC/WHRjN3hfHOyxaviC/de/nj5k4PEkND3HYDsPIsgAM3DWDvlRLmYCfUWMhw7hqTQIXhQgKo+YR/YnhlQz50B2jWIYjuvcfboQwXJR/JxaKcRHcVryFFRsp+C943gSP0PVoH9KmG5bVh1W2fczBNLGbMRfEI+Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714152186; c=relaxed/simple;
	bh=rklTeGdgjcr8HpkwnLXFeP3xtFTG5m2BfNOFT4tOLv8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aUoWzEQBTPDVOIYFxCnYErw2wPSp7q286mlbljBobllCWq0QLqJBpW7adOE4XLJx8svtvlByu+V3X6qjkRFjDAn56MGT6lsGmcP2PYZXcqaoTWnqGogUzfpFuXSd/3FQsTSQKscU435e5eAHTTFtastuBC0Q7kW/JG1Q3ScEDgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ryfl1wbt; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a52223e004dso278945766b.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714152182; x=1714756982; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xcpfNzgF4Pxbm0LNn8/0bg6Ray8UkamWuHdRS27GJF4=;
        b=ryfl1wbtTQjiZZ17K7nJoNMrxSSAID4/eNDPGQWWOdf/PfKayA2vG/+pCzrSYkINK/
         PpqtlUazJcRtgDOrvS2gBI4Bd45EG1AJ9r7u6yees4FQ8bQOEQpyrVK6epJsfM6yXQh+
         LtZisdOap6gs7cY3Jo5iWxgqLlTbq/NzaJxaIxAY9NcD11UK1aOc3mw1sEoWqasZs6ns
         Sf7G3/FFnrgFYrZTSl1sdHrmsq2V2LiXDeQ8Zn+74UM3TPCpfKra9cNS79313JIOimfS
         sLc/1DhP3uSvpI8gn5MhT0jMw9IlrUcYkLTad664b+VcfRfTZxfdYIxQ3JtcpytNMHm8
         vo6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714152182; x=1714756982;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xcpfNzgF4Pxbm0LNn8/0bg6Ray8UkamWuHdRS27GJF4=;
        b=X0IUD07OSgDUD9y8337/FhAIKPuMlVULgUQ78YdH8tIaJUEY1IFsIc2LpsjIyJQcUs
         qQMFDRB4P9hMiPhOD5ntvfDisqODtrdvpyLaKbP5H84W1wls2OvZ49pNZdb0yAkiiL+L
         O22F9bTiKxn+49iR//sFXtafWSQKQ2j/Nif9QDfvVeR5MOiYUqYkOsSKy5N+xoHJQZkK
         tERWJ7avuhW0SNhGvRz5SqJ/ogW2WoI3CzYjPo+RgtSVHrFCdBDK6IsijsppZJflMqDq
         Kvlv99fhvqdBZM1JU/PoFH5igE5XNrqh+F1oSbrD3nd/IbR3Va7GmHUg2Gs/P/Se/u7Q
         U1Dg==
X-Forwarded-Encrypted: i=1; AJvYcCXPIzAu7Ef5htrbvXQmQKW4eKaJT8uzYFWRvxKsOylNlnn/+Z8YqVOzO2vi8EQSuVWlKKTrhS6WQ99Md0tWyUvoJAOvY+ITkSYMFw==
X-Gm-Message-State: AOJu0Yx+/MQucQDVb6Ax73sr6d8szfvJ9Z2Coh6k4HZSEVr13+xCKtiX
	9vAmUYVd8VuKGXbiQwYQb8K/r08iu010iM9qcitYRwt06IScwt5rsb7MvkEfcmg=
X-Google-Smtp-Source: AGHT+IGmV772pWcBFFswx8n1IxjhIJ0x0YA21t+MT9LToWGyNEPcTNukKiSKMrBp3S1NfSOajrN0ng==
X-Received: by 2002:a17:906:a891:b0:a52:6159:5064 with SMTP id ha17-20020a170906a89100b00a5261595064mr3051872ejb.52.1714152181727;
        Fri, 26 Apr 2024 10:23:01 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ot15-20020a170906cccf00b00a5239720044sm10763363ejb.8.2024.04.26.10.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 10:23:01 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 26 Apr 2024 19:22:43 +0200
Subject: [PATCH v4 14/16] arm64: defconfig: enable mt8365 sound
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v4-14-082b22186d4c@baylibre.com>
References: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
In-Reply-To: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=777; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=rklTeGdgjcr8HpkwnLXFeP3xtFTG5m2BfNOFT4tOLv8=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmK+LaCp9ZVTItyYTqXVHXkRe07IHi+GgD/LNAxSnV
 VoN96EmJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZivi2gAKCRArRkmdfjHURXNkD/
 9u5HUKfktWXA52P/DVWjf9SNrUwcHyS+3vetaBi7qI27CfzXCbQDJnpz3/PL3n0C79B6A+sX1jkGKM
 60cKtdXeibqQo+DbAVJnZhxN7ijZz+xCslh96h8NwTXPDIJzXg/GrP0LOT8j6YzTyDD2akcTG8Nq5k
 ynO+FcnNN3kk1Trt+Fqq/nlY6IS9FqMiYj68Ch3zQzv5galw8rzUGmwK1ytAk1mf+GffJeauLZjIWz
 PnS7NB2gzhbf/4NlURVM6EKl0qLWeQfHhQY07nstES4z1CfygEoGrTpb0+9Z0D0d3gqk9FPNyKF3rt
 IXF6DiuXwJY/P7yVqHSU0po05JBpT+ghWfZcdRe7a/NqzqAWPsgY1Y+Ug6UGVpef5v23LEttxXBzfe
 WlFRJz6TQT5O93zSsmp/p/Ccds+tq9smGidiQ6DFPjo1v9YtGcm8MmdmyXQjozN1UiElk5LYl/kSiy
 IOe88WsQ0dTYG/BVomOdUsrpMZrOsZ2DYhYHdDsE2bziUj/cngmXdlb9vJ9nPZclz5mecfo5AlsdBQ
 ZeAMfQKMVO1NY1Ad5qR78yXmyzKTtkr0Qnw9m0flAeyf79Zcv1OP7/SngMLkOvUQcORd5Jaa4hDDVo
 wl1VU0X6TjlmCfEzejZsMNIHMrgmGvnc5dkIqrenbp/4WcHgE5xdWjOQCDWQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Enable the MediaTek MT8365-EVK sound support.

The audio feature is handled by the MT8365 SoC and
the MT6357 PMIC codec audio.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 998b71d5789e..faf39d837674 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -948,6 +948,8 @@ CONFIG_SND_SOC_MT8192=m
 CONFIG_SND_SOC_MT8192_MT6359_RT1015_RT5682=m
 CONFIG_SND_SOC_MT8195=m
 CONFIG_SND_SOC_MT8195_MT6359=m
+CONFIG_SND_SOC_MT8365=m
+CONFIG_SND_SOC_MT8365_MT6357=m
 CONFIG_SND_MESON_AXG_SOUND_CARD=m
 CONFIG_SND_MESON_GX_SOUND_CARD=m
 CONFIG_SND_SOC_QCOM=m

-- 
2.25.1


