Return-Path: <devicetree+bounces-137466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66785A09208
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:31:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F6913A9C82
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B731620E718;
	Fri, 10 Jan 2025 13:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="woF3JD9B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F59E20E6E5
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736515887; cv=none; b=DkAHmNY+qC4iClqvlSm3tzuwIyjP+Wnq02IOsQvdvZNR48nR4DC2yGiinTcMtgE57MwioWalqvJUmsaBfcCP4e9cIh7zKfJh9n1t2NQzK3geyLItzosGNgsh8lsHWX4+Q6lGHw4Bg6RP/TGapNFn0839PzqXCRBBzmm4BH17VAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736515887; c=relaxed/simple;
	bh=Yn0yDiaGCUYQbX+kBDNWi7Wqy2+4x3TU5RubErw6Doo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mGnaDlAWxn7osYpEI4IDF9I8pAj7vCIIj9o7y0NFC3G4sGCnG0Jqt4yOwRYnAi8+7GQrpmZS6ORMyc7cFUohbQ4HzxCa3FZMaoqbo+jljLO5aNX+yjw9bOTIWDpHTxGZpoPpf7CX2Ly4xATPTrjwPHtc6T8N4ps1QAE9L1RxaXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=woF3JD9B; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso22157575e9.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736515884; x=1737120684; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fy/DbTIkkOlFt9RUb5dJSds3N2C+4xTIp3gr3Wl8Gls=;
        b=woF3JD9BL0ijLFM9malxzPbZGAeVnMbe0y1xJWLBk2iNfGOFgw5pzkHz8X5wvh71j8
         alHrzg0SiPZCEqifteOaIxZrfM+k9Fjeo9c7RDmg7qm74Jz94tYFwX3Mnw1igY+oEivV
         7uBA3LULyXhYJNrW5SkPSyaoL4hAKTwsJTjIbVr3nfpA14ZTwSwKn1COuuGx/g7mOW12
         YOj+EwfsL4MsPuYdARtohFTzzRHltLvjO7UZJYF2EIZp8z/axwmXBxSU/aOU94LO6FxC
         d6P7v1L1xMP6wCQ2BdKQV3ci7dppDS9wQIHfekM0v8yG92h0Ykr1hG8Qt4rX1+CL8pVS
         WZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736515884; x=1737120684;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fy/DbTIkkOlFt9RUb5dJSds3N2C+4xTIp3gr3Wl8Gls=;
        b=XOl5jHl7FqOMouetGFVh8RVGIOG6OPtgA+cEows30rLYTVFpcTbnxnKSwUMl2YtUge
         fKvPcEQqGhz9IVnk3oK/S2PvufAcnX1bDdjaRa3h4rSBNPPFljYp7FwMbljIy/0pC1Vx
         7cTviow+OAVR/GKkGQO0MK2GzMB4THvdxyjghsEyGLLRQ4x4wD939bMGmH5YTV/uvJb+
         BfE0onD69vYYh1rhYEQsAqyHR9qEQK9W32ZMVKNL18xDZB6Ht6V6fl9d8k9BZ0tP5Jdw
         ClnKpCwhKhlodSWMBf0OBJvHtNBVJPxIrSbhhkDMtWsGfdGAo3zYuNr+9a9O1vnfUzRf
         QUJA==
X-Forwarded-Encrypted: i=1; AJvYcCUABr2Q5BsfY+/OUf840iL/fQS13gdLfUwuxHLGpswkvR4lDyIT4rwfVhFb+U8Ob6kWDG702+SRFGKN@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ+74ylZEtrtXbEl52FmY52ghoyBbzPLf3wMZOHk9y2Y3qIA9Z
	U5caTH5dv/6UXcXi+4DSS+tXildVdqJe+4H3zRAqohs5Vvxbt/srJMqRzffzwrM=
X-Gm-Gg: ASbGncuuHGro9xvAowQU5L8Y6w+IIOQPTgkjKsTWN/TV5HoW4Cfru/ZehTuEyQb9+VQ
	dCRQZMRZatLKk61NdszmdlIvbP5AkwO87gXOfwTpX3UfEgrrU/LwWrpUpuVQO4lxBro812Qufjs
	DEJMz85ogTXnf0UPbd9lWuCVy3/zyC+zgGMpNGysGFjpCEkYVODGW/YYKkxI8Th6zgTlnJQ7OnR
	wgHBbTC+1fMcNk6lj4mYVaaDuhRX2Pk31LaUaDMksPSW8ct0tFNXZOE/HMX
X-Google-Smtp-Source: AGHT+IHKxpgNUmOUdkrc6PQxJw1G0Fu/KYCSSNNFr/GjW9WVuFsnr7/fR3quCBLX5bmiMLZjyBIZ4Q==
X-Received: by 2002:a5d:6c6e:0:b0:388:c61d:43e0 with SMTP id ffacd0b85a97d-38a8733b9e8mr10763857f8f.48.1736515883672;
        Fri, 10 Jan 2025 05:31:23 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e38c990sm4598193f8f.56.2025.01.10.05.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:31:23 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 10 Jan 2025 14:31:12 +0100
Subject: [PATCH v7 2/6] drm/mediatek: dsi: Improves the DSI lane setup
 robustness
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v7-2-6703f3e26831@baylibre.com>
References: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
In-Reply-To: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1234; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Yn0yDiaGCUYQbX+kBDNWi7Wqy2+4x3TU5RubErw6Doo=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBngSEn2Qf8+H9Mmsv7OXpjVxiPUD7Yjb1fkvT0Ur9q
 aV5CbwSJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ4EhJwAKCRArRkmdfjHURTGKD/
 9Ty+ydloEEvoD/Kmij1B/CcQVBe6jSd5+V7KY6pP8cX3F8EGZ5DuX1JRDTw7n6qr0v8t5hMj3vnD4y
 3kcOdro29k0f3zDbIKnPaldi4Xooy7mth7N+AIF1rG5vrhs5ZwSXy274aJnNwjbi7F79VQtY/ED8BK
 JMCyF9De60OQ05V2aA48pVLy+YKkoTMB1fGsR6iAmSINWJN1X92qBuivVZpp0sWhjFdllJnA8EGdOB
 zeRPjNyx0Jn5zrNjYnHseUpuZ8JbV9nWc1zccvD4gVGxDasxqANpeJ6v7srfMCEwDX2lMGQNFqD+V0
 ZVV5PnpcIMWPEmo8Fck7WktUnlvHLppVhOl9ZRJ7J5kRzjvt2n/EvBzUojg2t79aKfTJYm5GDHc9lY
 dWUW6TSq8QSfjkim0hcDojluxIR6FFUsBBYOzXqvptNZr4r6+P2ebaPBNEZBW3T59Z7+AezTXsmLl2
 e3HorWswN5WkZpMRCxFb9n2o9eYtwQs5vTRsS/8hVwnwSpM6d19kGVflYfRjoD9dsS3mhncHZzuDXm
 aSQEe+FxnEU0BZDAdK9ISk1MmLJHWsiJt6V9Ugiv0vEh54yST3DsiO+1pgpS4KQ+yI92tRmf929/4y
 8Ylibc+sqUSryOVik5cnV84QM5Y3QZ9+THVZUDG1vFs6e5bdZDV80jGHCO8Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Currently, mtk_dsi_lane_ready (which setup the DSI lane) is triggered
before mtk_dsi_poweron. lanes_ready flag toggle to true during
mtk_dsi_lane_ready function, and the DSI module is set up during
mtk_dsi_poweron.

Later, during panel driver init, mtk_dsi_lane_ready is triggered but does
nothing because lanes are considered ready. Unfortunately, when the panel
driver try to communicate, the DSI returns a timeout.

The solution found here is to put lanes_ready flag to false after the DSI
module setup into mtk_dsi_poweron to init the DSI lanes after the power /
setup of the DSI module.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index e61b9bc68e9a..dcf0d93881b5 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -724,6 +724,8 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	mtk_dsi_config_vdo_timing(dsi);
 	mtk_dsi_set_interrupt_enable(dsi);
 
+	dsi->lanes_ready = false;
+
 	return 0;
 err_disable_engine_clk:
 	clk_disable_unprepare(dsi->engine_clk);

-- 
2.25.1


