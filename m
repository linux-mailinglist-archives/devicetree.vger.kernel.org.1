Return-Path: <devicetree+bounces-223076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC61BB0B5A
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB16D4E0F81
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1453227145F;
	Wed,  1 Oct 2025 14:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bMFxxVxV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0C9264623
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329082; cv=none; b=ctQv9nWO4xKOJ0EbPz4XUVTWuIL8zckr+BS9wt6h3p6O1VafWYO5mpuUrhAfoKHVrmKEe/VvDnPid8UUQ0PkmNb4tcSzpPt1oVRoE3na1WWygLohxYIwaTkVJ8soYPnROPFe3OGyuUoxsvfSwl7FX+LHe4nWokv3lYkrP5rDqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329082; c=relaxed/simple;
	bh=dGNKUYyd1GcPkcAeE2bAQ6pVMh8WKK5GW2+M2rPmnUY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KdHq9ZeR54799uLe4bsoZ9Uozmp2jo9dTzliPtkfwD1LviKygbw/KtG/RQ6pl9kIVYVXumXjobEQlDOFfqkB08U0I1jHl46G4hkdvj1MG5kuz+LnaTMTj8jSz7HrwRn/xn9QKrecwmsO2LSbYRx+wI7MCmrrNAC9vff5G4/kK7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bMFxxVxV; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-61cc281171cso14683827a12.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329078; x=1759933878; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1jREFPccbCelJ72h80iGG7hSrznfTVGMEZeaHF1+Ijw=;
        b=bMFxxVxVHJ9a1tjRfF5Z0wbyhuTt/SZzezx4TKS5cfUrGJpwrOw3N4+GTuOeqiUAR5
         fj3w1F+zWG3qgPneGujKS2hg7w5GRp8H7KuuqPVaV1ExL09ASkZ0x4HCFbagXe+S+iH+
         rIW0MLcC9dSgndA+ySfpUZ7JH/mVX1HNGUiGMCdO0oS3Z1Mmtvq8iwfqJHa2d/xg+bHz
         ZfX5D8yzghb9eV1Wq2XJVLSkO54rbdMknFJdQVdylzIJMn8MVjRX0COZ+Wt8Dhk03GWr
         aP2gaehL00aV/pl9uCjKaqfk4wi50wEF6M5dTAZ1ZqyFLwMs8hWRreRVMe3qKlkojdk4
         mq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329078; x=1759933878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1jREFPccbCelJ72h80iGG7hSrznfTVGMEZeaHF1+Ijw=;
        b=ZF7CSbSaCmlnnI3mBzMIKyyHCtV6ZFaf+4Fyrt67j/Ag5dZUhiCm4xW74G5qcn4++6
         rPF44Z3tz8Ee4lAT46yGlfHrXZaCW3KNCV9IcbTYl3/NkFLVTJeUFTPfSU9qE89n42D6
         oLQRziAUNPu+8A73cuLW2Eal7TT7Am5DJ6ZjupK0d/wbxvkEhMu+GwL8hPJv/1ow+oCe
         6fVtKN/1hGXJWyBLxSOv5QEMzdwXv6e0FmJltJWhodqU1OBw7A/fu8hp9ax6Erlpv6Sa
         l9jHBCx5dFXUU4vreuEBvkDVYs4lwN1MqHGDFjgPAH496vIayruos0Bac82yU/ot3xm4
         zqaA==
X-Forwarded-Encrypted: i=1; AJvYcCVchkSv7GTLIPo+Kaew63lSef2HwBclIqik2Rj2Bwba4KPgvOHkuMABI3qyQoJLCDt/nj1yMHLEMXN0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbv6UL342y+G0lk228PS5vwnL8ayQeH/DTgoZ2am+7oQrUlIwm
	Svb84wgewEHFMvMcAFq7g08lqQpDQ+mnwpColO1spjo7SsUb0ZyoOqufLanTiHFgKvo=
X-Gm-Gg: ASbGncuDbNsD6YhgfnWjGG4S7z6m88vrmfy9B41Bjw/wHIH2Gke7MqgHqc6D+Gami+8
	CwwUdFjQTezaAkt6HckdT/mqPOV40yQkADAFFEr21T0pm4kgSD7JI2TPXckhEUaDQTndIQoFqs/
	CQ+S+prUylMKYA5zRCxa01fFkTy8aOXanYhimks1hwWkOzAizacu8gTWW+U+SBHNC8Zv8ZMd1xt
	7ogsPMuFyyGXbsyG3YarGKt1EjA5lL9VGOv/0KxyKr6aRj7e9eZVXfuvEZ6ZLzk7bfQ/bzWbvjS
	Kk1m75vKt5UYHBsCZRg2CW6JdPeUTAf2+U6cqfFC2X7eJmocq0CBDCsSIwv+sQgvTgE46hIt6db
	DtpwfEFf4aHA2HFvGuEuU13niAuR7HossY4Ti+zP+58ha
X-Google-Smtp-Source: AGHT+IHZXKxH7sl9HXx/f6ZsQ8CTEdKqXA1aGGa4F13HSaz/0//WfPjylBTEEEW/DaVIOAGT2bHTxQ==
X-Received: by 2002:a17:907:9485:b0:b3d:98fa:b3fa with SMTP id a640c23a62f3a-b46e8f7ddbcmr416304066b.50.1759329077998;
        Wed, 01 Oct 2025 07:31:17 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b353e5d0526sm1391484766b.12.2025.10.01.07.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:31:17 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:30:22 +0200
Subject: [PATCH v10 4/4] can: m_can: Support pinctrl wakeup state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-mcan-wakeup-source-v6-12-v10-4-4ab508ac5d1e@baylibre.com>
References: <20251001-topic-mcan-wakeup-source-v6-12-v10-0-4ab508ac5d1e@baylibre.com>
In-Reply-To: <20251001-topic-mcan-wakeup-source-v6-12-v10-0-4ab508ac5d1e@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vincent Mailhol <mailhol@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>, 
 Vincent Mailhol <mailhol@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4129; i=msp@baylibre.com;
 h=from:subject:message-id; bh=dGNKUYyd1GcPkcAeE2bAQ6pVMh8WKK5GW2+M2rPmnUY=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy71upMVceUjrXJuti1zW7023yw9Lb/0XWOnIfi5ny9G
 RxttkSso5SFQYyLQVZMkaUzMTTtv/zOY8mLlm2GmcPKBDKEgYtTACZy9wTD/2CtnLQ35+JZ2d6y
 pxivP3ck5+6peKkJiv8WnDw3+XuYjB/D/+qVFlsi3ffr9Dy07uv93KUXP3F5pJN+bNeC8rWGQjU
 mDAA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

TI AM62x SoC requires a wakeup flag being set in pinctrl when mcan pins
act as a wakeup source. Add support to select the wakeup state if WOL
is enabled.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c | 69 +++++++++++++++++++++++++++++++++++++++++--
 drivers/net/can/m_can/m_can.h |  3 ++
 2 files changed, 70 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index 835b03db1003db6ffa21044ac756676fb193f64d..beb79403611b61d0643da960dfe5301e9dba579b 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -2247,7 +2247,26 @@ static int m_can_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
 		return ret;
 	}
 
+	if (!IS_ERR_OR_NULL(cdev->pinctrl_state_wakeup)) {
+		if (wol_enable)
+			ret = pinctrl_select_state(cdev->pinctrl, cdev->pinctrl_state_wakeup);
+		else
+			ret = pinctrl_pm_select_default_state(cdev->dev);
+
+		if (ret) {
+			netdev_err(cdev->net, "Failed to select pinctrl state %pE\n",
+				   ERR_PTR(ret));
+			goto err_wakeup_enable;
+		}
+	}
+
 	return 0;
+
+err_wakeup_enable:
+	/* Revert wakeup enable */
+	device_set_wakeup_enable(cdev->dev, !wol_enable);
+
+	return ret;
 }
 
 static const struct ethtool_ops m_can_ethtool_ops_coalescing = {
@@ -2375,6 +2394,42 @@ int m_can_class_get_clocks(struct m_can_classdev *cdev)
 }
 EXPORT_SYMBOL_GPL(m_can_class_get_clocks);
 
+static bool m_can_class_wakeup_pinctrl_enabled(struct m_can_classdev *class_dev)
+{
+	return device_may_wakeup(class_dev->dev) && class_dev->pinctrl_state_wakeup;
+}
+
+static int m_can_class_parse_pinctrl(struct m_can_classdev *class_dev)
+{
+	struct device *dev = class_dev->dev;
+	int ret;
+
+	class_dev->pinctrl = devm_pinctrl_get(dev);
+	if (IS_ERR(class_dev->pinctrl)) {
+		ret = PTR_ERR(class_dev->pinctrl);
+		class_dev->pinctrl = NULL;
+
+		if (ret == -ENODEV)
+			return 0;
+
+		return dev_err_probe(dev, ret, "Failed to get pinctrl\n");
+	}
+
+	class_dev->pinctrl_state_wakeup =
+		pinctrl_lookup_state(class_dev->pinctrl, "wakeup");
+	if (IS_ERR(class_dev->pinctrl_state_wakeup)) {
+		ret = PTR_ERR(class_dev->pinctrl_state_wakeup);
+		class_dev->pinctrl_state_wakeup = NULL;
+
+		if (ret == -ENODEV)
+			return 0;
+
+		return dev_err_probe(dev, ret, "Failed to lookup pinctrl wakeup state\n");
+	}
+
+	return 0;
+}
+
 struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 						int sizeof_priv)
 {
@@ -2416,7 +2471,15 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 	m_can_of_parse_mram(class_dev, mram_config_vals);
 	spin_lock_init(&class_dev->tx_handling_spinlock);
 
+	ret = m_can_class_parse_pinctrl(class_dev);
+	if (ret)
+		goto err_free_candev;
+
 	return class_dev;
+
+err_free_candev:
+	free_candev(net_dev);
+	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(m_can_class_allocate_dev);
 
@@ -2531,7 +2594,8 @@ int m_can_class_suspend(struct device *dev)
 		m_can_clk_stop(cdev);
 	}
 
-	pinctrl_pm_select_sleep_state(dev);
+	if (!m_can_class_wakeup_pinctrl_enabled(cdev))
+		pinctrl_pm_select_sleep_state(dev);
 
 	cdev->can.state = CAN_STATE_SLEEPING;
 
@@ -2545,7 +2609,8 @@ int m_can_class_resume(struct device *dev)
 	struct net_device *ndev = cdev->net;
 	int ret = 0;
 
-	pinctrl_pm_select_default_state(dev);
+	if (!m_can_class_wakeup_pinctrl_enabled(cdev))
+		pinctrl_pm_select_default_state(dev);
 
 	cdev->can.state = CAN_STATE_ERROR_ACTIVE;
 
diff --git a/drivers/net/can/m_can/m_can.h b/drivers/net/can/m_can/m_can.h
index bd4746c63af3f0a032910644dfd48a9ebb3a6168..583c7f1d005d61b3fc8587697388522993ff11a8 100644
--- a/drivers/net/can/m_can/m_can.h
+++ b/drivers/net/can/m_can/m_can.h
@@ -128,6 +128,9 @@ struct m_can_classdev {
 	struct mram_cfg mcfg[MRAM_CFG_NUM];
 
 	struct hrtimer hrtimer;
+
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pinctrl_state_wakeup;
 };
 
 struct m_can_classdev *m_can_class_allocate_dev(struct device *dev, int sizeof_priv);

-- 
2.51.0


