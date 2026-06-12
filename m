Return-Path: <devicetree+bounces-311182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AI/mH4GALGrjRgQAu9opvQ
	(envelope-from <devicetree+bounces-311182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:56:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC9767C9BF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:56:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EkllISHE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311182-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311182-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C72E4317A208
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 21:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2052239A7E7;
	Fri, 12 Jun 2026 21:53:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEA9382296;
	Fri, 12 Jun 2026 21:53:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781301203; cv=none; b=qOlV0IJQkK1E8BxVZXznYBod8BW8iSrmS1kTsrH/ZVN/XllG5ms3jDc2UFq9mxm3inSO8cDBENbTXDSdqFq+ySQOqJeRTgqFPsn7ZetJgcFvjY8zOEmxByoK+yGVWuT+HtRbXp2GCvUJ6uYkTEgsQW5+ycfwO4uTUR877wZQQLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781301203; c=relaxed/simple;
	bh=7a0uRssRXIBSebRonMs1myUkDLDCVX8flRsTdK7xGmc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Y4tj0nVDg6i4HGzExo7lwkGVtsq5L9vfKwB/xR5prPsFaMUPTMYjzfcumJ6+BKimmQVfOQZ3COKy/wz25TPiqfKq1QolyVw6nhBS04I5H1pvN933FimyACUMjmcAOPqy/CPyGPevrrnzYZPIOXpdjb05qQMWsk/2/CSmIaNlero=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkllISHE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D52B01F000E9;
	Fri, 12 Jun 2026 21:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781301202;
	bh=XgD5IFq2vTCmbOmMLpA5EhUbQZ2qlubcaShXz6t+eXY=;
	h=From:To:Cc:Subject:Date;
	b=EkllISHEHOtq2exHvAgM43tUTI6IMSOpEaKgYECFUbmcwwF+ADaFP0hCd27mg+YAo
	 yKEFZhUjvHU1N5bkUvu+Z187yyTcJ9H3wliJkbnAZ3rIGWmioxkcHVtGPtxtyo3fts
	 r2GVDXZGLaIgTjm8HZE0s275WPsL+J6FBe9BrIpmaHb/P9qmlRmc9cSAAsRP+Z7JVv
	 4HQlUac9PE6j1daO5lNSYMvqaIHxukzgFuxBbuqcKHr0YOX9CBG064yy8bnj89inP+
	 ocQTBeo/EC05FbCuwjSNpXWlbGlMbrYtc6HmPRRwYW50B9iPhqZgqNbE4XwEl8SLUR
	 ZkNHYB1aOY+CQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Hans de Goede <hansg@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
	Purism Kernel Team <kernel@puri.sm>,
	Sebastian Reichel <sre@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: power: maxim,max17042: Fix temp types to signed
Date: Fri, 12 Jun 2026 16:53:15 -0500
Message-ID: <20260612215315.1889039-1-robh@kernel.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311182-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hansg@kernel.org,m:krzk@kernel.org,m:m.szyprowski@samsung.com,m:sebastian.krzyszkowiak@puri.sm,m:kernel@puri.sm,m:sre@kernel.org,m:conor+dt@kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDC9767C9BF

The max17042 binding described "maxim,cold-temp" and
"maxim,over-heat-temp" as unsigned values, but in-tree DTS examples
use negative temperatures such as a cold threshold below zero degrees.

Document the temperature properties as signed int32 values so the
schema matches existing DTS data and the driver can use signed helpers.

Assisted-by: Codex:gpt-5-5
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/power/supply/maxim,max17042.yaml      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index 242b33f2bcba..8687009b4057 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -44,13 +44,13 @@ properties:
       Defining this property enables current-sense functionality.
 
   maxim,cold-temp:
-    $ref: /schemas/types.yaml#/definitions/uint32
+    $ref: /schemas/types.yaml#/definitions/int32
     description:
       Temperature threshold to report battery as cold (in tenths of degree Celsius).
       Default is not to report cold events.
 
   maxim,over-heat-temp:
-    $ref: /schemas/types.yaml#/definitions/uint32
+    $ref: /schemas/types.yaml#/definitions/int32
     description:
       Temperature threshold to report battery as over heated (in tenths of degree Celsius).
       Default is not to report over heating events.
-- 
2.53.0


