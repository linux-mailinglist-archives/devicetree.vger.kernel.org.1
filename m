Return-Path: <devicetree+bounces-226622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAA3BDA39F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10C033A63DA
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 985EC3002CE;
	Tue, 14 Oct 2025 15:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J2cYzEtM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C122EB5D2
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454286; cv=none; b=EBX8ouur/ufyJqFrf31eZ38TcJRGyuv5xQeyodqApTxcfk1eZYK1Rlj9bsU4klANsegr+bRD3otfzAKRrR/Q04ZI6t2Y2FyjLiAYZ8iX4fgGMmQ+Iw6c1Xk2VOI/v6RhjAEUQxVR/J6WPiCDiQqULMSU6hdxlT1jBzwb/wVGFn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454286; c=relaxed/simple;
	bh=HNTQqQJemqX0WI0eYRGH+l+1PjBhJi/4JkQ/C04BuCI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RGGx5NyLL39HRViZ/MmIDK63nG1gWCJvZ+IzqGrjWc9KHHP4YgdwNhupqLuR8na34ua/zaWIOTLn3w4JzvKDRuq3WcdXQPApJLJg6RQu7JpmVwZ+ZZCDoueQD1HjwsUMSuyPBabK1rqdUopQAy+OXTwu61jYp7hDcFRljB7GQ00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J2cYzEtM; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-77f1f29a551so6969151b3a.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454284; x=1761059084; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gfwDPpCiVyJ0buY5NGtfte2dcu4mrKn89k8yErLBKTw=;
        b=J2cYzEtM7hfLU8SxMAf536Bnx1W0qdLWTNIK9mBaXHG5Kc6JEr/sfI0CRfSXmv2Pr6
         W0bVhX/mvVPmMUiRdkjZDhXKkTauCQZdYfkOqAqLeehzdcpM+aCBN1zhRpa5WkgfCqpK
         94H0ka6NubBmb+6pf7nbPeiQ297Gouk0Oi+TvpV3Ym2y5orQFVAR4o9qRq9wu/VQiWlT
         ClH97Qx941eXzc+TvOgDLlvQpMAnPpe4SPZfM0rJi1fWJcorUmQfre13soCfjh6SAUb3
         LdoDB3qrNqDRVraeAAyrxgFPifhCT7MsRnAbEjIAGpjgufFVRqfE1cbJUtsgUwWOAd46
         1yLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454284; x=1761059084;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gfwDPpCiVyJ0buY5NGtfte2dcu4mrKn89k8yErLBKTw=;
        b=wB+NrTHLy30sXjYydpCL2FO8qEpo5tSSlqKFgauqp9ctAGYOo1+cJJYRXqdrgDPkem
         s85c0AHbTureoH2RFaazVlte4IX5i5c201TVpMI0GtgVKweLOjF9Y6DylwmaZfhevMU+
         cRetjX96QO8sVPLFITy1CtKUJirG4Dk6a9VJfkAl8AoB39Sol+95zkilF9Z6GZ8T5W+j
         UlY1Exh90g9SA1yTuHIwm9aA0CZ0F7/bjrblUqXSFrGimnCc2d5u5q7DLqNvrRZStupn
         5ePWdlRspQ4m6kVwIbrY92IcYkw5a7VMp7WvPiJBLb3vGGsRMlW6GtLii0Q3QOQQobC1
         fXow==
X-Forwarded-Encrypted: i=1; AJvYcCXUPigvRwft6cNUX92uBTMKbv4r92v9Q1qHvtH4ZB0OjAsn7gedw6M3iKlmfdDmJlOE00E03Su7pC/1@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo6/MIVhDDL+PZMJ3AN9XioTrc3agGa2hkIaIZDqtF2cAPrXw/
	2Kus8+AnjiAnduUlfY6HtYVKQIrRq2IryINVOFOx+e4AnYLZl2A7yme7
X-Gm-Gg: ASbGncsgZj+yONYI+0nnJ9BuQ4GwmkOys2aRVq+hR3ZK2XdPWrRGIloiSV9O16bZ3bJ
	ZzuSHa+gkbocK/uqychGLh8yobz3BNcuGA084xENf7PsGN9/OhtKQwVCPULIwyuKxFyzqnyXC1P
	n7i1nBW98up8avhLytDAlUR4+2+BiwLk0C/0KuIbbFQTv9pv9giWdSq16Db0E20bstOJSZtD982
	tuMKCr0F6EIQr4ai4XEZq1nPly+i+pE0i1nqD3nmppD2dy9S/tHOlacKPKD5zSW4QzlDohh1X8J
	/0zC6zQDW6FQa0U6TTXs21HueUFGrY6pxXgFjxG+ojD6Y8O4Vmxe9Su4k+Qb732FRcvJPwx9ys3
	H6SUX5DlQ/ULBGSAOoiAdyFcavmzUdip0vWmPtM3AoII=
X-Google-Smtp-Source: AGHT+IEUcKWN4BM/rckq+Z7v24QtVl6iV0VHt+z7yTPuHHzwk99+jGJZRM1YiVCJ8sEIrmXiCaMaYw==
X-Received: by 2002:a05:6a20:158c:b0:309:48d8:cf31 with SMTP id adf61e73a8af0-32da83de278mr33888699637.32.1760454284167;
        Tue, 14 Oct 2025 08:04:44 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:04:43 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:40 +0800
Subject: [PATCH RESEND v8 07/21] drivers/perf: apple_m1: Support
 per-implementation event attr group
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-7-3f94d4a2a285@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2222; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=HNTQqQJemqX0WI0eYRGH+l+1PjBhJi/4JkQ/C04BuCI=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZt+33mUgbufYlHVGEXhWTArkZwbw4rK+t3L
 3JK3LrfMTWJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbQAKCRABygi3psUI
 JGsYD/9znkC5rAzIdt7p0b7H6L4B7xbkk+HxpkH85ZoVUmLNgveosIcz5Gyq3HXZq+kHAmOfnyJ
 KUJc9b4QRajZkLSGVUx0wb1GgySCYBuDATXx1QvL9bsTQEttURZbArA35JKtENAOj8Ik53ln2bv
 jxdO6MaRZVVSNOazCh3mvwO/y0q9tfmR//S6VwQ8G243/RWa07UHGBp2gRqbRGOMSm8FYottgh9
 Ctz5IKY9KClKMbZ94XRTQLy4kA5r4nhQpiGjoBTmYq7EaAYvbjpW7siBWAItsOfD+n6yVez8hT7
 csseEnllr22746D6LJoWm7tU8re+DC+hfK7OK2Doxt+NbrLRvAVWtIHT4Tt/2hA1pGZEYkamqzJ
 MZ18iXbSGKpRy6b5fpHClzsMO4LKR4tKLfKZD59tf0XMyxJ6O81/wi+A//QVCDvdJ8BmTaxpC/3
 PgmaGqAQD7ZNk8x2gHXir/lfEcXr+Tx7iAj7tlqQ+zfnnn83w56NC/KbRq7QRsrpQpmrvAV6pqo
 +5t2xj2dUTxPAO03uItkrj53zETg2wBwBxVVzEMjo+a5hpOACkhG4Atv+uDWXkBXUSfuuqMd1Ap
 evJgI64NRMudpI/XdtmHWeB9EX8O/bl2cASG3HeOwP4WmyZnXTjaAfRi7p1YKASPma/S06RkJMZ
 JAX/NiDIbAh2VEg==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

To support implementations with different event numbers for cycles or
instruction events, event attr groups needs to be per-implementation.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/perf/apple_m1_cpu_pmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index 303c0e62432281e899a33fc197365c70078d6ac1..d0362a1813788776f4210523efe33a3018cfef2a 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -668,7 +668,6 @@ static int apple_pmu_init(struct arm_pmu *cpu_pmu, u32 counters)
 	}
 
 	bitmap_set(cpu_pmu->cntr_mask, 0, counters);
-	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;
 	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] = &m1_pmu_format_attr_group;
 	return 0;
 }
@@ -681,6 +680,7 @@ static int m1_pmu_ice_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->map_event	  = m1_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->start		  = m1_pmu_start;
+	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
@@ -691,6 +691,7 @@ static int m1_pmu_fire_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->map_event	  = m1_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->start		  = m1_pmu_start;
+	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
@@ -701,6 +702,7 @@ static int m2_pmu_avalanche_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->map_event	  = m2_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->start		  = m1_pmu_start;
+	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
@@ -711,6 +713,7 @@ static int m2_pmu_blizzard_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->map_event	  = m2_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->start		  = m1_pmu_start;
+	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 

-- 
2.51.0


