Return-Path: <devicetree+bounces-250901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FCBCECE46
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7DFCE3024E6D
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB51280CD2;
	Thu,  1 Jan 2026 09:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cxo33kZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30998281369
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258169; cv=none; b=fVE/L2aipraVxoZA7tVX4DfbmHnCMFvl4Ldu3T5YbMBEI8Vq8Yo1pr00CcTPJUVfo+J7w5QZsOca1xIKdwj95AnxHgVozUdj9V1F6/z6wesXQhE5Fh4F4onpQ1XNB/n774kGTEwTkaNhB/kzbthzpPW5FakeGmIPnjus0zfCUXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258169; c=relaxed/simple;
	bh=GEbwxw7PfrqcXKYl5oW/iB71cJY49weGjklHwoM3hyk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dKYy8FIpsAP9tOe2yy5Gx+KkbU04MI/QoXmdCvF76kNCxNxz4d/77/y/DXW1XV+QdMXrJQWT3nPWfITeFpF41ybW2L1uFrIqPNSks4roR5anLjCrIRlQRzWUuxEbSVc6GzATmji+6idm463FkoYoDsMh30zqm5z/B7xzXQH4O18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cxo33kZL; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso11690617b3a.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258166; x=1767862966; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=baePLKadh5VeuMN7NIEHaBw4znqNJn9lrkTnuuN/n4Y=;
        b=cxo33kZLZ2Y7l02LWJX3XLTAdZRDZCb6JWBB5XsTc2zggY+JN4Cxzz4n8Tmwy9bysZ
         dIz8LS27ucROQVqfnqFn1Wu24WQuIdAvsHsP31tGSIxXw0wjln2DytwvHS2KiOkhmmOX
         w5XuGr/dElPsevDjPBngsXnOlQfCcp4kpfs/8TVVvWkrm0OfMe2/jpAvjYA5OoS1SB5u
         ukYKbutyLzbUZ0tOfyWTyR41fXtKELZsnq6H9nlH+uqwLnJERDYar/eo9NaDstdxcacP
         jlzgDf+j2tRPQQtPyV3EbwBXjj7k0ktP07qHgfm45t5JD7s3km0NLhQkNDTl7es5wmoB
         vNsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258166; x=1767862966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=baePLKadh5VeuMN7NIEHaBw4znqNJn9lrkTnuuN/n4Y=;
        b=eFFxBWEH1mbP1hClGLRcQdK2Gs0kyO42mlp7oGwc94+OWeGd//sbtrDk8ha7MKPyKr
         DlT8CxPMig9x2EWU37zD2L9DkklLq96ugCBhdRm9Z2UM7UglkDvOMzJ1rdAj/6LMf8Dj
         Gj7QnvZeZfsZVCL26wE1BYjK0Q9xtKwFWMzk7fwJP7EGEN4lyKKCc1Jrc6t9/8oANqGr
         VkQ4qdvYt3ZC9JfD2bdjHIpsGhz4QgCFngawHkl0UDQTntY/xVZhKbDTmQjH+qjTDaXf
         gQZRoaQtwPvrPpX55Kwde2CV6MPPFmH1IIyCJ5y+ovfUjyutNgJEmehyVthLW1bEtqKu
         uBFA==
X-Forwarded-Encrypted: i=1; AJvYcCV1DymF1v7mkDUjXdQ/nwBCvmq/2YmsyTEK6RjUAjGaI6N9OArElZBdCEApimrmYWKe8qViwnZ4L4lb@vger.kernel.org
X-Gm-Message-State: AOJu0YymSj8kpPhtBZHBR9DVc07neYj9zDRnqwwYB14pLHo54B6RpM1y
	80J9pUsZiyQjwZkiSgP+wDSW2PPHxffJsko6iW0X4uPk1CuUFkqj21wl
X-Gm-Gg: AY/fxX6cG7NZR9PU/52wta76m72wRcskesLVCQbLvr7K1Up8R5URG4w167z0867MaQy
	YabaC0w8s2AEGRs4/tU/2akVv8DkjGvwS7VjMKPN7MtugusPpMnoX0icszxOPWCUkJBT8Uom7QA
	VablhO2ku2qerMqCu7PhD3TIb8sKLfQQTrzV+rKn1VbZPMx6CfTWmM3O3AfaX6e8LNmvAnaTyrG
	tCL+PLWx0zojHhaE+R+ttXM3EsryGWLbGV9H8L3sq6KXgMQ0PTMBpQo9pUtvByIcQofyJXKH7QN
	UOCjbfLOO0QsQEL6hMONmEcb+VD70Q1E9MAA4cP8u4/Lt6R3N+sPwPvI5pMNwrjDel/dfeY6iw5
	HZvwu6oDWURDV/tM1ClpkUH9E2oWyExQVg5XJMqER0uybuopr5HTI4wRxnvKmryeRRHpTS0GnGo
	m86JLVeI/rIRO9
X-Google-Smtp-Source: AGHT+IFwZ772YgX24ZCsCjr+hNHZNgr0GI3d19+sgft/Ou0eQbAfXufEa//uY0SOVefkVsaor2Gprg==
X-Received: by 2002:a05:6a00:e12:b0:7e8:450c:61b1 with SMTP id d2e1a72fcca58-7ff6607e32emr33228421b3a.33.1767258166521;
        Thu, 01 Jan 2026 01:02:46 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:02:46 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:39 +0800
Subject: [PATCH v10 03/21] drivers/perf: apple_m1: Support
 per-implementation event tables
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-3-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5769; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=GEbwxw7PfrqcXKYl5oW/iB71cJY49weGjklHwoM3hyk=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgmVXJdJ9wiGFSfn+XJXbtAUzBTOK1PCJtPb
 uHglwMaztyJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4JgAKCRABygi3psUI
 JCkDD/9HjpLV3d9Ea4W5AzKeFkIbEJT3mGFLnT/U0nlvbcqsPI86Mw/OearuqCYgbtNxU1vSZcn
 2NSS7OMmEOPuzBkfHF+NevT82KYdymLbVeYeJ3Oxkucwsmo56qGSum9GqiNixXuABeOZgS4JRGs
 kAN+iWwYY4bOb0IWRlZXubM0DnoCyK4aN0R8U4mKTdONj7ZlPf4mflqQainGasQM5ve9ITww3nB
 CbzRRZGG377Ty4ahbbzeQY8GhUGT0R/KV6s2eaK7BLcXCIaKA1+PCSwpcmfy3u76TWx9lSH6twq
 P2mPaDJmDjP9PEzjwQAU5vlN/Krklhl9+P/b6li2FTTS3EubYgUYd8DK/nTE/oDmnUu5F7ze4XO
 oKOM6HX++UVLX84At0BfUPOUhnkn9HjWjI6XqXtlNQOl1iZg1bamAR6Rgh4zubrk1GVfsIW0JwE
 ceF8e+/C5+K7pVgCY9SRTiM+QBK+dgsXrFfrZvS+G8opt4+Ug9ctadGRAI8zI/a06KH/ikncbVS
 G5QjNq5f5iXPH+ErVq6bOI7HOxOcRApU4R6923Xkyvm1BrJfR3Olw56GOHdR4RPBoM2HZJl5yS3
 8LoQi9a2BuO5xn4GUp41u1RvmAiJJ6ODaP2oDgez3hgDkEAFocFgw/FbAuSpqAS1bxsbfZjPU4u
 jmVBzmlKX/n0dQQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Use per-implementation event tables to allow supporting implementations
with a different list of events and event affinities.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/perf/apple_m1_cpu_pmu.c | 65 +++++++++++++++++++++++++----------------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index f3948528e28e0189efd0f17fde0d808930d936af..b4ab6a3e5df965b7ef450d7e533995f3cc8633fd 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -43,9 +43,6 @@
  * moment, we don't really need to distinguish between the two because we
  * know next to nothing about the events themselves, and we already have
  * per cpu-type PMU abstractions.
- *
- * If we eventually find out that the events are different across
- * implementations, we'll have to introduce per cpu-type tables.
  */
 enum m1_pmu_events {
 	M1_PMU_PERFCTR_RETIRE_UOP				= 0x1,
@@ -493,11 +490,12 @@ static void m1_pmu_write_counter(struct perf_event *event, u64 value)
 	isb();
 }
 
-static int m1_pmu_get_event_idx(struct pmu_hw_events *cpuc,
-				struct perf_event *event)
+static int apple_pmu_get_event_idx(struct pmu_hw_events *cpuc,
+				struct perf_event *event,
+				const u16 event_affinities[])
 {
 	unsigned long evtype = event->hw.config_base & M1_PMU_CFG_EVENT;
-	unsigned long affinity = m1_pmu_event_affinity[evtype];
+	unsigned long affinity = event_affinities[evtype];
 	int idx;
 
 	/*
@@ -516,6 +514,12 @@ static int m1_pmu_get_event_idx(struct pmu_hw_events *cpuc,
 	return -EAGAIN;
 }
 
+static int m1_pmu_get_event_idx(struct pmu_hw_events *cpuc,
+				struct perf_event *event)
+{
+	return apple_pmu_get_event_idx(cpuc, event, m1_pmu_event_affinity);
+}
+
 static void m1_pmu_clear_event_idx(struct pmu_hw_events *cpuc,
 				   struct perf_event *event)
 {
@@ -543,7 +547,8 @@ static void m1_pmu_stop(struct arm_pmu *cpu_pmu)
 	__m1_pmu_set_mode(PMCR0_IMODE_OFF);
 }
 
-static int m1_pmu_map_event(struct perf_event *event)
+static int apple_pmu_map_event_47(struct perf_event *event,
+				  const unsigned int (*perf_map)[])
 {
 	/*
 	 * Although the counters are 48bit wide, bit 47 is what
@@ -551,18 +556,29 @@ static int m1_pmu_map_event(struct perf_event *event)
 	 * being 47bit wide to mimick the behaviour of the ARM PMU.
 	 */
 	event->hw.flags |= ARMPMU_EVT_47BIT;
-	return armpmu_map_event(event, &m1_pmu_perf_map, NULL, M1_PMU_CFG_EVENT);
+	return armpmu_map_event(event, perf_map, NULL, M1_PMU_CFG_EVENT);
 }
 
-static int m2_pmu_map_event(struct perf_event *event)
+static int apple_pmu_map_event_63(struct perf_event *event,
+				  const unsigned int (*perf_map)[])
 {
 	/*
-	 * Same deal as the above, except that M2 has 64bit counters.
+	 * Same deal as the above, except with 64bit counters.
 	 * Which, as far as we're concerned, actually means 63 bits.
 	 * Yes, this is getting awkward.
 	 */
 	event->hw.flags |= ARMPMU_EVT_63BIT;
-	return armpmu_map_event(event, &m1_pmu_perf_map, NULL, M1_PMU_CFG_EVENT);
+	return armpmu_map_event(event, perf_map, NULL, M1_PMU_CFG_EVENT);
+}
+
+static int m1_pmu_map_event(struct perf_event *event)
+{
+	return apple_pmu_map_event_47(event, &m1_pmu_perf_map);
+}
+
+static int m2_pmu_map_event(struct perf_event *event)
+{
+	return apple_pmu_map_event_63(event, &m1_pmu_perf_map);
 }
 
 static int m1_pmu_map_pmuv3_event(unsigned int eventsel)
@@ -623,25 +639,16 @@ static int m1_pmu_set_event_filter(struct hw_perf_event *event,
 	return 0;
 }
 
-static int m1_pmu_init(struct arm_pmu *cpu_pmu, u32 flags)
+static int apple_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	cpu_pmu->handle_irq	  = m1_pmu_handle_irq;
 	cpu_pmu->enable		  = m1_pmu_enable_event;
 	cpu_pmu->disable	  = m1_pmu_disable_event;
 	cpu_pmu->read_counter	  = m1_pmu_read_counter;
 	cpu_pmu->write_counter	  = m1_pmu_write_counter;
-	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->clear_event_idx  = m1_pmu_clear_event_idx;
 	cpu_pmu->start		  = m1_pmu_start;
 	cpu_pmu->stop		  = m1_pmu_stop;
-
-	if (flags & ARMPMU_EVT_47BIT)
-		cpu_pmu->map_event = m1_pmu_map_event;
-	else if (flags & ARMPMU_EVT_63BIT)
-		cpu_pmu->map_event = m2_pmu_map_event;
-	else
-		return WARN_ON(-EINVAL);
-
 	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->set_event_filter = m1_pmu_set_event_filter;
 
@@ -660,25 +667,33 @@ static int m1_pmu_init(struct arm_pmu *cpu_pmu, u32 flags)
 static int m1_pmu_ice_init(struct arm_pmu *cpu_pmu)
 {
 	cpu_pmu->name = "apple_icestorm_pmu";
-	return m1_pmu_init(cpu_pmu, ARMPMU_EVT_47BIT);
+	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
+	cpu_pmu->map_event	  = m1_pmu_map_event;
+	return apple_pmu_init(cpu_pmu);
 }
 
 static int m1_pmu_fire_init(struct arm_pmu *cpu_pmu)
 {
 	cpu_pmu->name = "apple_firestorm_pmu";
-	return m1_pmu_init(cpu_pmu, ARMPMU_EVT_47BIT);
+	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
+	cpu_pmu->map_event	  = m1_pmu_map_event;
+	return apple_pmu_init(cpu_pmu);
 }
 
 static int m2_pmu_avalanche_init(struct arm_pmu *cpu_pmu)
 {
 	cpu_pmu->name = "apple_avalanche_pmu";
-	return m1_pmu_init(cpu_pmu, ARMPMU_EVT_63BIT);
+	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
+	cpu_pmu->map_event	  = m2_pmu_map_event;
+	return apple_pmu_init(cpu_pmu);
 }
 
 static int m2_pmu_blizzard_init(struct arm_pmu *cpu_pmu)
 {
 	cpu_pmu->name = "apple_blizzard_pmu";
-	return m1_pmu_init(cpu_pmu, ARMPMU_EVT_63BIT);
+	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
+	cpu_pmu->map_event	  = m2_pmu_map_event;
+	return apple_pmu_init(cpu_pmu);
 }
 
 static const struct of_device_id m1_pmu_of_device_ids[] = {

-- 
2.52.0


