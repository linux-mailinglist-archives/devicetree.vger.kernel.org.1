Return-Path: <devicetree+bounces-45973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B86A8677AE
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 15:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FDA51F24E17
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 14:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FA012E1CA;
	Mon, 26 Feb 2024 14:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gxD++Meo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB6E12D749
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 14:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708956149; cv=none; b=C3P7pZ6rKgBOBJyZMWVdhItjVEk7FwEOe/wxPOHJbAjGJp3ylXgUWf3TmENE3lykqlWvPruDaYir6V7ybbvjsLe4cFIiTLYsqAGbEy+BDshLfCeTjPMyIGRJUWERa5BHGmY94ur7W5zxcYSjP1MWWbHOu+X1MKpN9jq+XlJEv9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708956149; c=relaxed/simple;
	bh=qrZwwuTRTZwtV/ywWqyLXe4Q7uOXoLUUQrclwWnFp7Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sGGweA3jRo0ZigL+FoL/R9LnoUcrLxMLgqOCwhXvQ1w4chyAv9Sa1sQcMMH3PktJ6xU5uCMUr0OYrbcEK+JEfhmrDqaPokDTrRKq2aKowecYwv9rv/qadArcdk5PLnAAIKAGKe6uDNfKKdwmajarXGp18gtTCf1dY4Ji8my77fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gxD++Meo; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-412a5de8a06so4994245e9.2
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 06:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708956145; x=1709560945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SzteyAfQmYgd04c3xIbcEszPYVc0e3vP5LLdlStO4ro=;
        b=gxD++Meo7HHhvvwPN0W705yOEoGKYWwu7sTZoeBCtezbiiCVJdXF9r4n+J1xvJ8wp/
         FuQGVZRUM1x+9qPcdoLS5ySMuU2tjTbu1R8ttuZE9sc/BkH8NvZc5ZwWX5pgyPvRBW31
         VVLj9A5Iphwxfam+cl81Q6ZafhWwjVzvSqSkFZmqnauVaA1IaRTajMQfcJuC67yaiDhS
         BvjGksWDORHr5ufLO32FlDlRnsY64xJEEgswtJIYUENe0M06THPJvWaPAcddOBYvLybK
         HtcFV6n7BRK7joASzjR1zohiaUqWhb2e8D8ZNjTsg9yiTRqsfo4Pjk3sPrJSUOcj14E5
         2xFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708956145; x=1709560945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzteyAfQmYgd04c3xIbcEszPYVc0e3vP5LLdlStO4ro=;
        b=UW+WgQPh+n9OJpwbMfhrsGnDTX1SwVPSW3Nnv2SIsVLw5/m93+/WwWVvFBm1EEOWdN
         o6keqOGe1CsgPnDO3M4tvqiPkF7Aiasz0RhFxbbi1V0xms+dPOjqk8bGipayvptMKewC
         qQTzyLWEe5UkRkKSmIYU/BsPKUtOE6ki3zLsYlFdJLxyOfylGOT05z1yrGRwEXy9K0jU
         dwR/3M5dVsKFiXsRiBTDQ4VuCf+HVHisswL+7Qqrl6YiOWHc16C422xlpOPNs+GaTDD3
         OGENkQhFcSBeE6zrws+6FDV4309nNVSFy32ybIgS0GOOzxGa+DZrQNKNhtyyKtkxorw6
         pshQ==
X-Forwarded-Encrypted: i=1; AJvYcCVc9F0Tj2TW23rym+R7m+uHaB91Ei9x933MfoJViNj4mwQ+lvKctXglTSRPWYi1g5x8pGCQ3A4s9gLCq5E+klXdIYoqwUTcAoNYUA==
X-Gm-Message-State: AOJu0YyJV8Z512/fhEXxKftoeUX+IAT3mhf4F+xolNksEQNsIIztnzIg
	5KtsxjY6y0jLAJsOALeRdR4pEAOl7hOhW4SKluSwEJ+K/mfgoH6TMl3X7ozm3N4=
X-Google-Smtp-Source: AGHT+IFc3ZtCNmpbpEYAJHKn2ZQ9YqyPoGmBc4eBeC0117sAQ472ltXWjc/Xa516gqcnqMw1sOOt8w==
X-Received: by 2002:a05:600c:a001:b0:412:a47d:1fb2 with SMTP id jg1-20020a05600ca00100b00412a47d1fb2mr2070382wmb.19.1708956145474;
        Mon, 26 Feb 2024 06:02:25 -0800 (PST)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d33-20020a05600c4c2100b004129f87a2c6sm2838475wmp.1.2024.02.26.06.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 06:02:25 -0800 (PST)
From: amergnat@baylibre.com
Date: Mon, 26 Feb 2024 15:01:51 +0100
Subject: [PATCH 13/18] mfd: mt6397-core: register mt6357 sound codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v1-13-4fa1cea1667f@baylibre.com>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
In-Reply-To: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=803; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Z2yJ/oBlNczeCIJzQKH6oIlg8xoLP0FDW9ftHO97UdY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBl3JncCWphAeGutpqeyL4/OPzJoTjMSUOe7sBai3g6
 KqqPwIGJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZdyZ3AAKCRArRkmdfjHURT3eD/
 oDk2BfGI180002+laCNdSwG+8z26O11oUe+X/vcITvLRl8uMowpsX2Oia6rHtaeJPd49fFMgyUOtDs
 0uSjOeVUMe45iYIOiO+dGqIn59SpKw13K0I31SEsg8661CYSTrUJkpKX3DsLbcDAu6wkg/t7BY3TPT
 ELDPQZlEUPun5D8HIIiNND00hiLwznLngaPPr9ju83cpvSrmsKngPH5uUEDFQ8aRL8jB6E2ue+5ePA
 tN/9r+yw/ID3Z42bTGjN1DumsEKB7hEqM3+dn82SOwsYK9e3G16spC7a2f3xwUkbNEDVAtkOT+N+9j
 e3loRcMxyTqSh1PWd3ByYdW9aV98q0rIcvxlkJNINdHhglQgWgGRNQJTXHUfyj4eEAbYLSlX27tPnv
 X3LJQ7qBhetlZcd/OR4YUcgWxF2L7AXwytkKKpv74Cv1kfNvrUNZG3TVO7C/DJzItl9yJqbTRdNkSV
 Vnlb+Zjcl75QjgM5OsgAZ0rdR5fvOEEmXEEJrthVt7qTY/0ozZVmricnmd4Dktxjg41iHqFF/7E4WZ
 FscF9yqDi1c0990MlHE/WcHu0TBepjrpd6XHKE+1l8D3fetAhFuGgNrD7RKBWgUb/E55GPU1bVl4rZ
 Lijf6U8oITrWDehsCRAyvjTtqEximqHMFOv0UsiSeSUKtNkIyoy7FmYMhdZQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

From: Fabien Parent <fparent@baylibre.com>

Add MT6357 codec entry in the MFD driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/mfd/mt6397-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 4449dde05021..4fd4a2da5ad7 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -141,6 +141,9 @@ static const struct mfd_cell mt6357_devs[] = {
 		.num_resources = ARRAY_SIZE(mt6357_rtc_resources),
 		.resources = mt6357_rtc_resources,
 		.of_compatible = "mediatek,mt6357-rtc",
+	}, {
+		.name = "mt6357-sound",
+		.of_compatible = "mediatek,mt6357-sound"
 	}, {
 		.name = "mtk-pmic-keys",
 		.num_resources = ARRAY_SIZE(mt6357_keys_resources),

-- 
2.25.1


