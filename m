Return-Path: <devicetree+bounces-166889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DC3A88C17
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 21:18:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 678437A04B1
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 19:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AE35290BC6;
	Mon, 14 Apr 2025 19:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="pjsDYUFV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C9728E603
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 19:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658249; cv=none; b=XK6rz5kWS7ZnF9JSQw8/D5wWa+3AK5M7PfuzpAnNAzBhnMktCZ/VEZcZMYh526SKlI2xgoRfCukyL3lB5SaHUjEhH4eM6NiPDC+NNLd8DQFtU4pWyGZ2Bjpf4M41Ko/5sSn6yKLuOSbp1/Gi73euXshvpPLYrWnkxi05dfmmUSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658249; c=relaxed/simple;
	bh=rRLr7JYSf9deczswyxADmnoR3CeLqynEvK58JnXyxzs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jjxHrb8Q4HYpnKjtwndg/MbMh/tb9Y54KLKDG0nw7Stf7DgyYQnRMGIxVExmF9CIXOdG9/nWlv3zPI/K+8Qit++ARr+027r6FgBNLbQ7je9vLU/Kiwj1r+GpCC1HT0/R97QCvZW4Tzt7Eh25q/4jpD7kFIGPSeJyo3Z1V0ZhICw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=pjsDYUFV; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3d45875d440so20785785ab.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744658246; x=1745263046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UX2QVIvzLzZ1cDQOJh0nCMfQXozWLmsDE0zJA0sjkm8=;
        b=pjsDYUFV/LNd+ITOJqoD8bzbrMc/err2jEDTKmvxwluVoIFNA28h5srIB6YKNwAE/p
         JPqpk8W5GjPQhJA2ranmW9ghNrebQK9t08kUrwMIg6LqqRGpooRJe1Gi25La3m49yHjx
         S74zdsNQpLxF7a1YElTX3BiLdJYanPnGM+0OTEcYM1WqPjwvhhLM9VfTq5WrgqmDx8D1
         t9gvu8+AjYAizz/gftj6jRmYd2SnoqU6X5HrNsEl8i3UYyRlYOkthjp9dn6xcC/m/ukJ
         NMbC6SCOS6F28BQQpyeVNFSSWq6w6yTptQ+crhHhAvv7wNf96e/onh/tT9FbxRdUgJhK
         d7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744658246; x=1745263046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UX2QVIvzLzZ1cDQOJh0nCMfQXozWLmsDE0zJA0sjkm8=;
        b=LTZOEDyuZIEYxDVtPaSvCdO69r531Qm9cNXx6/VyjQx7KApcZPbJ407SR0ehPAnLlk
         bT4ARS9YEFp77vIVwCeNgtWZPAUFmxfIYzc8bHdOsOo2KRDR+wOEZGW6vomnYVSF710n
         Tit2jj0VjzDbun9nf63ueYuXiVF7UyB/IrcceJtoH+eY1cB/1TDbTaO+wPlEHjzibba2
         NoMWA8IEV+qFBQBYELMqVvnXsc372g4FEp8mV9tXmHggneMVw+edKTzcjXOMHeIfGof7
         A8gyEfrM0jScUdoyYyYQPNto/fIETvXa7akRy7i+ni7TrCDI6U/YVGehpzYQigK8jguG
         ovBw==
X-Forwarded-Encrypted: i=1; AJvYcCUp+/uO8K4otUxtCGf4aI5/DAndO6Jf2+a+a+nsHnAigY3HYBhhwqn1HikVuv/o1E0MeFdBNhSHNpsJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxCA5jEJ6sg2fLsCZhCFpdwArkIwAbV4mMqeC3/w6x/mbVOXtHD
	d01IMfwl5iQ7W2CtwustNqFEB+fo4tU83NoGfFyB4dQ704SMsa/f2TWRVg/ebP4=
X-Gm-Gg: ASbGnctXIY6aBZFA3PzShIEs97eG/oKvBG+n4GSOkjBJOkwlXxgtKoKPuRk5aHjGu8L
	arDfD7ySAWtnX8SJqgl6Mtb5dWB+JQa1btU6WJQDbABhW6dhclNtp95ft0yG8Xg9tj1zQVYiybq
	jOYhQmeryVtYJIDJRDjiKKAsDjsZiUu0dZXqxgBo76vkt9x3WgEPGphOYgyyrD983WUbiE2mAV5
	2iCQ5ehsQcGlkCzucf6Fdk0z/bQ96xEnR7C5/MVESPbYJTO9mq/+lDXGkrIvkvVpst0LtEmIedk
	sr3GAzyV9T4+2UHDGDXFKzju4RZTKFyF4xgj0yxd/mTrv7hCRjU38i0iV+skqYrtXsRM1X1BhGY
	fQuIl7CVav1nTSa0e6E8pDWd9
X-Google-Smtp-Source: AGHT+IFNij6rQhB9DWaUqyJLHVfsY9QSNEri6b52VVjX3HeYVpOJVWEhukCWQfM+JjBmH7W+xfaQJg==
X-Received: by 2002:a05:6e02:3f05:b0:3a7:820c:180a with SMTP id e9e14a558f8ab-3d7ec27ceebmr133931055ab.19.1744658246322;
        Mon, 14 Apr 2025 12:17:26 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e026d1sm2715662173.94.2025.04.14.12.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 12:17:25 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: p.zabel@pengutronix.de,
	dlan@gentoo.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/7] clk: spacemit: define existing syscon resets
Date: Mon, 14 Apr 2025 14:17:11 -0500
Message-ID: <20250414191715.2264758-5-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414191715.2264758-1-elder@riscstar.com>
References: <20250414191715.2264758-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define reset controls associated with the MPMU, APBC, and APMU
SpacemiT K1 CCUs.  These already have clocks associated with them.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 120 ++++++++++++++++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 020e751a9f305..09f101a52b1af 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -136,6 +136,13 @@ struct ccu_reset_data {
 	u32 deassert_mask;
 };
 
+#define RESET_DATA(_offset, _assert_mask, _deassert_mask)	\
+	{							\
+		.offset		= (_offset),			\
+		.assert_mask	= (_assert_mask),		\
+		.deassert_mask	= (_deassert_mask),		\
+	}
+
 struct spacemit_ccu_data {
 	struct clk_hw **clk_hws;			/* array */
 	size_t clk_num;
@@ -836,6 +843,7 @@ static struct clk_hw *k1_ccu_pll_hws[] = {
 static const struct spacemit_ccu_data k1_ccu_pll_data = {
 	.clk_hws	= k1_ccu_pll_hws,
 	.clk_num	= ARRAY_SIZE(k1_ccu_pll_hws),
+	/* No resets in the PLL CCU */
 };
 
 static struct clk_hw *k1_ccu_mpmu_hws[] = {
@@ -874,9 +882,15 @@ static struct clk_hw *k1_ccu_mpmu_hws[] = {
 	[CLK_WDT_BUS]		= &wdt_bus_clk.common.hw,
 };
 
+static const struct ccu_reset_data mpmu_reset_data[] = {
+	[RESET_WDT]	= RESET_DATA(MPMU_WDTPCR,		BIT(2), 0),
+};
+
 static const struct spacemit_ccu_data k1_ccu_mpmu_data = {
 	.clk_hws	= k1_ccu_mpmu_hws,
 	.clk_num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
+	.reset_data	= mpmu_reset_data,
+	.reset_num	= ARRAY_SIZE(mpmu_reset_data),
 };
 
 static struct clk_hw *k1_ccu_apbc_hws[] = {
@@ -982,9 +996,65 @@ static struct clk_hw *k1_ccu_apbc_hws[] = {
 	[CLK_IPC_AP2AUD_BUS]	= &ipc_ap2aud_bus_clk.common.hw,
 };
 
+static const struct ccu_reset_data apbc_reset_data[] = {
+	[RESET_UART0]	= RESET_DATA(APBC_UART1_CLK_RST,	BIT(2),	0),
+	[RESET_UART2]	= RESET_DATA(APBC_UART2_CLK_RST,	BIT(2), 0),
+	[RESET_GPIO]	= RESET_DATA(APBC_GPIO_CLK_RST,		BIT(2), 0),
+	[RESET_PWM0]	= RESET_DATA(APBC_PWM0_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM1]	= RESET_DATA(APBC_PWM1_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM2]	= RESET_DATA(APBC_PWM2_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM3]	= RESET_DATA(APBC_PWM3_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM4]	= RESET_DATA(APBC_PWM4_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM5]	= RESET_DATA(APBC_PWM5_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM6]	= RESET_DATA(APBC_PWM6_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM7]	= RESET_DATA(APBC_PWM7_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM8]	= RESET_DATA(APBC_PWM8_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM9]	= RESET_DATA(APBC_PWM9_CLK_RST,		BIT(2), BIT(0)),
+	[RESET_PWM10]	= RESET_DATA(APBC_PWM10_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM11]	= RESET_DATA(APBC_PWM11_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM12]	= RESET_DATA(APBC_PWM12_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM13]	= RESET_DATA(APBC_PWM13_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM14]	= RESET_DATA(APBC_PWM14_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM15]	= RESET_DATA(APBC_PWM15_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM16]	= RESET_DATA(APBC_PWM16_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM17]	= RESET_DATA(APBC_PWM17_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM18]	= RESET_DATA(APBC_PWM18_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_PWM19]	= RESET_DATA(APBC_PWM19_CLK_RST,	BIT(2), BIT(0)),
+	[RESET_SSP3]	= RESET_DATA(APBC_SSP3_CLK_RST,		BIT(2), 0),
+	[RESET_UART3]	= RESET_DATA(APBC_UART3_CLK_RST,	BIT(2), 0),
+	[RESET_RTC]	= RESET_DATA(APBC_RTC_CLK_RST,		BIT(2), 0),
+	[RESET_TWSI0]	= RESET_DATA(APBC_TWSI0_CLK_RST,	BIT(2), 0),
+	[RESET_TIMERS1]	= RESET_DATA(APBC_TIMERS1_CLK_RST,	BIT(2), 0),
+	[RESET_AIB]	= RESET_DATA(APBC_AIB_CLK_RST,		BIT(2), 0),
+	[RESET_TIMERS2]	= RESET_DATA(APBC_TIMERS2_CLK_RST,	BIT(2), 0),
+	[RESET_ONEWIRE]	= RESET_DATA(APBC_ONEWIRE_CLK_RST,	BIT(2), 0),
+	[RESET_SSPA0]	= RESET_DATA(APBC_SSPA0_CLK_RST,	BIT(2), 0),
+	[RESET_SSPA1]	= RESET_DATA(APBC_SSPA1_CLK_RST,	BIT(2), 0),
+	[RESET_DRO]	= RESET_DATA(APBC_DRO_CLK_RST,		BIT(2), 0),
+	[RESET_IR]	= RESET_DATA(APBC_IR_CLK_RST,		BIT(2), 0),
+	[RESET_TWSI1]	= RESET_DATA(APBC_TWSI1_CLK_RST,	BIT(2), 0),
+	[RESET_TSEN]	= RESET_DATA(APBC_TSEN_CLK_RST,		BIT(2), 0),
+	[RESET_TWSI2]	= RESET_DATA(APBC_TWSI2_CLK_RST,	BIT(2), 0),
+	[RESET_TWSI4]	= RESET_DATA(APBC_TWSI4_CLK_RST,	BIT(2), 0),
+	[RESET_TWSI5]	= RESET_DATA(APBC_TWSI5_CLK_RST,	BIT(2), 0),
+	[RESET_TWSI6]	= RESET_DATA(APBC_TWSI6_CLK_RST,	BIT(2), 0),
+	[RESET_TWSI7]	= RESET_DATA(APBC_TWSI7_CLK_RST,	BIT(2), 0),
+	[RESET_TWSI8]	= RESET_DATA(APBC_TWSI8_CLK_RST,	BIT(2), 0),
+	[RESET_IPC_AP2AUD] = RESET_DATA(APBC_IPC_AP2AUD_CLK_RST, BIT(2), 0),
+	[RESET_UART4]	= RESET_DATA(APBC_UART4_CLK_RST,	BIT(2), 0),
+	[RESET_UART5]	= RESET_DATA(APBC_UART5_CLK_RST,	BIT(2), 0),
+	[RESET_UART6]	= RESET_DATA(APBC_UART6_CLK_RST,	BIT(2), 0),
+	[RESET_UART7]	= RESET_DATA(APBC_UART7_CLK_RST,	BIT(2), 0),
+	[RESET_UART8]	= RESET_DATA(APBC_UART8_CLK_RST,	BIT(2), 0),
+	[RESET_UART9]	= RESET_DATA(APBC_UART9_CLK_RST,	BIT(2), 0),
+	[RESET_CAN0]	= RESET_DATA(APBC_CAN0_CLK_RST,		BIT(2), 0),
+};
+
 static const struct spacemit_ccu_data k1_ccu_apbc_data = {
 	.clk_hws	= k1_ccu_apbc_hws,
 	.clk_num	= ARRAY_SIZE(k1_ccu_apbc_hws),
+	.reset_data	= apbc_reset_data,
+	.reset_num	= ARRAY_SIZE(apbc_reset_data),
 };
 
 static struct clk_hw *k1_ccu_apmu_hws[] = {
@@ -1052,9 +1122,59 @@ static struct clk_hw *k1_ccu_apmu_hws[] = {
 	[CLK_EMMC_BUS]		= &emmc_bus_clk.common.hw,
 };
 
+static const struct ccu_reset_data apmu_reset_data[] = {
+	[RESET_CCIC_4X]	= RESET_DATA(APMU_CCIC_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_CCIC1_PHY] = RESET_DATA(APMU_CCIC_CLK_RES_CTRL,	0, BIT(2)),
+	[RESET_SDH_AXI]	= RESET_DATA(APMU_SDH0_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_SDH0]	= RESET_DATA(APMU_SDH0_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_SDH1]	= RESET_DATA(APMU_SDH1_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_SDH2]	= RESET_DATA(APMU_SDH2_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_USBP1_AXI] = RESET_DATA(APMU_USB_CLK_RES_CTRL,	0, BIT(4)),
+	[RESET_USB_AXI]	= RESET_DATA(APMU_USB_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_USB3_0]	= RESET_DATA(APMU_USB_CLK_RES_CTRL,	0,
+				      BIT(11) | BIT(10) | BIT(9)),
+	[RESET_QSPI]	= RESET_DATA(APMU_QSPI_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_QSPI_BUS] = RESET_DATA(APMU_QSPI_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_DMA]	= RESET_DATA(APMU_DMA_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_AES]	= RESET_DATA(APMU_AES_CLK_RES_CTRL,	0, BIT(4)),
+	[RESET_VPU]	= RESET_DATA(APMU_VPU_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_GPU]	= RESET_DATA(APMU_GPU_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_EMMC]	= RESET_DATA(APMU_PMUA_EM_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_EMMC_X]	= RESET_DATA(APMU_PMUA_EM_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_AUDIO]	= RESET_DATA(APMU_AUDIO_CLK_RES_CTRL,	0,
+				   BIT(3) | BIT(2) | BIT(0)),
+	[RESET_HDMI]	= RESET_DATA(APMU_HDMI_CLK_RES_CTRL,	0, BIT(9)),
+	[RESET_PCIE0]	= RESET_DATA(APMU_PCIE_CLK_RES_CTRL_0,	BIT(8),
+				   BIT(5) | BIT(4) | BIT(3)),
+	[RESET_PCIE1]	= RESET_DATA(APMU_PCIE_CLK_RES_CTRL_1,	BIT(8),
+				   BIT(5) | BIT(4) | BIT(3)),
+	[RESET_PCIE2]	= RESET_DATA(APMU_PCIE_CLK_RES_CTRL_2,	BIT(8),
+				   BIT(5) | BIT(4) | BIT(3)),
+	[RESET_EMAC0]	= RESET_DATA(APMU_EMAC0_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_EMAC1]	= RESET_DATA(APMU_EMAC1_CLK_RES_CTRL,	0, BIT(1)),
+	[RESET_JPG]	= RESET_DATA(APMU_JPG_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_CCIC2PHY] = RESET_DATA(APMU_CSI_CCIC2_CLK_RES_CTRL, 0, BIT(2)),
+	[RESET_CCIC3PHY] = RESET_DATA(APMU_CSI_CCIC2_CLK_RES_CTRL, 0, BIT(29)),
+	[RESET_CSI]	= RESET_DATA(APMU_CSI_CCIC2_CLK_RES_CTRL, 0, BIT(1)),
+	[RESET_ISP]	= RESET_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(0)),
+	[RESET_ISP_CPP]	= RESET_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(27)),
+	[RESET_ISP_BUS]	= RESET_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(3)),
+	[RESET_ISP_CI]	= RESET_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(16)),
+	[RESET_DPU_MCLK] = RESET_DATA(APMU_LCD_CLK_RES_CTRL2,	0, BIT(9)),
+	[RESET_DPU_ESC]	= RESET_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(3)),
+	[RESET_DPU_HCLK] = RESET_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(4)),
+	[RESET_DPU_SPIBUS] = RESET_DATA(APMU_LCD_SPI_CLK_RES_CTRL, 0, BIT(4)),
+	[RESET_DPU_SPI_HBUS] = RESET_DATA(APMU_LCD_SPI_CLK_RES_CTRL, 0, BIT(2)),
+	[RESET_V2D]	= RESET_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(27)),
+	[RESET_MIPI]	= RESET_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(15)),
+	[RESET_MC]	= RESET_DATA(APMU_PMUA_MC_CTRL,		0, BIT(0)),
+};
+
 static const struct spacemit_ccu_data k1_ccu_apmu_data = {
 	.clk_hws	= k1_ccu_apmu_hws,
 	.clk_num	= ARRAY_SIZE(k1_ccu_apmu_hws),
+	.reset_data	= apmu_reset_data,
+	.reset_num	= ARRAY_SIZE(apmu_reset_data),
 };
 
 static int spacemit_reset_update(struct reset_controller_dev *rcdev,
-- 
2.45.2


