Return-Path: <devicetree+bounces-79691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3784691673D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AABD41F25033
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D061662F1;
	Tue, 25 Jun 2024 12:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Zm8t6Azv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A43D15FA7C
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317674; cv=none; b=a4uIwq5AP9+WX0XfAAVlVglNojiIrE9TRJ67azcrvw4GRk0y+LeL1wdvaMXB6y15KUVlQu+01ZkoIOEnfokGN0s43+G9kfmbYnB14EHHqBpTt0nLczDhG8QHFjU32MRkaS9J+KxaiTe8PhQfyeC/2JNWhpEDqAiMDfpBCDVjqnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317674; c=relaxed/simple;
	bh=j7dkVvZJkMISZi+SvUCBhPCTJNFvFvFSMSe87GL2tW8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KfVI7YgFVkCLqEO2V0fImG5BUUqVnYMsbD9vJhStvyyHHOsgPMoojyfeoimXG9mj7Qyy5dGKewSnnflVSkW9rDM9yz+8QgMdX3/ICSj44ePF9B8v3SsO4CZZOp7D6WNBBb4+qhEEyN43hL3N3sTYIXfEH8Sa6Inh8RtoQKi4JyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Zm8t6Azv; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3608e6d14b6so3607186f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 05:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719317671; x=1719922471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZZfyuc5aqmErcgh+6XpbZS6EIvq8ly/eWpn3GGn9YRA=;
        b=Zm8t6AzvtuUsdtmQ2ftjRkfN2DgpKnor3ixTvatgL6c0/TUA1zkqsPsSd1Ydvz18TX
         5xlhWzyo0+BvLuf7rQNN9sxkZMXouDARf+Fmyc28vfEhgphLKuJpTUisl8khqYvQftbd
         CXRACytCej5Uzp5wpQFjjGaWEI2w/BJC4OR0dETi1XSg9di2e8NKCAuiaOngMvPJWXEp
         FnkdiUQqcNapw+2SRhlR3q/xtPmtbINIHEo5Yt+wMKEmqq2GUnfYnbqEjQm7sFLBfsj9
         BY/FOVZBx6d9/Aj12njDx6qwinPTqEIzhbQgBp+Ywmh4MTD3TN5/Bwlph5fvS+gtxe+a
         6S+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719317671; x=1719922471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZZfyuc5aqmErcgh+6XpbZS6EIvq8ly/eWpn3GGn9YRA=;
        b=HGxSYkW5YrvTk3QtURq5bFPzZHgyjxBy13HOFsWHUcjOvUzc+xLcdwqaBgvspGWkfT
         tF63GZoPVHr03ojcg1G6qdJjZODvRr9+fzkfYLO2HjN9RvTyg2T8bp1ZpxoZjHKBco0m
         f4Z0SPAlwf/WuNhbhqlLuICI4ya58b62k6x8CHL7H8IMwugfvFQJ9++tjqkgGCyrlqpp
         wfafdOqrqutk7BXzSwPjWhuw5oR7hnQvcdprINScQ7IIb7GXkByibGNbrqwkE0/P9znd
         cxYHhs3aVmTXNWrG5y+dm4CJ8J7cfTz5Ycjw1QGS3o9sZNGbKG6WRUL8hmsNg/xFwtAA
         pIpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBdWaSD6vqqr2B/5kgyGyOhMxZJjULdlt7d9IAk2dg4EI7GnATPUridSHZXhJdpV52o6cwGSLSqBpl6UGfm3EnCtg2/GdCFzEAIg==
X-Gm-Message-State: AOJu0Yxiq0qeCm+bDjnNJ8cqdizbWVnXWsjT2vRjpMDLJFN50fnouj9T
	fLhL3bzgGSVALLTav30Rk/gqVi0xdpjnwet1iZGXNoaxc24W0MTt9rI+6zvnfxo=
X-Google-Smtp-Source: AGHT+IFptP1g8C3mH8LnZscvuZHFC2sJKKpBw7yrePF7MEn+4CbMDUaBWXcS6+gb+rLzwh1zH/k8HQ==
X-Received: by 2002:a5d:5591:0:b0:362:2111:4816 with SMTP id ffacd0b85a97d-366e95e7178mr5327658f8f.55.1719317670831;
        Tue, 25 Jun 2024 05:14:30 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8b32sm12798437f8f.92.2024.06.25.05.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 05:14:30 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 06/12] i2c: riic: Add suspend/resume support
Date: Tue, 25 Jun 2024 15:13:52 +0300
Message-Id: <20240625121358.590547-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v2:
- deassert the reset line in resume if riic_init_hw() fails as
  if that happens there is no way to recover the controller

 drivers/i2c/busses/i2c-riic.c | 68 +++++++++++++++++++++++++++++------
 1 file changed, 57 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index 24c0d62544fb..9fe007609076 100644
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
@@ -306,11 +308,12 @@ static const struct i2c_algorithm riic_algo = {
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
@@ -429,8 +432,6 @@ static int riic_i2c_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct riic_dev *riic;
 	struct i2c_adapter *adap;
-	struct i2c_timings i2c_t;
-	struct reset_control *rstc;
 	int i, ret;
 
 	riic = devm_kzalloc(dev, sizeof(*riic), GFP_KERNEL);
@@ -447,16 +448,16 @@ static int riic_i2c_probe(struct platform_device *pdev)
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
 
@@ -485,13 +486,13 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
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
 
@@ -501,7 +502,7 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, riic);
 
-	dev_info(dev, "registered with %dHz bus speed\n", i2c_t.bus_freq_hz);
+	dev_info(dev, "registered with %dHz bus speed\n", riic->i2c_t.bus_freq_hz);
 	return 0;
 
 out:
@@ -562,6 +563,50 @@ static const struct riic_of_data riic_rz_v2h_info = {
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
@@ -574,6 +619,7 @@ static struct platform_driver riic_i2c_driver = {
 	.driver		= {
 		.name	= "i2c-riic",
 		.of_match_table = riic_i2c_dt_ids,
+		.pm	= pm_ptr(&riic_i2c_pm_ops),
 	},
 };
 
-- 
2.39.2


