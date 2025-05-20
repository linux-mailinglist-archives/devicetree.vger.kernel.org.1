Return-Path: <devicetree+bounces-178942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C27ABE1FA
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:44:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47DBA3B9A8B
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 17:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F95280CC8;
	Tue, 20 May 2025 17:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b="dyCJvgSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162E6280019
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 17:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747763028; cv=none; b=P+gZAGUQTyW38lPf7Dz9+Qn6DOLyE3WGsuxoyMNMZIb9LX9cQzKjZyBZwCVbX6Ec2VB7wJzOQNL0r4XNaCeOTlgNLeWbOugzQI4KDPa/XWYAlNj9xLsqCxaXUkFu5P79thcRGbg1cw4AsojKV2UP2jKnOMWiUK6X9w7oQhU5X/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747763028; c=relaxed/simple;
	bh=sl+FbGCFgUh0cLIIGBUbbIXxFtqMeN2ESuE9qcu6VlQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zw2pyHMrZXk/pMp1GzPiUJRiyZ8VvbnTisQDSliow3uBHl4SvqbmRR9qCajAitDMdylU6yF6GMuvXslNwelEvt285PJuWhfa49vZ54XdUfZIGUPTHvf5w7ZR2UaiEC3Qu8kFneTAj+gYUp9VYf6D2gG4+twA5H5BxB2Ro0gk894=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com; spf=pass smtp.mailfrom=criticallink.com; dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b=dyCJvgSO; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=criticallink.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c5e2fe5f17so612525985a.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 10:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1747763025; x=1748367825; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=//GTCbOPuXsQxIKhsrLq0DkXd+60Fx6SU5NzAGZER7U=;
        b=dyCJvgSOvNabDeVSA/cpiUrziq6h5fESIZFVI2oTEdcXeVEfASXEozlR/I5bTkKxBS
         uqIYuYsPBYSrNKlaGEm2PpITItY6PJduKTaTYsq/ONXPJxf9gz7fAqhYoQkVi0+TAI6R
         eGC5g0u+Z0DLHwUOezotwVa5smbFI3Q2JPMh3SJ2zu8mb9HOQ3l0mOOudDV9/BQX0JXh
         kcfR/8R9PNLmVIo1ieNVvjnMFI+vEBfAZkM+dWIC5v/1wUdAHSCMrpL292mRH8AfNkfj
         81GAsYImcI2+jejRXe9NEeApCan5xq8TPy8uMEjuRev7eQzN0kMViX2H2MQaO40PXyKh
         u60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747763025; x=1748367825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=//GTCbOPuXsQxIKhsrLq0DkXd+60Fx6SU5NzAGZER7U=;
        b=EBNcS56bHD/evtDjbxkFfbiDrgnAyG3G6BNxhz2fpjSMGBXICgqagaG6ERAPNNjMDO
         AbKH4BLOIGDkyWQ7mpqP9MF7LgZWIyzlwBbiox5xg7lwUXMU4D1RfpUGsaxcupEMOS9O
         qFovaUTrYthfmhvu0PKfxAvP8B2u13S5Nn/lpBrX0nloooNDaFFyQ7wPuIZj7WxX+pbj
         9ayvvNl5cxz59tmTgYlhjSxlSh1bGOF+3ugyUMobntEOt0jCdZQC8dFiea97m03sUkNn
         lnrrbmIH7SrmoLnO5S9DZVI1t4p8vsyE1X2dXv0X1lLNBl5j6wgO1b8Y7HDJDpNSFGZ5
         ZFHQ==
X-Gm-Message-State: AOJu0Yz/HVVoLZYTv1EWz61mhSM3zWMNTBnNccaBLfJ7rjyPSiPt80+7
	Ul/aFwsmITcRn1ox/ynDcsviteM0Zp6iSKrRJun8asQEqJjxzIXXLEjzo9tVX8DvZwKt85aLS+m
	Q0dSIVw==
X-Gm-Gg: ASbGncvaDHWLAdtEvFLx8ZOcSyuOE5SOTHDnIZNuwna6XcYBdg4U3J3YsVI7y3c3nHL
	sl1JemV1/jGw98D8tXp0nxgmb4quhbRGFDgata+Kv8AmeMbqTM8PZUVKuNerl6cMy2d2B50Sizu
	nwFgarQJe7A9iDVWy81cXoP/SVO9tRAcc2JpLAB9HIEgcGcwDItLR/OKbJM3rnOAImi6Eb7ZK0m
	3+MgBfn6gyMiEuEe8duftL8FiHrU0MROFUbifzUY5MT6VxwKfTOkdeCY//rqATdnDzI3/QAKaRO
	4K/WadREQyPKJHYPC2vBDYWhbwjDhCzYHx/BKAAW4obPRfubwufvTwO77Fjuodbx4/rSADLCXMx
	V8Enuj0wwko1lPp3+MAuCqCDwKQ==
X-Google-Smtp-Source: AGHT+IE36N4uKMHVtNBPowo41ka8uj65GwK1GS5fqiXZBuL6KOO85LIE4flCa2HGG7jSc88SE3U9hA==
X-Received: by 2002:a05:620a:459f:b0:7ca:f349:4265 with SMTP id af79cd13be357-7cd4670aa2emr2553493585a.4.1747763024810;
        Tue, 20 May 2025 10:43:44 -0700 (PDT)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-494ae528553sm72660101cf.68.2025.05.20.10.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 10:43:44 -0700 (PDT)
From: Job Sava <jsava@criticallink.com>
Date: Tue, 20 May 2025 13:43:38 -0400
Subject: [PATCH 3/3] mfd: tps6594: Adds support for powering off the PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250520-linux-stable-tps6594-pwrbutton-v1-3-0cc5c6e0415c@criticallink.com>
References: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
In-Reply-To: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julien Panis <jpanis@baylibre.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, jcormier@criticallink.com, 
 Job Sava <jsava@criticallink.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747763020; l=2125;
 i=jsava@criticallink.com; s=20250404; h=from:subject:message-id;
 bh=sl+FbGCFgUh0cLIIGBUbbIXxFtqMeN2ESuE9qcu6VlQ=;
 b=t9jR0ycbMi8aS67LKhkQypLvnJEh1eq1pSrZmuqhqR5yEv0sWC7On47ka8pQvbhOZbIfdEHhv
 i8mimht0nRfCFTDPiYI9/CSsHw8SJwGMPoMoLRk6RWyTZ95uOeiLpIP
X-Developer-Key: i=jsava@criticallink.com; a=ed25519;
 pk=DPPriJ+pziqtCZ0EIomf/hKU23s5T1u4WOQaT8BpQSw=

When the FSM_I2C_TRIGGER register's bit 0 is set it triggers TRIGGER_I2C_0
and the PMIC is transitioned to the STANDBY state
(table 6-18: SLVSGG7 – DECEMBER 2023).

An ON request is required to transition from STANDBY to ACTIVE.

Signed-off-by: Job Sava <jsava@criticallink.com>
---
 drivers/mfd/tps6594-core.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/mfd/tps6594-core.c b/drivers/mfd/tps6594-core.c
index 1b0b3d1bf6c4..f4c434c0d87a 100644
--- a/drivers/mfd/tps6594-core.c
+++ b/drivers/mfd/tps6594-core.c
@@ -10,6 +10,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/reboot.h>
 
 #include <linux/mfd/core.h>
 #include <linux/mfd/tps6594.h>
@@ -615,6 +616,19 @@ static int tps6594_enable_crc(struct tps6594 *tps)
 	return ret;
 }
 
+static int tps6594_soft_shutdown(struct tps6594 *tps)
+{
+	return regmap_update_bits(tps->regmap, TPS6594_REG_FSM_I2C_TRIGGERS,
+				TPS6594_BIT_TRIGGER_I2C(0),
+				TPS6594_BIT_TRIGGER_I2C(0));
+}
+
+static int tps6594_power_off_handler(struct sys_off_data *data)
+{
+	tps6594_soft_shutdown(data->cb_data);
+	return NOTIFY_DONE;
+}
+
 int tps6594_device_init(struct tps6594 *tps, bool enable_crc)
 {
 	struct device *dev = tps->dev;
@@ -623,6 +637,7 @@ int tps6594_device_init(struct tps6594 *tps, bool enable_crc)
 	const struct mfd_cell *cells;
 	int n_cells;
 	bool pwr_button;
+	bool system_power_controller;
 
 	if (enable_crc) {
 		ret = tps6594_enable_crc(tps);
@@ -681,6 +696,15 @@ int tps6594_device_init(struct tps6594 *tps, bool enable_crc)
 			return dev_err_probe(dev, ret, "Failed to add RTC child device\n");
 	}
 
+	system_power_controller = of_property_read_bool(dev->of_node, "system-power-controller");
+	if (system_power_controller) {
+		ret = devm_register_power_off_handler(tps->dev,
+								tps6594_power_off_handler,
+								tps);
+		if (ret)
+			return dev_err_probe(dev, ret, "Failed to register power-off handler\n");
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(tps6594_device_init);

-- 
2.43.0


