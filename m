Return-Path: <devicetree+bounces-75457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 243979074E0
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2DC71F2266C
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E83C146A9D;
	Thu, 13 Jun 2024 14:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="my73vdYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com [209.85.221.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95A5145B18
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 14:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718288031; cv=none; b=I0g8FV/VQQ5YZxWRgCdLlkoTYxixtnbYfh/vSSCSWpKCuUbwqwMcYA8DIyY5Qn+IQrse8PsyPu6/xH1nIB1km8Sy5Cx/a8zi8QP2ajR5VE4VSSWE9aYCMqC73xQMZUooqz7TnCKu0iy+6N9bJuStl/eM+jJc2OGIa8ACEJFP/zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718288031; c=relaxed/simple;
	bh=aghr2MGo+eWlZkTOaZiyMRhjN7zE3f7gxvto8w/AHuU=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=JSQDj9UQJB/CZv48yFSWq2Ddqf8WzHw3htwI9gmUy8Fw+lAkqAB6HnK8v/Rj+RGeDJLMSblAPJsMzSuO0lcOdM9RS1TdYbWNeZGZgOqH8MRo4uqwlOkKEJ/djISu8NFqGLnj2Zw1sjW8kI+snTASxL4uHbW0mCnMgw0d8D1I+Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=my73vdYd; arc=none smtp.client-ip=209.85.221.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com
Received: by mail-wr1-f73.google.com with SMTP id ffacd0b85a97d-35f0f8b6badso550254f8f.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 07:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718288028; x=1718892828; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=kksLUlRbd518rfKCwHFZPSF7kwu3hMJcK/JCkJY2+7A=;
        b=my73vdYdnqc65jYN9oebJJ7GYlRZPQgC5oEf3gj2oDxN9L1cYDBfPVq+N8DE9ErGix
         TnkZ73FoUEh1g+SrjnECUmcM7U99IJamRtgAsCfUnGrn7cPjug2VkKHWjSQn8e2zN/Th
         oR1UuHowE8cgeV9lXWZcrWXtykPuMnAn2MC7+2H4r0JMZ25LkjxnPgcJsWfU6fjDDwpq
         h8ctCxTHf3bOLFGVGhEBVDU7rfOpF0nAYCIXmjdaxVs4gH8siGmHaWd+FZewChl0zuvp
         p97i4uqnUGrmPCsEubleADE4b8l//iND5zC5Plp5RGIUdoFTIhqORpU/NGgOum8m7ugC
         xsqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718288028; x=1718892828;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kksLUlRbd518rfKCwHFZPSF7kwu3hMJcK/JCkJY2+7A=;
        b=lrO+dB9NF/QNiyX2+5p7Wt5Gj4Gn74osVFjuJaInHqS0T4JSfkYvBhnCasVqv7c3Wr
         MWL3eqhYdOuetO7vlilsiLJor/A42JeI1wn8uLeKu82rcmZJUryrBHXG5xUWc2CgEpw7
         Ps2AAqgqQavVKSZXi2uhQnAgJyVyqkS2weZmUM6xzSOlMw0RYGzcuZtnl42QboPYfF69
         J58hUKNn1qrKZcLWzxYBUFprIoEmfaeRSlHOUvIAIg7Qdj3O1YFMQr5ZYjGPLpsoNNF5
         IxKXW1yPgz13rv7zGnpSLC4TEdro4TCp6wvOYz0uqm/jZDdYMX+Ra5bIwB6yiswHCSvH
         5Z8g==
X-Forwarded-Encrypted: i=1; AJvYcCVq/irqCNpUX8YDWhWR51ErpHuy+gXZHZNqSGImsamYBfd0y9u9g/hfX0TQgpiL1ETj0aaux3a8eRWzuhzCJvae4L+yiTogGkHAmw==
X-Gm-Message-State: AOJu0YyzeD5aKzT4PVVnlg1ZgU+k1gE8M3TVXqfqn4XlpdSrxxfcrYtW
	JQ0FB16xWW/D5DstElsDQ9j66n9lmXbwAMnODbBbO1QOL2pWpSRnzi14orcIHWOUlyO4zt9Of7+
	S9MDC55gu1pHK85mR1+AVWkDo8w==
X-Google-Smtp-Source: AGHT+IHuswEJb7oIquzqOhBvgv9Z59GPcV52lF3ic+t+3cipg6Pa0yko9Q21ZgfWd0Q/mtGyojHMm0568F248lH5Cxk=
X-Received: from sebkvm.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:cd5])
 (user=sebastianene job=sendgmr) by 2002:a5d:6104:0:b0:35f:2f69:4246 with SMTP
 id ffacd0b85a97d-360718be27amr6841f8f.0.1718288028118; Thu, 13 Jun 2024
 07:13:48 -0700 (PDT)
Date: Thu, 13 Jun 2024 14:13:35 +0000
In-Reply-To: <20240613141335.1134341-1-sebastianene@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240613141335.1134341-1-sebastianene@google.com>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Message-ID: <20240613141335.1134341-3-sebastianene@google.com>
Subject: [PATCH v2 2/2] misc: Register a PPI for the vcpu stall detection
 virtual device
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
 drivers/misc/vcpu_stall_detector.c | 31 ++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/vcpu_stall_detector.c b/drivers/misc/vcpu_stall_detector.c
index e2015c87f03f..41b8c2119e20 100644
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
+	int ret, irq;
 	struct resource *r;
 	void __iomem *membase;
 	u32 clock_freq_hz = VCPU_STALL_DEFAULT_CLOCK_HZ;
@@ -169,9 +176,22 @@ static int vcpu_stall_detect_probe(struct platform_device *pdev)
 	vcpu_stall_config = (struct vcpu_stall_detect_config) {
 		.membase		= membase,
 		.clock_freq_hz		= clock_freq_hz,
-		.stall_timeout_sec	= stall_timeout_sec
+		.stall_timeout_sec	= stall_timeout_sec,
+		.ppi_irq		= -1,
 	};
 
+	irq = platform_get_irq_optional(pdev, 0);
+	if (irq > 0) {
+		ret = request_percpu_irq(irq,
+					 vcpu_stall_detector_irq,
+					 "vcpu_stall_detector",
+					 vcpu_stall_detectors);
+		if (ret)
+			goto err;
+
+		vcpu_stall_config.ppi_irq = irq;
+	}
+
 	ret = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN,
 				"virt/vcpu_stall_detector:online",
 				start_stall_detector_cpu,
@@ -184,6 +204,9 @@ static int vcpu_stall_detect_probe(struct platform_device *pdev)
 	vcpu_stall_config.hp_online = ret;
 	return 0;
 err:
+	if (vcpu_stall_config.ppi_irq > 0)
+		free_percpu_irq(vcpu_stall_config.ppi_irq,
+				vcpu_stall_detectors);
 	return ret;
 }
 
@@ -193,6 +216,10 @@ static void vcpu_stall_detect_remove(struct platform_device *pdev)
 
 	cpuhp_remove_state(vcpu_stall_config.hp_online);
 
+	if (vcpu_stall_config.ppi_irq > 0)
+		free_percpu_irq(vcpu_stall_config.ppi_irq,
+				vcpu_stall_detectors);
+
 	for_each_possible_cpu(cpu)
 		stop_stall_detector_cpu(cpu);
 }
-- 
2.45.2.505.gda0bf45e8d-goog


