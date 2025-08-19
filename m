Return-Path: <devicetree+bounces-206115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8631CB2B8E1
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C262258208D
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7EF311591;
	Tue, 19 Aug 2025 05:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="aqwlLrji"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC273112DE
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755582150; cv=none; b=gwdiNBfcXcswKvWA1607J6AwhFqkvgzhu8Z4ZdIudfNjTvyL94ufbI63XUpbkGYosjZ6G2qSVRxmgabZtsa73+8B9joVrxpzQm/N58JYTTtebdbubIkqwdEIURKUeor+jMepN0pkX0MeAZ0PRL0KLRqYm+6vSzjvFHBlb7rdJhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755582150; c=relaxed/simple;
	bh=I2pIHduqkXRd0dLvTIouEU/KSG35hJ2SXBnZux9yRG4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FzjQvKeDDorO0ZxK8CStVPub8lVMvlHaOADF9TSS6Eva1+zRVUddwSxQfqEXEalA8i4bCBao+6PJQHy0DATjfPXo3KxaywIWGSQQvbJLYzbPm1L9Klb1JT470WXucMZpZOyY72+E052zHu5MqNaaCCzwe+dmq+UI8zcMOqOZulM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=aqwlLrji; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45a1ac7c066so27581945e9.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 22:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582147; x=1756186947; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dRX0/ILbGcYC/ZOQ37kJqtpxqFwl5Y5CWHl3KvwJH70=;
        b=aqwlLrjiQ6l2Pt/S5Erw9BdgoaYUKGklnFlaO9M9oS6u/1XrXYGm1g04etCef7wz8V
         GnAvyBcZFKUCRvAIj5l/yZoY9kdsmQ3J1wdxgJConHkfjnXgRoq5QGNop0P9swTGJQKw
         usRAZDWWrHyQC0I2b0/1qOl+7OHaD78jqOLUEtMrZ4ZLU1r8kiZyGxc5pNKsfrhzpu3j
         KHX1LJLILWOyrEpjrgpWJlv0Jqax2kUGIYYCEZxgKlxIz9fdNeQ26rMcOibWMphjoSZk
         bAwpyLQvYR7FPff7pRwxF1rumMbXeqMJ3/nqMZnEDA/RdovNBu69sYslGPEO6L8A/qEF
         4D+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582147; x=1756186947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dRX0/ILbGcYC/ZOQ37kJqtpxqFwl5Y5CWHl3KvwJH70=;
        b=Sp+vLM60ceUr2sdaiUKNkbGPNOPYSjzeokQzTJEaNE3vWLqF8RYwk9D5w59KE1F/4s
         epxbUrHgWQ1q1VhtmcEraOHZ5VeRZPeqY6Bcws5ntJQdHCbXmGuDZhcP3gksTJN5rYUv
         wADa09khSGwA6sdqCnF0I6QL4mL+74ZoG8TsM2zWZ9n8kmsQ9OLfYfbb6zV4GRZVxtMz
         p7QjWE11cCBC6g562+ZWVoZZqI7apZMYtbC96p89YRcyVGitQVEammk3V/mKq2GKfaXs
         leO7W3hGG2fzJjd8jiSPzQOubuCyzzpYvEBisWVJKKjSyCUBab2WSMS6AHYkGb9je2+E
         6R4g==
X-Forwarded-Encrypted: i=1; AJvYcCWbCeRoBdxcoKKLjlVeHNE+AoofIN/MxuTws0cVgfYo07loywRQat+50pgWIeEZroZ/50B3WzmAPJzR@vger.kernel.org
X-Gm-Message-State: AOJu0YwhULSuKNF1gxViQwQYSQH0BPw3bTmD7/hHd43GCnvpOzCbZqgc
	1YhQNvO4CsvhsWbZMDQ8plfsWyadpNtZlZGc77IRezUiGuUAhD0cDhJKd0nWyYrAH50=
X-Gm-Gg: ASbGncvRLG75D2JgAjpuej2fxb1amSDb7OqVpqnR9E4S+N2UBhFsGIffjZfYYTKYDmP
	IH81D3/17CYWev7lJSgWQy2QdTn9aNBVxt4QEnzmFETjayGnECMQrMUZrYljXiJRJFRJl5UTz+d
	Q81KreS0gHJ+L/+V0itU+WhN1EFkZkj+qjoah8X5RLoK0rie5+SbcrTwCfW3K/1gxtR+WokhUAH
	CKibA2G9LJMN2zewvHfe9hL6liRaI3sJ2keFJpmAJmdgCbSvZN3btsy//jeVfNWIGPzjJefmuZp
	Hcs/wJWFuSQF7GW9FT3g2AbC4ySG/tM5QdTENxkPzRBbFPgPocyr7sNWe7xOU6+iEiiveb0pTme
	dzJftiGIgWF1q4phnQV+hXIHP4WoA+MEox0nMeuwr0yQ+FYGZQ9tgBfl7Y6Bnw+USY35IZdCyyq
	k6Trx2A1gzuZB3FDDaug==
X-Google-Smtp-Source: AGHT+IE82eFUk/hVv5JzkA8bqsXhoqq+l404vddic1GqJDoG4Xu5ff4Uf0NgyqJJ6Jq6LFzRsve22Q==
X-Received: by 2002:a05:600c:3f16:b0:456:1146:5c01 with SMTP id 5b1f17b1804b1-45b43e972abmr8107215e9.12.1755582147370;
        Mon, 18 Aug 2025 22:42:27 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:26 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Tue, 19 Aug 2025 08:42:10 +0300
Message-ID: <20250819054212.486426-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new

 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 3856072b23a3..924c614f84cd 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -108,6 +108,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


