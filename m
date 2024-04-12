Return-Path: <devicetree+bounces-58606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA9D8A28B0
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:03:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 861C7B24D21
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A29650295;
	Fri, 12 Apr 2024 08:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Jv40nUhN"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A22B4D9F4
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908975; cv=none; b=QL8026eheZXXUqZHn7xJc6M2mEz3y+B7LL3ubwWZWsZqSC+XQO4SkXrnwd9wMBGfANA7hvjf+exyEjHNroRp1c9eZaLwDInH8cY1TKB0Y8sSQceugjZHrnu7j8+iV4zkizVIgZCWdOr+Va0C16W5FatMGdge2JzwYh+aFcmC3bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908975; c=relaxed/simple;
	bh=krFqUqxMYFpZh1tbkYjt3LaFLR2okMC7+AptUzC+lDI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DCDG0xVCBJwFVrGi0O6KZj68lEOfQS+gUKU5ufsf0/+BdrDWoEC5cYkAvxEZ3tPG23kPZN6WQTxsUhhQG/RK+t0/yE1Z/v8ecLsE9XlX3rza2Y/bzKSifmq+SHseKvFK12vyyXTzyhQT+l7OGBacje4YXSoxPHzo0hxkLFA4C70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Jv40nUhN; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712908973;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Pz7sr6/1kgAHbwaR8rIkOs2x2hB/0ZeZUDnCetvC4ZQ=;
	b=Jv40nUhNxZbq5X11s8jdVo2u8+RR+ovv9iRg+rSBaa83+qr9wLZSruDDhlT2UZpB7RhJDg
	zkXoJNg1jf/SiXAI/cBvIQPtjBR3j1yJrSIylydPLIrwYO7mwaZqbrd8Gb+OkfSoZTeAMT
	7mDo6Rl9FXWFDBsZwHFnbsljSos58vk=
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-dNvXD8NFOsebv-Cy_CUOzA-1; Fri, 12 Apr 2024 04:02:51 -0400
X-MC-Unique: dNvXD8NFOsebv-Cy_CUOzA-1
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-5cf555b2a53so1109855a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908970; x=1713513770;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pz7sr6/1kgAHbwaR8rIkOs2x2hB/0ZeZUDnCetvC4ZQ=;
        b=mu0qSkOpZPiTq5ONLe7na7zqdkT4KbUZf34YnHmZfX7Byt0+8uOyFm8C1tvl6MOYrQ
         EoqoMI494whyRQKb5zfpfYgfmBgpZWvxnITw0/Bvx4RR1ijd0+0IOnWfLFvF3nRaay8m
         FH8LlbV4n+tkJoImLnXzPwRUm3MXcm1D/oZK7n6QTlkZmJTQcDfgekUF4C1aAYZBePd6
         CQTklt1aIwaI3kEyBwvHuLdwg78XTwmg6Js4VpwD7Es33+D2a1hdhO4Q88tlwvLI0h+w
         X0rhIqkT/3p91nOdBXWzY8GeSfCEBT6zuZWpUltc51NmEySagsZAAvSpdX0J9wpxbdUJ
         MP6Q==
X-Forwarded-Encrypted: i=1; AJvYcCV/zNyBnHngD3hy6VKVHIkd++qJ7/cu6wpNofNGIw6lyx58pxdUuEbUzBwPOsYbXVzZk7nQ6FLMbcijRCxrKFJ0refGVHBXtVEwDw==
X-Gm-Message-State: AOJu0YzN3e6VTEzMdWGJUVJL8AyeLaNLnndW9ww7cnh8aw1XdGAOEPKU
	mHRX3lwDY8rmMybyZfg+OWkkdbxocgi6DdjBDnOMQx/iw7za+Xo5jDcHpq6t5s9HPAImDcASpdf
	TchZmRrHe4eP80kGTdrV/XSIHK8lnvD9oCDsAGr03aV6VZtSi5vsVbK0nWoQ=
X-Received: by 2002:a17:90a:4b4e:b0:2a5:6753:98e0 with SMTP id o14-20020a17090a4b4e00b002a5675398e0mr2893959pjl.0.1712908970364;
        Fri, 12 Apr 2024 01:02:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0opAzUeUMJ2l2tzohRqw1i5Cs00vZK25Zmn1qxqR4RzTaHhyge9+KGBE/PeqC9yl/vyn2GQ==
X-Received: by 2002:a17:90a:4b4e:b0:2a5:6753:98e0 with SMTP id o14-20020a17090a4b4e00b002a5675398e0mr2893945pjl.0.1712908970064;
        Fri, 12 Apr 2024 01:02:50 -0700 (PDT)
Received: from Samantha.redhat.com ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id c9-20020a17090abf0900b002a610ef880bsm2601514pjs.6.2024.04.12.01.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 01:02:49 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	guoren@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 1/5] drivers/rtc/rtc-xgene: Add prescaler support in APM X-Gene RTC driver
Date: Fri, 12 Apr 2024 16:01:43 +0800
Message-ID: <20240412080238.134191-2-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412080238.134191-1-wefu@redhat.com>
References: <20240412080238.134191-1-wefu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

This patch add Counter Prescaler support in APM X-Gene RTC driver by
getting prescaler (Optional) property value from dtb.

Signed-off-by: Wei Fu <wefu@redhat.com>
---
 drivers/rtc/Kconfig     | 10 ++++++++++
 drivers/rtc/rtc-xgene.c | 31 +++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index c63e32d012f2..3a89f1e6095d 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -1888,6 +1888,16 @@ config RTC_DRV_XGENE
 	  This driver can also be built as a module, if so, the module
 	  will be called "rtc-xgene".
 
+config RTC_DRV_XGENE_PRESCALER
+	bool "Pre-scaler Counter support for APM X-Gene RTC driver"
+	depends on RTC_DRV_XGENE
+	depends on ARCH_THEAD
+	default y
+	help
+	  Say Y here if your Soc has Pre-scaler Counter support on rtc-xgene.
+
+	  This hardware support can only be found in DW_apb_rtc after v2.06a.
+
 config RTC_DRV_PIC32
 	tristate "Microchip PIC32 RTC"
 	depends on MACH_PIC32
diff --git a/drivers/rtc/rtc-xgene.c b/drivers/rtc/rtc-xgene.c
index f78efc9760c0..4d6f1629b973 100644
--- a/drivers/rtc/rtc-xgene.c
+++ b/drivers/rtc/rtc-xgene.c
@@ -26,11 +26,13 @@
 #define  RTC_CCR_MASK		BIT(1)
 #define  RTC_CCR_EN		BIT(2)
 #define  RTC_CCR_WEN		BIT(3)
+#define  RTC_CCR_PSCLR_EN	BIT(4)
 #define RTC_STAT		0x10
 #define  RTC_STAT_BIT		BIT(0)
 #define RTC_RSTAT		0x14
 #define RTC_EOI			0x18
 #define RTC_VER			0x1C
+#define RTC_CPSR		0x20
 
 struct xgene_rtc_dev {
 	struct rtc_device *rtc;
@@ -40,6 +42,33 @@ struct xgene_rtc_dev {
 	unsigned int irq_enabled;
 };
 
+static void xgene_rtc_set_prescaler(struct device *dev)
+{
+#ifdef CONFIG_RTC_DRV_XGENE_PRESCALER
+	u32 ccr;
+	u32 prescaler;
+	struct xgene_rtc_dev *pdata = dev_get_drvdata(dev);
+
+	if (device_property_read_u32(dev, "prescaler", &prescaler)) {
+		dev_warn(dev, "Missing the pre-scaler config for RTC.\n");
+		dev_warn(dev, "The current pre-scaler config is 0x%x.\n",
+			 readl(pdata->csr_base + RTC_CPSR));
+		return;
+	}
+
+	/* The clock source on some platform to RTC is NOT 1HZ,
+	 * so we need to prescale the clock to make the input clock become 1HZ,
+	 * like (clock_source/prescaler) = 1HZ
+	 */
+	writel(prescaler, pdata->csr_base + RTC_CPSR);
+
+	/* enable RTC Prescaler feature in CCR register */
+	ccr = readl(pdata->csr_base + RTC_CCR);
+	ccr |= RTC_CCR_PSCLR_EN;
+	writel(ccr, pdata->csr_base + RTC_CCR);
+#endif /* CONFIG_RTC_DRV_XGENE_PRESCALER */
+}
+
 static int xgene_rtc_read_time(struct device *dev, struct rtc_time *tm)
 {
 	struct xgene_rtc_dev *pdata = dev_get_drvdata(dev);
@@ -174,6 +203,8 @@ static int xgene_rtc_probe(struct platform_device *pdev)
 	/* Turn on the clock and the crystal */
 	writel(RTC_CCR_EN, pdata->csr_base + RTC_CCR);
 
+	xgene_rtc_set_prescaler(&pdev->dev);
+
 	ret = device_init_wakeup(&pdev->dev, 1);
 	if (ret) {
 		clk_disable_unprepare(pdata->clk);
-- 
2.44.0


