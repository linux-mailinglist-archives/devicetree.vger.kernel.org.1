Return-Path: <devicetree+bounces-84992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2544892E78A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A64F21F21A35
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085B415FD16;
	Thu, 11 Jul 2024 11:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="idCPdsOf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD3715EFD0
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 11:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720698752; cv=none; b=G4Lm7rdSEgQ/+AvRz3nYtRSzHf9YOcrI4hwLY4skcW9qhvIfBQXDlFMlhve1YkuF54Xb0n8jQNkrJlEgkTMbTbFND4uTGv7lvpgxxKuzINvAyxX0l3uoZJCR091YFVS4ZFqKKutqsQp40odwj7EeWYbP3n3XtWUkmsHbaekz6MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720698752; c=relaxed/simple;
	bh=EvTrmK7vDozYe84CypL1NsIjIVFAwvWhLwqiVCE7rcQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tzMVToHCyZrTwW18IMM6qKXgf6KS9sryQeBAbfqGcNOEOPrQpwqDRVCcs18pYz7/4jhnO2+z+IcKZTGyjCgsai/XBmIKVlZWz1Gn5Osd7XXZB/51cuB5QoGq+XyKX7i2QhIrJIy4JvoM2M2kl3QmkyGCQtShYefCGOSmaSQVwmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=idCPdsOf; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3679e9bfb08so453386f8f.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 04:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720698748; x=1721303548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=es3o2HKhbl78j8FUMZgv61lWfgzAkWIRds7OPE+Umtc=;
        b=idCPdsOfwz4QJjLzFDToGoZYqK3dBLjtQBF5wPdqnHLtwJfiN5C0ZEKD2B6JJEo/ii
         3AifJTmv5yztt3/Vh19eg708wpm77OEdtkCyibbwB9f09udFBSm/TiK3L9RRTUzkI2Ka
         fLww2GWT9dLQ4fmrtJfLAlhIe1nUJa5l/YtWtVcBWSGaqVnZ6zBlaTQJ6H+w5oS0qob8
         zapjbOCyn3PnzvgzXw3WXHReAvWQOEKO61sObbp5m9Lpvr6hnqA7ZZ+uUpJyxk2zIsou
         U7CHqB7heh0wm2CbyN4U6vq5sdTRpWIJ7BI055fPlwGYAdpPEK657A2MTRar7TquH2JC
         GZ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698748; x=1721303548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=es3o2HKhbl78j8FUMZgv61lWfgzAkWIRds7OPE+Umtc=;
        b=BMtKiV9Hdycf3zD/H6xA8Hzg8e/drIcgMmCEULcEah4dy49G+1KR3LGVqXtV65i5vO
         Df67sUDf5U7xe5IullDU5QlzIsPGgPDFA0+2MgfHHq+gsJonN3RgxA+YMZvpLQW2gkd7
         NAPeB4i4q7ZAtPw39F93DxcGuSoA3cquhJV6f5+iaQp0EJWurW5jW1lCVfAoTG82/VM/
         78EuHEtq0WgGB8HslQ4JmPPMZ5pWLzDiRfrQKLkac8T9jMruOZC9H25mv6cpFgJaPfhe
         1MZMVEuOgi+m8jBAKzDP2MMCuLf/cz4C9cvRzUVMjEk0dyCEt2/V+nl5YC20ih0wBfnN
         kB6g==
X-Forwarded-Encrypted: i=1; AJvYcCU0sUujGHInEZWm7yPnBso3YBopzQjZG9znIZLQlnXt3a1/uK0gINdJ+cdnSFhtcihdadRT2egjQTYkxU68B/EArepqk24Cx0rb+A==
X-Gm-Message-State: AOJu0YwbWp53F9dAlJqmbRhgWF7X4Tmut4jLTDI0/v6sxEQtMk5d63uG
	P1z3KGhpzyZodaUqZXWcSTpsKxDp+mWhXv5ojDYRF95CoAPuFw07aEZzXyaC/1pBBGVZi8WCGRz
	a
X-Google-Smtp-Source: AGHT+IEH60t9ODgR0Oj+pVFBEJK/4THFELrLG5LNRLuXsSsl9M5qYAfNdmXGbm7EYhk3135U+VwSPA==
X-Received: by 2002:a05:6000:136e:b0:360:9500:9bbb with SMTP id ffacd0b85a97d-367f7164410mr1180230f8f.12.1720698748630;
        Thu, 11 Jul 2024 04:52:28 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde891cesm7615728f8f.62.2024.07.11.04.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 04:52:28 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 05/11] i2c: riic: Add suspend/resume support
Date: Thu, 11 Jul 2024 14:52:01 +0300
Message-Id: <20240711115207.2843133-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add suspend/resume support for the RIIC driver. This is necessary for the
Renesas RZ/G3S SoC which support suspend to deep sleep state where power
to most of the SoC components is turned off. As a result the I2C controller
needs to be reconfigured after suspend/resume. For this, the reset line
was stored in the driver private data structure as well as i2c timings.
The reset line and I2C timings are necessary to re-initialize the
controller after resume.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- deassert the reset line in resume if riic_init_hw() fails as
  if that happens there is no way to recover the controller

 drivers/i2c/busses/i2c-riic.c | 68 +++++++++++++++++++++++++++++------
 1 file changed, 57 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index 46765715d39f..5e4f56ee97e3 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -105,6 +105,8 @@ struct riic_dev {
 	struct completion msg_done;
 	struct i2c_adapter adapter;
 	struct clk *clk;
+	struct reset_control *rstc;
+	struct i2c_timings i2c_t;
 };
 
 struct riic_irq_desc {
@@ -302,11 +304,12 @@ static const struct i2c_algorithm riic_algo = {
 	.functionality	= riic_func,
 };
 
-static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
+static int riic_init_hw(struct riic_dev *riic)
 {
 	int ret;
 	unsigned long rate;
 	int total_ticks, cks, brl, brh;
+	struct i2c_timings *t = &riic->i2c_t;
 	struct device *dev = riic->adapter.dev.parent;
 
 	if (t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ) {
@@ -423,8 +426,6 @@ static int riic_i2c_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct riic_dev *riic;
 	struct i2c_adapter *adap;
-	struct i2c_timings i2c_t;
-	struct reset_control *rstc;
 	int i, ret;
 
 	riic = devm_kzalloc(dev, sizeof(*riic), GFP_KERNEL);
@@ -441,16 +442,16 @@ static int riic_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(riic->clk);
 	}
 
-	rstc = devm_reset_control_get_optional_exclusive(dev, NULL);
-	if (IS_ERR(rstc))
-		return dev_err_probe(dev, PTR_ERR(rstc),
+	riic->rstc = devm_reset_control_get_optional_exclusive(dev, NULL);
+	if (IS_ERR(riic->rstc))
+		return dev_err_probe(dev, PTR_ERR(riic->rstc),
 				     "Error: missing reset ctrl\n");
 
-	ret = reset_control_deassert(rstc);
+	ret = reset_control_deassert(riic->rstc);
 	if (ret)
 		return ret;
 
-	ret = devm_add_action_or_reset(dev, riic_reset_control_assert, rstc);
+	ret = devm_add_action_or_reset(dev, riic_reset_control_assert, riic->rstc);
 	if (ret)
 		return ret;
 
@@ -479,13 +480,13 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 	init_completion(&riic->msg_done);
 
-	i2c_parse_fw_timings(dev, &i2c_t, true);
+	i2c_parse_fw_timings(dev, &riic->i2c_t, true);
 
 	pm_runtime_set_autosuspend_delay(dev, 0);
 	pm_runtime_use_autosuspend(dev);
 	pm_runtime_enable(dev);
 
-	ret = riic_init_hw(riic, &i2c_t);
+	ret = riic_init_hw(riic);
 	if (ret)
 		goto out;
 
@@ -495,7 +496,7 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, riic);
 
-	dev_info(dev, "registered with %dHz bus speed\n", i2c_t.bus_freq_hz);
+	dev_info(dev, "registered with %dHz bus speed\n", riic->i2c_t.bus_freq_hz);
 	return 0;
 
 out:
@@ -552,6 +553,50 @@ static const struct riic_of_data riic_rz_v2h_info = {
 	},
 };
 
+static int riic_i2c_suspend(struct device *dev)
+{
+	struct riic_dev *riic = dev_get_drvdata(dev);
+	int ret;
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		return ret;
+
+	i2c_mark_adapter_suspended(&riic->adapter);
+
+	/* Disable output on SDA, SCL pins. */
+	riic_clear_set_bit(riic, ICCR1_ICE, 0, RIIC_ICCR1);
+
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_sync(dev);
+
+	return reset_control_assert(riic->rstc);
+}
+
+static int riic_i2c_resume(struct device *dev)
+{
+	struct riic_dev *riic = dev_get_drvdata(dev);
+	int ret;
+
+	ret = reset_control_deassert(riic->rstc);
+	if (ret)
+		return ret;
+
+	ret = riic_init_hw(riic);
+	if (ret) {
+		reset_control_assert(riic->rstc);
+		return ret;
+	}
+
+	i2c_mark_adapter_resumed(&riic->adapter);
+
+	return 0;
+}
+
+static const struct dev_pm_ops riic_i2c_pm_ops = {
+	SYSTEM_SLEEP_PM_OPS(riic_i2c_suspend, riic_i2c_resume)
+};
+
 static const struct of_device_id riic_i2c_dt_ids[] = {
 	{ .compatible = "renesas,riic-rz", .data = &riic_rz_a_info },
 	{ .compatible = "renesas,riic-r9a09g057", .data = &riic_rz_v2h_info },
@@ -564,6 +609,7 @@ static struct platform_driver riic_i2c_driver = {
 	.driver		= {
 		.name	= "i2c-riic",
 		.of_match_table = riic_i2c_dt_ids,
+		.pm	= pm_ptr(&riic_i2c_pm_ops),
 	},
 };
 
-- 
2.39.2


