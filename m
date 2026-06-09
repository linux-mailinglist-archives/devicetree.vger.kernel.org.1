Return-Path: <devicetree+bounces-308700-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l5FLJUauJ2oW0gIAu9opvQ
	(envelope-from <devicetree+bounces-308700-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:10:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BCC65CA0F
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:10:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=vpM6FHFJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308700-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308700-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C3B73071B22
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991883CFF4C;
	Tue,  9 Jun 2026 06:03:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336EE3DA5D8
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 06:03:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780984996; cv=none; b=hP4HGhLJCsaRUqQ3S2L5u7hnUj1UvJX7qRI6P8cu2cfWhztFzBdBDhWcV4OZkdkCIXOzEdrIc1eb4izfJUMl6XqNjOKEuspC8cgv92b9ptI0UBp34xoviRMpxMs0Tsxv+n315Z2Z/wHFFxyd2kWwJoeHW2VJMPU0mTuY0sMcFV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780984996; c=relaxed/simple;
	bh=+0MhYWvDoVqixJolM+MtR3Uaco3QucCwRBMSFs+rT58=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AumNv7EcGC1G4cKQZbu7SiK6ObeaU31AhK5jiNi8ePfGVkcDBOuce/GRpQIXshNP5q9nh6DTkWpzPihDU5rAIXoZ6d/xBQxaNcA6rlX8JlOPQ1Y8JEmjlOzqIkEpomsFnAp3QkXcfuhHG9Ho/b/JE9bzC6JySTOSuWYI9QfD9II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=vpM6FHFJ; arc=none smtp.client-ip=91.218.175.174
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1780984993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+74FvUBZxlbST9+7oM0jYayJwnBAvv8czrcrU+bwgIY=;
	b=vpM6FHFJf+/bhrb1nhFUxA9NhY0bKIHiu9hZC4M74ql0x/+s2OW8XYklNsJN2Wqjb+aDgm
	TuW+Rb6lccksKUK79R+bswVAVlucisHM3wAIY53BkTvXnckQhJh6EMm1O8xxg/xFzGUadQ
	pYOfEDg6bHiwaiIUlD7swclvmTkv7FQ=
From: Atish Patra <atish.patra@linux.dev>
Date: Mon, 08 Jun 2026 23:01:35 -0700
Subject: [PATCH v6 21/21] TEST(do-not-upstream): fake qemu vendor JSON +
 mapfile entry for CounterIDMask path
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-counter_delegation-v6-21-285b72ed65a9@meta.com>
References: <20260608-counter_delegation-v6-0-285b72ed65a9@meta.com>
In-Reply-To: <20260608-counter_delegation-v6-0-285b72ed65a9@meta.com>
To: James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>, 
 Atish Patra <atish.patra@linux.dev>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@kernel.org>, 
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Anup Patel <anup@brainfault.org>, Namhyung Kim <namhyung@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ian Rogers <irogers@google.com>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-perf-users@vger.kernel.org, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:james.clark@linaro.org,m:robh@kernel.org,m:atish.patra@linux.dev,m:acme@kernel.org,m:jolsa@kernel.org,m:will@kernel.org,m:mark.rutland@arm.com,m:anup@brainfault.org,m:namhyung@kernel.org,m:pjw@kernel.org,m:krzk+dt@kernel.org,m:irogers@google.com,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308700-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:from_mime,meta.com:mid,meta.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 45BCC65CA0F

From: Atish Patra <atishp@meta.com>

arch/riscv/qemu/virt/events.json: fake-json-{any,ctr3,ctr34,ctr6} with EventCode
+ CounterIDMask; mapfile.csv: 0x0-0x0-0x0 -> qemu/virt. Exercises jevents
CounterIDMask -> counterid_mask= -> config2 -> cdeleg counter allocation.

Signed-off-by: Atish Patra <atishp@meta.com>
---
 tools/perf/pmu-events/arch/riscv/mapfile.csv       |  1 +
 .../pmu-events/arch/riscv/qemu/virt/events.json    | 26 ++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/tools/perf/pmu-events/arch/riscv/mapfile.csv b/tools/perf/pmu-events/arch/riscv/mapfile.csv
index 87cfb0e0849f..3533a8c0253f 100644
--- a/tools/perf/pmu-events/arch/riscv/mapfile.csv
+++ b/tools/perf/pmu-events/arch/riscv/mapfile.csv
@@ -24,3 +24,4 @@
 0x602-0x3-0x0,v1,openhwgroup/cva6,core
 0x67e-0x80000000db0000[89]0-0x[[:xdigit:]]+,v1,starfive/dubhe-80,core
 0x31e-0x8000000000008a45-0x[[:xdigit:]]+,v1,andes/ax45,core
+0x0-0x0-0x0,v1,qemu/virt,core
diff --git a/tools/perf/pmu-events/arch/riscv/qemu/virt/events.json b/tools/perf/pmu-events/arch/riscv/qemu/virt/events.json
new file mode 100644
index 000000000000..294c4ed645f6
--- /dev/null
+++ b/tools/perf/pmu-events/arch/riscv/qemu/virt/events.json
@@ -0,0 +1,26 @@
+[
+  {
+    "EventName": "fake-json-any",
+    "EventCode": "0xF10",
+    "CounterIDMask": "0xFFFFFFF8",
+    "BriefDescription": "FAKE json event (any hpmcounter 3-31) - QEMU does not model 0xF10"
+  },
+  {
+    "EventName": "fake-json-ctr3",
+    "EventCode": "0xF11",
+    "CounterIDMask": "0x8",
+    "BriefDescription": "FAKE json event constrained to hpmcounter3"
+  },
+  {
+    "EventName": "fake-json-ctr34",
+    "EventCode": "0xF12",
+    "CounterIDMask": "0x18",
+    "BriefDescription": "FAKE json event constrained to hpmcounter3,4"
+  },
+  {
+    "EventName": "fake-json-ctr6",
+    "EventCode": "0xF13",
+    "CounterIDMask": "0x40",
+    "BriefDescription": "FAKE json event constrained to hpmcounter6 (out of a small pmu-mask)"
+  }
+]

-- 
2.53.0-Meta


