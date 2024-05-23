Return-Path: <devicetree+bounces-68767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4722C8CD808
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 18:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F07EE28423D
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 16:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6AD91865B;
	Thu, 23 May 2024 16:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RXxeiBjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135D01B7FD
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 16:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716480267; cv=none; b=AUQ96F0mzH0SQp6qUmCMrW9ZEqED0nV0mm3BQZgktRaz40u3v1mbhTj1msMdg03TxR2K+YaxNnZZKRBI7UzfdYoaxjx2dGx96IM8qERQHZ0Kq6O/vtPBbsh+IIuskOQA+mzkSN6YHeG87qrPhzQLZsEj96OJMZjObj/uQaydHlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716480267; c=relaxed/simple;
	bh=EhTBCoWEsH6RQeHWfu+3Ppem+Bmf+xIMkgx/LOGt+8s=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=YzbCRzYp3CPUY9Pi0KQPnNO6Hpw9anJiSrIet15hJWgi0EPmIV7U79DDyBquSRB1QFddZSMZCZAMfE1Fo2pVck+LPxICeZFg0oIDk0YlpUiB0rOf0aZ6fgscJ3zC2YSjVYLpqJR8E9CBhQC0fASvOsCnWsoOqSO53f/Jh5zoLHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RXxeiBjj; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-de0b4063e59so13644670276.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 09:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1716480265; x=1717085065; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=3d3iyJqmM/1eDHi6IVV043bTCqbOnpQe2A0l9FAURNs=;
        b=RXxeiBjjFncawXnhuOMFZDJN5S23C+oXf0DEXlPgBqL108Uwku/Z+RmPh9S7gWEPsl
         N3ndt7oExXpqqgzIITD6ugUGkN8CBJskCX8Hvfz9638+vPGAlWPrpYmR6O6Zpj9mvpAT
         CuX7RWD8P3SXOSvKBQTb71FwKeFY+c68HEPKzUkDYoYI59yToe4VirrkZ76WP5q0KKTu
         jGAbtt6CKpjBjRJh3pEUB/95sARYDXm/7eWU3ef8p326OaFQnkkl4fY0XLlUI3EiMmSi
         fuevxJCBy8hHUGEkHG4jLxtUQAxJ0hKXk2DjXz+uSyKEiV29C0zbFYQbx+HnkRy/P5Te
         eKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716480265; x=1717085065;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3d3iyJqmM/1eDHi6IVV043bTCqbOnpQe2A0l9FAURNs=;
        b=q5LP5I8bKIYrFiR7ZzNOrNagvpoR2LKY917kdMuwjyWvXIJ8R+JmX887yU6qIOEWz1
         5EfDeJSj0w6nMlLJ4+EbkkwUeqVlbqofGp7YrZY9QIlxij7ln7TUgl8pw9Ix+Lj2NQR3
         YusSj1NnaoTmSR31+HmDG/xhY45dhcCGplEdtajOkBDaIump+AgcZt33R+n5JkmXD3kd
         gzIUZ91IT//suTZJaZftqUgv1BJddDawGgI/G2NZzjcWeBFOOrwbx1Wso9Xg/UGdKu67
         Fsw7cISgMj7CZbl56TDYztKUIbIOyo55t+qjOma+G7JORzJ+3gvpu7CYHMDmJk0I2lqp
         9EfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFWYRtEb4KrOLsGvWfLXt5jmW3RntxlGLAUlvtR0w8/TAldIn/+edPaE5qthr5WoITcHWsCNIFmtmvetwzbe0fCrMnLzGyihY44w==
X-Gm-Message-State: AOJu0YyNBoAvV0npry9+1AHn3jvT+D6obkFH3fKNU5fQ8k9qrgRPb7M3
	Oe2FV70z8ThQ193apPDbzR3pBs8VGbKWSMoTewtwR57APQ1Vxyg4Lyi6KvDnNFlJYFeU9gwFUNU
	3GKChaMocokB/ah9bjjFah1keaQ==
X-Google-Smtp-Source: AGHT+IESLjYZSJRI10bNAhY1mQgDdw0aTOQt2wYMTwe81yGAhnG89hGg49am+K4s35CF2jj0v1b5wbDesfLFNl9I1x0=
X-Received: from sebkvm.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:cd5])
 (user=sebastianene job=sendgmr) by 2002:a05:6902:1207:b0:df4:db4d:5db2 with
 SMTP id 3f1490d57ef6-df4e0bcd6d0mr1593000276.7.1716480265117; Thu, 23 May
 2024 09:04:25 -0700 (PDT)
Date: Thu, 23 May 2024 16:04:13 +0000
In-Reply-To: <20240523160413.868830-1-sebastianene@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240523160413.868830-1-sebastianene@google.com>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
Message-ID: <20240523160413.868830-3-sebastianene@google.com>
Subject: [PATCH 2/2] misc: Register a PPI for the vcpu stall detection virtual device
From: Sebastian Ene <sebastianene@google.com>
To: arnd@arndb.de, gregkh@linuxfoundation.org, will@kernel.org, maz@kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Dragan Cvetic <dragan.cvetic@xilinx.com>, 
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel-team@android.com, Sebastian Ene <sebastianene@google.com>
Content-Type: text/plain; charset="UTF-8"

Request a PPI for each vCPU during probe which will be used by the host
to communicate a stall detected event on the vCPU. When the host raises
this interrupt from the virtual machine monitor, the guest is expected to
handle the interrupt and panic.

Signed-off-by: Sebastian Ene <sebastianene@google.com>
---
 drivers/misc/vcpu_stall_detector.c | 41 ++++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/vcpu_stall_detector.c b/drivers/misc/vcpu_stall_detector.c
index e2015c87f03f..c580cd7fd225 100644
--- a/drivers/misc/vcpu_stall_detector.c
+++ b/drivers/misc/vcpu_stall_detector.c
@@ -32,6 +32,7 @@
 struct vcpu_stall_detect_config {
 	u32 clock_freq_hz;
 	u32 stall_timeout_sec;
+	int ppi_irq;
 
 	void __iomem *membase;
 	struct platform_device *dev;
@@ -77,6 +78,12 @@ vcpu_stall_detect_timer_fn(struct hrtimer *hrtimer)
 	return HRTIMER_RESTART;
 }
 
+static irqreturn_t vcpu_stall_detector_irq(int irq, void *dev)
+{
+	panic("vCPU stall detector");
+	return IRQ_HANDLED;
+}
+
 static int start_stall_detector_cpu(unsigned int cpu)
 {
 	u32 ticks, ping_timeout_ms;
@@ -132,7 +139,7 @@ static int stop_stall_detector_cpu(unsigned int cpu)
 
 static int vcpu_stall_detect_probe(struct platform_device *pdev)
 {
-	int ret;
+	int ret, irq, num_irqs;
 	struct resource *r;
 	void __iomem *membase;
 	u32 clock_freq_hz = VCPU_STALL_DEFAULT_CLOCK_HZ;
@@ -169,9 +176,32 @@ static int vcpu_stall_detect_probe(struct platform_device *pdev)
 	vcpu_stall_config = (struct vcpu_stall_detect_config) {
 		.membase		= membase,
 		.clock_freq_hz		= clock_freq_hz,
-		.stall_timeout_sec	= stall_timeout_sec
+		.stall_timeout_sec	= stall_timeout_sec,
+		.ppi_irq		= -1,
 	};
 
+	num_irqs = platform_irq_count(pdev);
+	if (num_irqs < 0) {
+		dev_err(&pdev->dev, "Failed to get irqs\n");
+		ret = num_irqs;
+		goto err;
+	} else if (num_irqs > 1) {
+		dev_err(&pdev->dev, "Multipple irqs detected\n");
+		ret = -EINVAL;
+		goto err;
+	} else if (num_irqs == 1) {
+		irq = platform_get_irq(pdev, 0);
+		if ((irq > 0) && irq_is_percpu_devid(irq)) {
+			ret = request_percpu_irq(irq,
+						 vcpu_stall_detector_irq,
+						 "vcpu_stall_detector",
+						 vcpu_stall_detectors);
+			if (!ret)
+				vcpu_stall_config.ppi_irq = irq;
+
+		}
+	}
+
 	ret = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN,
 				"virt/vcpu_stall_detector:online",
 				start_stall_detector_cpu,
@@ -184,6 +214,9 @@ static int vcpu_stall_detect_probe(struct platform_device *pdev)
 	vcpu_stall_config.hp_online = ret;
 	return 0;
 err:
+	if (vcpu_stall_config.ppi_irq > 0)
+		free_percpu_irq(vcpu_stall_config.ppi_irq,
+				vcpu_stall_detectors);
 	return ret;
 }
 
@@ -193,6 +226,10 @@ static void vcpu_stall_detect_remove(struct platform_device *pdev)
 
 	cpuhp_remove_state(vcpu_stall_config.hp_online);
 
+	if (vcpu_stall_config.ppi_irq > 0)
+		free_percpu_irq(vcpu_stall_config.ppi_irq,
+				vcpu_stall_detectors);
+
 	for_each_possible_cpu(cpu)
 		stop_stall_detector_cpu(cpu);
 }
-- 
2.45.1.288.g0e0cd299f1-goog


