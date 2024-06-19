Return-Path: <devicetree+bounces-77511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAF790F135
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 16:50:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 014691C24334
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 14:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EECC0153BFC;
	Wed, 19 Jun 2024 14:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zRizFSzI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B566156C5E
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 14:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718808433; cv=none; b=P+rrv6wtzSkfb8vadNl0iFtTvG7+OV7WPshMgpu9CaFxW+S/dITVDEnFHBtPaZNWQS7J1UByG+RtJMXrTylkYDlf6qKb4ecraTeH20oWHvhs6HCKkYImAvX1wqwm+xvkJtw5AKwbwuZD4z2gqUShvI1SBNema8svYOy3eUiJm/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718808433; c=relaxed/simple;
	bh=cO45G3J6A2HCrNyifwgmbquTtW1hXtTIuXDjiQ9kiyk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aZw/Ch2LdUTTAkYsAZX25U6AVox00OLVqsfpUd0ua6XiplhfXjqyGI6ChaQLF26xl3ObNfJKLAH4I374EErthcFm1Ocu0125G7Pm/mJKyUxyw2zFSGNNxUUGxm+3mzMw565BI8ZYx9nWnUWM55JPVdMMh/Ye3R1GgiFtGvGo3dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zRizFSzI; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ec002caf3eso111218181fa.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 07:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718808429; x=1719413229; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YOYHy0wGdKj7gYao1Bs3zuE6VV+046rxXLiuWBbG9as=;
        b=zRizFSzIkYbQVGHPtoXwUYPn4+GzQT4Z5T/C+BJ8ARc7/ZgQkfo6N+DJF4PisTI9N5
         GFNLUU1foCjZaxrS39UhCJA4JVpcdCRo5UEE1odX1XKxAnhLM7TwAa/BkWUx8g1qa9qy
         WAw8slZoFVn5DBxsFtEn4dMGHlr51L8+YEav8V6zLwZN7vEhAiOmQYOs9gJadSaxlHoG
         TYN5XjsHZzbjLkocserP/Pu4VfT8gpoqsYjPwElBaxC7nU99LlA0zzgOiOpKy5MfDmlc
         ciJ6m9mqw98WFsLbjP0ii3aSBdjW+vHOqMYhuuIwENpeanU5jFUqbRir8ZLGi6G1v3kQ
         2w9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718808429; x=1719413229;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YOYHy0wGdKj7gYao1Bs3zuE6VV+046rxXLiuWBbG9as=;
        b=GtZJKUfwSlaRs4oq9wD8UOM46e/moW52jjE7OSw2j9jt+jHJO2GY82VrAbHO2z+TWk
         IO1/sx/t8Yo32Kg+JrY82NGBLMdqRdLy1wfrgwnVlbih0dyQUG3BUcg/SGM8GtNYn0sx
         2sfLiACO1q0vBMfGL9AAf5Xa/lRYYHJXerRpnuWGO1voyhFvSUgudh9OypzhYYYSJeKX
         Cn/97uu2BmL5bs3gfAwz3L82ZxwWnTGGfenTXDluqndA8a+PNN/3g/oQ1XImmGqdO8vH
         9tReQmYpqmsZh49/BLdMFpHgzr7O29qwuoq0NcGbsum7wiH6mXAWa+HisAq1fbIFhP7W
         UrcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWACzFvlSGXNV4RTooBLfMKighA7BY8agX/JBqM/lPVvQk6DhfRywkTmufT4A79S4rdinXDkVHtctNBzWDDJZL7afwxOgJ7h/SAiQ==
X-Gm-Message-State: AOJu0YxRIGg7zA7QNkFr08J2RP43Dr7ssE/fIgrz7TTrBaLt9kGtIydo
	lJln9vBNa+4tatNXMyf2c59LMIK7W7oAgkxeSltRA5hItzbTgr+XmQVfGr08FV4=
X-Google-Smtp-Source: AGHT+IHZjLCp6uoXlXfqQ0RKu5pWr8gxWPkxcPzzjLNo0AhaIUbrnCYVVlqUcTfIBz485mlGmWKOGQ==
X-Received: by 2002:a2e:2e0c:0:b0:2ea:e2d2:6231 with SMTP id 38308e7fff4ca-2ec3cfe9213mr23132561fa.33.1718808429743;
        Wed, 19 Jun 2024 07:47:09 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a6f56da32c3sm679787566b.13.2024.06.19.07.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 07:47:09 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 19 Jun 2024 16:46:50 +0200
Subject: [PATCH v6 14/16] arm64: defconfig: enable mt8365 sound
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v6-14-f754ec1a7634@baylibre.com>
References: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
In-Reply-To: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=860; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=cO45G3J6A2HCrNyifwgmbquTtW1hXtTIuXDjiQ9kiyk=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmcu9Rr31FcrlNuhRLXo8LEdu75PcCTBqW0u596FYF
 k5UOpl+JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZnLvUQAKCRArRkmdfjHURSe5EA
 DBeGdSSHpPMzGpeI7wNiG5y2VIzwe/IbVqGnCja84KdFBZP60REsnzx06exUV1LY0J0aEVp+sMhom1
 YR0dWD9pSUFYaJ1MieeF+nhaXBAnabOgoVj0YbdL+QP9oLoGBXPYGkxHH5OQE7ARC88nziL+5IjPpg
 F1eCcUCVDfNzlUqAzVZW0mKPDwsqepJWsZc4IwPyPn+AMdNwCcGi95SWV3ZloRUZMsPNCPo62v3dEj
 TluHhrArRuR0DM4rHGp/+FVGYnzvwzYYmTDkAtEKAtUVTXrTUbnmAgTm8iBONqSjmNxyigDMZqOW/G
 xhWA2aObi+dPX5iBDnzzhvSg94lJhQqs4qkE0D/6i4eDZsxw1AjWtpg7w1TXANsbwIon8nZwf2I5eo
 KaqTTsXIyO3eM3s/m5RIscP0UxdM9uV3c0OVe+FhN9QmpUzKs1f9Ncsx10WXBM4f0XNlPfH4V4Czab
 GhH9t9ehABinDvKvUULzLJM7o3OQ1VStF2S1FRkM7piYcYNhscWQsgwyE/0UbNC7YTIEw50G8IX9Wj
 Achaw7Dp8flH8t/Q0+auOQOjQPszi7eCZtAK8CxXrX2ur5u+7O4O8jUAyfITPt/sIogKMEGF94EW71
 cPBz2Spj7AJZW4378p6XZDWDoziFyqixN6TaLC1d/20pIrKQl6S+zpxGRGgQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Enable the MediaTek MT8365-EVK sound support.

The audio feature is handled by the MT8365 SoC and
the MT6357 PMIC codec audio.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 57a9abe78ee4..24b4d1a4992f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -950,6 +950,8 @@ CONFIG_SND_SOC_MT8192=m
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


