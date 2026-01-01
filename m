Return-Path: <devicetree+bounces-250904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA35CECE3A
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 758C53007CA7
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2477428466C;
	Thu,  1 Jan 2026 09:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OV2KxEYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26E3284693
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258179; cv=none; b=f8YVJSiOK2aaF4Ikj0m5/nrVmg4za1mSukOhUwZ6bLDqXB6Z852zrg9CMY3jf2PcuJv6V3m/9xnm91HieEj7Lx4KU0uGmzDsuG8H4RZLbk3vyoipauCQmsSde5hVG/Sbjnd1WRgcYKxGXYLYin5nT7AWJtXAvwFFwy3A81hX43c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258179; c=relaxed/simple;
	bh=NU8ScGmoP75NTB+9OTDUGxz+f/5ItDBm5slDMiDdGlc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mAzyMQIVg3/SYq/2sKYFFnTxrcGHgRCZIZ+WJoPkRYA6019nyuG3CfT4hmJVeqObQoU+MXV431+dYgs2C4K3/i0Se2s9ZHHrWsTUSbLt84otUR+OyxRI4yOUW1CFW1sA+4+bTln7ue7mQGjqQ/RJOazpUc/z7sZ33Y/o9cHiwM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OV2KxEYb; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-29f102b013fso142227015ad.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258176; x=1767862976; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=562CWWEEZvkhVziZnN5oXKTCmOhNnY9tXruJsoQZ0p8=;
        b=OV2KxEYbbND/HdhC8BzO4I0rapkZIFH4rRXHr+7ndVzL3QgOvuk/EfTh5UQ1HmBM/i
         t/YINT3A3JEBTfKU30W4AhKashL8pb39QMArmDmdwxNF3Of84kOUKnLmfMjB/kP+S09e
         oxIEmneULDMqGayJ5mn/N1FdM5T67oyFL23jdgMBgRpYRsCWRrE4/LCBzwmCH5Ny8Tgm
         x6p1DcGpu3JbxYdsKfJ95SiNba1PEJLdHnQxyFN8LgxXPdjigeZawDbIcNOfETWFTkWy
         UzAe19EiQsmlXqTppQp5yAeX3T2it504+Jk2xl6KlbZ3jtiIOxS8CGKHreupj5SOMYTs
         VX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258176; x=1767862976;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=562CWWEEZvkhVziZnN5oXKTCmOhNnY9tXruJsoQZ0p8=;
        b=sy0ZqIK0iPpSwHzM2K9HL7FDNymb49i2sv/27f9J1MQTm43FPzvgSL4jO6moR/apaB
         6GRdcEtp9e2mpxe+iZicnnp6l5vlZyF2BJoBj7gbcOT6hA/soIwEQydJkGM7Z2QlREt7
         SJRKKVFa2u07MStlqmzYRSKQMfXm7KJlc1r9idHG2ubJnMrgnxKnbch6x3zfoTMff6bm
         d0xYz3XrUu+N/p2wVPrPPuEWAf0h6DyuwinydUM+Xj43h93sbD0CW30lxezfGYROFe/X
         sYAbmH7bulh6KY8R4GLk5aqM7bcss/t8Xc6iIm+wb3VpmYQwooM45DMa+g81MpBZRRSJ
         pW3A==
X-Forwarded-Encrypted: i=1; AJvYcCUaM+j53pBF3vzGZtHf9ryfQSGSiRbpAJxVy7daT4YrRjnqN9ftY3sOEQf+kg2++fLc7POU/B7C+ao6@vger.kernel.org
X-Gm-Message-State: AOJu0YxE3wAMLu9eVjF34J53nVskPbiFfFFW9dxuhpSJwdXCfw+GZOQx
	ftg0P2A4PMQnT7npsjBqu7RrM2Z3Z4dPn7qEQDP10Ejhnd9m9zZaLXJ0
X-Gm-Gg: AY/fxX6GxsAONFxE3UF1cgkVGctl81h4QJMshx9Jzhtot7OxXvqP4/cJi1Io83MPO+I
	xeLdbwMIUTnDvTjXzWMuwwOAu56LXioviSACgIBjQ8Q37+oImGpi9saZdeJm6f6ITB1TzrcBN/w
	xXTQ7TPsdI8MybECGeMRm4nwqDMNzHpyjY/vgS04Qn3Rtif1u+6Z8ucuao8x8IGtw4uAxGIHxqT
	rZUsG/NxSNx8B/W9p/vA21ktazMAZYrm6UUUS8CtWUVXjCUE7ds0VlHOOqYacTmqDDOFfLKwmKM
	VpXQSrh1Edqrpzsy/0j3MkPfeALtTUq4GBNczmCX/mJEBG3zc4WROSGIhd4tzHq2l2gZkNsuuSl
	oEX4bHnVtWD63TDcVcv26IsWhxSDXYGmzE4QwxYkeDC+n7BfjGh6ZnTrPL+4KwY+eT4uaT9vi0q
	J1OX4JocB4tmMX
X-Google-Smtp-Source: AGHT+IGvF03jWexAPJyhOO/i64xBB7TgDY1P/zTwtuv+fTjh6qLFIzbXX3lAjmk4xMTgxWdhAdn6GQ==
X-Received: by 2002:a17:903:40d1:b0:2a0:8972:d8ca with SMTP id d9443c01a7336-2a2f28367f5mr416747135ad.35.1767258175996;
        Thu, 01 Jan 2026 01:02:55 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:02:55 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:42 +0800
Subject: [PATCH v10 06/21] drivers/perf: apple_m1: Support
 per-implementation PMU startup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-6-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2181; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=NU8ScGmoP75NTB+9OTDUGxz+f/5ItDBm5slDMiDdGlc=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgn4+BbzPzmvWZ//5Po4M/zFrkKjQT2wI+O8
 wgEahlzfFqJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4JwAKCRABygi3psUI
 JEPmD/sFiwZMs7NQhuYcsTtLBMmLLgeraA1aRrIEksKSz/7IB3rYXDcntcSrfcGLZTTIgwqsm4N
 /pMVUnhEYu6wCag9SPwikW+oLIyA+dkw8vIrhEdmF8ZmoNpliYBe707KXo0pjkUQuxkjFJrdPYJ
 EYJftIe0s9FQYrwhNFqlFr8w4kpQKiHWzQ7E+IxntmQsWQdPYlsQVgkPSTIxjAJdeGrbWtO2daO
 Kl0ops2XzNpwhDlZAZFJ+38pctInGZQ7Jr/Z1U90efBoaPnrOjghj4Gk7MqL7KvHQ+DCl7PRP1o
 IqOYRKw30cZGMJBkcle5sj+k1b/EjDkURtWBt9EGr1d3vYSgsgPDsJ0quEYC4B7LFD/4kpySjiP
 CD46EcVx/ZclAF4SbtmmRrhCWr3ThPeTgKlNFRAtwQwbtcFfz8yBlJJ8GlARzEh/UrgFpJxpcbq
 h/oTeLN35rWdc32FeOephqdk7YbqymuBwWEUEjc+wpGZBN3ysz4t3XJNx2o1Mo0sscPobAehXPJ
 uMX5mrVQ1SRxeK1D/FfGxHfFMKc1TxqUrlyCwEVNAe449Wbn0Yl/XTpnJk95QTG9DcsuNd/h0Hf
 5dimwO6+AvzmtPzXO3o/i9jPLCE3sT8ezpasjGmTq+UEYimtNEaGgfWEZIIecV75BS6RXVnIC/n
 pdtZ725SgGg3DNw==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Support for implementations that deliver its interrupts in ways other than
FIQ will be added, which requires a per-implementation startup function.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/perf/apple_m1_cpu_pmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index 6340ff7d3b75d7f0c7ab159e4114d49cf031daca..0655eeaea96b46d638b0998944c30a07f3273c2b 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -661,7 +661,6 @@ static int apple_pmu_init(struct arm_pmu *cpu_pmu, u32 nr_counters)
 	cpu_pmu->read_counter	  = m1_pmu_read_counter;
 	cpu_pmu->write_counter	  = m1_pmu_write_counter;
 	cpu_pmu->clear_event_idx  = m1_pmu_clear_event_idx;
-	cpu_pmu->start		  = m1_pmu_start;
 	cpu_pmu->stop		  = m1_pmu_stop;
 	cpu_pmu->set_event_filter = m1_pmu_set_event_filter;
 
@@ -683,6 +682,7 @@ static int m1_pmu_ice_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m1_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
+	cpu_pmu->start		  = m1_pmu_start;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
@@ -692,6 +692,7 @@ static int m1_pmu_fire_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m1_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
+	cpu_pmu->start		  = m1_pmu_start;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
@@ -701,6 +702,7 @@ static int m2_pmu_avalanche_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m2_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
+	cpu_pmu->start		  = m1_pmu_start;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 
@@ -710,6 +712,7 @@ static int m2_pmu_blizzard_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->get_event_idx	  = m1_pmu_get_event_idx;
 	cpu_pmu->map_event	  = m2_pmu_map_event;
 	cpu_pmu->reset		  = m1_pmu_reset;
+	cpu_pmu->start		  = m1_pmu_start;
 	return apple_pmu_init(cpu_pmu, M1_PMU_NR_COUNTERS);
 }
 

-- 
2.52.0


