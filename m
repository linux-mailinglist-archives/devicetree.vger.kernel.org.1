Return-Path: <devicetree+bounces-299755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNKHJFD/C2pcTQUAu9opvQ
	(envelope-from <devicetree+bounces-299755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:12:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3D7577C9C
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:12:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89DED3057D5F
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE2AD37FF4D;
	Tue, 19 May 2026 06:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWnbT7az"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F753806C9;
	Tue, 19 May 2026 06:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779171016; cv=none; b=tVf2kpOlfehq2/qV/gWRaOTln7+f2Te4mq9Jf35HZLdpeb1wlIYcCQm/SlpG6mQUPxxFGbFZ6mGEgRZ6E+Fk75xJitauLDUG8laa9OJgZECUAU0GxORoHkl2epqcVqHH0QkN0o7xOTdQAdFKLDzxCpiWO1lxUbnvb2acYlJ2L9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779171016; c=relaxed/simple;
	bh=DswRk7ybF3fLnX3MJJEkMdXEDTp+sndW4Ikfc6SzmYA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qhCDHSqJtcjUSjb23ap9/Xw0epvg1NFrltv4fU7lF48t27N+144NnLZDLdYb3cfcanK1vkEttJInG89UH/0arwdNkLFvtmUgSdjZqjjf4ZgoTDceE0FrW/aHhqlDKXAI4sMXKXprShJ7KBrzAGLv4w66U53nf6cwajpW1giBils=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWnbT7az; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B75B9C2BCC6;
	Tue, 19 May 2026 06:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171015;
	bh=DswRk7ybF3fLnX3MJJEkMdXEDTp+sndW4Ikfc6SzmYA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pWnbT7azwoFDGZ2cgzH739aopiBPMSZJ66RowHpanjAeu9ZCDvXaULoJQ8aVPXFfA
	 flCWnm+d+t2nDA5angnxRdlEkU8a7HXnwvLiNTUJlugsLrnc1bkcycXSF/bxebOydt
	 rIDiX4vuoPaUfqwFD8/PRFGhX8tUee2UyOclL7IGqlVh5fUzr5qjEc11hfH7xS4qLc
	 80FV0NshFJguz8BYIwfjQBBJ8CcelmHKcGXp2UUcPOA14FwAQvPkyk7Y6DMl6Wtehz
	 eEjERCqxsreB/QvVigBrL+y9CYHlkXPla81Jw/JwFwtJMiWZXR+vBnAi2OENnuaC9L
	 NhddF/HqvIkcg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: i3c: dw: Describe core reset
Date: Tue, 19 May 2026 13:51:03 +0800
Message-ID: <20260519055105.13079-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260519055105.13079-1-jszhang@kernel.org>
References: <20260519055105.13079-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: ED3D7577C9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The core reset support has been in the code from day1, but the
dt-binding doesn't exist. Add dt-binding to describe reset property.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 .../devicetree/bindings/i3c/snps,dw-i3c-master.yaml       | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
index e803457d3f55..519797c6b4fe 100644
--- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
@@ -35,6 +35,14 @@ properties:
       - const: core
       - const: apb
 
+  resets:
+    items:
+      - description: Reset signal
+
+  reset-names:
+    items:
+      - const: core
+
   interrupts:
     maxItems: 1
 
-- 
2.53.0


