Return-Path: <devicetree+bounces-308680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MNQmJ7SsJ2q50QIAu9opvQ
	(envelope-from <devicetree+bounces-308680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:03:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD8765C920
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:03:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=sw3aDZVd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308680-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308680-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3039930454AD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCFE53CE495;
	Tue,  9 Jun 2026 06:01:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD193CB2E5;
	Tue,  9 Jun 2026 06:01:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780984901; cv=none; b=T2fFlHyim9A6Au87qYcyzojJ/+3x6ibs2kEwjQo9giLxjkiYm0sXl4zk5HXiLJsS32bzAwkqwM2meFAi5Z/zeNJgX7/JUYVb15cw6dsYRJf4/Eklp5GaItirJgbAMHSTG4Mppvs5EXwhsNEfr41hgmv/vSZ81AydWRM6SeoqfmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780984901; c=relaxed/simple;
	bh=Uy+6u+zVVnKDyhH828jdTZwad1FK1t8vFUHFHWkaisM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GMamlalffWg/3KmYg66wnrRdQIf70m5YCeyh84XtuLcde17M42sa7an4uc5iHCgpndfmnKT/25l9WGcoiRh+b+s1oxgePAGr3/DP0VyxQrxhUiETKUYO87FdqDpgoOv3oMvs++f2S4k2z5W8HHzb1e1NeLEz1OzTRQTWGLh1qQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=sw3aDZVd; arc=none smtp.client-ip=91.218.175.179
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1780984898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UiQdcLZt3TDwJvzued5odyBBsjPd7XdI6I5xzQS3xEM=;
	b=sw3aDZVdPfe7llAGxyxlkoeaj+NZpqQ/1TJM1oDrs+kUR3wvHtJBHbN1vZstxRbklghJic
	rWrY5YxoeQ5ifGmmA6R1Nv+8t2fDwbJSDpCAFMwNpY8pxwetZhFooBdJ0YArhjPejNqGuh
	AwS5gfWT188HhM3CpvbwxQ+bkjvke7E=
From: Atish Patra <atish.patra@linux.dev>
Date: Mon, 08 Jun 2026 23:01:17 -0700
Subject: [PATCH v6 03/21] dt-bindings: riscv: add Sxcsrind ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-counter_delegation-v6-3-285b72ed65a9@meta.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:james.clark@linaro.org,m:robh@kernel.org,m:atish.patra@linux.dev,m:acme@kernel.org,m:jolsa@kernel.org,m:will@kernel.org,m:mark.rutland@arm.com,m:anup@brainfault.org,m:namhyung@kernel.org,m:pjw@kernel.org,m:krzk+dt@kernel.org,m:irogers@google.com,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308680-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid,vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rivosinc.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFD8765C920

From: Atish Patra <atishp@rivosinc.com>

Add the S[m|s]csrind ISA extension description.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 2b0a8a93bb21..4be557dc215d 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -181,6 +181,14 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smcsrind
+          description: |
+            The standard Smcsrind supervisor-level extension extends the
+            indirect CSR access mechanism defined by the Smaia extension. This
+            extension allows other ISA extension to use indirect CSR access
+            mechanism in M-mode as ratified in the 20240326 version of the
+            privileged ISA specification.
+
         - const: smmpm
           description: |
             The standard Smmpm extension for M-mode pointer masking as
@@ -199,6 +207,14 @@ properties:
             added by other RISC-V extensions in H/S/VS/U/VU modes and as
             ratified at commit a28bfae (Ratified (#7)) of riscv-state-enable.
 
+        - const: sscsrind
+          description: |
+            The standard Sscsrind supervisor-level extension extends the
+            indirect CSR access mechanism defined by the Ssaia extension. This
+            extension allows other ISA extension to use indirect CSR access
+            mechanism in S-mode as ratified in the 20240326 version of the
+            privileged ISA specification.
+
         - const: ssaia
           description: |
             The standard Ssaia supervisor-level extension for the advanced

-- 
2.53.0-Meta


