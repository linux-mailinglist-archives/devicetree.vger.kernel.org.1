Return-Path: <devicetree+bounces-21966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD0B805E07
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:48:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB6821C21063
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18BF665ECC;
	Tue,  5 Dec 2023 18:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gpEQpc62"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF09FD43
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:48:21 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6ce6f4d3dafso166662b3a.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1701802101; x=1702406901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMuwtjnej1x8HFalp3Q3/OE/xfiviC9gRjxwKKTrR6w=;
        b=gpEQpc62O1bItJgwaYS33n3QRx0bg7SaxQZ+UbpjC8QwzanI0+gn9nayYjx+p3VEoQ
         IOVL8qx7o7ZF9TzF+j1URzR9MJsJemhepUEQv3HX9DxZVfv4p/Dz14OMvIJQPzqmJ44h
         QClHW7S4s88WtIOGPEeT8fAwTPMDdNWD4o/Sw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802101; x=1702406901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NMuwtjnej1x8HFalp3Q3/OE/xfiviC9gRjxwKKTrR6w=;
        b=XCg5eXDfNyd4CQimxH8KgmqdM5SSCsHt8w6j2ZB24PsZINyxF9D95H6jE8Ed9S86Is
         yL9ko+JirnuBjmtlDVN0uzhelaXCymzNqlxEjXSTfAZ5FKJGekhZ5BlpThNaKZ8sAioP
         MZ3MhHe006FJr4rVruKmvyF9eQe5dOzvS+M6CuoXrVasKAIO9DBjf3XGmHrHgfLwhOlA
         1f8nzrwdE+MpUh69ntDPQMGo98C02bRPCnddBHcCnalWY2LslHgx/eWeV91+mZejfFVm
         UPQbNz10ywFV2C6FyzwpZqcFAxWdWoxPAtxb1Y2ZS/8RX75NpurNIW7mQPwD38j264Jc
         LqRw==
X-Gm-Message-State: AOJu0YyHhcy9stYpoAYr+WROzpTJ1qmy4044w9TTFLPIwjrUj4i+ArCv
	XHRdEwDqZ7dFXEmq74t0UtDLeQ==
X-Google-Smtp-Source: AGHT+IG46+Q5aksBlxRdZwdbXbmdyxxtbUSk8xgwaeO6yDd7b65xBm2D2UXEYhMABHOhQrKOMFxh8w==
X-Received: by 2002:aa7:88c6:0:b0:6ce:4c49:58e4 with SMTP id k6-20020aa788c6000000b006ce4c4958e4mr8321583pff.0.1701802101086;
        Tue, 05 Dec 2023 10:48:21 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id k14-20020aa788ce000000b006ce5b404f5csm3213329pff.134.2023.12.05.10.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 10:48:20 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 5BF12D04; Tue,  5 Dec 2023 10:48:19 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/4] memory: brcmstb_dpfe: introduce version-specific compatible strings
Date: Tue,  5 Dec 2023 10:47:35 -0800
Message-ID: <20231205184741.3092376-3-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231205184741.3092376-1-mmayer@broadcom.com>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce compatible strings brcm,dpfe-cpu-v1 through brcm,dpfe-cpu-v3
to the Broadcom DPFE driver.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index a7ab3d377206..66876b409e59 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -924,6 +924,12 @@ static const struct of_device_id brcmstb_dpfe_of_match[] = {
 	{ .compatible = "brcm,bcm7271-dpfe-cpu", .data = &dpfe_api_old_v2 },
 	{ .compatible = "brcm,bcm7278-dpfe-cpu", .data = &dpfe_api_old_v2 },
 	{ .compatible = "brcm,bcm7211-dpfe-cpu", .data = &dpfe_api_new_v2 },
+
+	/* Match specific DCPU versions */
+	{ .compatible = "brcm,dpfe-cpu-v1", .data = &dpfe_api_old_v2 },
+	{ .compatible = "brcm,dpfe-cpu-v2", .data = &dpfe_api_new_v2 },
+	{ .compatible = "brcm,dpfe-cpu-v3", .data = &dpfe_api_v3 },
+
 	/* API v3 is the default going forward */
 	{ .compatible = "brcm,dpfe-cpu", .data = &dpfe_api_v3 },
 	{}
-- 
2.43.0


