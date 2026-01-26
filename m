Return-Path: <devicetree+bounces-259328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCKyDWzgdmmhYAEAu9opvQ
	(envelope-from <devicetree+bounces-259328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:33:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE0E83B2E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2990730036CB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A08A61E00B4;
	Mon, 26 Jan 2026 03:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unisoc.com header.i=@unisoc.com header.b="fdAYSVhv"
X-Original-To: devicetree@vger.kernel.org
Received: from SHSQR01.spreadtrum.com (mx1.unisoc.com [222.66.158.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9DE156661;
	Mon, 26 Jan 2026 03:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=222.66.158.135
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769398312; cv=none; b=Q4KwkR47bTZjuYL0i7ra55ACpp5ZmQJ8EymWTqkJC3VuTbpyEFWG+Ig8kQered9bPMMTvAwDr/sQQipY3tE3PIcIVXudc0zI6kmKQwE1rom5Zq2urRuySSAdNP3sPOXpUsbhDD4mtBPPavcEtfAjt2vuQtpE9BnhbshuuHK2xhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769398312; c=relaxed/simple;
	bh=Q/J9J/pw9UXt2Q6x57AIZnWPbZDuxQ0X4GChAbdKBrA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AAvTq5dnHQFVt7iqxzoNq8GP2NfWIC+YaDqq+yjox3KVYdr/IhCNArN4DccbfcLrJeRwQWCkEQXpqNM2bqMBD58JqSVlZmxo6yGgEFxrici4+HblDLnszt+Jnf7GAhsFD7QFDLD72j9sTBXEcjDc/GgkFGxttZLyTh4ffxMSLCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=unisoc.com; spf=pass smtp.mailfrom=unisoc.com; dkim=pass (2048-bit key) header.d=unisoc.com header.i=@unisoc.com header.b=fdAYSVhv; arc=none smtp.client-ip=222.66.158.135
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=unisoc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unisoc.com
Received: from dlp.unisoc.com ([10.29.3.86])
	by SHSQR01.spreadtrum.com with ESMTP id 60Q3UXk7017409;
	Mon, 26 Jan 2026 11:30:33 +0800 (+08)
	(envelope-from baisheng.gao@unisoc.com)
Received: from SHDLP.spreadtrum.com (zeshmbx08.spreadtrum.com [10.29.3.106])
	by dlp.unisoc.com (SkyGuard) with ESMTPS id 4dzv6K0TC9z2MC1Xh;
	Mon, 26 Jan 2026 11:24:41 +0800 (CST)
Received: from BJ15137PCW.spreadtrum.com (10.0.73.52) by
 zeshmbx08.spreadtrum.com (10.29.3.106) with Microsoft SMTP Server (TLS) id
 15.0.1497.48; Mon, 26 Jan 2026 11:30:31 +0800
From: Baisheng Gao <baisheng.gao@unisoc.com>
To: Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>,
        Mark
 Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <cixi.geng@linux.dev>, <hao_hao.wang@unisoc.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-perf-users@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
Subject: [PATCH 2/2] dt-bindings/perf: Drop irqs for clock domains without a PMU instance
Date: Mon, 26 Jan 2026 11:30:29 +0800
Message-ID: <20260126033029.7923-3-baisheng.gao@unisoc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260126033029.7923-1-baisheng.gao@unisoc.com>
References: <20260126033029.7923-1-baisheng.gao@unisoc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SHCAS03.spreadtrum.com (10.0.1.207) To
 zeshmbx08.spreadtrum.com (10.29.3.106)
X-MAIL:SHSQR01.spreadtrum.com 60Q3UXk7017409
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unisoc.com;
	s=default; t=1769398253;
	bh=czsV1XmnEkzLgfR3k2U1B+o7cQbHMg5oL+Q48pBs/VM=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=fdAYSVhv4IfLebcYVSHtcTLZyK4eKSt350dQhL/nJTRow6txiW1XgP15hQ3uwYuDV
	 QvQg5pCVhaZFc8qGoziaPUbq5dBtGtVjxjQmedvgGRlgmaPSEeHqxzLG3Igr825XWE
	 6kZg89ctfDFZx2Bbn5q7INyyHsW3pwb7M5BbE9MJ76aEi/qwz+yxXfva47t9Lgx9pI
	 vz115Q5afkO0XXhoxzJcRsGiw8YqgMHCjt4kkY770cmRWuBMEIelklaHVyIJID7tWM
	 fvBb7wzsY8g2ZnjHCrEmrN/yMI19R8XHte05l3Jmo49WSWFgnolp0uTt9seD/d+vCh
	 eeqSWeSB2on4g==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[unisoc.com,quarantine];
	R_DKIM_ALLOW(-0.20)[unisoc.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259328-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[baisheng.gao@unisoc.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[unisoc.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[unisoc.com:email,unisoc.com:dkim,unisoc.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8AE0E83B2E
X-Rspamd-Action: no action

No need to specify the interrupts for the clock domains without a
PMU instance.

Signed-off-by: Baisheng Gao <baisheng.gao@unisoc.com>
---
 Documentation/devicetree/bindings/perf/arm,ni.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/perf/arm,ni.yaml b/Documentation/devicetree/bindings/perf/arm,ni.yaml
index d66fffa256d5..40a5b8929ef2 100644
--- a/Documentation/devicetree/bindings/perf/arm,ni.yaml
+++ b/Documentation/devicetree/bindings/perf/arm,ni.yaml
@@ -20,7 +20,8 @@ properties:
   interrupts:
     minItems: 1
     maxItems: 32
-    description: Overflow interrupts, one per clock domain, in order of domain ID
+    description: Overflow interrupts, one per clock domain which has a PMU
+      instance, in order of domain ID.
 
 required:
   - compatible
-- 
2.34.1


