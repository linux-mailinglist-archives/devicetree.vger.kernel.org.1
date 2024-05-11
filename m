Return-Path: <devicetree+bounces-66439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 094998C3135
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 14:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64C4FB2127C
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 12:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C72D5FBB7;
	Sat, 11 May 2024 12:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kaechele.ca header.i=@kaechele.ca header.b="DPTbZJir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.kaechele.ca (mail.kaechele.ca [54.39.219.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEB357CA5;
	Sat, 11 May 2024 12:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.39.219.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715429577; cv=none; b=GtfI39HLPecYr+eOXeUA8+Ke2RN/QE1b4PgbcECCVeBEwwINqoJhFMMnyfmPer2i+2w/9usjOOwgdxk7OwzFyYXKNYB+G4MqCN5ryBqOYHOzLHNh4/aemaaDqam0jCOiSu1Hvl6ScZfRzh3aa6PpeUjDwRGGknJSBTaRHxzLQ1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715429577; c=relaxed/simple;
	bh=35uVHDiWMplGsOYHSuyKi1cb38kSB6S4MPPyDWhCcYk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JSBZmv/6oLIyAehqPTwri2Ya49P1MLvaEGMjGuLeyB1Le5Y5JI11haNjmgDSiP+AQZcjWoas2O9XECYPLrF5Azi61Zjf/2YE6q/pc5d4UD6ksQHOj/xAJgMSBPK1EpyAZ8YhAwufgQfRDkeNMRz300O0iw19C4FLFzagSDxV5Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=kaechele.ca; spf=pass smtp.mailfrom=kaechele.ca; dkim=pass (1024-bit key) header.d=kaechele.ca header.i=@kaechele.ca header.b=DPTbZJir; arc=none smtp.client-ip=54.39.219.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=kaechele.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kaechele.ca
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6DE34C0071;
	Sat, 11 May 2024 08:13:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaechele.ca; s=201907;
	t=1715429602; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=cZql3wAb8Lk1JBAauuWqbrO5EYj+qaVJ1GqsJU6JhXw=;
	b=DPTbZJirNvNR+JFNaG6/jfy3NPcarOZEofWO5IKOqv66KUze9nd/AcCMQ9woRl/aS4VyqY
	WKQ9PJ1y4BMmmX3hwJEYUMcvKYFaKVPpxhHJlj/sOsQJHdkDo7lD4N+IMgQm3nEqC+FBJv
	54e8LI6WgvzayHYm6XNZMOZl10pD9bY=
From: Felix Kaechele <felix@kaechele.ca>
To: Job Noorman <job@noorman.info>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Paul Gale <paul@siliconpixel.com>
Subject: [PATCH v2 5/5] input: himax_hx83112b: add support for HX83100A
Date: Sat, 11 May 2024 08:12:26 -0400
Message-ID: <20240511121245.109644-6-felix@kaechele.ca>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240511121245.109644-1-felix@kaechele.ca>
References: <20240511121245.109644-1-felix@kaechele.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The HX83100A is a bit of an outlier in the Himax HX831xxx series of
touch controllers as it requires reading touch events through the AHB
interface of the MCU rather than providing a dedicated FIFO address like
the other chips do.
This patch implements the specific read function and introduces the
HX83100A chip with an appropriate i2c ID and DT compatible string.

The HX83100A doesn't have a straightforward way to do chip
identification, which is why it is not implemented in this patch.

Tested on: Lenovo ThinkSmart View (CD-18781Y) / Innolux P080DDD-AB2 LCM

Signed-off-by: Felix Kaechele <felix@kaechele.ca>
Tested-by: Paul Gale <paul@siliconpixel.com>
---
 drivers/input/touchscreen/himax_hx83112b.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/input/touchscreen/himax_hx83112b.c b/drivers/input/touchscreen/himax_hx83112b.c
index 5092a357c332..9ed3bccde4ac 100644
--- a/drivers/input/touchscreen/himax_hx83112b.c
+++ b/drivers/input/touchscreen/himax_hx83112b.c
@@ -4,6 +4,9 @@
  *
  * Copyright (C) 2022 Job Noorman <job@noorman.info>
  *
+ * HX83100A support
+ * Copyright (C) 2024 Felix Kaechele <felix@kaechele.ca>
+ *
  * This code is based on "Himax Android Driver Sample Code for QCT platform":
  *
  * Copyright (C) 2017 Himax Corporation.
@@ -35,6 +38,8 @@
 
 #define HIMAX_REG_ADDR_ICID			0x900000d0
 
+#define HX83100A_REG_FW_EVENT_STACK		0x90060000
+
 #define HIMAX_INVALID_COORD		0xffff
 
 struct himax_event_point {
@@ -288,6 +293,12 @@ static int himax_read_events(struct himax_ts_data *ts,
 			       length);
 }
 
+static int hx83100a_read_events(struct himax_ts_data *ts,
+				struct himax_event *event, size_t length)
+{
+	return himax_bus_read(ts, HX83100A_REG_FW_EVENT_STACK, event, length);
+};
+
 static int himax_handle_input(struct himax_ts_data *ts)
 {
 	int error;
@@ -394,6 +405,10 @@ static int himax_resume(struct device *dev)
 
 static DEFINE_SIMPLE_DEV_PM_OPS(himax_pm_ops, himax_suspend, himax_resume);
 
+static const struct himax_chip hx83100a_chip = {
+	.read_events = hx83100a_read_events,
+};
+
 static const struct himax_chip hx83112b_chip = {
 	.id = 0x83112b,
 	.check_id = himax_check_product_id,
@@ -401,6 +416,7 @@ static const struct himax_chip hx83112b_chip = {
 };
 
 static const struct i2c_device_id himax_ts_id[] = {
+	{ "hx83100a", (kernel_ulong_t)&hx83100a_chip },
 	{ "hx83112b", (kernel_ulong_t)&hx83112b_chip },
 	{ /* sentinel */ }
 };
@@ -408,6 +424,7 @@ MODULE_DEVICE_TABLE(i2c, himax_ts_id);
 
 #ifdef CONFIG_OF
 static const struct of_device_id himax_of_match[] = {
+	{ .compatible = "himax,hx83100a", .data = &hx83100a_chip },
 	{ .compatible = "himax,hx83112b", .data = &hx83112b_chip },
 	{ /* sentinel */ }
 };
-- 
2.45.0


