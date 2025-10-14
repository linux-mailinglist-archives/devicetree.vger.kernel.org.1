Return-Path: <devicetree+bounces-226617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 837A2BDA363
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2FBF1355F64
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 931A32F1FDC;
	Tue, 14 Oct 2025 15:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iyXlPkq2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038AA2BE65C
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454268; cv=none; b=k3x/ZGfy5h6fz6UcSCl4OIg0mZsLw5QyLaicvoskZZDOxUUajwnRPE7FDy+sEfTeZHTHC3lf/uLToTnOLOWf1Pw99QrJ1+h0GiZ/MP8YHN+EeWRBy+1eA8m/oljQlX9XjeVTb0QNmgXwPAqP1GVYQLSJRp7iYExuvyEUU+BoiQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454268; c=relaxed/simple;
	bh=LWdyJWF3F8SjS8P7dCHoXr3nix46HR/GnW+584oj+64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uuGol9zYXTfDDADvNAjw+kSCWwFNgGaEir44iFmzB7snI0S8zV9kG+UhYhph2uh6irWRAinxhpE3saM416dV4P3vtGdpQKTKrnDXVJDcMYcAHKUOCneexOG5yKdWXFYCVmHmdK/rin3E33175VpY5ycUeMy5iCc1gUKaf7+Oq94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iyXlPkq2; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-33b8a8aa73bso1308219a91.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454266; x=1761059066; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DQMq4XFtoATrbQB4MivFxur0yQnArRqt8i7j0LTryyU=;
        b=iyXlPkq28EUINuASZprHaj5V6Czn58R69yXXaI+YgYo5ebfy6Ly9BaMIVd80gT+rTJ
         JhNa3RoDfmKS+Kql0XGCMnJyOtviBRpATJfZXOh+jEfGiAFjJ0puCk9hi9hdpt0/GRpT
         8sAqH2NmCgjXR7Ok8JSE1Dm62hlbJyupizR2XkbbrnXVi1twh1fCRy2OnpMiXw6wDQBn
         PzP2JAWlpateRGPVYHHHEbr+t0AiaU0OMSTGlM2HenrYLwP/FTNdMS6xHIi51YO8uOEM
         H0U19mv4tDASZ8++Mz5vBcrFB8H2rDBtLefLTZqixnZflQr0XMENjoGrkU9w8f5UCTm1
         Virw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454266; x=1761059066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQMq4XFtoATrbQB4MivFxur0yQnArRqt8i7j0LTryyU=;
        b=DjfxR0RqYkiF+GczZEuoui5OwKr16ghTYGFz94F/X+FyccwwkXVCLvuM+IH6WY/z4U
         estHIPTSkzfL7ngSZbYLd7N9maiI36li6aTVpSoRDYP+UtGB0/b8vNT5bGcs6P9HUe+i
         cTNfvIr11TGPptIXCBuyL6pjcu3m2SKqltvoksSMzWuC4GYa6jXtbZlL/UecOzbTUNfr
         WFvuJym8OjUo5lGpzxhjgB0X+AGMTUrcDHBQ5TDOy9s6mBKJyXXbZuPo0aen8Ruh9/VZ
         Ok5yDxipPNObGyc6yr6NG9QolSc3Ogl9nV0kVeqccU/KBGOzY4EYq+mog2KxFxpchoBz
         5jjw==
X-Forwarded-Encrypted: i=1; AJvYcCXkp5os8dNTp/Mq4drPazksVCliTctmpEUtq6+Pk5v14EkSYABXajCvgcn8k7dEwSyAugSNzeoYCDQU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Hez3PIJEb/iSLwM9XHTN1TaJBaoXRUn9oTKip0v5PFrVg3cP
	bchQMuU98EFeescRYgRuWqOgET1zftyWHmoRHZvb84EAe/d9e7+sGOz8
X-Gm-Gg: ASbGnctVjkYSpcCOagOUrXFPmqVKQ7nX1s/GD/jxWvl761jcg8mPwganaFjB8TChsZU
	5olnB9x98IIVHkFWQxbAuJbVPLhL2bREbg5CSa9O1iWYVGD1novtxkqrzKSIVUlukWoigmtgrf/
	rariY/W0Kq59Hq/ARmUqLopHXE3jggEUxx9fRmcLIv98w90uf97X7tCSwXZkXZoyQNbN0b/0Fp2
	CeT9ZMnkD59/z80Gi5XKGnuzvqDsgiAbbTBlloT8XQQwGomJ8g+g7BVuaJl6FxeSGlRSVyHYKt9
	8xRRxP8xHbfkUECTHsG6BMND0JQzF1aKom9W98wXsKenCZepMZcfMyrf4yf98hmoLyYe/7+jjkt
	jU6iwkLcab9YYLayC9hbf/aBf35/J7HOGYg8pLiW5o6M=
X-Google-Smtp-Source: AGHT+IHH//oGG+duDcarvnMpMCx+s6l5ttFKPXRC9yiM8WYuLiLPNBvTpEmaQ3ZPfrfAhgmB0mtrKA==
X-Received: by 2002:a17:90b:3812:b0:32e:1ff5:5af4 with SMTP id 98e67ed59e1d1-33b51399fd8mr39464227a91.35.1760454266031;
        Tue, 14 Oct 2025 08:04:26 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:04:25 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:35 +0800
Subject: [PATCH RESEND v8 02/21] drivers/perf: apple_m1: Only init PMUv3
 remap when EL2 is available
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-2-3f94d4a2a285@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1251; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=LWdyJWF3F8SjS8P7dCHoXr3nix46HR/GnW+584oj+64=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZs9VdcsiLU/uSNPQdxREbNvTvb8kWSvNL59
 LtT9fudemKJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbAAKCRABygi3psUI
 JKDcD/0b0EZQZCeoY92NSoIoBkRH/0fDA8xMHVxYUbUWvKC6BcMtgc6zs/pA/xvkRD7bikc77mR
 VN4XBPEtMvJptsrMqhUyZgZECmFqTIDFUhkX70YTbOlS4wO2Zgji2nmPi5KDfRhPPxuhLJ1ENmc
 VxKSNvir1mUHLXjcIdUczGpI/zJbWoXe0qkAXJSfeebBYqLrqy6648LbmiHe75hFC9x/sdcuOs4
 Xc8kbYTBWEltzNCdwZxlUcOfCkncmP8MeDceDdERNCvr/4gMVafJDN2LKFHFtOCJzPO6d9eqB5U
 kt9EO7uANvrWPdbEzwhfKpna75FRKRM9W29DRg+UiebgNWkjvYmIeSWltMzCxKpmh+z1c9hmmJs
 vBThwOE4m9hj9OpGeG/U3CDC7kQTQwSni+zjScWl+Vh87lSgtDMsAGGfNB6EmOFeWjv6iAqiF56
 FGgmENFXuXwkJIo/oZqxLQQoBI14djgjy4CXCkLzNw+cMZ1C/6Mlo7Mbx/6QrTV509IHIAe/Xjl
 jk4uAnqz3ZF/m2MQCJDVGfUwvcx+Stst8urbES5JHS1VEvDNQnCGDqjwwznZIdLEOjfQJMlAANn
 DMZpgx/jNhgPayfdDeWO4nppPt0oJWaqMAWDLpAjF8EPq3QnYJoVhnDN5nqePga6IYsXCiPwuIh
 iNGhEoD3WwLdm2A==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

The events in the Apple A7 PMU is very different from the ones in M1, and
EL2 is not available on Apple A7. Instead of assigning the wrong PMUv3
remap on A7 or declaring a new PMUv3 remap that would never be used in
practice, skip initializing PMUv3 remap altogther when EL2 is unavailable.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/perf/apple_m1_cpu_pmu.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index 81b6f1a623499566ef04d04075752f34e2cb6a92..f3948528e28e0189efd0f17fde0d808930d936af 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -645,8 +645,10 @@ static int m1_pmu_init(struct arm_pmu *cpu_pmu, u32 flags)
 	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->set_event_filter = m1_pmu_set_event_filter;
 
-	cpu_pmu->map_pmuv3_event  = m1_pmu_map_pmuv3_event;
-	m1_pmu_init_pmceid(cpu_pmu);
+	if (is_hyp_mode_available()) {
+		cpu_pmu->map_pmuv3_event  = m1_pmu_map_pmuv3_event;
+		m1_pmu_init_pmceid(cpu_pmu);
+	}
 
 	bitmap_set(cpu_pmu->cntr_mask, 0, M1_PMU_NR_COUNTERS);
 	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;

-- 
2.51.0


