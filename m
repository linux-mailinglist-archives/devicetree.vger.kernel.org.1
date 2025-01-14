Return-Path: <devicetree+bounces-138604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7026A114D8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 00:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2403F3A6D89
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69429229622;
	Tue, 14 Jan 2025 22:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RvDO2C2h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0642288E5
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895534; cv=none; b=MHIocp2QjuxnKBmPx1Nihu3BpDYhh+4qx2XEV/2cUqyhYPdfo0JdgguIQdcwnk5mG/pkaoZ5aDYC8xINiQZ1eqaJZoZ6pg0Kv4BDUldmf+oa5bCP9zopWl+mVLCnarCwX8YYz/7I+DStlp9xQo/XqmsODjDJMY+40Wg9vtAKwRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895534; c=relaxed/simple;
	bh=XLVT31H4OpbUW1OFu7GetTjAoQ6wx83TWJr3zQGW1j8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rp0bOftyVWvNF+x/jj5ctQU2ZOF55bhg9goMyP0QIOGwsQkkRAuyLWkX83EZeyCr+o9K5TC8GCcqoFllX8WXi2N5KVmuKZHQfGCHwnPea6UAI4HD1+lAobFw5d5mgVI0Q8qG9ai1CiMsfapnjTX7xxJeqoV7NEdRlaVTQN0KGBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RvDO2C2h; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-216395e151bso3545515ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895532; x=1737500332; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/NGMQ1cPPzFcGB6lbht2UloHcbpdvl9Eg+C6+XEyyV4=;
        b=RvDO2C2hGJ/WOQl8mgjQbq1/QyLg3EvEk59D2f0wy0xPrZAT7spDO6AmxF5nvs9rEB
         kIEHS8ti2PGlCvih5KXT2Did6741YrWZ5gLpTme8+IGC+IXlKAPYzrYuqPgrr+qR9Stv
         exooGCQWsHZs9K9b7AJX2adyx6jZZSeruQ81KzZ+7+xiJa54t/xlI7Up3ZoD6V73hhMg
         G3bWf9zYOjncsXW1dkZZkMX3BIE2vAP+aLZOF1qHh3GyQtYsZ5o2b3mo9C6UQF/KpSUz
         CxUtj8zCYnd8qGIVe0GOfyTi/1tPd+c9WKTJrVD97Q7TSU7WDzKixUuLSXo+q9Vg02Fc
         L+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895532; x=1737500332;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/NGMQ1cPPzFcGB6lbht2UloHcbpdvl9Eg+C6+XEyyV4=;
        b=mFMrMgw/8lUw8hjoKKx2ATuMhHTfUw+yO1YCMQ1VLPh9yZ6zojIput43YRceRXO+2o
         C0/iu72cR0csNrrlJZXOhEuEOQBT1It24DA3L6kyhx1HkZaON+ouqeX9DrYc8tlshkGQ
         WnVkYO7QPBYi+acS37pE2nhc8AKz9eqYeAsc3eeEaFYhq1k0GuvP5ucUmLQ5429BS1KW
         4cNXovlMyDppThwwYbj2qN+mkaTNBX88/PsylCklXoaO/usjt2v8u92bnxvKSU23I8Vb
         akUiiDEAxLIQ7Ve5/WYwAqFz9XTSHZYiIYLvBEW1IqKXMxwy73/RKFprzq10E1+RQlqR
         nRdw==
X-Forwarded-Encrypted: i=1; AJvYcCWcpxCnv+8BJoDDlzpdT0me2EHV6RdnX+2Al+Y5VsdjhtOujAAq1ASwkMxZ3/nYCyRZLl7DRUog7qT4@vger.kernel.org
X-Gm-Message-State: AOJu0YyWEBb/dczXnHTq/2LEw5DYxRQNuLzcnBspZ4gCYS1VveRUMCw0
	hrPXah77IV/QPL3qmaIBd/ktp7g7CB4F0aYvNAcAk+yrUw6ULlm/Is4vIcOCYIs=
X-Gm-Gg: ASbGncu5fRXKE2P/ucfaCz5T87wbMz6EICavbcVyDngewuQXANgHj0Sy3JEV9/sqnEU
	kaNxqwkIjN0HR3cuOsOsR+Ku9j1bIq4RNiMjxo/1DS/i/NAxtnw4Pei5Yf3KUzAAmZQXZxVSRK0
	NhmFsbKkbyxw7I9fy0bWuUFLDeHSzj3yjBOyHA7eE5I4J+loI/ItCBz3SPSeXE+x9JfLVgEAt7T
	exKb4gf2ItJbKYAqBKOONA9V2+xvMexDgJBLmbBw/nOoBrEAmvYHw8zbMWTZxwO4LDt2Q==
X-Google-Smtp-Source: AGHT+IGY7+84arGT8AswRpB+pqwECCjX/DmctkDVIPDIQHV61usZj0/p7BRGYknWv9dWJ1AzycUGOg==
X-Received: by 2002:a17:902:e892:b0:215:6c5f:d142 with SMTP id d9443c01a7336-21bf0d16349mr10455835ad.20.1736895531696;
        Tue, 14 Jan 2025 14:58:51 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:51 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:44 -0800
Subject: [PATCH v2 19/21] tools/perf: Support event code for arch standard
 events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-counter_delegation-v2-19-8ba74cdb851b@rivosinc.com>
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

RISC-V relies on the event encoding from the json file. That includes
arch standard events. If event code is present, event is already updated
with correct encoding. No need to update it again which results in losing
the event encoding.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 tools/perf/pmu-events/arch/riscv/arch-standard.json | 10 ++++++++++
 tools/perf/pmu-events/jevents.py                    |  4 +++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/tools/perf/pmu-events/arch/riscv/arch-standard.json b/tools/perf/pmu-events/arch/riscv/arch-standard.json
new file mode 100644
index 000000000000..96e21f088558
--- /dev/null
+++ b/tools/perf/pmu-events/arch/riscv/arch-standard.json
@@ -0,0 +1,10 @@
+[
+  {
+    "EventName": "cycles",
+    "BriefDescription": "cycle executed"
+  },
+  {
+    "EventName": "instructions",
+    "BriefDescription": "instruction retired"
+  }
+]
diff --git a/tools/perf/pmu-events/jevents.py b/tools/perf/pmu-events/jevents.py
index 5fd906ac6642..28acd598dd7c 100755
--- a/tools/perf/pmu-events/jevents.py
+++ b/tools/perf/pmu-events/jevents.py
@@ -417,7 +417,9 @@ class JsonEvent:
       self.long_desc += extra_desc
     if arch_std:
       if arch_std.lower() in _arch_std_events:
-        event = _arch_std_events[arch_std.lower()].event
+        # No need to replace as evencode would have updated the event before
+        if not eventcode:
+          event = _arch_std_events[arch_std.lower()].event
         # Copy from the architecture standard event to self for undefined fields.
         for attr, value in _arch_std_events[arch_std.lower()].__dict__.items():
           if hasattr(self, attr) and not getattr(self, attr):

-- 
2.34.1


