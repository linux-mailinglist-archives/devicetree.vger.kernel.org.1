Return-Path: <devicetree+bounces-222089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD077BA5D72
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:20:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1C4B24E1B2F
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 10:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8D32DE1E6;
	Sat, 27 Sep 2025 10:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eMaV/Y71"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDD62DC76B
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758968399; cv=none; b=mE1Py3GO5TDOHMikzwjl86BYB+jLkBh6SBpDHEzd8akdZw8upnWMKSYaUbzkT4nwecelt4vYevfSvq4g+zXbyMjrYMYhdD+TId3LmLar9EL8vaMDpHk/ElveYgfzXLrlO2P83p2Ud/JsLysUcYSdHgxXQoJGK73tYGgkHmmA4NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758968399; c=relaxed/simple;
	bh=326M5U9OojDe1lhkwFS7orxwbfULH69OkT0S7OD+L1E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WEKynSsY1TQgoI+uq9+RBL6Qz5AlXZCYsLobrN+AnC707aqXxZO1MlQQS/FolP517N4fQ8ux1W+ENwyJC6OhM65sg5FjDi/VdF1vGSeYX7BoCgvLPVW0ngi8vs9L42Sypo0gjD3Wv5L+tiWhQzq57McaiJPLRvXDCUXgG2oRVG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eMaV/Y71; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3ece1102998so2024120f8f.2
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 03:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758968396; x=1759573196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqzVllIT2yt3PFzcaYved+nt+MYV4oPu8rzPsTcO43Y=;
        b=eMaV/Y71Rzj372UWE1RNgkZ5L33Tt3z9CuImbQn3fp51qT6oe5NkIEKvZtdYHRSLYw
         duXVPozQXsx5IcvZ1UTAdkRGW+eZK1nb196rHItcqIYUtMeWf+MtaVyY+Exuq1pJP0JS
         Nf95AWH59j1cq4FYxzNcWzTqm+MbHotOaKyomNT58kEJey25NCU4/DZBegl8TWPKoyXi
         nN3yrOxfrM3EMlnZOdMcYvKQ6btcmFRGg1qfE7UUB5mc46G2q6+hh85NmkthW+qtAZtt
         tApL0v6BN6frzhJZT486TMAABdS4ruPftr+eOv9ykm7Ekm+2tW2fDACNlQhRsp3/OCtG
         /dJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758968396; x=1759573196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yqzVllIT2yt3PFzcaYved+nt+MYV4oPu8rzPsTcO43Y=;
        b=dHbMBgTpDlgDqvEY+zRaNEKgCMyE3g2cUkU88bYHqyoOCVR1OIfj+Z+xVtVUV918tF
         k/yiujF2LnyteT4snPrwx/F4fURvZd/SeuNqMhpgVHMUp/EaT0WA76SXHzQKKqi1inrS
         +7oVimTrshN4jb0eMPglGXNSQH/lbeLTZFSZJFhnPP8hl1f4sWU35vWbVeWDtLG1N+wj
         uwyk+e6VO6xRVGdbgYPYvXOCr15pqhb/j6bZHieGQbtttFg21qUHvEK2XWzUcEhm1sVR
         I+p7KUY204W3macfhieQbNo54sWCXB1D+64C5lun/GQgUvx8lKDlhgycHfZrjdQUUzaO
         0wJA==
X-Forwarded-Encrypted: i=1; AJvYcCXlefD5CyWD4ze6hnSRcq1tW1BnRfgzHctzn63aB6+XoGIY1vVGnmry6X9xIirLtLspDp53HWbo/2px@vger.kernel.org
X-Gm-Message-State: AOJu0YyFmEt96BwwaSPOtahyO0KLXYkuEfynFvlde2GwMd1WmD5PuxUK
	BUoCYqzYNYxMatDQTdmPMRWZa1Ax3lfQIJSSeiJHDcYf3uZy9ciBK+bd
X-Gm-Gg: ASbGnctitVJNQAtJslpLaWArn6iL1gOP8o0olVmCERlicg0Ok969pUfhM/8RRaTTFjf
	jHiBbbLUp4RboT5EOszydvLu42+TOVcmrVztd5scpji2iPBxaduvBuyTUuL6vW4o5SxIu4Kn2RR
	NHP1rrE9tQS+JTR7ESQOPvbtaqAgCklIUaA7voxCiENAcbhsbC1bBbFsGzflSKzNFaluuPa1Z5D
	0UKKaAI81AeilYBnxouXw01GR28jUjAqMX97pAvPChcwsuBAiKRHa21yxul7y5wOSoXw9hMoOxf
	b591nLLOvaq/zPPBGqi3d0Xog0QcoLtXeW71r2W6p8mshlBBFFBaGzX6Jxcf21PII2vfTMNWPdn
	nRk0Jkg20k4o36LvOjTRh4if2H7Li/krlznw7VfSRxlNiH5A=
X-Google-Smtp-Source: AGHT+IFAsWfz2Bl+A4ZnhASqCHsS21AQzzQRIZnk49NpIw2IBtriEVs8A+GhcQx5gH3GaYTnBlylYQ==
X-Received: by 2002:a05:6000:2382:b0:3e7:4893:f9be with SMTP id ffacd0b85a97d-40e42502eacmr8947239f8f.12.1758968395884;
        Sat, 27 Sep 2025 03:19:55 -0700 (PDT)
Received: from builder.. ([2001:9e8:f11a:4416:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e32c31df7sm53416435e9.4.2025.09.27.03.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 03:19:55 -0700 (PDT)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Stockhausen <markus.stockhausen@gmx.de>,
	Sven Eckelmann <sven@narfation.org>,
	Harshal Gohel <hg@simonwunderlich.de>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v8 5/9] i2c: rtl9300: do not set read mode on every transfer
Date: Sat, 27 Sep 2025 10:19:27 +0000
Message-ID: <20250927101931.71575-6-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250927101931.71575-1-jelonek.jonas@gmail.com>
References: <20250927101931.71575-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the operation to set the read mode from config_xfer to probe.

The I2C controller of RTL9300 and RTL9310 support a legacy message mode
for READs with 'Read Address Data' instead of the standard format 'Write
Address ; Read Data'. There is no way to pass that via smbus_xfer, thus
there is no point in supported this in the driver and moreover no point
in setting this on every transaction. Setting this once in the probe
call is sufficient.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
Tested-by: Sven Eckelmann <sven@narfation.org>
Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Tested-by: Chris Packham <chris.packham@alliedtelesis.co.nz> # On RTL9302C based board
Tested-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 drivers/i2c/busses/i2c-rtl9300.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rtl9300.c b/drivers/i2c/busses/i2c-rtl9300.c
index 4177cfb77094..9e3517b09b3d 100644
--- a/drivers/i2c/busses/i2c-rtl9300.c
+++ b/drivers/i2c/busses/i2c-rtl9300.c
@@ -130,11 +130,7 @@ static int rtl9300_i2c_config_xfer(struct rtl9300_i2c *i2c, struct rtl9300_i2c_c
 	if (ret)
 		return ret;
 
-	ret = regmap_field_write(i2c->fields[F_DATA_WIDTH], (len - 1) & 0xf);
-	if (ret)
-		return ret;
-
-	return regmap_field_write(i2c->fields[F_RD_MODE], 0);
+	return regmap_field_write(i2c->fields[F_DATA_WIDTH], (len - 1) & 0xf);
 }
 
 static int rtl9300_i2c_read(struct rtl9300_i2c *i2c, u8 *buf, int len)
@@ -455,6 +451,11 @@ static int rtl9300_i2c_probe(struct platform_device *pdev)
 	}
 	i2c->sda_num = 0xff;
 
+	/* only use standard read format */
+	ret = regmap_field_write(i2c->fields[F_RD_MODE], 0);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.48.1


