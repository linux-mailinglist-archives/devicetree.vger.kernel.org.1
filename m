Return-Path: <devicetree+bounces-215483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DEAB518BF
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:04:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3A7554E36CB
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5CAE2D1911;
	Wed, 10 Sep 2025 14:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GWuVcwdf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C17C322DCC
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513014; cv=none; b=We6C5lOAqXkJCeGm6OlUkGZnnw844bHY+aiuvgIukLpHvFQ3wx4oHIk5w/PkFtduxbZQKTqbnhV62e7mQvKfVmecaXjXeWt4mcfFcdY3O4hk5eYRyrKEyV5m7tu1DIvSL9QbqSYZSMkxXg6cRWnIZtBNonEuFTY9lsrrtYyhm0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513014; c=relaxed/simple;
	bh=ZAVAGITvUw55XhUkxrz8oUWZkXF27JoqfN9DE8oUYOw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A1byUlXqM5zvcWg0cZ6ofPFlomuHhhtQxb2dx2GczBr9Vglep6hrPrTHBQlWnTh6dQfsG/u/i12ybOhvw/AKgxtg+toAuDsQxBzKrYuzaprmSMwAuog/XOaoTMV5Xm6jD56ZfLSu3U4xBSRTOcRZcl9JKfXkhjSp+41z9frmg8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GWuVcwdf; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45dcfecdc0fso60270425e9.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513011; x=1758117811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAGLW0vGkRdepqvJWWr00In33Dyb9aFFqzfsMejvGVw=;
        b=GWuVcwdf2tn93Ctt+wzjh2pKjKzjJrQ6cI9e3kS9NuUyKC8IdVYaBLa1IRu1cuEuBm
         0I7NCa2AQx224OjUq/vvXhDzmm2aEjCs4uhUyCjvPbJ2yGHQvVLtpX5NI18rjHEBWI8S
         z1dC+ojbAYmV5vhfdJP6dejBLU7GzQ0bImWreSd6RUdZZwEQfJjzkIxx5P79JJQL05ar
         do9TYQekoRB654G8AmgLECgozbh0oWpsMn2OnRW09Jzfw4yfPsatoJJE/wK1rW53K10W
         /K6uhWBZ4L2VVz2ckkXNxaZy1JuaoRf4VaY10bkfJ2J7evE/IWs6p9J1vI8OZTLeQDEk
         wH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513011; x=1758117811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jAGLW0vGkRdepqvJWWr00In33Dyb9aFFqzfsMejvGVw=;
        b=MUXYlQLQ2lcaMZcBOW35v57Qv7Ev8YjlLT9OBP+Z/X3pwX2xZ4GQ+k5uYBiPXZ7Rc9
         LEfui/huhjw/SkF65iXYEqJ9TxQzlWHBTI4GXm8Copdhre6k2pSaSFGHDaTyDuU9+PgV
         CRQXCMuKvq2v4PilOBxJ9fEC/y3vIt3zig7dND1K/ZjEsmS9qdJUcuTUshmp6Lv1VvNe
         sdKzLaHSE78Mz0MjZhpx4lqPLougnoPYAyBwM0vDUAKmHTOgd9RBhR+KKJ0tPZeRm0PQ
         GF1/xgtDcDjGnGV/01EIZn6kFqJcfNfgltXIo0rzpmxSTsMSJnQiLRxSr9P3WpJiAJx9
         bYEg==
X-Forwarded-Encrypted: i=1; AJvYcCWY0LsQTo2bojIRt+A5SNOtneuQ8qPYBfAgTDui0ndf14MGcVaWNNuLmTRDVNddkSqJCbz/sT2sbBPU@vger.kernel.org
X-Gm-Message-State: AOJu0YzfCp5fRrQdFpPDRzeuRAevP5I+E9VENFMfJjBJtA23y4+e+Loz
	gfY4D9iKnjULrXdnzZt3d+K02YK9C1TIZoNBs6Ocv6cVDaVsh61GntCDe3KUI29jtrM=
X-Gm-Gg: ASbGncuXDWILnjlX8o9ojowKx4mYR/za6OFGeiIM74LuZjrO9Hrw5xoBl4WJtTA/RBm
	JTQMdskGE+8JnA8g9jEMua0Oorkq3v+dWsaPeyBvkc+cVUkYd1SMjL1OSb7zU2flidueo2XbQOE
	nCO3/WnB8waEQp3GNyQH875w5YGyZhxlpJwgg/Wc+eqOpXGZfN1bS6W86l2RFGoufBa4ZlIPHSV
	eEitYPhNEW0RO3n/WdqjfbEvnR3WoENayC/U5PUw6YMhT9whBLO7wEBxlcdyfn+Q4mtAlWvzsB1
	VDKw2YAqIvb5YF2VZlNhEH01w0ZA6NlQZZQbwOI2Y4NMDu3FGwt3qKzvniZHhcTun3MQtQNaZU8
	l7V+ZxKNCDvZyGXPRBFrrLPYJXsVZVLN81d3UaEGKmF/hzT1s0Ja7ZEMRV73W6YQF3a3XkG7DmA
	==
X-Google-Smtp-Source: AGHT+IEowrawYHNa29PlMo3qPWXJ3OP72+rWfZLK8gTMTF1VH5JFTzYqdz15w3e8YqJzXojdc6C1CA==
X-Received: by 2002:a05:600c:1d16:b0:453:2066:4a26 with SMTP id 5b1f17b1804b1-45dddec9927mr191640485e9.16.1757513010776;
        Wed, 10 Sep 2025 07:03:30 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:30 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v6 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Wed, 10 Sep 2025 17:03:03 +0300
Message-ID: <20250910140305.541961-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new

 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index c58bf19993c1..a7fbf5c50940 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -108,6 +108,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


