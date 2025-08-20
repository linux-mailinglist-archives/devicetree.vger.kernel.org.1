Return-Path: <devicetree+bounces-206866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC3AB2DCF2
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:47:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 771513BAA68
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33B1E31DD87;
	Wed, 20 Aug 2025 12:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ost3O2TR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2973531AF2D
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 12:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755693790; cv=none; b=mqK4lEnK2bJx58ka7QnZaUkOb/W7X8u25vlBfxEYw8fG2S9F8ghaLs1O20SWmJyd1ENcP1hx68m6TmMhBhgGpVE5FcAhcUlf1IQAe/EqZr6m/ezFmb1tNBTbvd5oAenK1fdmOnhb7DbNAB/h+cJlk8oC+eqhMaom7MW6mEDeukk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755693790; c=relaxed/simple;
	bh=TOwm5GeDltyW8g1BjUNaPqKx7lJuDWRSNxQq9ddG4no=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GC+ZsfTe2CQH+Pil4xMTM9xm0bUMQW/ottS1vt4TQ5H9141WcVzuq+ilRPKBVvOD9RW+hEWDj+jsoTmna+7KqVN2Y7zNR0fTtbGDTbIlmaOPBQBLZm6UWXJUzEMPEWsKy9AMP4rsqos0FgKLestvh9MAR5nqnJOaKWlqSY8Gkn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ost3O2TR; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-618adc251f0so8686051a12.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 05:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755693786; x=1756298586; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKnmG36C30GxSH3hoRhxWEid53U24Ul1qCYrbUJ7ElQ=;
        b=Ost3O2TRpGGBmPMBD198Cn7YK/Si6nJl4lpovW6HKq1EgWja+vtQh+0pNnsokojX9M
         7r/jFLs937fTD6hTdWkqG1YTYGAudv7GCh6iGQ8gqfyZlwDqBYvs5n7jo4aqm1sljNbT
         djSPF3GMd3CPQ0pXl3UQtTfXrf4aLJ8iyx2mRQIeBM1w86wd+W3vTPYih2GLLfVfyOrS
         maLTOn8EOH36PssYKQe/mTzdNu5OuEqB+KMscANJ0IrFq9griAixu5p8TTvBj1uI/Q8D
         98HUMCaT3bEsWGI4e8BWXKhollqqGzcGv3vF9vxAO2l/QsfecDBAr+HzPcrR3RwlYULl
         wjuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755693786; x=1756298586;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iKnmG36C30GxSH3hoRhxWEid53U24Ul1qCYrbUJ7ElQ=;
        b=NjCvBoNIsNSVO+HJzqZjz5yS8PYW7IoKrz9RhKqh0grRoqhQNT5aWXLw28JiLqia9F
         P2ma5aTrmeuh0YVzOU8WQvn6epxrs1sxmDU47X1sa1goO48t5HKgskfu/bv5Ppj5hmjD
         X2OFUoSat1P1XM3l9cHKijRvqvD2IeYPSaLPJnSQTMCNYNXCFacviEH+AT84va69osD2
         FrwDeg9Pcht72soLZ+fE4uWTNYMSm6c9RZCjfa+YHXydVNAzVLBunCwlUZd8ECHLUrLA
         UtynC1XpOEb/Zq5r79tTvcUJKjaNwq3gH2ug3TTBL9who+FlKsHyS2iO3lrD1KWuZasM
         6txw==
X-Forwarded-Encrypted: i=1; AJvYcCVnfVZH+BNSB2sJAgB2cOpGOW2defBX1keyIX7q6zeqJThbtrlhf96kCYQwjf9C8M8AH/vHL44Wz7bf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8RIQyVS8KQpblihbPRyaeIIDkZwC97nZ8kN1mnZB15vJo5Zho
	RLHGGe988V4GG18a1pZ8a+SCFrUg09gmkLqs6mimJi8udxbvoNZigdoSFDj5FwR12ZKQQSVJaCS
	PfKR5
X-Gm-Gg: ASbGncv4eLdEbXWFMtfP/qJDKToaiHKtIcquMVZx6aNIQ6nHS4+jFR/H5PxTvdum73D
	MqOJ3ojbFtw4dM8NjuH2NQHygJvZeHmTIapJCwhyQ4sriG2AiPMxaQq7ZWa+zeG15SdZ1k02ook
	r8nvn8TaGray1dPVX0SUg5xf1oQ/aeN7hl4QC71MAKYUTQrjzX2HXwJFb7EbXJhnhyzWwpOWxq0
	PBzDnHAAWP25E0oxNGO3ve/2i4uH70dPv1c/3DaWoS67DKIdrB0IDMYgCtJvY2CX3sneaoS6LcD
	D0/Ymty+3fMmmxB/pneZwDJKL6d4NPqeFbh5QwLBqurcWHx84dP8AXyGVsGlM8TU5naEdyykYfL
	98dq+gV9ykYlkZ74WLw==
X-Google-Smtp-Source: AGHT+IGoF4BJJCHM7/WMYV9s2DobB8jP5J4pI3kHVya7qPry9NoCLTUd881tRnbGuOS3zY4hXBMZ5A==
X-Received: by 2002:a05:6402:46d4:b0:618:af06:a7ce with SMTP id 4fb4d7f45d1cf-61a9752ba07mr2379696a12.1.1755693786433;
        Wed, 20 Aug 2025 05:43:06 -0700 (PDT)
Received: from localhost ([2001:4090:a245:849b:bc8d:b969:7631:815])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-61a756095f1sm3318213a12.22.2025.08.20.05.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 05:43:06 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 20 Aug 2025 14:42:28 +0200
Subject: [PATCH v9 4/4] can: m_can: Support pinctrl wakeup state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-topic-mcan-wakeup-source-v6-12-v9-4-0ac13f2ddd67@baylibre.com>
References: <20250820-topic-mcan-wakeup-source-v6-12-v9-0-0ac13f2ddd67@baylibre.com>
In-Reply-To: <20250820-topic-mcan-wakeup-source-v6-12-v9-0-0ac13f2ddd67@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 Simon Horman <horms@kernel.org>, 
 Vincent MAILHOL <mailhol.vincent@wanadoo.fr>, linux-can@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4131; i=msp@baylibre.com;
 h=from:subject:message-id; bh=TOwm5GeDltyW8g1BjUNaPqKx7lJuDWRSNxQq9ddG4no=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoylh86+OiobeGfvDpXjW8R8HoS8fDTRSJrt8aXJbl8jV
 E1vTy9m7ChlYRDjYpAVU2TpTAxN+y+/81jyomWbYeawMoEMYeDiFICJfM1m+MMbI8x5PbFa4yGH
 ww15hutqPv4LhBWMFE9MyhdkD+x8dYOR4fDGbQ5dfnVndtYsyj/x9opCB/c1G0W2GdOE1++xN0r
 5wAgA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

am62 requires a wakeup flag being set in pinctrl when mcan pins acts as
a wakeup source. Add support to select the wakeup state if WOL is
enabled.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c | 69 +++++++++++++++++++++++++++++++++++++++++--
 drivers/net/can/m_can/m_can.h |  3 ++
 2 files changed, 70 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index e08fae5ddf5efa8345670dd50d50954ec5d52b29..a1fa4b2f6b6cc94e5e10259cca53bd931ab238c8 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -2249,7 +2249,26 @@ static int m_can_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
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
@@ -2377,6 +2396,42 @@ int m_can_class_get_clocks(struct m_can_classdev *cdev)
 }
 EXPORT_SYMBOL_GPL(m_can_class_get_clocks);
 
+static bool m_can_class_wakeup_pinctrl_enabled(struct m_can_classdev *class_dev)
+{
+	return device_may_wakeup(class_dev->dev) && class_dev->pinctrl_state_wakeup;
+}
+
+static int m_can_class_setup_optional_pinctrl(struct m_can_classdev *class_dev)
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
@@ -2418,7 +2473,15 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 	m_can_of_parse_mram(class_dev, mram_config_vals);
 	spin_lock_init(&class_dev->tx_handling_spinlock);
 
+	ret = m_can_class_setup_optional_pinctrl(class_dev);
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
 
@@ -2533,7 +2596,8 @@ int m_can_class_suspend(struct device *dev)
 		m_can_clk_stop(cdev);
 	}
 
-	pinctrl_pm_select_sleep_state(dev);
+	if (!m_can_class_wakeup_pinctrl_enabled(cdev))
+		pinctrl_pm_select_sleep_state(dev);
 
 	cdev->can.state = CAN_STATE_SLEEPING;
 
@@ -2547,7 +2611,8 @@ int m_can_class_resume(struct device *dev)
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
2.50.1


