Return-Path: <devicetree+bounces-302748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAxSJMtaFGofMwcAu9opvQ
	(envelope-from <devicetree+bounces-302748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 16:20:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B82D25CBAD9
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 16:20:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0C83F3004D1C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BECB3EBF3D;
	Mon, 25 May 2026 14:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaoQSkGu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333893ED3A6
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 14:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779718774; cv=none; b=Zc09Tm6epOtS/0qjhz+EHhMu2RuTnJ+GoG7xnHhyL08/yS1/7K+QU+eA2RhJzGCau/Qh2evz4wHdcNxqQXhGhgr/LpFUFN8rb8TjR2fE1UzGotzVcsGj7t2e4vmtPMrm/W/5DWm4Zd3XW3RPmPaNrMt2Sv4OeSeZp5ZUOl9GAUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779718774; c=relaxed/simple;
	bh=ZzSIS0T2I6SH70gPb1462rezvQzGyTgouPvultM6eyQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rHkFousXIFufyzO/YErDLu6sLCVZ3Eoit7DbwtKbbVPqdemLesBV4h/1zqV+PhZ1wpihI/k1trZBZax2UK6vgSfGyIwtkJggADqZdhl04MLxUPnnpehhOhc6vnn7mhDVcR9D2ZqZflHqzKMbZm9hFpyUIKl2xenIlJnmX4MsdSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaoQSkGu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C4551F000E9;
	Mon, 25 May 2026 14:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779718772;
	bh=Y0Ta+M9J4SmiVALp8xtiFc5Ub2xitdMsJyDhL48mVpo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=kaoQSkGuKkjOkFedB2Pivm2NtRlX44ugVhOvOmjd8oNi8qCKzIERPi4gxZYZRLvwG
	 f9/l8kAJTZULFawrkl237DnX1EEQ4COkF6Wt9lCvRJZjahW+eUrQ6o8ndvNX7QG0wL
	 FYYBaO4tnDHjZ3GYl1MO6QK2tSZr+5s6SsGMPSylUWRAyCMsTu1H+EwB5jfybIzfDX
	 9ps2JainHNm0eoE4uetcM/bNxSoYBNr0mpBzb8U1V9v/+BP7tT0C179d+HtpG4vtjN
	 ZPX7keXVJVTpZu0C4ERqeYq9JOJGZ21GwZ8HqUkN9+XzyueL9rx5SA5E2GcgMRmnK1
	 jsoCqLF4W0HQQ==
From: Jisheng Zhang <jszhang@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: i3c: dw: Add apb reset
Date: Mon, 25 May 2026 22:00:17 +0800
Message-ID: <20260525140018.19598-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260525140018.19598-1-jszhang@kernel.org>
References: <20260525140018.19598-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302748-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: B82D25CBAD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add dt-binding for support of apb reset which is to reset the APB
interface.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
index 613dce7757bc..2575442b28ff 100644
--- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
@@ -38,10 +38,12 @@ properties:
   resets:
     items:
       - description: Reset signal
+      - description: APB interface reset signal
 
   reset-names:
     items:
       - const: core_rst
+      - const: apb_rst
 
   interrupts:
     maxItems: 1
-- 
2.53.0


