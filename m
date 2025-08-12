Return-Path: <devicetree+bounces-203652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1253AB22294
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:15:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58868188BD5F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC1C2E8E1A;
	Tue, 12 Aug 2025 09:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="n7Ugw88R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AD92E8885
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754989888; cv=none; b=Ep+XyJ7NCo++DPQ+0it6NPBUQP2uvYX589PXy35Htnybfx9Px2v3Bw/fWwVFSC3PKeCuo8Pv+JPF4q4q7nD5RA3qlifEgK+KrwW5jZrIkRn2rYiwGSFrwlNGz799n5GDfSMqjmp523LuNC/j1IP8q35uB2VX2WAtvhHPsRyU28o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754989888; c=relaxed/simple;
	bh=gv4aQqLQj6qk5926WotZilrrsqGPIVpFLa7mla3fUUo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uxUwVYNNWSE0tUi0Fep0O4b4qfQEd2bssKy6xVfmmCSFLusaex+G6iqO0wSLAzXk8N2g9PPe7UApegXFvqBKEIqH92thG+Hn3qQ6UgR113M95CnmULnNtuCmDr1+iytABVa+qwzbUMlD1Lr0P7QOjaiSoNb3RDRj5wfO+YVdsOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=n7Ugw88R; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-af94e75445dso943087866b.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754989884; x=1755594684; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WWNmgoaL9pn5HPHLZK1R43ly/5jtUzOZdXJxOwsahbE=;
        b=n7Ugw88R+p37GKLMz8cVzjmmgr6dghQ1CAj7kxtg4HjNx4tpzKE/Puu5MDUhzF4/Kg
         dtcsOgBNmx/A17R/gtU1AQTcn9eztUtNB1S78Qxh2PpARU+3MkL3aLItIed0sni/Lcs0
         0DW2l6CZo8S1SlI5xxURFtgeqz3ltMxpRqxq3L3g93e2gi7e+TapxY0rJNBD1nwOSE4J
         BuUckKLtn1YlsLKy5DbqRO7WS/hjZsjiejKwK5Xtjt4qx9INU++xCq0Xx98DQa3XxuDn
         K8CwEU+49PAcqeYvVspWszZ7d+D9EKqAsHqkAdbcqYRiEh5MxvXGUByRjELuV45qmg5D
         ZVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754989884; x=1755594684;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WWNmgoaL9pn5HPHLZK1R43ly/5jtUzOZdXJxOwsahbE=;
        b=iscgpZ6UbaQNrxXTqnXTTify8uZlug6tAv8HTX7eWAPgCGmXhzANH8zxba8h/ips3f
         wlfWhiL3wC+F7baB5T90gu/hNZuMUPTiQjNgZbA9Bnfi44STKSuwyO6fyfOZEx5zVNEu
         2CQ0iskLBp3lzkSFBRZV7SyrH4th0Apt0VIKlp6AsZt3rBrcIZQinxU0KXmAlkLRow+Q
         OINxtnHPW0zqwKJEjNhqkTmXj7LvV56sog7wypaXtJWEg2OZcT55bjxLN43uJEiUh8eA
         A2FklnrYZvQG7q2zyA9s14Vg2Z12asXk0u2JjkKYP5ks4qVWJUNDh0wMPEtFz1FETYCO
         EL5w==
X-Forwarded-Encrypted: i=1; AJvYcCWYz7pmfVhuXWfcKcwPbWDc6gt8jzLqlMy5UBnOiRNPggHI+jAJSQX/XIlc9+KWRxFDUjzFr3yY2WQs@vger.kernel.org
X-Gm-Message-State: AOJu0YyJfyZcpolfdFCAYKkqOTfFHIue5kVWB2hUQ4OdAq5nO3p5WwPC
	l4fgoyAKMAVtFYbnB1bY7jGFhaKFZkk1CdHYHzffPN3lLNSL2d8ESFffgxaC6rzelPg=
X-Gm-Gg: ASbGncu4H5FE7BHVHS9lcIRG+TjEa5ojdbfTIsCGBrKcgpSQfPeMKHIthY1ek9cRP3k
	laL0NM6skIRDFA1ZIhmonzhhzg1Q+jmlhYLl7EkJGGUEsOy8dcPevlga3bxpkHyhVhDK/VZX3/n
	YqF8J18qNx3YLLqkZyzyn+Duluh/T66UOwBP/tlBGrwmHEnR9rIYgPveRTnuEBAjhR+Pq1qP5H1
	QwM4W5U9kCkMuyMJSOOi1YyD42IYvTKzgdm2DqVYs1kTNT01aNWEtdUkjAj9YxY0Z0ObsKJTUmq
	uYavWzGxWuOqTQQNXUtGB9Nv/dCM5GW9XhYiisf3O55Jp3bIJSf2h7V3rdL94wGnXkkfHbqVKc/
	1iMiRQwcaODILdpfPwQ==
X-Google-Smtp-Source: AGHT+IFAazmUi/aRbw5Twc92V84t4z0NIo06UksQYmLsp1JA0GgYsP4z1F3V+M2ifd+59uTvbZfSig==
X-Received: by 2002:a17:907:9408:b0:af9:29c1:1103 with SMTP id a640c23a62f3a-afa1e22544amr224457166b.55.1754989883816;
        Tue, 12 Aug 2025 02:11:23 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8691:4b7a:7bbd:bac:c56e])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-615cc38aeccsm18161232a12.2.2025.08.12.02.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:11:23 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Tue, 12 Aug 2025 11:10:25 +0200
Subject: [PATCH v8 4/4] can: m_can: Support pinctrl wakeup state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-topic-mcan-wakeup-source-v6-12-v8-4-6972a810d63b@baylibre.com>
References: <20250812-topic-mcan-wakeup-source-v6-12-v8-0-6972a810d63b@baylibre.com>
In-Reply-To: <20250812-topic-mcan-wakeup-source-v6-12-v8-0-6972a810d63b@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4136; i=msp@baylibre.com;
 h=from:subject:message-id; bh=gv4aQqLQj6qk5926WotZilrrsqGPIVpFLa7mla3fUUo=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhozZrAYmp9VPZ8fec/q3KXe/a2lua5rcFP1ocxY5v8x7j
 HnnhZU6SlkYxLgYZMUUWToTQ9P+y+88lrxo2WaYOaxMIEMYuDgFYCKOJxgZ5tblOz74yq1k4Mvq
 F/T6pGSt0CZlISF211WNcbv31TrNYGQ4m3QkpWrnoY42L3ut2Obj/ReqxBOWeEk9fn/lRf5/h2x
 mAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

am62 requires a wakeup flag being set in pinctrl when mcan pins acts as
a wakeup source. Add support to select the wakeup state if WOL is
enabled.

Reviewed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c | 68 +++++++++++++++++++++++++++++++++++++++++++
 drivers/net/can/m_can/m_can.h |  4 +++
 2 files changed, 72 insertions(+)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index e08fae5ddf5efa8345670dd50d50954ec5d52b29..99ae6f817b313798aaa7d57166b3f564cd3aa946 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -2233,6 +2233,7 @@ static void m_can_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
 static int m_can_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
 {
 	struct m_can_classdev *cdev = netdev_priv(dev);
+	struct pinctrl_state *new_pinctrl_state = NULL;
 	bool wol_enable = !!(wol->wolopts & WAKE_PHY);
 	int ret;
 
@@ -2249,7 +2250,28 @@ static int m_can_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
 		return ret;
 	}
 
+	if (wol_enable)
+		new_pinctrl_state = cdev->pinctrl_state_wakeup;
+	else
+		new_pinctrl_state = cdev->pinctrl_state_default;
+
+	if (IS_ERR_OR_NULL(new_pinctrl_state))
+		return 0;
+
+	ret = pinctrl_select_state(cdev->pinctrl, new_pinctrl_state);
+	if (ret) {
+		netdev_err(cdev->net, "Failed to select pinctrl state %pE\n",
+			   ERR_PTR(ret));
+		goto err_wakeup_enable;
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
@@ -2377,6 +2399,44 @@ int m_can_class_get_clocks(struct m_can_classdev *cdev)
 }
 EXPORT_SYMBOL_GPL(m_can_class_get_clocks);
 
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
+	class_dev->pinctrl_state_default =
+		pinctrl_lookup_state(class_dev->pinctrl, "default");
+	if (IS_ERR(class_dev->pinctrl_state_default)) {
+		ret = PTR_ERR(class_dev->pinctrl_state_default);
+		return dev_err_probe(dev, ret, "Failed to lookup pinctrl default state\n");
+	}
+
+	return 0;
+}
+
 struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 						int sizeof_priv)
 {
@@ -2418,7 +2478,15 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
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
 
diff --git a/drivers/net/can/m_can/m_can.h b/drivers/net/can/m_can/m_can.h
index bd4746c63af3f0a032910644dfd48a9ebb3a6168..353ad73649218dc0a03d9ba947c6abc847c958eb 100644
--- a/drivers/net/can/m_can/m_can.h
+++ b/drivers/net/can/m_can/m_can.h
@@ -128,6 +128,10 @@ struct m_can_classdev {
 	struct mram_cfg mcfg[MRAM_CFG_NUM];
 
 	struct hrtimer hrtimer;
+
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pinctrl_state_default;
+	struct pinctrl_state *pinctrl_state_wakeup;
 };
 
 struct m_can_classdev *m_can_class_allocate_dev(struct device *dev, int sizeof_priv);

-- 
2.50.1


