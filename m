Return-Path: <devicetree+bounces-9338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B34D37CCBB8
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD1931C208E5
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B2A2EAEF;
	Tue, 17 Oct 2023 19:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fVUTcflV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256572EAE5
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:05:53 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D50BB113
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 12:05:50 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53dd752685fso10652210a12.3
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 12:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697569549; x=1698174349; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zBUayoWq6Ye9sh8zhKBZbNdAgo6owoaukol1/zg+W4Q=;
        b=fVUTcflVJ8Ohk/5ANl6CC+9smHHalW3gIZKRyrDyk2GPWp/2H+nsWmdGcx31crbCK6
         t57zBfAUV2hQNwnwFyGgzf4vhhwKOWwRkuPPsj1qAtBbLqx+QBwjUdKx2vSEu85FWo4I
         pUplR8zAVmYSumAYw/Mc2CRkIxriHhWBJ3XvIpuOTHGRUPON7Lc3OsBJIWFccPCdr2R8
         bmIi9wfvuhbgBimP7comZTIxh1APjgMjJnGl2RTSjmCcoT4UuQ7IqzNau6ZP2mgB4n6o
         Ci41SZTTueWA3r+Nhqs/j9Y/irSOKkxCh6R3UH3tzi5ECnVJHS/8Tvs/3a/oGZ642X3y
         u07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697569549; x=1698174349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zBUayoWq6Ye9sh8zhKBZbNdAgo6owoaukol1/zg+W4Q=;
        b=JamwGfbe6K7aIIexJQ8cBY+X/EmWQedR98gnxDOv/ZJGv2WTRQe61jlUb6yVcUaljb
         Bjo3QAHRBq0XJkMdIR6CYg/SB6fb9krMmMY6Z6JayXTrwyxPe7lkaVLMOyKCSmn3ZxAJ
         wzTRFp1txU9msRXbaTgvyAstf3GWuaxFqX+s4Gp9ngno6cCHfDWlhb4LPIWH8w+llOlh
         Rip1QtJZDtq2k1c6B7emQzv4SbdRn7Igjhc0f53BEi1oV7BKw2yzXatYcAKpK8HwUpw8
         5H/66WJdelTLX/dcpEsPIBTYxRFIt3GSrFKcaFZ0w2mXb7/SMWciRJvPzUfctv80tmx8
         yc4A==
X-Gm-Message-State: AOJu0Yy03AHeTjfJx7/nhPHwIp2ytXWDPPO807CnWuGaRsIWi5hfBPjC
	3XHfMHeeVFS5Hl/vdKPN0q7WDg==
X-Google-Smtp-Source: AGHT+IGU75oiZLjfv1aMUOdogFiVYahAM5xruGsLPsg93m2QdVVig3JnLi7yURT/mjm0ThQ5atHgdA==
X-Received: by 2002:a05:6402:2711:b0:53e:f321:e6fd with SMTP id y17-20020a056402271100b0053ef321e6fdmr2651204edd.9.1697569549178;
        Tue, 17 Oct 2023 12:05:49 -0700 (PDT)
Received: from ryzen9.fritz.box ([2a01:2a8:8f03:b001:fe65:a70:2777:ab31])
        by smtp.gmail.com with ESMTPSA id bq14-20020a056402214e00b00537963f692esm1637990edb.0.2023.10.17.12.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 12:05:48 -0700 (PDT)
From: =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To: daniel.lezcano@linaro.org,
	angelogioacchino.delregno@collabora.com,
	rafael@kernel.org,
	amitk@kernel.org,
	rui.zhang@intel.com,
	matthias.bgg@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dunlap@infradead.org,
	e.xingchen@zte.com.cn,
	p.zabel@pengutronix.de
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	wenst@chromium.org,
	ames.lo@mediatek.com,
	rex-bc.chen@mediatek.com,
	nfraprado@collabora.com,
	abailon@baylibre.com,
	amergnat@baylibre.com,
	khilman@baylibre.com
Subject: [PATCH v5 2/5] thermal/drivers/mediatek/lvts_thermal: Add suspend and resume
Date: Tue, 17 Oct 2023 21:05:42 +0200
Message-ID: <20231017190545.157282-3-bero@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231017190545.157282-1-bero@baylibre.com>
References: <20231017190545.157282-1-bero@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Balsam CHIHI <bchihi@baylibre.com>

Add suspend and resume support to LVTS driver.

Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
[bero@baylibre.com: suspend/resume in noirq phase]
Co-developed-by: Bernhard Rosenkränzer <bero@baylibre.com>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/thermal/mediatek/lvts_thermal.c | 37 +++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
index 877a0e5ac3fd3..c5a03bdf63e9d 100644
--- a/drivers/thermal/mediatek/lvts_thermal.c
+++ b/drivers/thermal/mediatek/lvts_thermal.c
@@ -1254,6 +1254,38 @@ static void lvts_remove(struct platform_device *pdev)
 	lvts_debugfs_exit(lvts_td);
 }
 
+static int lvts_suspend(struct device *dev)
+{
+	struct lvts_domain *lvts_td;
+	int i;
+
+	lvts_td = dev_get_drvdata(dev);
+
+	for (i = 0; i < lvts_td->num_lvts_ctrl; i++)
+		lvts_ctrl_set_enable(&lvts_td->lvts_ctrl[i], false);
+
+	clk_disable_unprepare(lvts_td->clk);
+
+	return 0;
+}
+
+static int lvts_resume(struct device *dev)
+{
+	struct lvts_domain *lvts_td;
+	int i, ret;
+
+	lvts_td = dev_get_drvdata(dev);
+
+	ret = clk_prepare_enable(lvts_td->clk);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < lvts_td->num_lvts_ctrl; i++)
+		lvts_ctrl_set_enable(&lvts_td->lvts_ctrl[i], true);
+
+	return 0;
+}
+
 static const struct lvts_ctrl_data mt8195_lvts_mcu_data_ctrl[] = {
 	{
 		.cal_offset = { 0x04, 0x07 },
@@ -1350,12 +1382,17 @@ static const struct of_device_id lvts_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, lvts_of_match);
 
+static const struct dev_pm_ops lvts_pm_ops = {
+	NOIRQ_SYSTEM_SLEEP_PM_OPS(lvts_suspend, lvts_resume)
+};
+
 static struct platform_driver lvts_driver = {
 	.probe = lvts_probe,
 	.remove_new = lvts_remove,
 	.driver = {
 		.name = "mtk-lvts-thermal",
 		.of_match_table = lvts_of_match,
+		.pm = &lvts_pm_ops,
 	},
 };
 module_platform_driver(lvts_driver);
-- 
2.42.0


