Return-Path: <devicetree+bounces-71080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DF18D5B0B
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA32A1F269E4
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 06:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09500132128;
	Fri, 31 May 2024 06:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ARoHmKXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68065132114
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717138684; cv=none; b=MYEc+JP6f8LxBs0tTLSor7wlc5TriiuYjyjRYWWdjcVLWdo84xMtrx4k8HneGyfdGiCQX0FA+Qd13q25kLcqA2W5s/R+8jZJxDjnSwSLj38tTPS+y120V8e4/emFGeIQYMotxuAAxOA8K6ls+3r68aHrhQMtFidglxPqso0GF98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717138684; c=relaxed/simple;
	bh=tataYpIwbqjUNC38Cpqdn61J/E/LMYXIwOZFRNJQDg4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GSKoGtMWw6UiYNG2dLZcTflgCEwi2Ro+PgNA8Otgu5ly3dWEmplBoEy35dPSF8v7gUVvMYfiZ+3dzrcA0whBqat3TP3YFxoNaJU+KQ5Dq4906v7kB6JiswBzPGFtOUwudrS9JFKgZxZYqQ5a7n9hoyq3/Z+XNwQ1CeDBQnqN20s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ARoHmKXL; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a6267778b3aso135654766b.3
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 23:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1717138682; x=1717743482; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XSggwFbXR3Z6yEAWH/Qxl5wRCutoL0pDxIi0O5Vr5vQ=;
        b=ARoHmKXLWi+DJoag6NaryfEzF0fAWvYX+XaKdTw2Cr8krH8M7BRYb9cb/0QDiRIIED
         pF9/b2+igGbOMezoZrdq3lJRglD42KAYOF4CZ5/JEnCShYZkDQbXD5ljr+KWG118mvl5
         0pI3KxHYie2abDYrIt/bSQT1oYfdP5hg+KH6wS9acn+NUk5TO5tU9wKLixVi2nfVxEDB
         rrFdsfdS3FPGhH92MlwwFnnCjBBLVsC/diqnzo6rfCIZRnSpDCfsUTuBTsi1ej+/mYUj
         lGCCtPQG9ZReOLhRhzIidN4OwwaBhQCoZDZzsBPMCMJSKwZw2nBCltouFRVUPTYVuVnw
         //gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717138682; x=1717743482;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XSggwFbXR3Z6yEAWH/Qxl5wRCutoL0pDxIi0O5Vr5vQ=;
        b=PmxS7cwEhahZKGH6x+KQodCqkGg667Po88gYDy7ulML3mienQRbq0VlhsjKuU5rHlc
         mxdbk2AIYxs7nUVLPsy/0p8bUZDmEB3CTAN9YcI/QXSt8usWQZxddU6yboW+3sLJHl/a
         e3SmqRFMbYAbHIDw7FP9L/5GL6lSLs+ZcpspgImdK8CLjRqtlJtfU2pY8IFOpfgdLo51
         H7+T+8+C+ayWARzpviFfYjqIz+yFmcotqjX9N3Cq/47BD0BiGb8TegjdFSg09wUZHmdL
         rSEPdH1rrxjVIkPNgxkzm4LLYrsTigQWEvTprP+Q7wewTMwkoI1ojnLjwMkvGIIe8cE6
         z7Mw==
X-Forwarded-Encrypted: i=1; AJvYcCV5aKEFYGbtdvtsecJfHW4F4caWV8Mp9L5LdoNpTasdfJlmZHw+wvGNQfwXzAFaAH/stX2WELAGAY6J2rHZGqx3kzlYu+ar/4hfGQ==
X-Gm-Message-State: AOJu0YxvLasmrTHnXfwNdgcA1FnahervmvO1e41vU+KweA9JX6o+QLSP
	0k5x72qo1ORk+KPdEW/Ny98YSoGXuyVwTGI26FZII/jQeBlEM4eArvMf9mH5rIk=
X-Google-Smtp-Source: AGHT+IGqZzEldpU1/algbNdzWdRvgU8R3XkGrHfgM9jfgkXwYF5W+sjHd4ln26EEr1jRdXi+TqJwiA==
X-Received: by 2002:a17:906:df54:b0:a62:2eca:4f15 with SMTP id a640c23a62f3a-a6821b7167bmr57133366b.48.1717138681893;
        Thu, 30 May 2024 23:58:01 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1a5sm54205566b.53.2024.05.30.23.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 23:58:01 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: biju.das.jz@bp.renesas.com,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	claudiu.beznea.uj@bp.renesas.com
Subject: [PATCH v9 8/9] watchdog: rzg2l_wdt: Add suspend/resume support
Date: Fri, 31 May 2024 09:57:22 +0300
Message-Id: <20240531065723.1085423-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240531065723.1085423-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240531065723.1085423-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ/G3S supports deep sleep states where power to most of the IP blocks
is cut off. To ensure proper working of the watchdog when resuming from
such states, the suspend function is stopping the watchdog and the resume
function is starting it. There is no need to configure the watchdog
in case the watchdog was stopped prior to starting suspend.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---

Changes in v9:
- collected Guenter's Rb tag

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- remove the usage of pm_ptr()


 drivers/watchdog/rzg2l_wdt.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index d77290f7fdea..2a35f890a288 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -286,6 +286,7 @@ static int rzg2l_wdt_probe(struct platform_device *pdev)
 	priv->wdev.timeout = WDT_DEFAULT_TIMEOUT;
 
 	watchdog_set_drvdata(&priv->wdev, priv);
+	dev_set_drvdata(dev, priv);
 	ret = devm_add_action_or_reset(&pdev->dev, rzg2l_wdt_pm_disable, &priv->wdev);
 	if (ret)
 		return ret;
@@ -307,10 +308,35 @@ static const struct of_device_id rzg2l_wdt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, rzg2l_wdt_ids);
 
+static int rzg2l_wdt_suspend_late(struct device *dev)
+{
+	struct rzg2l_wdt_priv *priv = dev_get_drvdata(dev);
+
+	if (!watchdog_active(&priv->wdev))
+		return 0;
+
+	return rzg2l_wdt_stop(&priv->wdev);
+}
+
+static int rzg2l_wdt_resume_early(struct device *dev)
+{
+	struct rzg2l_wdt_priv *priv = dev_get_drvdata(dev);
+
+	if (!watchdog_active(&priv->wdev))
+		return 0;
+
+	return rzg2l_wdt_start(&priv->wdev);
+}
+
+static const struct dev_pm_ops rzg2l_wdt_pm_ops = {
+	LATE_SYSTEM_SLEEP_PM_OPS(rzg2l_wdt_suspend_late, rzg2l_wdt_resume_early)
+};
+
 static struct platform_driver rzg2l_wdt_driver = {
 	.driver = {
 		.name = "rzg2l_wdt",
 		.of_match_table = rzg2l_wdt_ids,
+		.pm = &rzg2l_wdt_pm_ops,
 	},
 	.probe = rzg2l_wdt_probe,
 };
-- 
2.39.2


