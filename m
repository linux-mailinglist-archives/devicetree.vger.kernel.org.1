Return-Path: <devicetree+bounces-141288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C63BFA203D4
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:07:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20966163193
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A7F1F9A93;
	Tue, 28 Jan 2025 05:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="fq70pdjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C051F91FD
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040424; cv=none; b=vC77oBwoUpWaW/27erJIR7nopZUnFJJsULri46JSteLpL30ku5ssFMem6I8u7Teo1mwK8OQJNQ/31WgkTCQ6SjjPkyKo1Y2OZQBONCqKNexIlxjRZHhsgJYZ5SoPN+1WyZirl+i7wsB6Et76gdhhgAY6UDfvGZknA18J4OY7/vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040424; c=relaxed/simple;
	bh=GjWW1PZeSMVVp/YE0YLQ4xt4IwvJzVvhTdWUcKrLGJ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lSCL8symQ3b/hhSsKOt5LSVk2qYVE1NVRmYnLVIkK2hEl15CBPvS4QZ/VwaXQudL6rwCsJk5BzeBApRPaiW1rs+Yf1vNkGqqtY/bVEIRqbwmmE7xl/swUqsHKcM5ZLoZwZBkoydkEY7e5uGwMtlGkSTBuJ6et8wscsj4tMMREjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=fq70pdjD; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2f441904a42so9161446a91.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 21:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040422; x=1738645222; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Msmauk788mzUDGMUfQ29+G0+6TVWgLFLPWjnpzGrxFY=;
        b=fq70pdjDp+tFzPDZdeItpKIjxTiitr55X65s0lc8Is5V9I9s6cXTf8pIbArfblzVXt
         8l/jdbE9BwcPFzCn2//5AkTnmaA5dKNBfe5LXCujtrCa2Uvs2tuUUgFzu0llJYM2a/DM
         1/MHrxpNQKZqBJlzstd7cXnqNgixi0NXyr7zIY6q62dwPWApWQrYBCrwz5vM+vI/F07j
         3iKnfM1LYYJB9cuQIhMvE2crGQcFGhqRCqerYo0qSCPlnnIk1IWwMjtdNhc/lEDjz/gw
         q9uQSlLXmYlZOhkEA1sqhry5FBDNwsykz4ofg0L/XuFXzIV/hbFn8JG3RF/6TB94JMmZ
         zaPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040422; x=1738645222;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Msmauk788mzUDGMUfQ29+G0+6TVWgLFLPWjnpzGrxFY=;
        b=LYoh+aw1zWRPdtmcbvYpfWMJYBPNzultyxny/7EJPe6ag4IKIgHMjfcAQhRN0vRc5O
         p1ptt1js1bkzJyutxWmoOyQIr96SUuIuvk/Etaa6clESOd7HnxeiYN6yQqWYZ0fSmzaS
         92LLWK2Ues+2hGg2mGYSkppqYiaI5blQGS05EgR20OMN5y1d5i7wsixmjzkRz+kvNUGn
         89eW4GdV6AK0yVHT1EkzqCYkn6r5j8UZl7wCGHbxVbKvWFooT3sKYmnPyH0rhi13OGEo
         JxaYi7dgC6PqMUDOk520sjlvQJmaE+FbW8L5js0z246+br6TtaonC/2DkIO1xXQvvxNa
         6hqQ==
X-Forwarded-Encrypted: i=1; AJvYcCULWdqtO7h3qjEfTt14qqYRedr6uTqscdlHXDMBzu4UHkv6AoqwIIztkaSt3YUzkYo9pidhppu8dwHQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyzJDYmw3TUbQIhuTpk4F6sv7d7CE9D5ScTC3dIBXklIuF0MSYP
	PkTNhHG0fVDWMiGIwhR4zCbjDVbCGRZuu4JzhBSRmPCbQfzLY6r+uLD39YsEeeM=
X-Gm-Gg: ASbGncvmuNNVZx2Dt3LoORw5QlMefsH5lTTq4zi8koJNdYRt3WRcUOPluklkkV9Nukn
	Jh/nOxkVP7pJkiQKHepmJhg4+1fr6S+wKCcp1hKfxaM6Kiy/+/E2IJcjrnTe/JtvbHMYMp/2Z4l
	Td6VUB+sNxTX9RFEk8VZpksJxjC9NVsC/Z7WTbLvI28/Mwr5kNPtVpbzORnq+uENbKKzjGmFEIW
	/5m4aSZCVU94fk7+7WeCUAKUzcReh/+h/JCFIaYxZTbyn6S+LVVBHcY6QQ89pcAWF6EdOujiXXf
	i8pxyPsdG8dDRUW3aV8epWXAWz4h
X-Google-Smtp-Source: AGHT+IELryn7Li8G6uRsK1ux9a/8YArLklBlMT1VjVPaGUmGZLNmSMTAlEJHZzc25zLYxiYqH+BJ4A==
X-Received: by 2002:a17:90b:1f8a:b0:2ee:f687:6acb with SMTP id 98e67ed59e1d1-2f782c94b50mr63592948a91.13.1738040422123;
        Mon, 27 Jan 2025 21:00:22 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.21.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 21:00:21 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 21:00:01 -0800
Subject: [PATCH v3 20/21] tools/perf: Pass the Counter constraint values in
 the pmu events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-20-64894d7e16d5@rivosinc.com>
References: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
In-Reply-To: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
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
2.34.1


