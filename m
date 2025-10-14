Return-Path: <devicetree+bounces-226618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD66BDA396
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:07:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 41A23502B06
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49CE2FFDCC;
	Tue, 14 Oct 2025 15:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="McF6HIR1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2559E2FE07E
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454272; cv=none; b=NDGS1OMovg63BEacl2g4onW/uTnjdBXSVMEe8FDX6Wynq7ROr0fi3RpIHM9uliypROwdbgDf+R34foEth66k+qyKHVQpAY2XeM6sl69brSX4/AiqFNx/VjEO+b5EH6+GS9dBMESEkryCb2RI6DB/ty/jcIIHZ1gvwdelAtcCMeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454272; c=relaxed/simple;
	bh=QXdFCVGEPqTyu8Bm7SIf1fxdHsV0PUqAo42n6ezyRRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rXwFwCVL8G4DvWNmDpl6cz82cgzygpuSp815x8aQgPdmAuUPgjKEbkEiRHrwS15S928CoHPN3BBMvdRIHV6W+63LZOMojTAzxFv3z/tAf5LavP9LvtjV1ukVkDXw+bf+KlI5WW/lMsG6KAm2UMqXVb5deBSjWIPnbe5FvR23URw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=McF6HIR1; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-781001e3846so5320562b3a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454270; x=1761059070; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZKGU1abQVfuJ6I1lGgEqdrdZCTshmOZZLCi+h9rWnIw=;
        b=McF6HIR1ruCKJtKCA2CwRwFFTvbEpTHUso+bf1YkmwXxpJV2f3vQb1xoC5S8Lxk84G
         HSQUxJ55auJFmqpVrVZkHSYxRRQL+OoJbUuh8HYRXoGC/Py38N3S41FjvtEaYOVsmTGz
         AVLOE9o3HWOIJVHRzlEhaH9Mxy7Y2lJaoJ63zzW7FHaPmNV7aQYos+x8kxLvnY2CPoEs
         FeUxTKzBGijeDmhvYr5YehtYo65W0kfkY913SP3sas4Q0bcoxzm+3vd0gP+F5FvYgzLp
         /r2m57Yz9XpXgmfhJETa5Ky8/Ki92xQJ3PinDXiqG1P5pJosgxXifTIid2B1m/y+MhZs
         144A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454270; x=1761059070;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZKGU1abQVfuJ6I1lGgEqdrdZCTshmOZZLCi+h9rWnIw=;
        b=l2iEfiODQMiAGRI0IT/7yChjq3hfRWCR9TnCXQovFuZZbcGKtskfmCqQOc70rbog1I
         k3hiceIMRUDCPKYMywqzArpavkC7yD3GhSMQojoM5953IMiyTGJHHiIRq7boBcGGTnBv
         YkB95Gfyo3Vh3fGMzEiObhQYns6P5Qh9TctoCkBNVPxx/2wPVPK+UraSl4nErAlkf4AK
         Kyjp3MvGVYprz+uG62GttJQgvX7c6X/5z6L5wc8eVEIF/vz8fcvEHq4aRfaufUpM+gaA
         tEYQ9ATL3CR8USst9zhGjIcecMfgui+Qam1mWOFEajrQ+fjLwepGwD4kUsIqoozJazo/
         1EoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWznNMTO6YKoAMnrk/ORbubrOZn0eRU9kONlITTfvG3ookCNou0qh0Mx5b99DLcOTp2x6IA51xuce31@vger.kernel.org
X-Gm-Message-State: AOJu0YzmIJLNu7Ox5oEZW92DbOpnz7fag1Fruovmgv3RogcresMhYg20
	iy2a9RfotTFYfPW3prAGW/6nsOEYCArruDN9PW7F6SIGflvuread/W08
X-Gm-Gg: ASbGncsHKFRlznddHoSWI3TXIucRNNc1i1c2iUpRNGkBi8bvMEmWGyWK1A9E9qg7KPw
	4wCnczmtl+WVlkIvYPCLWIT1zs4cynZ6TFsnjFa5t3gElgmZcmQ2zvy2rAPFKMqnUxlU7hm4WAR
	rHHr4W9dQzBnOXADJ15ukH1cOdPXjlleOeF/vG28/IJgzMo9on/EzqlhEdvyCOxayBe6BpO5ccV
	hgxf6vIozguex2NbcWUdSJipyDPAgh2VgB5FiFWjP9DRUd4NaoqYuQqWitO0j/SxkyZWWyHgKFS
	FWiuXKTfvqNuA1FvDTzNBSkXOfKmv+S1nU+TRJJol/X9/in6tv4gfItggjSk1kzs11qj/OZ3lEy
	aWdmjPCb+ZrtPF+swCQlA1deQUX8bGzENloWg1kIJc0ssnfPrWZZK6w==
X-Google-Smtp-Source: AGHT+IGn9ofuLs8eQ7ej34Sc9yoDNYgiACYcK+p77Fp4lhiP+L+rchOzwCG5t7CeGEM6RreDtUL8hQ==
X-Received: by 2002:a05:6a20:3d1c:b0:2e8:1c23:5c2d with SMTP id adf61e73a8af0-32da845fde6mr32193612637.50.1760454269685;
        Tue, 14 Oct 2025 08:04:29 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:04:29 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:36 +0800
Subject: [PATCH RESEND v8 03/21] drivers/perf: apple_m1: Support
 per-implementation event tables
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-3-3f94d4a2a285@gmail.com>
References: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
In-Reply-To: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5769; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=QXdFCVGEPqTyu8Bm7SIf1fxdHsV0PUqAo42n6ezyRRw=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZsqjEa3GuOXC7NCs37f+fSqA+5CTGWWNrSX
 z2iBaCWscWJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbAAKCRABygi3psUI
 JIo7D/wI0HMXMQvqn2Xs8Mnq7NhEWbDiLFr8ZI8RN+NuDGplRl4uIoCIEILIrGbRTbugUXwoQ2e
 UPONH6zO24lJdeyOXd2RRLB3m7M3TQz+jVPNIqvvLg2WIty8RjMSm0jr6QH5HkNRjfxXXeJ4z2H
 eLVp/AATczKlH8pi4NILo/icFgq9CPU9HEzy3m6DtEdet2OBid9UEQo3wxwwQhmuj/SPRl++5C6
 32Bhqmr23qmX0StN1NN3O6Ha7u5hDw85DZIBQYtM2SH++wgEt+2aQZQAgjIQ2GjRNTalEEpnOUg
 Ue/TiQnkVyP7JCG9Q+lX9wj3du5xJcKq1dd5vStkM+fI4Ee6c+aBYKPh356ZNs7MHoeq+Hah2Jf
 mUZqgBrit10FISRiuzm79aHP5vnjX/j+M0pA2Z8xrqUoS+fkZ7Vw5LpCkvglYYP1oWl4oN65uGv
 V8BjUhr6hH1+R/dD/jqa336zxaLV+8T265xVLc/RuEAIMXQ3FjdgcjKTllcrhgVQjuwFOMAk5yT
 4OvXjc/qKsd8kCQv8y03d4n9gr3QT7kSsTgAtUD++NPvDUcjrA9s61AIGPDjsbIFIEdEAVPBNO+
 VMLcmSANzUOuOgmW966IemyGrPgYgGGlhBMa4wwoYr9/X71/kcxTIJvH0cM9TvXYgFaelztY1zN
 KWUdev4lRtP0h0Q==
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
2.51.0


