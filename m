Return-Path: <devicetree+bounces-250564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 37455CEA094
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 16:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D454D304B052
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7365531A06C;
	Tue, 30 Dec 2025 15:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DxO24ORH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94201318156
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 15:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767107342; cv=none; b=g57cNKKZ24SOs5Y+xn4/ywuBJx4skqRgxmClEt1Ak0a1ru6X8Hl4acO9Z8dI7BNbBWZKPoSGy685287xmJvDJtUtwQf3c6rFK/Zlaob04J/3XDnrLTLf5NqKiyWQeWIq+7igT5Y3pfMws9Qt7ggZI786D6aabTB3RVrCFuk8fVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767107342; c=relaxed/simple;
	bh=FJfkRSPlH5B++1U1zhMTRNFqmbjHdSkWFGe9jzml3js=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WY3vUeuSmcO8b8Ox2ForWAmXF59O94o3/kO3EUBNrgVjC3XF3znjIEkWbzkzWfxmX7QgbMYzGVyk82/DxJAfUBQgrJEMHODbLNHZko6ikh0mB4qF4gBP17KgpKRVSw9TRFwBE/DEMo+LMsL11EnjjHmA03ZVWnxhlxOeKB+bdCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DxO24ORH; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a0c20ee83dso127912595ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767107339; x=1767712139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PemJfqgrS11N0rN844byXVfn84NqGSNQTH1UI9V6ZpY=;
        b=DxO24ORHy4ag75koE7bTEhHwy7IQWeaGglhUCUd3CdcfWZFx17cTmLYX91/sxv6DAZ
         VlNfx8Dg3yqrYAIbt0jKq1NWIESrvTSJiRn53GiOLnWB+f+9EHO2VF0AjoFeEei8kV5z
         PkuCl4k/BjfcSVkFpHImfmqLGuZ+PnDHnWXnnbsbzmTOJdtAsvaZuYN/gVqrUbLHNvZ4
         1XcpFeLMM/CyacuqBy/K2qJGu7kerpql/gNSlDBkXUn3KhDO/EFSEsAQHIeHN5SAt5lU
         Deha05Z09EO738rZLAv5BkF2h/AMYxyHzKREY2DA+mbwbPIH57KIspmxxzdydxz6Fi5h
         kNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767107339; x=1767712139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PemJfqgrS11N0rN844byXVfn84NqGSNQTH1UI9V6ZpY=;
        b=n9X+nttrpNxwDBd5+NycUAJB6oaBMataSsh9Z/MzvYr8oKIsvsZy7XB4n+MFn2aiXC
         tITevXmpLFEPpciMUoYycPKkhDydMXDVZIG609GozKhpgkCL5Vplcn9CccdASvrB1Zxy
         ShgZvd1+J29LEfPCW+jbQaQDNITUm5V7dOcWvi4Jh9MqW9Ne691HvTIXvBJz9Aa7utcm
         fuPAvhh1E0OgEpcsJtTkcAzSf99L/Og0AieFh+m2H/CjbBgEBoBJWtXFxBzXBq8gvxva
         oGluhlvhbtmmM1ckwgyNmZzs6SP36OelryljMK19u+7bXM6a03hc8aZTuuPzr6WP2WLR
         bFOw==
X-Forwarded-Encrypted: i=1; AJvYcCV1jqVWNMhJUk5+wVLnLPPRrLNnefAJoWrqVEJUSjesDHRWTbE6fAcgT7tgAXWlBm/2LahYyxLVDbl1@vger.kernel.org
X-Gm-Message-State: AOJu0YwiPjsurSWuK61eA0+H1w6/zgUNlq7hQqZ2zBLlmMTYtAuVoqCE
	lBYM8phGiHr4TG5wp1iv6mSbeac0WI7tt4DibR0Rim7dcBxmYQZTRDEf
X-Gm-Gg: AY/fxX4h/sfXg3QoQ4Whcpwo4NCVpXRYie9gm7Y2wLi/eCFFn4p3AcUk18Qt4hmSQ6b
	0Y3Rq1JbgmX+PyP1gRl0+mVEccrKj/1KcVDM7ElvwjST+BRHO3X0h6KiE+IRb4ER7sz9OQid87b
	8cLnFfvr+g1KV/lhr4Qzu9jloUOZxkkb03S479HuqvhbXG5IdL9DCA3KqxSgEM+G4UEY4Xnvr8S
	w1vrJNHF3gE2IAabFdCKiAiIkUsYTlJD2eWr8YCpwUxEXttBkgX3IxfxboLf+nKZR3JmxtTRFR+
	JhssT8qFrSICTl8MVbG7d37JhfvvEEa4YWmWfXfJo+7geBAKSWwd8XkfnmVvg4lIewttMDUO9ze
	Q+i6LgpYlQEU1tkvHx54ZXYOsqgR9lxlAcNMG0XC1E1CkdCQgh2HWlBKqcFNJ2wu4IgD17NXwTc
	wv1xVt
X-Google-Smtp-Source: AGHT+IFOqjFWFdi8qdqJlYdi2yUC/4zRYrjnSmKV+0M3gGTfJ9R/5gjkPTHwfTLiXvQhvLLg5PgOkg==
X-Received: by 2002:a17:903:3d05:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a2f2a507bfmr327890665ad.44.1767107338428;
        Tue, 30 Dec 2025 07:08:58 -0800 (PST)
Received: from localhost ([211.94.234.112])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c82bc9sm305130385ad.36.2025.12.30.07.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 07:08:58 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
To: jyc0019@gmail.com
Cc: alex@ghiti.fr,
	andi.shyti@kernel.org,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	guodong@riscstar.com,
	krzk+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	p.zabel@pengutronix.de,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	spacemit@lists.linux.dev,
	troy.mitchell@linux.spacemit.com,
	troymitchell988@gmail.com
Subject: [PATCH 2/3] i2c: k1: add reset support
Date: Tue, 30 Dec 2025 23:06:52 +0800
Message-Id: <20251230150653.42097-2-jyc0019@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251230150653.42097-1-jyc0019@gmail.com>
References: <20251230-i2c-reset-v3-0-7500eb93b06e@gmail.com>
 <20251230150653.42097-1-jyc0019@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The K1 I2C controller provides a reset line that needs to be deasserted
before the controller can be accessed.

Add reset support to the driver to ensure the controller starts in the
required state.

Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
---
 drivers/i2c/busses/i2c-k1.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-k1.c b/drivers/i2c/busses/i2c-k1.c
index d42c03ef5db5..23661c7ddb67 100644
--- a/drivers/i2c/busses/i2c-k1.c
+++ b/drivers/i2c/busses/i2c-k1.c
@@ -10,6 +10,7 @@
  #include <linux/module.h>
  #include <linux/of_address.h>
  #include <linux/platform_device.h>
+ #include <linux/reset.h>
 
 /* spacemit i2c registers */
 #define SPACEMIT_ICR		 0x0		/* Control register */
@@ -534,6 +535,7 @@ static int spacemit_i2c_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *of_node = pdev->dev.of_node;
 	struct spacemit_i2c_dev *i2c;
+	struct reset_control *rst;
 	int ret;
 
 	i2c = devm_kzalloc(dev, sizeof(*i2c), GFP_KERNEL);
@@ -578,6 +580,11 @@ static int spacemit_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(clk))
 		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock");
 
+	rst = devm_reset_control_get_optional_exclusive_deasserted(dev, NULL);
+	if (IS_ERR(rst))
+		return dev_err_probe(dev, PTR_ERR(rst),
+				     "failed to acquire deasserted reset\n");
+
 	spacemit_i2c_reset(i2c);
 
 	i2c_set_adapdata(&i2c->adapt, i2c);
-- 
2.25.1


