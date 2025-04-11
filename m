Return-Path: <devicetree+bounces-165892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 563E1A85D28
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:36:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 949508C3DBA
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 12:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70AA29C353;
	Fri, 11 Apr 2025 12:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AJsEHcjg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD6429C344
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744374991; cv=none; b=RDT6uboSh8DIAguT8M7rCImGuHdAmRmQswgR3XUXdAiJe46vG3f73rapWgwH+UGFHw9d2ukO84KKNKlqCeEQ3eJ7P17N7ulx7GaazYHOIh2HLc0YQspGqz44rrccxuX4BLBbNy4ju5hp1QT0p7DwvBFtMZ9Aq6R2Ani9agmlJNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744374991; c=relaxed/simple;
	bh=kapZgj+SJrEW/7vg45el3XbqPXPyGqqzv8dsBko1XSY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tvB7Y8rrtjG14m4Wl0WtX3M82M63MlM+LXiRY6W0WGlvwh9MxqaCKmFZkbDZDx05ehSMGZ0p5TLUENrI1SIfCoN/VJ093+GYi1TU9ESxhZbvNVTF+1jcVwZDYkxp5kwO3pkoFjSLSkRa1xQsE5Ea9DC/Y4WQKHWR9nIHRKo4R/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AJsEHcjg; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-736ad42dfd6so1536791b3a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744374988; x=1744979788; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jM702IHJZgWY+bz6KCTgaeHyuuKyyx07sXK0MSiTh1k=;
        b=AJsEHcjg/xZUtt5UNRfKW6z4eeDKXzSN2/+X+t1ScYcQirFDnTLpPq8H6aPziaB7CQ
         CEcIU+y99ZgW861z9cAaxkxnQzEJyplu9qzs0EXuxDOvpnjUHfJ0yiptjwFFYyIFFO8P
         7FbVIIf9oagEpXDyKNrlKqGatESNLZQZWVNDV8NbfFpNZkoA5EwsWbtV0meEFXBcdQtJ
         8nNeojhHZZrSjlKEIk9RScxU4Nf0vvWIvadjxYUCrIOnOMz9yptlJ3Gv3MNRwmV4jomY
         9d9q5GCDLMwxiV7B56pqcYQZTkCa6IDfSNqzVcjP3jLQyP7tRfwAfAPxL/RdgVMd5Mvi
         wv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744374988; x=1744979788;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jM702IHJZgWY+bz6KCTgaeHyuuKyyx07sXK0MSiTh1k=;
        b=tTbQvLvyMDr4680+tMvXn8xETN5H1kvl9rlw2CjvM0K786J+SLYgCr7z7l30NFtfaT
         bnFbh+v4HtQgBHCHWvn7AogVaakQW6uUgAFXtGtJnDrRCzL8yB24+RNasKYeBRHQOWns
         AxJXMeripBL3p+02ZZ5V5kLXAW4Z49x5RVn0cBzEa0wcFLldByYbnZaA0ea42MeQDh22
         zAaCykuK4nIwcmOrMvsiBTUZuir7WWbldzsBNOT6u7pacrwrPxjq0qBKtEUESwQMhBzO
         vuI8Fi0F8/0EhdN5IJ43brCZgX0HUQJzM9KN1Jd7dacy9SzICZ0H9sJV6HkZZW2YA2p9
         DUtA==
X-Forwarded-Encrypted: i=1; AJvYcCUvGADf3wGz2paImk5aw1Uzu25LhjQZTgjxvzk9n+DDk3n8kZ+uAwNJw9EmoM3N2X0u6jL+H0hGPaOD@vger.kernel.org
X-Gm-Message-State: AOJu0YzVXh0Na3Ub9vjsM0cUFKAhkysaLNDtSQx4KUAcv+idpFsxXr7t
	6y7QDpniku0RSxmZei4qn86ohcoQ6lPA0f8X0eKE0cygkVHs4P0r999SirH9RjI=
X-Gm-Gg: ASbGncsvqvOyfOJ/po2S5jfJ3IIaxFz3rKN3Tp7ByXEKnjbFzE57Qu/c21w8/BW2pzy
	1prOfT5/gG2v6AoeIbFCJ2THAG0NNraxMk3N9W7ZAv0idK3r+LZx3ZE6IMKlcOKtVuun7D76saQ
	HB5SLsGJB1dTm8Hak7CwasAkeQ14XfASoMeX8kWdm8FaN57ugcuUc0kD0UDfovndSY+Jd/s7wzG
	/cOAXRH8gSJhDVdJFgDNgEDt/dSZrtyApMEdJTkUM4C3DGdkMQZ93mCp/78uI4nAYQeaF50MI7K
	pwz8rrg30hTumBoeDFCO81huBdaB4RYNBVlpxuvpje0=
X-Google-Smtp-Source: AGHT+IHQwIeS61ZHw7ELcaetMk1hxBxZhzt/gB3vL7AAjlG4usbaBhvHS6AeD5lvUMBQjtxiLN9JMg==
X-Received: by 2002:a05:6a20:2d0e:b0:1f5:6b36:f574 with SMTP id adf61e73a8af0-201799908cemr4162219637.38.1744374988404;
        Fri, 11 Apr 2025 05:36:28 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:cf9d:bb30:5951:692])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-73bd22f8253sm1408292b3a.93.2025.04.11.05.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 05:36:28 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 11 Apr 2025 14:35:54 +0200
Subject: [PATCH v3 1/5] rtc: mt6359: Add mt6357 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-enable-rtc-v3-1-f003e8144419@baylibre.com>
References: <20250109-enable-rtc-v3-0-f003e8144419@baylibre.com>
In-Reply-To: <20250109-enable-rtc-v3-0-f003e8144419@baylibre.com>
To: Eddie Huang <eddie.huang@mediatek.com>, 
 Sean Wang <sean.wang@mediatek.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-rtc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=888; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=kapZgj+SJrEW/7vg45el3XbqPXPyGqqzv8dsBko1XSY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBn+Qy+TYlfRYrK9qBDtMoT67TK2uUDW65YoKt+VK8q
 GnOGMrmJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ/kMvgAKCRArRkmdfjHURR2DD/
 4yLxGKl9OOCFSJeMkLVMWu8AstKcIkMWXfnsYBqGiG0y70mV141mnz9uA1Wc0q0e436oYHlfRwILuj
 8vaI3DBOZWPdM/vUXhxbr06wjzwcYlTSrvVEQD9mwFWuVcRma8pnf7iinuqfOQAl0xsdZ4vs/gn2//
 5Fxxc8ddmo2NGUZlrxrgFhYrn5FZe7ICGucwwYbHE6aJQVKSCv7ndCXIBFUs6hUZ0ZU9a2tPcmOemT
 WTVdyPhr+e/DT0LtIPnaqlgRaFEepcVsClWO2gD/TNvOoEakEuhUryURlyDJkApbyRme6GolKf4mCG
 pOT6Tf1mgbrGy1+NfTixaf58L0ePsfbhAUBXYotRpddCYUzbSTjLrFNmT1fpVzSfUvb4Bt6QzarYJC
 iiSUZwUappYupYyPDSPVV9jq17rxTtlRmXCEdJEjSBUmjaIt+0D2hPmSoJVwG2vhvSk6I99CJpRkKF
 IGQiqU9unaNRqaO1LK2nUKL9o5OoWDgs8QzyPglItnNxE3AdyMqLysqQENtPq3zEpQJq6QznOFOS5g
 D5bVbSKVNMxItR+mw5dlkJ5V5UuIleFlsoTvFThtHRjdfUQ5pFM5Pogs7PR435ybYQp7/MZwKStj2L
 y23u5rPPoMo2O0aFe0vMVu2TUB37HGnrKMbmKoVXX9l61d7LzZQfDbpfD1Bw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

The MT6357 PMIC contains the same RTC as MT6358 which allows to add
support for it trivially by just complementing the list of compatibles.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/rtc/rtc-mt6397.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 6979d225a78e4..692c00ff544b2 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -332,6 +332,7 @@ static const struct mtk_rtc_data mt6397_rtc_data = {
 
 static const struct of_device_id mt6397_rtc_of_match[] = {
 	{ .compatible = "mediatek,mt6323-rtc", .data = &mt6397_rtc_data },
+	{ .compatible = "mediatek,mt6357-rtc", .data = &mt6358_rtc_data },
 	{ .compatible = "mediatek,mt6358-rtc", .data = &mt6358_rtc_data },
 	{ .compatible = "mediatek,mt6397-rtc", .data = &mt6397_rtc_data },
 	{ }

-- 
2.25.1


