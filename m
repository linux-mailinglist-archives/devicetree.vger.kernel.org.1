Return-Path: <devicetree+bounces-314282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id naB+IkDuOGrVkAcAu9opvQ
	(envelope-from <devicetree+bounces-314282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:11:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEA96AD8E2
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:11:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=bUhMMAu3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314282-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314282-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F150630C7A96
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B268391E54;
	Mon, 22 Jun 2026 08:06:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146153921CD
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 08:06:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782115586; cv=none; b=oPl8WWWE46UXsDE3GyP+4rxP7dn6wFMxxwd2Be7Pifh8jtiKXG17nnSAdIZhQAti4K09wdGQqMvhnnsEaFAD947axks8/e3rpM1rWtxBUEXLDa8PDWXecXub+YrX31wKlwEGuK6x9NcsRpgaerW0miA+RWRl1vMm+GEc3H1pq8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782115586; c=relaxed/simple;
	bh=yKON5Bmy1w/E9ZgpWps+kx0Ls+ejUvAGERqPzvKFUdA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pYOmxdP6RHcAs5SoGXcTTc4aGL455CiEe8ilSXiBBjvrcCKW66lr/3SZWl10DRe5UCN7GWHnjEPkFagVgxw2d+0G44KTmQB4J6AwYsJQTxGwnFSXVjIizbs3GnLbKS7hnWotCj6BCrjgqdyeRVgqcTPYKQ5OOaIvnHg0Chj5x4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=bUhMMAu3; arc=none smtp.client-ip=91.218.175.171
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782115583;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m33YeEQ2LI4+9pJOZx15rtUmMH8AJOWaugqVbovodV4=;
	b=bUhMMAu3013yuPd2hGNbmhY9rJUDcI5YKJC/IW0OAsIwiQnjudzZ/8OvBz8OU077+qsWBW
	cXuDQ8Ho5uB0YncTrpD2FPj0sAsO6hX6dnp36jxoH8M1xu2GUnKmceW6RtXPmX9JyDXul9
	otcnAJU3+BEuytvc8qwarMdqXK+krAM=
From: Atish Patra <atish.patra@linux.dev>
Date: Mon, 22 Jun 2026 01:04:32 -0700
Subject: [PATCH v7 20/22] tools/perf: Add RISC-V CounterIDMask event field
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260622-counter_delegation-v7-20-0ba2fd34614e@meta.com>
References: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
In-Reply-To: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
To: Jiri Olsa <jolsa@kernel.org>, James Clark <james.clark@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, Rob Herring <robh@kernel.org>, 
 Ian Rogers <irogers@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Anup Patel <anup@brainfault.org>, Paul Walmsley <pjw@kernel.org>, 
 Atish Patra <atish.patra@linux.dev>, Namhyung Kim <namhyung@kernel.org>
Cc: devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jolsa@kernel.org,m:james.clark@linaro.org,m:mark.rutland@arm.com,m:will@kernel.org,m:acme@kernel.org,m:robh@kernel.org,m:irogers@google.com,m:krzk+dt@kernel.org,m:anup@brainfault.org,m:pjw@kernel.org,m:atish.patra@linux.dev,m:namhyung@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314282-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:dkim,linux.dev:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,rivosinc.com:email,vger.kernel.org:from_smtp,meta.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EBEA96AD8E2

From: Atish Patra <atishp@rivosinc.com>

Counter delegation lets supervisor mode choose the hpmcounter for an event,
but the hardware may only allow a given event on a subset of counters. Add
a RISC-V specific "CounterIDMask" json event field, handled like the other
arch-specific entries in event_fields[], that carries the allowed-counter
bitmask through to the driver's existing counterid_mask (config2:0-31)
format.

The value is the bitmask directly so no counter-list to bitmask
conversion is needed, and because the field is RISC-V specific it is a
no-op for every other architecture's events (unlike the shared "Counter"
field).

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 tools/perf/pmu-events/jevents.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/pmu-events/jevents.py b/tools/perf/pmu-events/jevents.py
index 457fce7a5982..c1ed8a05c9a4 100755
--- a/tools/perf/pmu-events/jevents.py
+++ b/tools/perf/pmu-events/jevents.py
@@ -396,6 +396,7 @@ class JsonEvent:
         ('EnAllSlices', 'enallslices='),
         ('SliceId', 'sliceid='),
         ('ThreadMask', 'threadmask='),
+        ('CounterIDMask', 'counterid_mask='),
     ]
     for key, value in event_fields:
       if key in jd and not is_zero(jd[key]):

-- 
2.53.0-Meta


