Return-Path: <devicetree+bounces-245542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 787B0CB1F8C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 06:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2461C30D8D48
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A38ED2FDC53;
	Wed, 10 Dec 2025 05:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O94VMrIq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCE92FFDC9
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765344320; cv=none; b=TMl0sPNmXr41akN3HZ15rsBvmnwIDXEG/J4P2zdkCRmA6mJQwe3LU5qyfq+LGUUEeP2saQoE0PNE3BJSVsKxUMXVcygiY2R1iCemp7jDk6EMshc+lbyd3vli8yCP0oPfYw8fsVJR35y87yu+RnJfNjROmhEUFQ5KK7tfT5C++Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765344320; c=relaxed/simple;
	bh=m0D9V4x0TDiYMScx+B2rDcfNHpt1W4utB08H2EYXkTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V66ajRkHfNHBZVGH60UJeKXYtglXYMsIZJavlbv/eb8wG7JSCQ6St6wNZk/WhgQnt215o57eLk/gheajWqhjKoW8xpz9wMIY1d9MSRh719II13VyciiY+ZHvqkL0VLcCqhzwHH91sjCfdJJrL7ACWmbKUp3x/cRPxaqjQKZR+EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O94VMrIq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-477b91680f8so70736485e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 21:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765344317; x=1765949117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=O94VMrIqOkA8jK41fIudLRgAjibQGu8rL1v61rVC9XHY9c9dQSqnup3V81T9ii9cZD
         cImiaTVPdc5jAduXPQHWH6hNYE3s8TJzfLIRJVxRrE55RVZU2pahbaroW3okpEqpBV2M
         2imvmcn7e3JymdinkubkUWyZrO6ydTm6HEMEKFr9k6HQhWS1Z7Hu0ji4GBxQHAGt1NCc
         dld5n7Pe6EVIZbmPCWLlfw4dKJRQYA4216hhX3QXjvSpGJDbDKa8ML36SpouFh1tEM2m
         KYLoVM0hlcg1LEwSdem/SwEGuJhv1QYfookm4OGEfOYIsrsvgraQw2220ppkSdoYPdo1
         ki/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765344317; x=1765949117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=SjjyuQ7nEA0ywJo+OaW5GXl2Va6R9Iq5Wc99W9g5Y5b5bHHp2s7xpxp8HkOkbPCLhh
         4OOHCZftodAm8eJcbkriRHe1JYpSUxHpG9XNr0LkcW9n886TazZ/wL8iyp6siFdQ/s0E
         M/Jnptb16kuMoNagkAmKhtyanGkt/XBtAAhPKWp9rS1MsMU1Bta0MoPkLGBx4/o6WaaQ
         mZqdDmk38SrhQ3AyHFuw3qcBRmg11jM3d8N1vNmC7ZhYUQHeUe1rEmASl5tFtd14oZ8I
         xFt+u8Y/mN2OgbJbl35AOA/xIm5Geas0pNpRni8BHP64jXzp0rlPUYflzByZ+bz1fMgu
         Dstw==
X-Forwarded-Encrypted: i=1; AJvYcCWSDk5v6GZp1NbqvanOhbJaLYvPns7H7w/tOI1XTh7Geb+/HMdtDSnpd9sKJRESqQ0RaqkRXHIGIVwo@vger.kernel.org
X-Gm-Message-State: AOJu0YzRKKNLcJnNOOAqfBl17spxSkWKrLsw6A2f/8hHnTeEssfHHpdp
	NQv0hxvlmXtqQXxHmRNVWkI1Ku336DJ1KCw2jKTdXha4BhZ6T57LwK3MuPFO1PFiP2s=
X-Gm-Gg: ASbGncslJihVzVD1H3mNcUn7yCiQVMtr9Nubu5J4F4PypmLHJYHT9Bid5gwN1WHHe/x
	AbbA9DC6FaQkAr+6qnFGcZg7HSUAPbWpXdFNWuWfIkRakCJiYUHwuFFp2URgNSbZoK7OiBs4Gic
	bslCobLpWP/Xgvq3DRKvMpLu53YK1cXSfh4PV0piiVGKFl9SuRRFpLr+pPEPC6+Q2/g3rhzHbBO
	xgGumJrXLAC1uZQL95/32A6OmSq5lSV3SFgvsD4M6mco48su7p/KzRdHbHIz90UnjCUQM1bAQ8b
	lgw7kQsBOy2SAQgJZ1+UQjPcP5ayMKl/JNCzG8SLZmA6bDsSZOy1WeNdvNLoRDpwVqyACsn7kYA
	WKaINv6dN3Uz8YwaaLMs9Id67jts1TsUTsctkxJoK8tquhB7TCML08a2ld9uwuoYUaR68FwcBmq
	kldscJ4TlwcFgxNY8oO6d+r2E8SFLmjDQ=
X-Google-Smtp-Source: AGHT+IG3Zk1Zjw2omcTEAj9n1igWjHPWpnedtObj3XU66AORvz3hVgQfVSF4vsHfxaK23om068XQpg==
X-Received: by 2002:a05:600c:4714:b0:477:58af:a91d with SMTP id 5b1f17b1804b1-47a8374de03mr8181085e9.5.1765344317023;
        Tue, 09 Dec 2025 21:25:17 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:4fde:b93c:87db:86e6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d3a75a3sm33485695e9.6.2025.12.09.21.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 21:25:16 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 1/3] counters: Reorder the Makefile
Date: Wed, 10 Dec 2025 06:24:45 +0100
Message-ID: <20251210052449.4154283-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251210052449.4154283-1-daniel.lezcano@linaro.org>
References: <20251210052449.4154283-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The next changes provide a new driver. For the sake of clarity,
reorder the Makefile alphabetically.

No functional changes intended.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/counter/Makefile | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/counter/Makefile b/drivers/counter/Makefile
index fa3c1d08f706..40e644948e7a 100644
--- a/drivers/counter/Makefile
+++ b/drivers/counter/Makefile
@@ -6,14 +6,16 @@
 obj-$(CONFIG_COUNTER) += counter.o
 counter-y := counter-core.o counter-sysfs.o counter-chrdev.o
 
-obj-$(CONFIG_I8254)		+= i8254.o
-obj-$(CONFIG_104_QUAD_8)	+= 104-quad-8.o
+obj-$(CONFIG_104_QUAD_8)		+= 104-quad-8.o
+obj-$(CONFIG_FTM_QUADDEC)		+= ftm-quaddec.o
+obj-$(CONFIG_I8254)			+= i8254.o
+obj-$(CONFIG_INTEL_QEP)			+= intel-qep.o
 obj-$(CONFIG_INTERRUPT_CNT)		+= interrupt-cnt.o
-obj-$(CONFIG_RZ_MTU3_CNT)	+= rz-mtu3-cnt.o
-obj-$(CONFIG_STM32_TIMER_CNT)	+= stm32-timer-cnt.o
-obj-$(CONFIG_STM32_LPTIMER_CNT)	+= stm32-lptimer-cnt.o
-obj-$(CONFIG_TI_EQEP)		+= ti-eqep.o
-obj-$(CONFIG_FTM_QUADDEC)	+= ftm-quaddec.o
 obj-$(CONFIG_MICROCHIP_TCB_CAPTURE)	+= microchip-tcb-capture.o
-obj-$(CONFIG_INTEL_QEP)		+= intel-qep.o
-obj-$(CONFIG_TI_ECAP_CAPTURE)	+= ti-ecap-capture.o
+obj-$(CONFIG_RZ_MTU3_CNT)		+= rz-mtu3-cnt.o
+obj-$(CONFIG_STM32_TIMER_CNT)		+= stm32-timer-cnt.o
+obj-$(CONFIG_STM32_LPTIMER_CNT)		+= stm32-lptimer-cnt.o
+obj-$(CONFIG_TI_ECAP_CAPTURE)		+= ti-ecap-capture.o
+obj-$(CONFIG_TI_EQEP)			+= ti-eqep.o
+
+
-- 
2.43.0


