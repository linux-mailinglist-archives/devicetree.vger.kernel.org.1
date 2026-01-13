Return-Path: <devicetree+bounces-254655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3734D1A6B9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8D9AF303BA9E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC5034DCFD;
	Tue, 13 Jan 2026 16:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mD2Z9EEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743B62BCF6C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768323151; cv=none; b=S9xckfzvPuA10C7uwRSqN85MSwOSuFShmPexOQEFV76FrWiWFegGzqzTu9Laz+VBCSxIanE1aoyS968Vyfaxz/9cV95zFgP5J2SuFPbfLZZ1SaHpAGJLenFPCrYfcAJHGD5s/eyu4lAqVwpNZXpWhqzQ1zepAYZKABpvTA3uM6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768323151; c=relaxed/simple;
	bh=m0D9V4x0TDiYMScx+B2rDcfNHpt1W4utB08H2EYXkTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bnLz7l2qo43ICtIwJqpsZdFLMUBkRyjDjmRuYfKup2ki25+/+cTVHYH4yRpNQ4Ns+L1piSEPVbjUWDyG+Ub126c+NlE5H1BmFFgoQG4alaZ6Fz5274NLZO4g1k0hieeFd7NjcCJ7HIFiDneyditCSpYzKgIhHrIVck2S8YbL5yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mD2Z9EEl; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47eddddcdcfso3446655e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768323148; x=1768927948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=mD2Z9EElqKO/hQhsq9tOguQfawJojXnQNFJ4eey+mu+S/YDB57FMwV+D41IhXfKKvc
         OXqJA21UXgmBZVxarYyOCTYbPD/9HKJ6W7fhj0iSTMT1mRd3DuOUF9i/0SRg7HuNf41j
         8g5owQ2OsouP+UJWETa6gn8JzTQlHJ/tpyYL7+5MI9G4DR+XniahuTtsZy80w2KfRqdE
         w3gpmEMVnqz+w2sq94Tz/iYd0/Hbo1XgUYZI9rW4E8KMtVXSoKtY/ur82nhM1XyRYHP7
         GwPrWPlltPJdnJczlViPTIh9vslFbQH79H/ADhi62PcSg5daIjdc2arouTzrTgcgls4d
         l6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768323148; x=1768927948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=IHh/UI8RJUQngEe19B8TsKMBwuVXJDWhlEftcUhtIVffCBS3ueGt8+/QBePOHIFbgB
         Xe4jY65e5M0bbyGeDP+PIOysyuT+yXGEEF0raw505XzdljcG1OAQOKDir3lWstufjB6t
         /K8GWBKxgyAnczl7GIbY089RKpB2+rh7MwJcJy+V3nIAu+9E4wexj1JurybyD4yQdlKc
         Ww/v94u9tv81ONE5NeIe9vRUki4hjNwbd3RgbP8dFOqRFGoRxETkc/z84N6cfCE1dOEU
         KmhRcb8naQwdBWKqxCqOo+t6RD8kqHzLMxg5fCU+CZ1LN0jHkMWR/y63TvTUhNvDVekp
         hrZw==
X-Forwarded-Encrypted: i=1; AJvYcCV//N3Ntp2kRP97mG0qzED+YoOCA/pwTqC7umvsqJxzsukImF47pjxssMzkhSYgValCTSf5Df161pCS@vger.kernel.org
X-Gm-Message-State: AOJu0YxdAgIW9htkQ26JaSOHcHk/7zhpyuWGg9vfAxLggu+bc45jUgMS
	Dkr+VOthVUv6NcjTO1trDI0vTbvtOQp6NtGjQbMT6maO4SgTYvbQuA/CBxvTjhN2svM=
X-Gm-Gg: AY/fxX6uDyKO6L5CnxPmCx6JA4X1JJN2fHlz0qXej/YyUnq1qRlD+lLN7jizGtjzNWd
	KyB86waYNu906JxJUc15bZ4jQ9RmR5wt8XKYnIxY+yj3zpK4J9mNdFCIiIUdAkmX3nE8tjqtlxK
	kx24OOrA0A3VbTBCZPFdFJSgBXOzKxKetfurdaHCAvLWMs7h5mwBS+DU4hmzrp1te0MDeFEqBYf
	GDF54qBMyU0Agc6cOfhvdh7pvJTNUUEFQRPpXea8REpDTGfMSILUfrLOOhFdEPMBwQbSWosmUqe
	pjEt4THzXl4QFuJn7kDBFqNSR0+3x7xl0aKie7+eO390WaqlqCVPiV9ecSXQJ+OkLExCLHaWj2e
	cKsOtIFalCOwswu1U4uoS2ykZb6G6LWWORVgSJEtRX+paARi0yRs/ij40h508o39CoQD7lHm0ls
	ZevHdqF5oO6Mjx+QTMb+wK5YcOuvC7WuA=
X-Google-Smtp-Source: AGHT+IE2mf8KyPtT6cpp9Z+sIL+E+Nhzb//si5kbvx2m3OmBsCtIM58L0qqoJtaQDiBQE8qxSXV8Ag==
X-Received: by 2002:a05:600c:500d:b0:477:9d54:58d7 with SMTP id 5b1f17b1804b1-47d84b3b881mr210609265e9.29.1768323147822;
        Tue, 13 Jan 2026 08:52:27 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:3594:70ab:9964:c5ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f41eb3bsm431684925e9.7.2026.01.13.08.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:52:26 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org
Cc: Frank.li@nxp.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v5 1/3] counters: Reorder the Makefile
Date: Tue, 13 Jan 2026 17:52:18 +0100
Message-ID: <20260113165220.1599038-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113165220.1599038-1-daniel.lezcano@linaro.org>
References: <20260113165220.1599038-1-daniel.lezcano@linaro.org>
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


