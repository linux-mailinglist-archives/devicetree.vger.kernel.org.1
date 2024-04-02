Return-Path: <devicetree+bounces-55402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8177E89513E
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 13:01:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2AA01C2338F
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 11:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122C06026A;
	Tue,  2 Apr 2024 10:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b="Q+CWbW5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0BE79B84
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 10:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712055594; cv=none; b=huIYGUDEGtYgscRjLQ6k4ldazOFjrPAdKurgqx5kamIcFzT0BdSwq73o8qnwyKD73jGV2Xa/mfPXWmGVBIbNN0wkTYlsNT1Hb73AMf88wunH3pEX+oByg5M4jWeQ9q3fIvlCfKaodMs3cS7Xdy4nbytxha3Dlp2z761pTZsmAE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712055594; c=relaxed/simple;
	bh=l1cPwYzGO2B7LjOodxDrogv8WrNh3h0xyRSrepwr/W8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GSn32E0qQ+Zwkf08LSzxuMf5WN5E+GJ0GF7uFchEZQ4WCUVKpsiloh6fiHZ2deKtRE8bDDYsQNktKuOc6nwqIxpdBcv4Vji8j2oHUNNm4d1kivWogkYCvE+8pnfvBKzKj8bPfNyNYJIS93OYA5yNv7OglmpyX0yR1+Uv1VK5p/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro; spf=pass smtp.mailfrom=shruggie.ro; dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b=Q+CWbW5S; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shruggie.ro
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a4e60a64abcso302573366b.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 03:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20230601.gappssmtp.com; s=20230601; t=1712055590; x=1712660390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/xHYPXNx2h46gZYDFc9h0qpHaxqChYbQzhX9Mgt5D3Y=;
        b=Q+CWbW5SqaS7Ge9+y2Y4sI50VcO7HCtfjR8mXZAE0zA6MgzvzZFtIdbTJFACSt0KL5
         pymRpSWftZgux+WymEFYLuMEKJ0gvKB0ThinPpUCWUZbn9lzZnOaSSnhfh6zMR5Ri9qR
         t6quktat6Q05F2x7s+olNl+Sj/+27UABwOWOOXPRcwCH8EWheSiOhhmDsi3QL2T+PhIK
         /JxdecSuwLan1O4axbQ6exE6tAw2O3r9lrV/VE3/7SZdjoKXuGQO9+FdH8eJaLr+2aaG
         aTZmzGw3gyr+RUJs9JwoWOTrKr3/KdcS7t/eaaytukrORlxGeyoDGZ97Cdx9DC8fqGhA
         wdzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712055590; x=1712660390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/xHYPXNx2h46gZYDFc9h0qpHaxqChYbQzhX9Mgt5D3Y=;
        b=S3z/fxyPz75dxLnxPG3EgGND/8fHZoA3mECDyrh1Mxn8u9jpYjAPdRlLYW0/a3MLwG
         KPii6ItTiKzidsLlJhhrHZg57/3/3B3XkBADJDqDIO1wPX4aFjpWPxllAb5g17vYaKWN
         GDqbSjy9bbWRqPZwhRrvoThvU4BXkpuu1RHfZXHm80tar/NcBJYYGIeQRbvRlXqUHNyb
         coBvJHs7pLEcpuGO7ZjO8/FXGdhAMRM1rI2nhVBoKGC8KYIRMtvr6p4qTX0SWZm+Qga1
         MbpPU2Nkl+Do9m776rmEAvvHFuRvKE9Us9dJQZR9sIX/79kI9Uwped8DQKmFAaHS2deq
         RntQ==
X-Forwarded-Encrypted: i=1; AJvYcCWs2SQqLHKUfZ7qlJV4jmeBDnsSkxK9yTglmTo5Yra4XsEzsV7boHPsDlxP7evCd/m5VdLk47I5n3o5l/0JXj6Ct/6fTiqmWzhsTA==
X-Gm-Message-State: AOJu0YyAbWVteI4YQIbtJfwMmu1kmgHlfEfKfPPNGOZ2UTcqMatax6yw
	NroQKQXxWpSc8SM607CKzI/RHhB+yKKyLH8UymnC1hDYzyQksiOAXCifmFzIt/A=
X-Google-Smtp-Source: AGHT+IGa+NA1FgnIiV2VfDXy9ye9++b9ByVqAg4FCZ08kg46GwnDhf8HaPy5NcbTWJ6S0TKVE0o+nA==
X-Received: by 2002:a17:907:3f20:b0:a4e:4981:d3fb with SMTP id hq32-20020a1709073f2000b00a4e4981d3fbmr8787279ejc.29.1712055589421;
        Tue, 02 Apr 2024 03:59:49 -0700 (PDT)
Received: from localhost.localdomain ([188.27.131.149])
        by smtp.gmail.com with ESMTPSA id a17-20020a170906275100b00a4644397aa9sm6398780ejd.67.2024.04.02.03.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 03:59:49 -0700 (PDT)
From: Alexandru Ardelean <alex@shruggie.ro>
To: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: adrien.grassein@gmail.com,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stefan.eichenberger@toradex.com,
	francesco.dolcini@toradex.com,
	marius.muresan@mxt.ro,
	irina.muresan@mxt.ro,
	Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH 1/2] drm/bridge: lt8912b: add support for P/N pin swap
Date: Tue,  2 Apr 2024 13:59:24 +0300
Message-ID: <20240402105925.905144-1-alex@shruggie.ro>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On some HW designs, it's easier for the layout if the P/N pins are swapped.
In those cases, we need to adjust (for this) by configuring the MIPI analog
registers differently. Specifically, register 0x3e needs to be 0xf6
(instead of 0xd6).

This change adds a 'lontium,pn-swap' device-tree property to configure the
MIPI analog registers for P/N swap.

Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---
 drivers/gpu/drm/bridge/lontium-lt8912b.c | 25 +++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/lontium-lt8912b.c b/drivers/gpu/drm/bridge/lontium-lt8912b.c
index 4b2ae27f0a57f..154126bb922b4 100644
--- a/drivers/gpu/drm/bridge/lontium-lt8912b.c
+++ b/drivers/gpu/drm/bridge/lontium-lt8912b.c
@@ -47,6 +47,7 @@ struct lt8912 {
 
 	u8 data_lanes;
 	bool is_power_on;
+	bool do_pn_swap;
 };
 
 static int lt8912_write_init_config(struct lt8912 *lt)
@@ -78,15 +79,31 @@ static int lt8912_write_init_config(struct lt8912 *lt)
 		{0x55, 0x44},
 		{0x57, 0x01},
 		{0x5a, 0x02},
-
-		/*MIPI Analog*/
+	};
+	const struct reg_sequence mipi_analog_seq[] = {
 		{0x3e, 0xd6},
 		{0x3f, 0xd4},
 		{0x41, 0x3c},
 		{0xB2, 0x00},
 	};
+	const struct reg_sequence mipi_analog_pn_swap_seq[] = {
+		{0x3e, 0xf6},
+		{0x3f, 0xd4},
+		{0x41, 0x3c},
+		{0xB2, 0x00},
+	};
+	int ret;
 
-	return regmap_multi_reg_write(lt->regmap[I2C_MAIN], seq, ARRAY_SIZE(seq));
+	ret = regmap_multi_reg_write(lt->regmap[I2C_MAIN], seq, ARRAY_SIZE(seq));
+	if (ret < 0)
+		return ret;
+
+	if (!lt->do_pn_swap)
+		return regmap_multi_reg_write(lt->regmap[I2C_MAIN], mipi_analog_seq,
+					      ARRAY_SIZE(mipi_analog_seq));
+
+	return regmap_multi_reg_write(lt->regmap[I2C_MAIN], mipi_analog_pn_swap_seq,
+				      ARRAY_SIZE(mipi_analog_pn_swap_seq));
 }
 
 static int lt8912_write_mipi_basic_config(struct lt8912 *lt)
@@ -702,6 +719,8 @@ static int lt8912_parse_dt(struct lt8912 *lt)
 	}
 	lt->gp_reset = gp_reset;
 
+	lt->do_pn_swap = device_property_read_bool(dev, "lontium,pn-swap");
+
 	data_lanes = drm_of_get_data_lanes_count_ep(dev->of_node, 0, -1, 1, 4);
 	if (data_lanes < 0) {
 		dev_err(lt->dev, "%s: Bad data-lanes property\n", __func__);
-- 
2.44.0


