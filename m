Return-Path: <devicetree+bounces-230963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA215C07E6E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 21:26:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF8571C22C2C
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6DE29B793;
	Fri, 24 Oct 2025 19:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="UFGiBeRL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5A2299927
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 19:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761333949; cv=none; b=EEI1TwZefjbMH5A9GH9FOeFgey2aXtpfdtN+wJbZ6uYWa1C0AjuIS7wmtotAh24PfPaqLpwydmW/lb/BxjOHy7LQ4Eo9R80oFNTrHKr2KUDKIr0We4BCPdu0KY8IsK14LVpU5TvltgBAkdf2GJKUb3IgXeA+KIzXG1KTuGIDTfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761333949; c=relaxed/simple;
	bh=RA1HBJr1pvpGPQx/F/QWCM3HnULtIcuIEao9BpBXpjc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IHO1zlheP4xsfWznM5ypNbxfwNEimiyNI/q7MJbnB4zUWzhazsZ4pUqvHQDfUR/tarKY2uarEEBvF/jDcNKaSFVHXbpIRowkdvfehENC/17AMc5Fng/djdvnc4mcFQOJgXHmqNKV7hx+l8iFToterysF0OgqZPvvYO3mGxosSrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=UFGiBeRL; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4e887152679so20219671cf.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1761333945; x=1761938745; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qvGYViK2JagPLVRvTto0N8MsPE3ARm8sobByJt0eGdw=;
        b=UFGiBeRLJsGyrAi2uk/s6x+LI2a/Orux20tB9ZOJZPVvabEAuruelD/PETtGEfRxAx
         +xYGlCEZkOcrct0bQnguLB25sqnCNNIqoQXejOcErqUhj4q9O1Fe8/7s/bWKCOJ7SMyD
         Bi4Hhr0gR4cLmxVLyMaMYkkD5IFHhxGkqhCZ6Xi6bRo4/8JoztBT+WWx7SI828mOyYIQ
         IR6aX5WAVwmymqW7FKMoSf0yqWfx1ct8f5A9bLog4BaausiXoyNqveJjCmLmM2wuZYXq
         uSWB4K1YfQ2g4iVY2v5FkSnw6pFVFjQJV4fp6n2JA9IZ7W3CQ9vC+25hEWJNQid1z2X/
         TIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761333945; x=1761938745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qvGYViK2JagPLVRvTto0N8MsPE3ARm8sobByJt0eGdw=;
        b=ayeQzaBIl0x9YhDu2taPZAalmJigv7Q2itfxdIqncJQIjLZRxaMae9RH7XSCGh7zsV
         jJVHvH0ny1oEBubv6G9MFY6tNoRqNOAyOZvElIqDCFHavbDAyUFasXsfrcVDmk6ox1xI
         zS0VKORtDk8g2KqK4N5CnyTFbMnLp6OWXQ1avhZQr7D5FoOK3Arx7nETqvapwaeo6Ptz
         viOgyPd/DEUQdi14hb6Zc25DJfzeLJqdkL2w8CGSxV21cfJ++XkCI+Ur8iD+NsD2Gwu8
         LRN9QQh5ReAx9HVwRwfth8PXWSRm0k5XVFEMEdNSNe27ArdsPIyrHyay0vK/8mymMLc4
         1FZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpD3KR7LbcQuAmBrGmCk8drFo9iLEO0drC5ocTyzmtSr6JLksQvcDqG6XN8AqK1oXFz5hjWR2OiMpG@vger.kernel.org
X-Gm-Message-State: AOJu0YxOGoZk+H/72wiX9/MS07U0xDSI1h8C1Q0fCbrpGmOj40VTKAEb
	ENCtoP1Ci4h/en4jHNtI84Gu8mD/JVIqU4JHHQ94zChQnAaQnW+ifuWDCPwz+PEbtIU=
X-Gm-Gg: ASbGncupU77zW+ZUzA6dVSyEiCW4T6nHYuBD9qjCSH9TwQMdt8TcaLj4mFSA6kLLCrd
	aYLic3EaRjAyDiq7cXCd7vgxcPEM7bgQzOKbtP0q4LNaCh/TN00Jc/zZxFQI9knjP0tySEDdFg4
	NL2EWwShCUbRoWzvNrQwbGf8JrR4sRp1SC5B5JcNA6BUGWblhvplKO945yVr7SA04XdoWSB1nLL
	7qutOuVRjC5ZcpxxGgSS5AxIQQaiyhhogTSNN68pdn1rnwmU+aEdpW3q7JYWSedWn6Yh/G7CoKa
	h1NjWGVJADXb2RcysGfMOAZae0nI+oGa9MhybQmnuuq0JdSWhJkJnYefu+mItPFiYq2IgqOJH2V
	FhAJgIbXhut/2sQ51eCD9ZUEkmLIv+IC9yfOfYULNuNPs6WLR77/eBXT4tatq7XNd0i61xvl8pg
	JJjVWmUn14ixSo6/BosxS624K7vak=
X-Google-Smtp-Source: AGHT+IHWqTqM7qpQwb44DeW10IvVUPdY02tQLEZoYK1mvAdCabWKcBGvVJZ0721R/SqM+DcQ9UDPhg==
X-Received: by 2002:a05:622a:1:b0:4e8:8274:5efa with SMTP id d75a77b69052e-4eb92abbbc3mr51602341cf.8.1761333945392;
        Fri, 24 Oct 2025 12:25:45 -0700 (PDT)
Received: from fedora (dh207-15-125.xnet.hr. [88.207.15.125])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-89c0e97efa6sm438239185a.24.2025.10.24.12.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 12:25:44 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: srini@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	horatiu.vultur@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/2] nvmem: lan9662-otp: add support for LAN969x
Date: Fri, 24 Oct 2025 21:24:53 +0200
Message-ID: <20251024192532.637563-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251024192532.637563-1-robert.marko@sartura.hr>
References: <20251024192532.637563-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Horatiu Vultur <horatiu.vultur@microchip.com>

Microchip LAN969x provides OTP with the same control logic, only the size
differs as LAN969x has 16KB of OTP instead of 8KB like on LAN966x.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 drivers/nvmem/Kconfig        |  2 +-
 drivers/nvmem/lan9662-otpc.c | 12 +++++++++---
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index e0d88d3199c1..d88b917889bf 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -138,7 +138,7 @@ config NVMEM_JZ4780_EFUSE
 
 config NVMEM_LAN9662_OTPC
 	tristate "Microchip LAN9662 OTP controller support"
-	depends on SOC_LAN966 || COMPILE_TEST
+	depends on SOC_LAN966 || ARCH_LAN969X || COMPILE_TEST
 	depends on HAS_IOMEM
 	help
 	  This driver enables the OTP controller available on Microchip LAN9662
diff --git a/drivers/nvmem/lan9662-otpc.c b/drivers/nvmem/lan9662-otpc.c
index 56fc19f092a7..62d1d6381bf8 100644
--- a/drivers/nvmem/lan9662-otpc.c
+++ b/drivers/nvmem/lan9662-otpc.c
@@ -27,7 +27,6 @@
 #define OTP_OTP_STATUS_OTP_CPUMPEN		BIT(1)
 #define OTP_OTP_STATUS_OTP_BUSY			BIT(0)
 
-#define OTP_MEM_SIZE 8192
 #define OTP_SLEEP_US 10
 #define OTP_TIMEOUT_US 500000
 
@@ -176,7 +175,6 @@ static struct nvmem_config otp_config = {
 	.word_size = 1,
 	.reg_read = lan9662_otp_read,
 	.reg_write = lan9662_otp_write,
-	.size = OTP_MEM_SIZE,
 };
 
 static int lan9662_otp_probe(struct platform_device *pdev)
@@ -196,6 +194,7 @@ static int lan9662_otp_probe(struct platform_device *pdev)
 
 	otp_config.priv = otp;
 	otp_config.dev = dev;
+	otp_config.size = (uintptr_t) device_get_match_data(dev);
 
 	nvmem = devm_nvmem_register(dev, &otp_config);
 
@@ -203,7 +202,14 @@ static int lan9662_otp_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id lan9662_otp_match[] = {
-	{ .compatible = "microchip,lan9662-otpc", },
+	{
+		.compatible = "microchip,lan9662-otpc",
+		.data = (const void *) SZ_8K,
+	},
+	{
+		.compatible = "microchip,lan9691-otpc",
+		.data = (const void *) SZ_16K,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, lan9662_otp_match);
-- 
2.51.0


