Return-Path: <devicetree+bounces-245070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC11CABEB1
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 04:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7869C3013986
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 03:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00DED2DAFDE;
	Mon,  8 Dec 2025 03:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R8wa295u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83302E7645
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 03:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765163143; cv=none; b=fXJCPjhqeH8znf2t02IH6/2FFUjkvlhnKIPr/Pt2xcg7OqCJ2ofnV9XO25NI9pePOTMFCzImncIw0VOiQBCZzK4q3iVqegZAb++BZqV9RlobpHe6vUNYnOhHg4auAwW8J8u3FRIsKEedfVMqyJtJVkE9miuUPBbnhZz4cHjVWYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765163143; c=relaxed/simple;
	bh=m0D9V4x0TDiYMScx+B2rDcfNHpt1W4utB08H2EYXkTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XrkGek7wvOFMsxCLuACwqdpLqESnpUlH/rRgL8utYqKdtGPuu7hM4nzvQ/g4vo2VDtmX8X+Iz8GaD5eSEWs4z3SovcTpka7mLkmkcZllyhu9o89NqVprVyxGpky0/j9nctkm3OWqToCEvmx8NcQV12kK65v3vp6CqjvO/PKHj0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R8wa295u; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso32055245e9.2
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 19:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765163138; x=1765767938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=R8wa295uhw5LPI5x8KhwsVKi+4n0nWN8AnA9AXPBx8yC8MvAieTb73BjI/jqvDTWEp
         t8nu3/Qtye8F1DP9Tb0pj3F2JdSiYEvV59zs7UIZon+FzjBDkuninZDIIHUruOnE5IYl
         JLUtuoVN8N2KED801sOLqBDT9dzGzE00eqiM2NZYWAM+uKqIfKQfdzbozD9nMDecUdwi
         Z7UmVG7/UgWZ+G9Mtg7uE/8CFL74hAJkhpr7Vzr6E1f/m5pccjChkRkpzS0H843jhxPQ
         hMlaUX1xKYI64YCaxXGrpobvRxd2rii/1aJBBZxvnhv0ULVlqboZ2zwGDsTB/dAc4Qxg
         /Jqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765163138; x=1765767938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=dPsXr0TbqQ4/G0x3gXRwAlA+Lpx8dhBZaBGIXqBkhZuViwU7En2bRxazH8w9Z6mYn8
         WxEbbZiC9Ttk7c2HWQnu2q5lbT3BZPg14YIMCPl/rjpwtW3lguvqiMnKPOAZv0NoiEiK
         CMk/zT3OoCYMu5GUkuVde2g3cqqkUoWx/XbLWVYwlIDveUDPUP4gJOJFvFIDO/Galdqc
         FsNNaxZea5vqE7Eb6rmUPP02b5AGr4PlyjkdqYQaUhrUTX3wdqcIr2L4H2h/xkaRSBPr
         sOssGDrSFQHqBwtSFBCaS4vf3KJbs88aOYB9kPpEnUdtszTOi5ePhAOi/ULw0JvPo/cU
         XzCw==
X-Forwarded-Encrypted: i=1; AJvYcCUdjcnPpT6guq4t6OdcgWdESYWpNs1FTaMzFY9EQIWUXRs9VCYH4/MkOSBn6G0VI001h05n2KqAGAz3@vger.kernel.org
X-Gm-Message-State: AOJu0YygnDX4ycxO0C/iSYOoMTU8aXmRHwzGjNGnM5FklfYVSnE9LqB8
	c5fOpUkyPpAdo5tuzoYLoMpcvpkCcte8gw7C5gGOoLYr5YOL9IbSO8L5y2fBPfy2bUm6v15G3Ol
	ANs0esPku0w==
X-Gm-Gg: ASbGncstVnSbT38FwfdHCHPH78TYkroXVUW4icKQ+R+UUqfKgDYBEsdWevoJVHnnzyb
	T7s5RLPbCffnFqLlbFbnGds0cb86Bsm/e1mINqSsa8rh5JPfX7hq7xZcbYDEVahNyC0laA+x+j6
	hybykwNslz0OnwWP7QyXdl0KvLffvqUUDYhbGfL9e2Zz1376sBYwpgv5RWObFipuhuC6y0pUVf5
	ZgwQEmzg0HOi31NSbth35plqoZgoS1ZvcP/DpSj/a8PgNvw9s7BZ+zEkpg4db/jyPKts3CVaGso
	X9cX7segHu/HtEiwrOdqoDqOt1rBfsswyFQapgo9pAsnWkcCqwPZIqsREvvmC0Nbdsiivavn1ih
	weAGpsi0K7L3yAVUE7ClHPVBZJcMPTi3gm/zkz3cnSrpfPEKolFCm8QHGbmEgCW5a2Z76YnOkGD
	9fW+axMaezSBeh8/aZd8ziQCQNbifv1Xmwji4vFlktVA==
X-Google-Smtp-Source: AGHT+IE5NLuFXDyXwZeEfScNoLU+uyHbkMSa7QkD1GDahbK5J8VDnVXB/PQgU5tmn4TB0uE2IXuIpg==
X-Received: by 2002:a05:600c:4e55:b0:477:df7:b020 with SMTP id 5b1f17b1804b1-47939e1cac1mr60317925e9.18.1765163138213;
        Sun, 07 Dec 2025 19:05:38 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310b8e70sm220564885e9.5.2025.12.07.19.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 19:05:37 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v1 1/3] counters: Reorder the Makefile
Date: Mon,  8 Dec 2025 04:04:11 +0100
Message-ID: <20251208030413.3117660-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251208030413.3117660-1-daniel.lezcano@linaro.org>
References: <20251208030413.3117660-1-daniel.lezcano@linaro.org>
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


