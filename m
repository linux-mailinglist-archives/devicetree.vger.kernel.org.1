Return-Path: <devicetree+bounces-318637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pO2GDkYVRWq+6goAu9opvQ
	(envelope-from <devicetree+bounces-318637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:25:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A67EC6EE11E
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:25:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b="H7QUtU U";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318637-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318637-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5F3FE313B79F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9CB48C3EF;
	Wed,  1 Jul 2026 13:13:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC92848C3F6
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:13:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782911587; cv=none; b=BZcd3DO69qep2mu3N28Kj0J7D0vfIoaN+qqbbqVir4kQvVt0sxlRVypTrotAA7huZ4GcRbQf5QNXn2DZ45Up2YWlVz4HdGDGq0aiPl8b9T0T/WGHmpLOXGNnAzass8VzoiRqI9fBDzUkVk/WfNU6bWDgXkvolx4VDRdIL/C5mrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782911587; c=relaxed/simple;
	bh=e+zh3j/wykjMlC3CQS6q56Obs4SCdT1AUtHglJSriS8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G/6Ilp1ZMnQvmdKiYOKICH0FoFBKaY2WKJmC5P4j+wB7ts9BKh9i8jsiLb4EHbPnvxRu7dFtxl0+rWf7/dBILlVxcYotkAMot7rJYRbuRM+7xna5kekqWW+rbRtql83eGkgxveSf2+BRQs1lNs9OMnGiaxdlnjV8sl6kWWAw7F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=H7QUtUUj; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=OXn9V7e86bi/5vj+IElGStXrZ9tOEkkQid7B89BoAeM=; b=H7QUtU
	UjNwOBlkwXMCReCE5CUhzRYfcfX6sJfkK3WyCHXnCY3EeQORBnUgJrzTXy/woiDl
	GdGZCrTEa7WqQwPbuUhwjIAmB1QGR57USzuqLnQ3sj0L3iiuCNdTmtRQhMI9jvCJ
	weT9zRhCiLoUdiaLoswV49AYFy+ZbjRIgdS9e9o5IfwbQBnNdbc5xMRZKPL+E/4W
	FTrTfBgXtxb/b77Ros8G5OGql9lonMrLxrLxoLk591l4ef5u/GB08QfrU/FTXkTA
	boexaZOi3mx0wIThcMHV6pLPXHrg8SQJCdUDYHk+iP2RQzAEk3W3Q+0tiI11QBG4
	W5sSRMkwKLPlXCHg==
Received: (qmail 713126 invoked from network); 1 Jul 2026 15:12:59 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 1 Jul 2026 15:12:59 +0200
X-UD-Smtp-Session: l3s3148p1@IatWc4xVlMNUhsc0
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 2/2] spi: dt-bindings: snps,dw-apb-ssi: add 'power-domains' property
Date: Wed,  1 Jul 2026 15:12:50 +0200
Message-ID: <20260701131248.4545-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260701131248.4545-4-wsa+renesas@sang-engineering.com>
References: <20260701131248.4545-4-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318637-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-renesas-soc@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:herve.codina@bootlin.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:geert+renesas@glider.be,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,bootlin.com:email,qualcomm.com:email,glider.be:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A67EC6EE11E

This SPI controller likely belongs to a power domain for all the SoCs
listed. For sure, it belongs to one on the Renesas RZ/N1 SoC, so
enable the property to be able to describe its power domain in DTs.

Suggested-by: Herve Codina <herve.codina@bootlin.com>
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Herve Codina <herve.codina@bootlin.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

Change since v4:
* rebased to -next as of today
* added Geert's nad Krzysztof's tags (Thanks!)

 Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index 447be88caf34..95a5bd894e93 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -93,6 +93,9 @@ properties:
       - const: ssi_clk
       - const: pclk
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
-- 
2.51.0


