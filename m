Return-Path: <devicetree+bounces-247574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 783DDCC8C7E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:31:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42A8D30E722C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA3934D4DC;
	Wed, 17 Dec 2025 16:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YWjzgXBc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2CB34B662
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988694; cv=none; b=Au3kdEGWL2gCyes9ca0cALCuHpMWKA6DCuT91BhBiZ1EUMOn5ExFUrP2b44ClJHZ8NXYF+UyJHSlgg92bpkOcMiqXIl01S2oorS1Ma4CfhuecxjJN6rp5K3BJ+b2Jz+Fqme95atCRX4+v05mHzrSjYVyalro17NrjEOvTH/h/UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988694; c=relaxed/simple;
	bh=4A+/3Lozln7kmJXLxfl9Ass+jwb1UWj+PPueoGJcx8k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eJ6OL6SRgO9WE1Fg6ua5Zadf72GUrqU8jKK43qor5JwHjUZcTbGdEmQPl2fhBncUVrrBCqdau07AB/Zf9cyLrv2usz237zETPncS1qwPNCA9kE0Po4mnArM5/T1SYNiRFEOsbmYw72a9ThAauWnULkhZW0WVK6gmnE/d0qU3S8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YWjzgXBc; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-29f102b013fso73154375ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988692; x=1766593492; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D015mK7WSxavVbYzWtuulK3/EPR4luIjSULFnLfast0=;
        b=YWjzgXBcEBs4pj+taVz2zaG1iT/o4hO28VhE8w/SC7wnEkN+pJYazw1tZEVGniG+fY
         f90j8Qb+eLxXs53x8FelQ0NvTN5f6iiMf9K3/PufM5QgQyDkIlwhIFC0ll9mYSEBNnfe
         RPrzMRoNWsMTA8xNe0Yp6rHafV//6iDWTOSOgmlInncZq/atKk2gQWbWN06QaUrMpLgz
         PpMYFAegnv4t6Djxoh3sbcudst1ydjGF9hPS5K5NY2MI3dG1ZaCTcupnfohgT8+Xfa2i
         ultl2uwCDUQyDw9qE+Zsk+eTOvE0uTvdg9iYfVTGfoc3Cv4BsBHwqybjsCcOdcY1eAaJ
         1lEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988692; x=1766593492;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D015mK7WSxavVbYzWtuulK3/EPR4luIjSULFnLfast0=;
        b=uHp4kcUwSgH2lVac8tceMchrJdvZzVVsuyPmQuySYtDelCJLojCyqTEDhWrTx9uTC7
         0BGb5rkYZB6BrdFVHUg8gvqags4gD4AP017Q2kUydFjT7WbMe0uNP3PuxIk7d9vm7u5A
         1a1xdQaVORhLefG65q0tEBi8JHBi5Wv4TLLQsqltfwpZnWGWdRzganAuGU63Nevy5lyQ
         hzCpyFZmQO6mS/MPa7txzLnUssiZWLFL7H7yr++VHkcMjg4H8bG69jdc3hxiCPeG4ay9
         xeSMZWnkWTl9V/M6XYHRHQTB3vdyYRW3PJmPJlEmrWsBw5JuhGPl4yJ1Y5wtpfMFuqOd
         vzAg==
X-Forwarded-Encrypted: i=1; AJvYcCU+jd2c9nThOpWHIHmk/QQqURelCAm316vKtMlDeFvl61dcsI5PgLF/pPWKtnY5QlXstyw7P1FNVzNv@vger.kernel.org
X-Gm-Message-State: AOJu0YymbEeijrxYlCxiNg+R8PNYOJWWVp5Z+YbXyPpTvu7HGSS5Ri0e
	c68cMvr9Ny8P+PmDRln2U1JH8ykSjZHA4q9gy1CS74vCnKDDEVGynxP+
X-Gm-Gg: AY/fxX6iGs2kLCc0qVFH5qsLNHBVRz8Dk20i7GBEoR9OVjw5zyY982yzoQ8+FGjo3XI
	ltrJpJl34UKKgXCfwVMw8wtfi7qa0HJ4ymGys7OBh/nJBqGUCpVscFO2tQiaShxLCeyq+WZLeNH
	KCp0iGvW/biUOlWkpJ3kHPAVaWMMgArxqXKElWWlZHTGdYgoFJ46d5ZYhIF+l5I89bnUcBy6b+N
	GbfVUD6JZe9o67oIEPKFpd+pZGfCatvhTn3WCgxKpGXQAxpPH5mnHuZehoTo+BrXZDw8V43iPiT
	5d2RsV3MsYzxDlEbJjLN/mmadBsM/bIZ9Dfi4IxMAEFzLrCrG2XeV51Vua4MUu+GTUd1ocCNOFS
	XBmlZH5xZokwS59XAYy4pHARQ8T2GSfpQfcN4Rv9HbCYNJaoPM/wKmVX+TzpDvPWVbgRvh+TWQK
	PkN/Ecp2l/brOR
X-Google-Smtp-Source: AGHT+IFBDhdjBy2ztSMOAWQEhJCi8PCuLD/3d4j/I71RYEGXFxGKEMHoz3QmjpOsdlDcNLlGRzCxhg==
X-Received: by 2002:a17:902:da8b:b0:2a0:9755:2e97 with SMTP id d9443c01a7336-2a097553037mr153493005ad.15.1765988691664;
        Wed, 17 Dec 2025 08:24:51 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:24:51 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:17 +0800
Subject: [PATCH v9 04/21] drivers/perf: apple_m1: Support a
 per-implementation number of counters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-4-4deadbe65d03@gmail.com>
References: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
In-Reply-To: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4845; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=4A+/3Lozln7kmJXLxfl9Ass+jwb1UWj+PPueoGJcx8k=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlA5xAEAlJ14/E7Way5r1bm+LE53/0KIRcw2
 KRmd6EFnSaJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQAAKCRABygi3psUI
 JL7QD/sEfDLO32Y2wh9SQSrGOdG3EEEW+wFpaUCCxyswGBzo0hidSj+n2IS273ssZh8o7Ai8i8i
 PX0x1FP5kbfmd7o2IOwkWxGJB+eY66l8vixwrAwWJeP0vj4L7uDS1nXyFucOpW1dbNZHNxi7af0
 wmdFBD4qEP7BbU7Yzn9YVAsxjuGm20wpI+qH87By8J+wzhlCJ3vImG86bjo7GZmIKnS42QTLCXL
 tO/RqwFMkXZEYTX01mwQMyWnZsfcNX8Z6Zu2MQMou15IAvV83Xb99Om3zc4Yc0bDqmlW3fyf5El
 8Ku033iTpkUAaqICl+S/+ZC+jlO9uwJaXXbHViOIywjTSJGN3A48BJ6hRrsxYBfvUXWtwwud+xf
 iRydxAVqTxhIEH7bvw00l0IL0dctokysBVl420K7SO2Hk7T5ZWzRBViPNQpytc8zfyDFOfkBHOr
 7PFrpHWHt8FAo2FYJz9vio+4lenLZtwY1Es2nrAmL64hGhtFarBbof+WUHXKcr/lA9ptyd6Yo3M
 3ebeT5H0ww1sV8RiwkU66ZTDahz41XULxBi+pPvczKCKRi/gC901+BOnhe16aUGHWz8nY6tBlyt
 wKfD7lmSXvItZeQM9z2c7RuZN9pyT+ST9zj4Ttl3q/Xmz6Ryx35+gOc0+efy13P15kR+02Lfb3P
 YI+nj+Qfo4XdkIA==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Support a per-implementation number of counters to allow adding support
for implementations with less counters.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/perf/apple_m1_cpu_pmu.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index b4ab6a3e5df965b7ef450d7e533995f3cc8633fd..b5fe04ef186f04b4af32524fe433afb79979b791 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -20,6 +20,7 @@
 #include <asm/perf_event.h>
 
 #define M1_PMU_NR_COUNTERS		10
+#define APPLE_PMU_MAX_NR_COUNTERS	10
 
 #define M1_PMU_CFG_EVENT		GENMASK(7, 0)
 
@@ -459,7 +460,7 @@ static irqreturn_t m1_pmu_handle_irq(struct arm_pmu *cpu_pmu)
 
 	regs = get_irq_regs();
 
-	for_each_set_bit(idx, cpu_pmu->cntr_mask, M1_PMU_NR_COUNTERS) {
+	for_each_set_bit(idx, cpu_pmu->cntr_mask, APPLE_PMU_MAX_NR_COUNTERS) {
 		struct perf_event *event = cpuc->events[idx];
 		struct perf_sample_data data;
 
@@ -506,7 +507,7 @@ static int apple_pmu_get_event_idx(struct pmu_hw_events *cpuc,
 	 * counting on the PMU at any given time, and by placing the
 	 * most constraining events first.
 	 */
-	for_each_set_bit(idx, &affinity, M1_PMU_NR_COUNTERS) {
+	for_each_set_bit(idx, &affinity, APPLE_PMU_MAX_NR_COUNTERS) {
 		if (!test_and_set_bit(idx, cpuc->used_mask))
 			return idx;
 	}
@@ -601,13 +602,13 @@ static void m1_pmu_init_pmceid(struct arm_pmu *pmu)
 	}
 }
 
-static void m1_pmu_reset(void *info)
+static void apple_pmu_reset(void *info, u32 counters)
 {
 	int i;
 
 	__m1_pmu_set_mode(PMCR0_IMODE_OFF);
 
-	for (i = 0; i < M1_PMU_NR_COUNTERS; i++) {
+	for (i = 0; i < counters; i++) {
 		m1_pmu_disable_counter(i);
 		m1_pmu_disable_counter_interrupt(i);
 		m1_pmu_write_hw_counter(0, i);
@@ -616,6 +617,11 @@ static void m1_pmu_reset(void *info)
 	isb();
 }
 
+static void m1_pmu_reset(void *info)
+{
+	apple_pmu_reset(info, M1_PMU_NR_COUNTERS);
+}
+
 static int m1_pmu_set_event_filter(struct hw_perf_event *event,
 				   struct perf_event_attr *attr)
 {
@@ -639,7 +645,7 @@ static int m1_pmu_set_event_filter(struct hw_perf_event *event,
 	return 0;
 }
 
-static int apple_pmu_init(struct arm_pmu *cpu_pmu)
+static int apple_pmu_init(struct arm_pmu *cpu_pmu, u32 counters)
 {
 	cpu_pmu->handle_irq	  = m1_pmu_handle_irq;
 	cpu_pmu->enable		  = m1_pmu_enable_event;
@@ -649,7 +655,6 @@ static int apple_pmu_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->clear_event_idx  = m1_pmu_clear_event_idx;
 	cpu_pmu->start		  = m1_pmu_start;
 	cpu_pmu->stop		  = m1_pmu_stop;
-	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->set_event_filter = m1_pmu_set_event_filter;
 
 	if (is_hyp_mode_available()) {
@@ -657,7 +662,7 @@ static int apple_pmu_init(struct arm_pmu *cpu_pmu)
 		m1_pmu_init_pmceid(cpu_pmu);
 	}
 
-	bitmap_set(cpu_pmu->cntr_mask, 0, M1_PMU_NR_COUNTERS);
+	bitmap_set(cpu_pmu->cntr_mask, 0, counters);
 	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;
 	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] = &m1_pmu_format_attr_group;
 	return 0;
@@ -669,7 +674,8 @@ static int m1_pmu_ice_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->name = "apple_icestorm_pmu";
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m1_pmu_map_event;
-	return apple_pmu_init(cpu_pmu);
+	cpu_pmu->reset		  = m1_pmu_reset;
+	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
 static int m1_pmu_fire_init(struct arm_pmu *cpu_pmu)
@@ -677,7 +683,8 @@ static int m1_pmu_fire_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->name = "apple_firestorm_pmu";
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m1_pmu_map_event;
-	return apple_pmu_init(cpu_pmu);
+	cpu_pmu->reset		  = m1_pmu_reset;
+	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
 static int m2_pmu_avalanche_init(struct arm_pmu *cpu_pmu)
@@ -685,7 +692,8 @@ static int m2_pmu_avalanche_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->name = "apple_avalanche_pmu";
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m2_pmu_map_event;
-	return apple_pmu_init(cpu_pmu);
+	cpu_pmu->reset		  = m1_pmu_reset;
+	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
 static int m2_pmu_blizzard_init(struct arm_pmu *cpu_pmu)
@@ -693,7 +701,8 @@ static int m2_pmu_blizzard_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->name = "apple_blizzard_pmu";
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m2_pmu_map_event;
-	return apple_pmu_init(cpu_pmu);
+	cpu_pmu->reset		  = m1_pmu_reset;
+	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
 static const struct of_device_id m1_pmu_of_device_ids[] = {

-- 
2.52.0


