Return-Path: <devicetree+bounces-247265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D70CC66F9
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E9CA300763B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2457D2BCF4A;
	Wed, 17 Dec 2025 07:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="StbrB3d9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451ED319875
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765957820; cv=none; b=myMWuNLWEexZmg0mu/eR1B5j8PDpbMR05igRv1VAdTrGkxETOb6yVW0l/8OvLZIi9zVFPWZfiwqykMCL6KEHUyjNorY6+VvftBeNj2lcBsBvwCOn6v2awdBw1/oL8gYsXjz/xsDFeChtek9s8vSQIzg9VQcJQYWNy4khZb+jI2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765957820; c=relaxed/simple;
	bh=m0D9V4x0TDiYMScx+B2rDcfNHpt1W4utB08H2EYXkTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k/095N+NesZF5vSlgZeDrn5cVgxLyuM62iRs5QBb7ZuAmIRNMDyRCjAc78A8QhlC1IV24wjCdf4iawSG4R53JWCDXhYOKBzHJQzCRoursWFRhqOyDPCTBWkDvP3G1ZCMs20cSqX7ITVovZuKTj8+U2fbeLbV4tvuu7GzLvNche0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=StbrB3d9; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42fb5810d39so2529520f8f.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 23:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765957816; x=1766562616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=StbrB3d9bH6MzWe9qh9ziSuYrL7Tdlw6H917XsSknkV9Iyd4mIi1B6nFgD4YFIrsLW
         waK686duKqoxiInG7ab0HV/kHRY1KWA3EJ/kPf/4uQDEtIS7JlHsS8kQIyv0BbPs5OJ9
         b8ASMv7oK/vHqI7n7UNN9RMP4mo2fS6BkqPoUjaS70mQ2gb36uhCKfxYHi+mskXBo8jF
         RxrXXVn1km+J0yW2DUuhKSHdoFpDA1LfnmbTg1aLFG+tXVlqC4BBT8qQ5HDCZvB7qqlo
         FdsYdRHHH5PCX2FcIjKFdHxKrZ7whEhK+ce7DKK4f6QlmmR14gKU5yfGiVKEjfHvnFc3
         gzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765957816; x=1766562616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=bnnWqzj7Y+uQPMPcQ87W5r8WYzg08pu4oWAyofnVWBWOuwGz6PRo4JjQlL4Divezel
         QuJvho3ciuVfGfqXsw5hL19OD/ccRgZskW61Wztv1RO+hEIZHdJQK58cMMp/kIqnXABC
         vwE580pDjouXPgxf7aIpPwBTp1VILBQn0OMT9Jid4FcE4ncWEypP+Sq5O4KUOI0Znbhk
         bVOR1ast+6WxD02GH7iLd+Ed2j5j/Iq2F7S6S6dUMD8bTl3i1ooGth6wADAGbyhIPbMs
         6BA+MYOhTNu4o1Axdxq/Yd1fLkw77JcZ/g0ULfZFK/CozNWYXi6zo168ZyPDCeTljWLe
         F50g==
X-Forwarded-Encrypted: i=1; AJvYcCV/u93NeAJ6cnEyFQGNgOLfZSO52nS+Ewxz84pV8akH0FdcVf+npL1sPEE+TMm4NPqDslybhaPjApKx@vger.kernel.org
X-Gm-Message-State: AOJu0YxyeqIvomxJKmRbsxEgL4RFOed9cJv+jjgPLzOLwlnxIT17FF1C
	XqDl6A1cdhh4ALyynPR2+kMbrcHIJO+veq2mlCVVvTeoXAGQZSdZ66KkQLiwH5LlVqJ76ijMoM3
	MPqA4NEdOUw==
X-Gm-Gg: AY/fxX5Fa4jFSHqsR+0YPGbMjqiZvVa6wTgHDSBOC3vrqgInVMK4XyyY+vVvXj11xuF
	0mtpV8deEdiR5AfyBtNMB9/McJLOkY/Km5SXxTXEiktOLHfPuTWQRJqxkm8N8oXm2WysESdve9S
	CrzJfMz0jJH/hQzZDVQNYbG+OWswq8XQoyGpT40ue0nNqvUoz9R9SB1aiklmGttuShWqZNxbAjz
	u6jLhX7jbBDPAiks/5FjLuk/4agTJGeTHHF7SdtjsEuU15eyu66tY4mpO7yO8lMSi2/YJTOsBuC
	S7v8EMvARvcrZYJsJcjxe0q4wk9ndQSURB06bduUXW7opc3ANvVaxTou947Z/9lkk7Rd2mafY+x
	k9KR0sbbEE3+M4RJ6c4fcf1i2HIYQJYxmz9172fws5W2Y7iOTgn3ghTd8ztHf8HYTl2Ztdjd+Le
	wcUeNzxGmKDnRfTWoVaMcjbKg2gY+rbnM=
X-Google-Smtp-Source: AGHT+IFnx406KO2q93NhOrqRhNQ711mt1VR1CvL6ul0btReeHMDv6zRYevqWvEWqN/pLnAUfw+qqmA==
X-Received: by 2002:a05:600c:45c8:b0:477:b0b9:312a with SMTP id 5b1f17b1804b1-47a8f8a7136mr148399285e9.7.1765957816540;
        Tue, 16 Dec 2025 23:50:16 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc1edff5sm26094315e9.14.2025.12.16.23.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 23:50:15 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 1/3] counters: Reorder the Makefile
Date: Wed, 17 Dec 2025 08:49:55 +0100
Message-ID: <20251217075000.2592966-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251217075000.2592966-1-daniel.lezcano@linaro.org>
References: <20251217075000.2592966-1-daniel.lezcano@linaro.org>
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


