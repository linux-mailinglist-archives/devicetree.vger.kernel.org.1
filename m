Return-Path: <devicetree+bounces-174201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D10AAC570
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 15:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51AF31C42E4A
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E90FD280A47;
	Tue,  6 May 2025 13:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rgQdvIU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546D628003B
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 13:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746537029; cv=none; b=elIdwS8usScU7q0u4Whj6OvRdJUzrwh8jAtTNFYdeNO1pz1vU3ZFNOEHFTbLPtjdhT/hsI4hKT8a+40HBxXQ9t+vOza3r5qJExFLJHJROzhOZ3CVGffVVmEuwmBB9m1H+aH9AZ8wDX0dOuh3FX6XtfNd3H7NgXQ0Fx+FxKqJA7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746537029; c=relaxed/simple;
	bh=fK59Oou5drgQyhp0Ss+j4VYrMmVw0bDtAiWMF9Ozu5U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L37Ym9qij4n/XlMBfspg613UKaeyYEaAJDQ1u7Svq4w0cFzMDJgbeneKSqs7/wF0CltINRuIle0sNLWObAzj19Lm2YhhGw/kxnfM8fW4K/92mtoXoCbqo5TtB+Lbyk2Y59hfeY6Bub5SQU0rQb0MvfbQcZ3LaYtqyun340iSxhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rgQdvIU8; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3912d2c89ecso4502252f8f.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 06:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746537025; x=1747141825; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j7hjl3tAkLPYtX6/B2YAWQ6GsOIrYFPOtKZDg5lJipo=;
        b=rgQdvIU8Wgoph89KHmvIdRzGLA46hKnq8YNvFmQU9aFK7mKkcLsmi9PAeaSckyZz9D
         U0kzWXeyKmcv8uh9VdBlXIaF7SvqveE1dV4qWDXOwihJgblTSvxniE3jDMDB01W68lE/
         T4Ts0SRiAKT3nNiSFeKJ3S/ET9iiUV80+tlsqfyWIQpFhspSDeo7I9F3neo0LppTRkbY
         Gapgm2ng1hvYfAYNbh6UVdZ/ejpADcdgtz9VbnFGmWHT12VnjHlvk653SRnEl7ECZ3Pg
         ic521jpizxKEEaMVvlZCCSWOOvpTz4lm3Bkf1pTh+sQd1cKTdpwCC3RWyRtF4LvFi3Bk
         WX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746537025; x=1747141825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7hjl3tAkLPYtX6/B2YAWQ6GsOIrYFPOtKZDg5lJipo=;
        b=OZUja5hfUmR7cAsCddQSaxiwzmoKs+cGQsCkP+veytO4OjpgF8Jb9BIFPD/n/JVcph
         URS8Zr+z2dLAww5un5zQX2vLFU2xvRkyTQ/IQro3LZsfZYvd9FhfpDICGpM/mwh/5Iq2
         q81YFcG7HLcdv7XUkEaFswmL9VgapK2vMRnXglrvkRUrnyEadGRQwQxpT/omr0TKy4sL
         Kx3eC3oXRhuDS1EVFNnTaNdatbcU3am1+pimlqDq4lkyHlQYIA0ih1Ef7k6UNYoPPWu8
         yY9peYAIbb89GGiw0m1senkq7NHjkMJVT79bt7LyvAmqH6JJ8yFebbdY3o8rLsB40ypE
         YUAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCpBf5+V48SNflegviAD1Rt+fhCScQJndqB66mhhptd3lbBSFbZ/QqIf/HD0o8hQP5yAWWNceDbdEs@vger.kernel.org
X-Gm-Message-State: AOJu0YyMjxE2Q7dmqTdaJaJZXt/R1hV84v/9/oEHlP9KysHG7FJHevzf
	hkjvW7aYzGdZm/MEIn+b6tH/qOnWegZ3gcZlghhzC785rerHkGQpvBf3S0Y970b8LGaXzIniJ64
	f
X-Gm-Gg: ASbGncvxP1Q54lcqIxNHXC7Iyy/xtK8jhhB1Id0FmDlhIHW+zMVgrvm4eTUusxvAbc7
	mxIFl+4+gkH5n8rsRgJxXObI2Lm8cVL0XHAuAOeAwdHqftN+fdUDBUiKYjtMui6rys4Z0A5LA1u
	JfeGvpDJqTOUXlNjhmrhDBPIcTYtQTgAKwdBWQDySfuiv18/Z35wX9hJLvUUeA2OvkEsor04Shu
	ZWpXGYX6Gq4i+pP9wqWeP3d1mrdX+Xf5K495235O4uMPqVW+wsNVRgt+9itDTvnzQ4/PRWsSYSi
	KzrQoTHdm1kaK9otdjuCuiocoVyFs19AoFaVkjSMIuz0Qo+1EODqIVs=
X-Google-Smtp-Source: AGHT+IEiRsxAkVrXgPCAZV3F4X2CztHeRG9ctQ5zIhdFUM3PU84EJKKoITEP995ACO1Ck8FEqkm68g==
X-Received: by 2002:a05:6000:18a6:b0:39e:cbe3:17c8 with SMTP id ffacd0b85a97d-3a09fd6ce46mr7930291f8f.12.1746537025293;
        Tue, 06 May 2025 06:10:25 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:3f93:4614:996d:f5f7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a0af3255afsm1771268f8f.66.2025.05.06.06.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 06:10:24 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 06 May 2025 15:10:09 +0200
Subject: [PATCH 2/4] mailbox: qcom-apcs-ipc: Assign OF node to clock
 controller child device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250506-qcom-apcs-mailbox-cc-v1-2-b54dddb150a5@linaro.org>
References: <20250506-qcom-apcs-mailbox-cc-v1-0-b54dddb150a5@linaro.org>
In-Reply-To: <20250506-qcom-apcs-mailbox-cc-v1-0-b54dddb150a5@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-clk@vger.kernel.org, Georgi Djakov <djakov@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.14.2

Currently, the child device for the clock controller inside the APCS block
is created without any OF node assigned, so the drivers need to rely on the
parent device for obtaining any resources.

Add support for defining the clock controller inside a "clock-controller"
subnode to break up circular dependencies between the mailbox and required
parent clocks of the clock controller. For backwards compatibility, if the
subnode is not defined, reuse the OF node from the parent device.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 drivers/mailbox/qcom-apcs-ipc-mailbox.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
index 11c41e935a3619b74ad0f5e2d82699ca8aa05722..8b24ec0fa191efc975625d9b9270140ad1fe7b9b 100644
--- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
+++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
@@ -116,10 +116,18 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 	}
 
 	if (apcs_data->clk_name) {
-		apcs->clk = platform_device_register_data(&pdev->dev,
-							  apcs_data->clk_name,
-							  PLATFORM_DEVID_AUTO,
-							  NULL, 0);
+		struct device_node *np = of_get_child_by_name(pdev->dev.of_node,
+							      "clock-controller");
+		struct platform_device_info pdevinfo = {
+			.parent = &pdev->dev,
+			.name = apcs_data->clk_name,
+			.id = PLATFORM_DEVID_AUTO,
+			.fwnode = of_fwnode_handle(np) ?: pdev->dev.fwnode,
+			.of_node_reused = !np,
+		};
+
+		apcs->clk = platform_device_register_full(&pdevinfo);
+		of_node_put(np);
 		if (IS_ERR(apcs->clk))
 			dev_err(&pdev->dev, "failed to register APCS clk\n");
 	}

-- 
2.47.2


