Return-Path: <devicetree+bounces-250902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D438CCECE52
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 744293031A32
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833F9284880;
	Thu,  1 Jan 2026 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cExs9hxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F292280330
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258173; cv=none; b=IceIfmhiFc5L7AV/fLqlTnI+2BeM7i3B8rTsTfwfndK1V8ZSBERGDPBK2MIi1GdqAJyqCQ/BdkRpB/CO3MsbffM4p7p8oUdej6mH2a5itI0zfkIFoeqaQiT1ZOOxG2i03HdvjeUO8hYQeFtWfgBonXzHBy9EEcq5pWkR1Yeq0rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258173; c=relaxed/simple;
	bh=vnsmCGSw7Ox/D+cYElRWl33lnlkyIEYomCaHfMV1wgk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XcF8uWUVNVyrZdF8nRAeMFdlS1ZL6ZeUf6H4ORx5TbnK62CSUev8wy2qDqWlz31mJtpqVnvgluAKAEV2QAnCnC2k8h7PWZRPavN+vQa+ei2Ltypo4Xl6+0MNQp+r7KobPKGGk2wOA6ePWGmcVT2XOImb5IQN8rB1dZPbD9FSkGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cExs9hxc; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7bc248dc16aso9036972b3a.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258170; x=1767862970; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mzvjVfHrZzra3wF9+A+Do+FwcxmxMk+rXbtL9/jEreg=;
        b=cExs9hxcqSujTYewwTpAT4RPcxVqcFjpr11qodX7zJZ96XRjJM29JWgj3PV7VG32z/
         CttaVTBzoOY0WuQVQjkQO7vwkQZRHwXTOW7XB0nj0LA5Z/8ZuGiCNN3DU/40i6oRPOnm
         aM7o51cqTmWmzIjKh4VAffO8xAfN/a8kxLr57flA+c0XMLBSTu4shqVlw/eTRGjxS9b/
         4o3vaUpuRPG2jK8/EXxU+pygJq4QmKky9ieqGhmYGiDnRoH5IeIC9i73tezh6jZFcmqd
         JgLWygs4Z95Z3yJQKDfNYKk0F0goXx8/UfJsz8PA+K6iOP861dtCG8wYiPwV9BzVDWQB
         on1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258170; x=1767862970;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mzvjVfHrZzra3wF9+A+Do+FwcxmxMk+rXbtL9/jEreg=;
        b=r+So/7KFZ+nji9MS48ZYFesCNwysaL59sacIA80AUjrQJ5zLlYdC1Zy+lc9jlMJEoV
         h+mmaSW2vHxt/7xH/OCHxR7wI5+nEkPDQ2xTEmIq0sL8lefMBTo7m1mT+lAywOEwYH4u
         GKwKcrCTLzPj89fj5KuSx7K9R1YdmGo82+kQacUR+mCStZX9qbWsx/8gaJmF6DCM3dw1
         kibJ9Fsmo/zUG2mNxOzbnXjD1LvDmGMgB0iirisfV+oXlDII3kjxW0nOHXGnyowM8uDw
         iAlp8RtbmOfXjYN/T6PK3u8S1o3JdUJNUvr5FW7A4mHgR/bXmhKgQJn9yjMjmYW4bk2E
         EuFg==
X-Forwarded-Encrypted: i=1; AJvYcCVwrmwiBcDzHNQElDg8oX9Xl4OcScCXN2Cwm4aFXC86NDZ4eHzDiBmyqYVTmJineLFuO02u8ndWSQhC@vger.kernel.org
X-Gm-Message-State: AOJu0YwcuWvGCgtEAVLic9EbxTnjRrY2aXIbysAPG6F2Q7Z/3g43KBu0
	K53i84BqmfaGMhKG6OMTcAgc3mTixObAY+PgcMrpBsV/BIs+wIV5Alsl
X-Gm-Gg: AY/fxX6gM9jr1vlTbr6xHINgDLnXgO7gZbLQ+1QoGNbeKa9xiKNmZ5lex2jaRwo3pqx
	HQ/4MpDA6Wxdw7eVMk4cVgilSCNWdbRSUViAR6A5AZJZCy/tnxGkVlp3TOmXB5+O5CdmjmeGyks
	Vlz0YKHAdPRRpeMBNX6ITeb42FO0uk+qIjS7c9QpGOvtfGU1QMhnRblUzFN7ybblZqVxCL7JAUv
	9DeFdfET45qwe1q62agBO/WY9a8JFWHX/aTOOQ7Nz8QDapl7zA1o3wFGpQKXmPhXp4qIm1S4ueY
	4x5cK1f3fnwd4jZzJohX6aklaG9MVTEGSJH0mFJAK7oN1aBlc2eoz4Md7Vx9HJ1qsGpwlL7cjQT
	32HAIM6ybbmoZ/4OWiWcuRwhwpEhwTGNODX1qHZh0joDMGsgmVj1HnkwdKwwoOfYt+fWLfkfZpc
	DztDyjQyNmFWNP
X-Google-Smtp-Source: AGHT+IEX1s5ks4GSf9vW+xRL0kaPOFIGucJSrgtfX5TcAhrNEbjWInD/uhlAFVi+IvqgSG5t8zgPJw==
X-Received: by 2002:a05:6a00:801b:b0:7e8:4587:e8cf with SMTP id d2e1a72fcca58-7ff66a6ea42mr36292504b3a.66.1767258169687;
        Thu, 01 Jan 2026 01:02:49 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:02:49 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:40 +0800
Subject: [PATCH v10 04/21] drivers/perf: apple_m1: Support a
 per-implementation number of counters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-4-48812c529ffc@gmail.com>
References: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
In-Reply-To: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5683; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=vnsmCGSw7Ox/D+cYElRWl33lnlkyIEYomCaHfMV1wgk=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgmHJtVqtjeoiJKKIhDQt9qIWdQDOC/zGFyo
 QkRwkr9DvmJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4JgAKCRABygi3psUI
 JARoD/9Zh0Vhm/bNiMMe2pBZbvJMqnJf2oHnxk2JKgdwWa9kfkiQlZbdzArn7sqWM8wmDXbjmco
 mfsYi8LvlBm9vrklaUZwi9yKoavfyZNHTu9YF4sP77fFG40ipagDZxmzKPdcgQTHRveTwbEczcz
 mA3FjuTxhDkud544e8b130aLcMJIPa/YL68X9VZKFFoLze5bgIJzfDLvORZHyJ4MOaXDMWI05Cf
 XkYofevpChBhCV942gZQQ2CZPpD2DTaHWrXhVxOdCu8SHxpWMW1gb4lgCNMgud4UW7tubdreqw7
 JTPbeLeyPpTbJeiHxg3jvHSWO1qLDT6sJthyWyZxNyD8QxctRZ/zY2qFJxH1YmCDXRmuI0BEBEv
 Fxo2qKPAn7pqD++V6b4lmI1qd1ZaEoJe29aJtC6oR9foGsOtB9vGHuBiTMBY93Hsp36hQej1oBu
 IM5FxvDfDO+UFyZ7gr26B7Es3Lub6sBjENMN46CvAX4PlqxzSkIaEPyz1JEOr2npVSzioUKYTzV
 lm+/84J31ToC7iwpAqnWE28ADkpGJh1nQU4oEfKe5MPTzdRILSGPHdH4zBPFlQE8EVy0HmwYodc
 EaDb9rDSljSH+f2l31Ogp2i3GjaDgWBsq+Q4RMthooPQtrfZHCDI+L1layneq2efUroKVN22MWD
 3qxb75Yp5k6w5yQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Support a per-implementation number of counters to allow adding support
for implementations with less counters.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/perf/apple_m1_cpu_pmu.c | 37 ++++++++++++++++++++++++-------------
 1 file changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index b4ab6a3e5df965b7ef450d7e533995f3cc8633fd..0b0ee2b9ad4b555f66b9b478055a420b7eec8f3c 100644
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
 
@@ -492,7 +493,8 @@ static void m1_pmu_write_counter(struct perf_event *event, u64 value)
 
 static int apple_pmu_get_event_idx(struct pmu_hw_events *cpuc,
 				struct perf_event *event,
-				const u16 event_affinities[])
+				const u16 event_affinities[],
+				u8 nr_counters)
 {
 	unsigned long evtype = event->hw.config_base & M1_PMU_CFG_EVENT;
 	unsigned long affinity = event_affinities[evtype];
@@ -506,7 +508,7 @@ static int apple_pmu_get_event_idx(struct pmu_hw_events *cpuc,
 	 * counting on the PMU at any given time, and by placing the
 	 * most constraining events first.
 	 */
-	for_each_set_bit(idx, &affinity, M1_PMU_NR_COUNTERS) {
+	for_each_set_bit(idx, &affinity, nr_counters) {
 		if (!test_and_set_bit(idx, cpuc->used_mask))
 			return idx;
 	}
@@ -517,7 +519,8 @@ static int apple_pmu_get_event_idx(struct pmu_hw_events *cpuc,
 static int m1_pmu_get_event_idx(struct pmu_hw_events *cpuc,
 				struct perf_event *event)
 {
-	return apple_pmu_get_event_idx(cpuc, event, m1_pmu_event_affinity);
+	return apple_pmu_get_event_idx(cpuc, event, m1_pmu_event_affinity,
+				       M1_PMU_NR_COUNTERS);
 }
 
 static void m1_pmu_clear_event_idx(struct pmu_hw_events *cpuc,
@@ -601,13 +604,13 @@ static void m1_pmu_init_pmceid(struct arm_pmu *pmu)
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
@@ -616,6 +619,11 @@ static void m1_pmu_reset(void *info)
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
@@ -639,7 +647,7 @@ static int m1_pmu_set_event_filter(struct hw_perf_event *event,
 	return 0;
 }
 
-static int apple_pmu_init(struct arm_pmu *cpu_pmu)
+static int apple_pmu_init(struct arm_pmu *cpu_pmu, u32 nr_counters)
 {
 	cpu_pmu->handle_irq	  = m1_pmu_handle_irq;
 	cpu_pmu->enable		  = m1_pmu_enable_event;
@@ -649,7 +657,6 @@ static int apple_pmu_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->clear_event_idx  = m1_pmu_clear_event_idx;
 	cpu_pmu->start		  = m1_pmu_start;
 	cpu_pmu->stop		  = m1_pmu_stop;
-	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->set_event_filter = m1_pmu_set_event_filter;
 
 	if (is_hyp_mode_available()) {
@@ -657,7 +664,7 @@ static int apple_pmu_init(struct arm_pmu *cpu_pmu)
 		m1_pmu_init_pmceid(cpu_pmu);
 	}
 
-	bitmap_set(cpu_pmu->cntr_mask, 0, M1_PMU_NR_COUNTERS);
+	bitmap_set(cpu_pmu->cntr_mask, 0, nr_counters);
 	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;
 	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] = &m1_pmu_format_attr_group;
 	return 0;
@@ -669,7 +676,8 @@ static int m1_pmu_ice_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->name = "apple_icestorm_pmu";
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m1_pmu_map_event;
-	return apple_pmu_init(cpu_pmu);
+	cpu_pmu->reset		  = m1_pmu_reset;
+	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
 static int m1_pmu_fire_init(struct arm_pmu *cpu_pmu)
@@ -677,7 +685,8 @@ static int m1_pmu_fire_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->name = "apple_firestorm_pmu";
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m1_pmu_map_event;
-	return apple_pmu_init(cpu_pmu);
+	cpu_pmu->reset		  = m1_pmu_reset;
+	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
 static int m2_pmu_avalanche_init(struct arm_pmu *cpu_pmu)
@@ -685,7 +694,8 @@ static int m2_pmu_avalanche_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->name = "apple_avalanche_pmu";
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m2_pmu_map_event;
-	return apple_pmu_init(cpu_pmu);
+	cpu_pmu->reset		  = m1_pmu_reset;
+	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
 static int m2_pmu_blizzard_init(struct arm_pmu *cpu_pmu)
@@ -693,7 +703,8 @@ static int m2_pmu_blizzard_init(struct arm_pmu *cpu_pmu)
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


