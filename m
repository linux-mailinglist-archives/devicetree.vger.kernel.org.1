Return-Path: <devicetree+bounces-18957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 429367F9354
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 16:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 718871C20CD3
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 15:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4B8D26A;
	Sun, 26 Nov 2023 15:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svenpeter.dev header.i=@svenpeter.dev header.b="Z0trJmkX";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="V2ZlWk6S"
X-Original-To: devicetree@vger.kernel.org
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F14211D;
	Sun, 26 Nov 2023 07:17:21 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 8895C5C0130;
	Sun, 26 Nov 2023 10:17:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 26 Nov 2023 10:17:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svenpeter.dev;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1701011840; x=
	1701098240; bh=8R0p6DlkXF+oFfSCrVqGL6mEemuNQRmY1fVSrZeXoEA=; b=Z
	0trJmkX4q1fVZfB1XQyy6tkRrvUMNsk5XtYTLvwCq4RShayw8OvHIHdWng0PC+6q
	qWlyMTphrtYq6Fra8y2H8dAtnmTmAvKgI4MX2vEZpyuuv7ZkaKUVAZohep16VRdS
	buk1tEB50Sr1+DtbyJKTJyicWW3Ho9Sx82qWxwP81ZCshxM4ePxme+Wjvmwb9dFn
	kjFF5nioIYYzaqakcgMyuSCAHxC+LAfOXxdsW7vBqKjjusWkImcHeOha6atnDgFG
	gJQ3A2U6XMgRWVFUIK4OoalwLa63NgLwnQ0aKyIPKQDUmuFIiAmPQ8l2AOcZpgxu
	LYBSAe0KWphdsn8qlTpHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701011840; x=
	1701098240; bh=8R0p6DlkXF+oFfSCrVqGL6mEemuNQRmY1fVSrZeXoEA=; b=V
	2ZlWk6SZ/YL3bxtXeocJt8UjUvfK7pF2TV8LH+HWLif3MMIh06Ap1MRaixQCkNlj
	ZwwpYKXVlGRPqvA00YsqUhEdPBkqgkZPzxeZVWUznNLAVhzUByTSdl/ZVECpUUSG
	PTUoqrXBu+qn1xRAHubC/S4hz6+9IHtgEPuxeQeyiqHqEpNCbBEFBpezCYLFVUTh
	ueZ6TomLyPaxguyK+m/W+WLRmInGQOtym2tdJkbmlUaWCx6lr4uLESsgOVNjRAdu
	dwL3S4cDHbZcClNW0NtxEGHI/Ku9zt1kVWj6wQ2RDCBfkuXOl82gFKN77dFjOe21
	6csLZwA0NSRgfNn7fW2ew==
X-ME-Sender: <xms:gGFjZXx-qRHg9f3ZgefBnRaAp4OaEE1evmDpPU69J2eMAgSXQOFGhA>
    <xme:gGFjZfReFDcMzqbXhaXgo8PEgTK_iZCF63KU50gMCce4fnVEpVZGB3rMax3vmFC57
    AypoS8P6hhMr8RZKcE>
X-ME-Received: <xmr:gGFjZRX-S9nsOyTPXL5tCQxIRQ-Eu2-yfGRHjk96fPxJLCVNGg7Ayx2bYEWvW4eTzm8cSAfzeL9p86Wn3Zrnzz-QRA0f0Y_L4_sFAN5C3ODTuzRrP8C0wL0TLQBj960>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehledgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhvvghn
    ucfrvghtvghruceoshhvvghnsehsvhgvnhhpvghtvghrrdguvghvqeenucggtffrrghtth
    gvrhhnpeejieehheekgedvjefhveekjefguddtfefhteehtdeiffelkeeiuedufeelkeej
    geenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsvh
    gvnhesshhvvghnphgvthgvrhdruggvvh
X-ME-Proxy: <xmx:gGFjZRh54YF9Ch5KVMOmIutgFSQCZK7pb0d8b0hyCd-pTQ9RcPAJAw>
    <xmx:gGFjZZDjL463XmgFVk9fUA3t36WCv0wmvDBce-VomRbqHE2TML3jOQ>
    <xmx:gGFjZaLgfbrxsG_OKVy0ijr3SlE70ZPHKfgPvUiOhqNVkzVIGtCvvg>
    <xmx:gGFjZd5igePXAKioXfooE5PKwsogm9WxGVH8m2CSpjExAOMwA2Kc4Q>
Feedback-ID: i51094778:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 26 Nov 2023 10:17:18 -0500 (EST)
From: Sven Peter <sven@svenpeter.dev>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	linux-arm-kernel@lists.infradead.org,
	asahi@lists.linux.dev,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] iommu: dart: Add support for t8103 USB4 DART
Date: Sun, 26 Nov 2023 16:17:01 +0100
Message-Id: <20231126151701.16534-4-sven@svenpeter.dev>
X-Mailer: git-send-email 2.39.3 (Apple Git-145)
In-Reply-To: <20231126151701.16534-1-sven@svenpeter.dev>
References: <20231126151701.16534-1-sven@svenpeter.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This variant of the regular t8103 DART is used for the two
USB4/Thunderbolt PCIe controllers. It supports 64 instead of 16 streams
which requires a slightly different MMIO layout.

Acked-by: Hector Martin <marcan@marcan.st>
Signed-off-by: Sven Peter <sven@svenpeter.dev>
---
 drivers/iommu/apple-dart.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/iommu/apple-dart.c b/drivers/iommu/apple-dart.c
index 8b6b0cdba9b5..f47f60c0a4d0 100644
--- a/drivers/iommu/apple-dart.c
+++ b/drivers/iommu/apple-dart.c
@@ -81,6 +81,7 @@
 #define DART_T8020_TCR_BYPASS_DAPF      BIT(12)
 
 #define DART_T8020_TTBR       0x200
+#define DART_T8020_USB4_TTBR  0x400
 #define DART_T8020_TTBR_VALID BIT(31)
 #define DART_T8020_TTBR_ADDR_FIELD_SHIFT 0
 #define DART_T8020_TTBR_SHIFT 12
@@ -1217,6 +1218,33 @@ static const struct apple_dart_hw apple_dart_hw_t8103 = {
 	.ttbr_shift = DART_T8020_TTBR_SHIFT,
 	.ttbr_count = 4,
 };
+
+static const struct apple_dart_hw apple_dart_hw_t8103_usb4 = {
+	.type = DART_T8020,
+	.irq_handler = apple_dart_t8020_irq,
+	.invalidate_tlb = apple_dart_t8020_hw_invalidate_tlb,
+	.oas = 36,
+	.fmt = APPLE_DART,
+	.max_sid_count = 64,
+
+	.enable_streams = DART_T8020_STREAMS_ENABLE,
+	.lock = DART_T8020_CONFIG,
+	.lock_bit = DART_T8020_CONFIG_LOCK,
+
+	.error = DART_T8020_ERROR,
+
+	.tcr = DART_T8020_TCR,
+	.tcr_enabled = DART_T8020_TCR_TRANSLATE_ENABLE,
+	.tcr_disabled = 0,
+	.tcr_bypass = 0,
+
+	.ttbr = DART_T8020_USB4_TTBR,
+	.ttbr_valid = DART_T8020_TTBR_VALID,
+	.ttbr_addr_field_shift = DART_T8020_TTBR_ADDR_FIELD_SHIFT,
+	.ttbr_shift = DART_T8020_TTBR_SHIFT,
+	.ttbr_count = 4,
+};
+
 static const struct apple_dart_hw apple_dart_hw_t6000 = {
 	.type = DART_T6000,
 	.irq_handler = apple_dart_t8020_irq,
@@ -1309,6 +1337,7 @@ static DEFINE_SIMPLE_DEV_PM_OPS(apple_dart_pm_ops, apple_dart_suspend, apple_dar
 
 static const struct of_device_id apple_dart_of_match[] = {
 	{ .compatible = "apple,t8103-dart", .data = &apple_dart_hw_t8103 },
+	{ .compatible = "apple,t8103-usb4-dart", .data = &apple_dart_hw_t8103_usb4 },
 	{ .compatible = "apple,t8110-dart", .data = &apple_dart_hw_t8110 },
 	{ .compatible = "apple,t6000-dart", .data = &apple_dart_hw_t6000 },
 	{},
-- 
2.34.1


