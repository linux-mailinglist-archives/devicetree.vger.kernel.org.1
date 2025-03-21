Return-Path: <devicetree+bounces-159738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B7EA6BE44
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:23:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61028189CD58
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8F7922D4C9;
	Fri, 21 Mar 2025 15:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0Gfz8NrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1FD522B8D7
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742570326; cv=none; b=PLxjAH/RxjmPY/GUCQN7J0SXqt1d7b2TkGpPZUgwkIMXKnswS+/MG6+e8RDi4s9Fr+XoFSgGtK+47tPfnAg3qsaZ8FlQPFdZAaDQXVBlJYGaxb5Q62xS5WrL1T0/G+6thPZ9f6iKbDKOV9+6i4Kxv2ChUjfxC258N4ZIF+3lBT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742570326; c=relaxed/simple;
	bh=7QAAJf2NOHMjLyRwHDC/VFO3OWMb54/brTQBqB150Y8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m7cmFR4TXEFYKehDS7jZISULsnlxksk3T+AOO/4GL+G5cmCoXMR8Vqn2oRBzg8JdcDzT4aaL7sBSZauUSHp22kSg3/NXpiAGPo+ylh4p+x0C5Bh71NKAbbdpNM3W8vf6phc1kwxPSJ4sshrAKBWUqqWyHZa3Jz5Ns4fui15eTDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0Gfz8NrA; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-85e15dc8035so46426039f.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742570323; x=1743175123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SOH9+f67UaOTwwttF6Hojln5eRz8NpWPkTKFPaDKYGI=;
        b=0Gfz8NrAaHMI9TaWpSKpbadFVIhsBYNg71lm3i0kNmNMmgATTBaa/AuiIr0kAiXSjr
         LxRcmhK/BRojDwn6KPBzcfAcjmFVQ6HpBnC9gmNdQECk6Zo9TQsSPiSwLIYCNCmVMLWm
         1g3Sm0LDyfAkv3tEulwONZP/R/uVWpIaLOzF6LSI5zn8wGuF2IX0N+NbPrr3WF5WJaNG
         1at5ilOpeKBALzKSb11GvfwZC476QtQWU3rAdwBPG3jOXJozhn8FVctLyElFqGcupGvQ
         WnXzZfU4g7OIaTAT5n184qvFLimobvYPcc5X9MPX1ZK9TwjZu/eQasD+zasw/vXsAXOv
         MZkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742570323; x=1743175123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SOH9+f67UaOTwwttF6Hojln5eRz8NpWPkTKFPaDKYGI=;
        b=gYxAc8wn7i6MJvkU4QFbgfLTb626Lc03gCEp2NYGb4RGn2KXLxzyQj/2z8MQXxQg91
         1uu/OgL5A7+OjUnuTzrlXO8oTpGLRhvvFla53Z/Aqw2xKd4GmCTL3XLc1csUPFVjxm9v
         C7q9ecGY0tG2ySKuXS+zqSnKKkYTZ6w8Z6+RhzaW6pgX1opQela9yXrLHnSHjMyF3uvY
         0oo/mek1MdkaBVwOENook1WoBSs4GbmXyZY09efiszKS4EZqf8FxJ5/F/lZDurD3Y8Jr
         7Fd+WrHwbcgj75A/MEL1kqbETUK1Lv2AZya8WNOtn1JMixaLjIxCByn5mEriCeNJTNwK
         kBVA==
X-Forwarded-Encrypted: i=1; AJvYcCWhbHOgsVUJoqqTwfHP+YY3Ll88Mgvk0iNliOqFLRseYi5ICOOv1K4kC71phdvgzt1QIspB0uRfwAkx@vger.kernel.org
X-Gm-Message-State: AOJu0YzYB6mUBq7GttiwqSNYRdBHnSdf/gOXye27fvlWvEb/vdvAIijD
	4eJ6A2nhq0cEqbM52W0N/ZK7/ySfgD7xeIQbLZACc69ingJXq6evfdoQeDBwG1Q=
X-Gm-Gg: ASbGncuZ/A9CmbhxkWSx9KjgeMvjIQE/vk6Cq/O9Q2/t4WVdUY9KK/mgyucSwv3ci1V
	+9Bn6/TwAOkXn2TS9I5V6VXPMLMSb9PzhYchzCanYXSSfwLV7mYPNSiwJqPhTGvnO2/qFDatTik
	6YAZ7ky+lhPjmn30HWJU0wmpS357c5nuJjUP/JVxtRXbjU3xDhxnuNY4ViZMy0OodrCtPnbiRVV
	1ocy5tVdL8COV1zV3bf75brCCySl6rrw8/1N6j38albIgj7fLkoJrI5LSTX0QoDV5YrLASgd8I3
	oaIniFPBdJ+VVVR9lpSBH1AN5iE0R94VjXXLOlmWW+MIPPJ9+F/L1YXYt3ACADIBfcXsVEq74oa
	yfTF9hPZN1LrNznBCyBCIViJ0
X-Google-Smtp-Source: AGHT+IF/Hdzj6qersLRDCR3zz5/D7xP2GuJej/d+Z4QpdhOjbhKoRLFIjr/QXQ/fsdYRqhMLr9/wFw==
X-Received: by 2002:a05:6602:4c05:b0:85d:a69f:371d with SMTP id ca18e2360f4ac-85e2ca55b1dmr441679539f.4.1742570322839;
        Fri, 21 Mar 2025 08:18:42 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f2cbdd0a21sm475553173.41.2025.03.21.08.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:18:42 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heylenay@4d2.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 6/7] clk: spacemit: define new syscons with only resets
Date: Fri, 21 Mar 2025 10:18:29 -0500
Message-ID: <20250321151831.623575-7-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250321151831.623575-1-elder@riscstar.com>
References: <20250321151831.623575-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable support for three additional syscon CCUs which support reset
controls but no clocks:  ARCPU, RCPU2, and APBC2.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 106 ++++++++++++++++++++++++++++++++++
 1 file changed, 106 insertions(+)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 17e321c25959a..bf5a3e2048619 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -130,6 +130,37 @@
 #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
 #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
 
+/* RCPU register offsets */
+#define RCPU_SSP0_CLK_RST		0x0028
+#define RCPU_I2C0_CLK_RST		0x0030
+#define RCPU_UART1_CLK_RST		0x003c
+#define RCPU_CAN_CLK_RST		0x0048
+#define RCPU_IR_CLK_RST			0x004c
+#define RCPU_UART0_CLK_RST		0x00d8
+/* XXX Next one is part of the AUD_AUDCLOCK region @ 0xc0882000 */
+#define AUDIO_HDMI_CLK_CTRL		0x2044
+
+/* RCPU2 register offsets */
+#define RCPU2_PWM0_CLK_RST		0x0000
+#define RCPU2_PWM1_CLK_RST		0x0004
+#define RCPU2_PWM2_CLK_RST		0x0008
+#define RCPU2_PWM3_CLK_RST		0x000c
+#define RCPU2_PWM4_CLK_RST		0x0010
+#define RCPU2_PWM5_CLK_RST		0x0014
+#define RCPU2_PWM6_CLK_RST		0x0018
+#define RCPU2_PWM7_CLK_RST		0x001c
+#define RCPU2_PWM8_CLK_RST		0x0020
+#define RCPU2_PWM9_CLK_RST		0x0024
+
+/* APBC2 register offsets */
+#define APBC2_UART1_CLK_RST		0x0000
+#define APBC2_SSP2_CLK_RST		0x0004
+#define APBC2_TWSI3_CLK_RST		0x0008
+#define APBC2_RTC_CLK_RST		0x000c
+#define APBC2_TIMERS0_CLK_RST		0x0010
+#define APBC2_KPC_CLK_RST		0x0014
+#define APBC2_GPIO_CLK_RST		0x001c
+
 struct spacemit_ccu_clk {
 	int id;
 	struct clk_hw *hw;
@@ -1781,6 +1812,69 @@ static const struct k1_ccu_data k1_ccu_apmu_data = {
 	.rst_data	= &apmu_reset_controller_data,
 };
 
+static const struct ccu_reset_data rcpu_reset_data[] = {
+	[RST_RCPU_SSP0]		= RST_DATA(RCPU_SSP0_CLK_RST,	0, BIT(0)),
+	[RST_RCPU_I2C0]		= RST_DATA(RCPU_I2C0_CLK_RST,	0, BIT(0)),
+	[RST_RCPU_UART1]	= RST_DATA(RCPU_UART1_CLK_RST,	0, BIT(0)),
+	[RST_RCPU_IR]		= RST_DATA(RCPU_CAN_CLK_RST,	0, BIT(0)),
+	[RST_RCPU_CAN]		= RST_DATA(RCPU_IR_CLK_RST,	0, BIT(0)),
+	[RST_RCPU_UART0]	= RST_DATA(RCPU_UART0_CLK_RST,	0, BIT(0)),
+	[RST_RCPU_HDMI_AUDIO]	= RST_DATA(AUDIO_HDMI_CLK_CTRL,	0, BIT(0)),
+};
+
+static const struct ccu_reset_controller_data rcpu_reset_controller_data = {
+	.count		= ARRAY_SIZE(rcpu_reset_data),
+	.data		= rcpu_reset_data,
+};
+
+static struct k1_ccu_data k1_ccu_rcpu_data = {
+	/* No clocks in the RCPU CCU */
+	.rst_data	= &rcpu_reset_controller_data,
+};
+
+static const struct ccu_reset_data rcpu2_reset_data[] = {
+	[RST_RCPU2_PWM0]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM1]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM2]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM3]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM4]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM5]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM6]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM7]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM8]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+	[RST_RCPU2_PWM9]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
+};
+
+static const struct ccu_reset_controller_data rcpu2_reset_controller_data = {
+	.count		= ARRAY_SIZE(rcpu2_reset_data),
+	.data		= rcpu2_reset_data,
+};
+
+static struct k1_ccu_data k1_ccu_rcpu2_data = {
+	/* No clocks in the RCPU2 CCU */
+	.rst_data	= &rcpu2_reset_controller_data,
+};
+
+static const struct ccu_reset_data apbc2_reset_data[] = {
+	[RST_APBC2_UART1]	= RST_DATA(APBC2_UART1_CLK_RST,	BIT(2), (0)),
+	[RST_APBC2_SSP2]	= RST_DATA(APBC2_SSP2_CLK_RST,	BIT(2), (0)),
+	[RST_APBC2_TWSI3]	= RST_DATA(APBC2_TWSI3_CLK_RST,	BIT(2), (0)),
+	[RST_APBC2_RTC]		= RST_DATA(APBC2_RTC_CLK_RST,	BIT(2), (0)),
+	[RST_APBC2_TIMERS0]	= RST_DATA(APBC2_TIMERS0_CLK_RST, BIT(2), (0)),
+	[RST_APBC2_KPC]		= RST_DATA(APBC2_KPC_CLK_RST,	BIT(2), (0)),
+	[RST_APBC2_GPIO]	= RST_DATA(APBC2_GPIO_CLK_RST,	BIT(2), (0)),
+};
+
+static const struct ccu_reset_controller_data apbc2_reset_controller_data = {
+	.count		= ARRAY_SIZE(apbc2_reset_data),
+	.data		= apbc2_reset_data,
+};
+
+static struct k1_ccu_data k1_ccu_apbc2_data = {
+	/* No clocks in the RCPU2 CCU */
+	.rst_data	= &apbc2_reset_controller_data,
+};
+
 static struct ccu_reset_controller *
 rcdev_to_controller(struct reset_controller_dev *rcdev)
 {
@@ -1959,6 +2053,18 @@ static const struct of_device_id of_k1_ccu_match[] = {
 		.compatible	= "spacemit,k1-syscon-apmu",
 		.data		= &k1_ccu_apmu_data,
 	},
+	{
+		.compatible	= "spacemit,k1-syscon-rcpu",
+		.data		= &k1_ccu_rcpu_data,
+	},
+	{
+		.compatible	= "spacemit,k1-syscon-rcpu2",
+		.data		= &k1_ccu_rcpu2_data,
+	},
+	{
+		.compatible	= "spacemit,k1-syscon-apbc2",
+		.data		= &k1_ccu_apbc2_data,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, of_k1_ccu_match);
-- 
2.43.0


