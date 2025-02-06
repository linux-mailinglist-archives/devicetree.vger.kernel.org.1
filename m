Return-Path: <devicetree+bounces-143491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C850A2A247
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 555B81888880
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13BD232392;
	Thu,  6 Feb 2025 07:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="KtZ7MCkp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6970B231A46
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826630; cv=none; b=rLvSZAXdq73LiabxBruxtcCMqWmNGTWvn0MXO1f4otRM+rt25C60jEiHm7JnI45ct+ngw34TOfDNmTmmx2HUXxWUabKdZ22FbepXwtiBlzkRPtec/drLJWON7Js5zpi5rffLRfNoue31sFm/IcLItCOJGEnRG6Tot4v6yGkJTc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826630; c=relaxed/simple;
	bh=muodTsnVAJre2gM2fI9IXU2vC9qgh8uwOpoYVBXjtVg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AX4/NjSwb+w+wXVi5LPyTezbdirx6t5/ytPecIRdrWQiRGq7ZRVh5RHtZRAtRnVWKoekUfr8PJLI47mqYnytf0PDRUOWO+Gf1xxG0M0wQNN6z9Ri3fEs7A79t5iP4SKfOtpVmvfY36tqIzm4bc/3a+SEYBYjEXCNUQcHQcnDmvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=KtZ7MCkp; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2f9d17ac130so746868a91.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826628; x=1739431428; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EEHs3b5phPFn3BF7F+ULl9Hz6SGERFY3irR7WbMG6GA=;
        b=KtZ7MCkp39XIKyooKPPsQoq3ieX867zNVCupcWBaw9hdBQ6KmqcFplclSLVjo6ihxo
         +4IGD8wYbapojCkWClimv1shf3MZlOv2IyuLK9qF4C4XgbnddVQe2DR5HnFwA2N2iOi3
         O9aG8FJf5P5AudFIL9gKM//RBTlLE74nbZS+CatYlzGg5XLDo25IHL6zsLrmLmnBmt2t
         rycG/Rj4Pp4DMFr97CcCSQecCAJvdTLjXIKJ//OZE/9klNINBjqad9czNMBHBiEydBZq
         ONj4nWlFdzXeuJOKig5MsHNksinNc3VEyyojJQcAwYwoaaqCAGoKiZ+u/wdTWlAZNB7x
         T0RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826628; x=1739431428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EEHs3b5phPFn3BF7F+ULl9Hz6SGERFY3irR7WbMG6GA=;
        b=ZLoyqHppF2egvcnfulSj3DHmF+I4NVwoQEDZYd2I8RStMRc9J9vVImiA5j/ckhFKaL
         9mIU7xZoigzc+4lo+tl6Pp1n0PdUgrEY73nLsn2l7FA07+CZbqP0enDwTki0WH1PwVAz
         igSqhc7RsJGf+jNK9FjFVHxOOblLcoZ5RWwvqLTIlVf9S5k6dKdvQ/lVrjABDFE35D34
         IrmPt5j0u/oEAqWlzKevTgnas1TMxxvL2Ba5vXQVMEdppBdZjn7pyooqqXx+hvvq7C8I
         9xj0VWMctzl4JiIYbFvIGSHIeC7ChvFhbxW+3pynV/HEgWxjR9eeyQAoCHSN1luRQ4jH
         52Mw==
X-Forwarded-Encrypted: i=1; AJvYcCXhqx+vtHOWDuxc/wJ8+jFQj0x3YC0vBQy8baEi9Ho14HWNGl0Ap9bueQtwkSZ5ew41RyO+6XzgLL/r@vger.kernel.org
X-Gm-Message-State: AOJu0YyqSx0SK5zkUTKqsSlPu6ulG0Im/FkBHh+Xc/PHngqZBnApMK/I
	tRwVBE3R00s3/KMZxnrMhoB2D3b4IJnYfiBbfOpBjbdxAWcC9zPR7Miy6C4bd5o=
X-Gm-Gg: ASbGnctRY/Zln4JQ/4ztgbf0ybpp/cxToeEWSuQixQqJteLrPFxnLyTxiTmcCjaUU/p
	1oOipdFIyukSXXNOWJ2rG4JiwYWuqUiL5gHWjbVCSZZZLkFEl4x/u/Cjgycj8vTmno4BeM2MO3n
	t286cXaIUR+Mc8/LaNIOUHRAKOjoOtgJnrOS3JEdl4RUBOQxpPoGXugbulvUsjsc+KynWzlfeeM
	RZnaKIxIUg0yL7rAdVQyMrfRZivGyAN4uejlRVyiWhzRFutKA9MdjOPauXFXwlSIXQFnO1uOIlZ
	SN/uxKD7l+WeNYBlKfnQa4AjCsKk
X-Google-Smtp-Source: AGHT+IEP7EfP8VYTZfd5HpBEgA2d9buHDVtURDszS/7//CqJNqgdAtdkSc3vqiKyaUdxMxfHiRPc5Q==
X-Received: by 2002:a17:90b:5108:b0:2ee:ba84:5cac with SMTP id 98e67ed59e1d1-2f9e0753cc2mr9646959a91.7.1738826627792;
        Wed, 05 Feb 2025 23:23:47 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:47 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:25 -0800
Subject: [PATCH v4 20/21] tools/perf: Pass the Counter constraint values in
 the pmu events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-20-835cfa88e3b1@rivosinc.com>
References: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
In-Reply-To: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

RISC-V doesn't have any standard event to counter mapping discovery
mechanism in the ISA. The ISA defines 29 programmable counters and
platforms can choose to implement any number of them and map any
events to any counters. Thus, the perf tool need to inform the driver
about the counter mapping of each events.

The current perf infrastructure only parses the 'Counter' constraints
in metrics. This patch extends that to pass in the pmu events so that
any driver can retrieve those values via perf attributes if defined
accordingly.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 tools/perf/pmu-events/jevents.py | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/tools/perf/pmu-events/jevents.py b/tools/perf/pmu-events/jevents.py
index 28acd598dd7c..c21945238469 100755
--- a/tools/perf/pmu-events/jevents.py
+++ b/tools/perf/pmu-events/jevents.py
@@ -274,6 +274,11 @@ class JsonEvent:
         return fixed[name.lower()]
       return event
 
+    def counter_list_to_bitmask(counterlist):
+      counter_ids = list(map(int, counterlist.split(',')))
+      bitmask = sum(1 << pos for pos in counter_ids)
+      return bitmask
+
     def unit_to_pmu(unit: str) -> Optional[str]:
       """Convert a JSON Unit to Linux PMU name."""
       if not unit or unit == "core":
@@ -427,6 +432,10 @@ class JsonEvent:
       else:
         raise argparse.ArgumentTypeError('Cannot find arch std event:', arch_std)
 
+    if self.counters['list']:
+      bitmask = counter_list_to_bitmask(self.counters['list'])
+      event += f',counterid_mask={bitmask:#x}'
+
     self.event = real_event(self.name, event)
 
   def __repr__(self) -> str:

-- 
2.43.0


