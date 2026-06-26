Return-Path: <devicetree+bounces-316184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NIbhM5HAPmrFLAkAu9opvQ
	(envelope-from <devicetree+bounces-316184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 20:10:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE2A6CFA4F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 20:10:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b="TMaAK7 t";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316184-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316184-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB5EE301C89A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 18:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0693B14BD;
	Fri, 26 Jun 2026 18:03:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6F73AEF35
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 18:03:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782497021; cv=none; b=u5/sXLPkCsfMgrO+OvLMNtGjFiqAGCXF3n/xuk8S8HY/UaroTBrFkel2hAa5zj6gt7HjhkDF9g/pK+tlrNwMuUTPoOBJr1Cbe0deVM991C7EnrcaVifp5M/PAc7Jr4Eq88LH6x3KFdQIekZSAfn8GjvZJDmqJP7jDjbrysrGkfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782497021; c=relaxed/simple;
	bh=T/GC3kvtu2kalmJS3SrHpgibUwg/csRFkFAuLDVt5Ug=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kVFM9rEoU+BRrMwSLi4xk2lB3VyG+QgSoxz0cPg/lAMIMob/WD8uAdYNJtkPeDVk+g2QOr9dxeon2qa3cb3orSvfw2ZqIifIZicj6pZunSsLvd/TaEo68QfcD07AEMnNjl8q8xRXhp1QgCAhKUB8jGgrwwz1dmULMIn5ALjE7JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=TMaAK7tu; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=3ys9d6VA0EqywJW4o5HfDv6y+4P3wwz2jlIsf4xTpOc=; b=TMaAK7
	turuWxCIVhf/HZLoInHDRwBUTalhpz0t8/CZsggrdjC7I7/FetSIe+s9T9Q9Qj4w
	E9T8+MJBo3OZ5RrS7pOKxNtOyJ0xEwdF7e9MzpB32EXcPCW96a8sSBmd4d22/PrQ
	5p6yJon4FLtS97zIfUWJP6d+XPirHzB0uzrmUdXdrHCjS/fD0jDsEaW0A7W/R/iF
	vBJKcA/qMGHe7TyDuZdfXVyEbpcdHkA9vuytmPSqIbFo7YSpV+qOWbzA48ZYw7uC
	gA3v/isgDWnONRT1NF3zhEAAhUZaWhhjUqC/kFBG5x4KA2T3bDB/u2kZV3qLTmUl
	s1hBImERPlH4tx8w==
Received: (qmail 3649295 invoked from network); 26 Jun 2026 20:03:33 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Jun 2026 20:03:33 +0200
X-UD-Smtp-Session: l3s3148p1@8MNC7StVqMMujnsl
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 2/4] spi: dt-bindings: snps,dw-apb-ssi: add 'power-domains' property
Date: Fri, 26 Jun 2026 20:03:23 +0200
Message-ID: <20260626180326.9593-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626180326.9593-1-wsa+renesas@sang-engineering.com>
References: <20260626180326.9593-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-renesas-soc@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:herve.codina@bootlin.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[sang-engineering.com];
	TAGGED_FROM(0.00)[bounces-316184-lists,devicetree=lfdr.de,renesas];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AE2A6CFA4F

This SPI controller likely belongs to a power domain for all the SoCs
listed. For sure, it belongs to one on the Renesas RZ/N1 SoC, so
enable the property to be able to describe its power domain in DTs.

Suggested-by: Herve Codina <herve.codina@bootlin.com>
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Herve Codina <herve.codina@bootlin.com>
---

Change since v3:
* reworded commit message to make clear other SoCs likely use a
  power-domain, too (Krzysztof)
* change Reported-by to Suggested-by (Krzysztof)
* add Rev-by (Herve)

 Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index e0f249e82fa1..291cbd55862d 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -87,6 +87,9 @@ properties:
       - const: ssi_clk
       - const: pclk
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
-- 
2.47.3


