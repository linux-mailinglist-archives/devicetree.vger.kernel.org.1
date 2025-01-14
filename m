Return-Path: <devicetree+bounces-138605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECA3A114DD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 00:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EDEB16901E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2579229B02;
	Tue, 14 Jan 2025 22:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sJ/kB4SG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603B9229605
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895536; cv=none; b=BtxxrSxA9aRDDWCNCrTXEDch53UTkJljNV/qd4ajnDCxf89jHQAETYbl/6QRD2F/f9CYIeaprRUqHRNBReUwU5AhJbynnBn3fpxMSyCENNM1zgMcTum5rzv0CQv4ohwTm5u8gXzhxmzW9QPy7rRtpGJEy6kkrSG6kswc3H9kYcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895536; c=relaxed/simple;
	bh=GjWW1PZeSMVVp/YE0YLQ4xt4IwvJzVvhTdWUcKrLGJ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qHBt+uIZuwqQipRUTkXyi3DjOhNUgeowq456hIQNwmr/3PBr2Fmw+9CjzTzkl3wm9Dt50g+VoneThOwp+9qy6eaGi7k0FdCnkAt+SjAPzNwkd11OZdfeGqJWl70+gV+ReZgBYQ3vEU78BVLOVRY+90h26YrE4UKJZujnpd7QqSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sJ/kB4SG; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-21628b3fe7dso103700215ad.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895533; x=1737500333; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Msmauk788mzUDGMUfQ29+G0+6TVWgLFLPWjnpzGrxFY=;
        b=sJ/kB4SGi8na+gbFnBYd8OP+47A3uEraV7hRXgqe29hgDtc6Erznu4IVKv7n7K8zYL
         Pkk2kcR6yjJ4Ccb8bmjoEdc2dPr95mW25hlLevoBGRuL1vmdw7KfavKYzfieBEnjyrZy
         HF0La35wl9X9CjQHimsvbPVBR/Z2lVAhB61WuN+oCwUw1uRvuoi3W1/LDPdLj2PlL0c9
         OtzVR4ELGppP7gjS5aulzB0yYsooNotbePH+tOnfHGQIGFW+uRx/ChBgCNnqHJDdUHnV
         97m1OpCcJ/P429f1NiXOeTRnsslaEhweIBgFIS3Shj3nG2v2GAdkhfxgbslVyhJ8Y+Iv
         fggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895533; x=1737500333;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Msmauk788mzUDGMUfQ29+G0+6TVWgLFLPWjnpzGrxFY=;
        b=u7tZl1z+hJnC/JR0h8i0z9H6tTs1ffqFHrXKL2re1PC24jYxmEtdS8cd6BaV3ALvo8
         ufhRECk/VUnajXtYP15ndf5NGuyO9BFeZ/JFXNMiRNGlM4JIrVrlN7v1FavqvkrZ/eru
         U5G38iq87P4jRxhX5Rdr76791Wc70wx09T7MFZmPomrn0UYLNHMg4IZtAxYGkXGREc+H
         vIPmEI1TlyUwKmi1l53mMT0SYUIcImcchAQ/BvufHgvNK+laR0ihh/d4eVwabsz1VQ50
         AJ904EvE5ZUBV4gt3IHHrJWnW7a8ugPy8WHYOIm4gKMgCeZhW16hC8g2/YsL+lACZSc0
         Ifdg==
X-Forwarded-Encrypted: i=1; AJvYcCUv8kMzNSKpIe+EpbywOaG88Pw4SoGux7g9ZyFLUWUc2Vs4tX+dSH3mjfBCyTK9Mhu6ZBytgoO08Z1l@vger.kernel.org
X-Gm-Message-State: AOJu0YyYxANkqw8lKmtRAKEyuCMJLLSybF/L40NER9bxOnew4AyKOOya
	5BrN2D6n/BRtaaLq+Hj6fr5AGG8Dc6m9PmE2ABy7YPfcECR2FpuC0ZHsNfqLRv8=
X-Gm-Gg: ASbGnctgI6a/KTzHwp9Obeznt56hGRARpdUxVuf+ZRY+bzR1/7La4g0CU0KIH3dxMCk
	Fn1VpQKXyNYFr+KUwEHW712tI27SZIIhw74qr5RokK/SK+U3WHXvHBTK4Daf/plxglVzqPI+9b5
	O/GtMqoUjLXU4sRFUqx0QOhRhdhiPDHl1JGI3QBJRf1k1+g96HrzgeJDH/WMerlYf9aNUuJ/rPj
	dDkO4IPTcNCRuJHb4Ebyu0o7Fq4EoUwUfJIzb7iL7zXalBnGfsAUzPhrYahkpljbkv8xA==
X-Google-Smtp-Source: AGHT+IHVlOGIv+9Uh+Dng9Z5glMQS7vdErpemdoZ1TuQIxVK5mxZMQQK+rAFLrYfNXcGXxNvYIFeiA==
X-Received: by 2002:a17:903:1cf:b0:21a:8300:b9d5 with SMTP id d9443c01a7336-21a83f4cd36mr432431955ad.23.1736895533476;
        Tue, 14 Jan 2025 14:58:53 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:53 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:45 -0800
Subject: [PATCH v2 20/21] tools/perf: Pass the Counter constraint values in
 the pmu events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-counter_delegation-v2-20-8ba74cdb851b@rivosinc.com>
References: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
In-Reply-To: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
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
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, Atish Patra <atishp@rivosinc.com>
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
2.34.1


