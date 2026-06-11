Return-Path: <devicetree+bounces-310429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RSKRDVaoKmoJugMAu9opvQ
	(envelope-from <devicetree+bounces-310429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:21:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29359671C5C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:21:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=FceBgems;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310429-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310429-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 752793006D5A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD92B3BFAFC;
	Thu, 11 Jun 2026 12:21:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337433BCD34
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 12:21:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781180474; cv=none; b=CxL4UURSnpCBgm3aoDYACUrEJW444iYRIa614c36Sb5PDJLstrtrcTeLQx7R4PgFDFGy+yVCtSPFw5jsGrm1ZOEoeWixQ9gAUxdbLS/xNUucIIM/PW4sY8yS+bU2M8AHrJ8D+is3Mu8CJmsRq0SVbjDxxWHF38eGJgmW7v53rZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781180474; c=relaxed/simple;
	bh=OK6xEQe/D6eLI98p+VF3Sn8Dln++Z6is7QGztVPEovA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NHmEnfUgHHFPjPqJYzVmw9MUWe3JI6wOHCJRk5qd0GaFvbGXCWMIDF50VTtTtx+4t2WFH7JLMOkUohPpDcudD+EVrHZGFQPvWUxcj+S3UjgMyHLpOcqKdVtW8n10F+ygaHQVBVq0zoaV/CblgqdZPIzGwIHwO0vfE/gElUVsHO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=FceBgems; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=WT27qRO1N0+Qtu
	aUvRdOfGsxrSfSk0U/C5+BYr3RpHY=; b=FceBgemsyUtWMFTYXxbunHnFigmNKn
	9gZQd41+FAl6zyWMWDPhCNKVvaXlc16ERrHLbQpSS7eWi4HDB6FYDv0KconrPT5f
	94595ZsTg/vTry6VMjz/1eTf0QBYUpeECzIxK/dxQ0Rs3fCBFO8JWsAHz91rI9IW
	JI1qp847K0KdyD+GgzLjLn0jwg07cUfq7Ak2+mLBdX1rE01wssnZ90hYNqDV7/6y
	2jy/aFTc2Gatqz/x3mb1eDyE230k6/dCf4iaXQrL9IO/MOOsBZnSZmgY6KIO2cA3
	kQXjDvnz/rw4p78hJ2Agmf4eqb4DnQLt6IGb7zmclnD7mstAonza5rQA==
Received: (qmail 2110904 invoked from network); 11 Jun 2026 14:21:07 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Jun 2026 14:21:07 +0200
X-UD-Smtp-Session: l3s3148p1@eR8AZflThroujnvX
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Peter Korsgaard <peter.korsgaard@barco.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: i2c: mux-gpio: name correct maintainer
Date: Thu, 11 Jun 2026 14:20:53 +0200
Message-ID: <20260611122053.7306-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.51.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310429-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-i2c@vger.kernel.org,m:peter.korsgaard@barco.com,m:wsa+renesas@sang-engineering.com,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,sang-engineering.com:dkim,sang-engineering.com:email,sang-engineering.com:mid,sang-engineering.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 29359671C5C

The YAML conversion added me as maintainer but I can't recall being
asked nor do I want to maintain it. Add Peter as maintainer for the
binding as he is maintainer of the driver.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 Documentation/devicetree/bindings/i2c/i2c-mux-gpio.yaml | 2 +-
 MAINTAINERS                                             | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-gpio.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-gpio.yaml
index 4a93d1f78f93..6e44510aaef6 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mux-gpio.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-gpio.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: GPIO-based I2C Bus Mux
 
 maintainers:
-  - Wolfram Sang <wsa@kernel.org>
+  - Peter Korsgaard <peter.korsgaard@barco.com>
 
 description: |
   This binding describes an I2C bus multiplexer that uses GPIOs to route the I2C signals.
diff --git a/MAINTAINERS b/MAINTAINERS
index e035a3be797c..a616abfce644 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10772,6 +10772,7 @@ GENERIC GPIO I2C MULTIPLEXER DRIVER
 M:	Peter Korsgaard <peter.korsgaard@barco.com>
 L:	linux-i2c@vger.kernel.org
 S:	Supported
+F:	Documentation/devicetree/bindings/i2c/i2c-mux-gpio.yaml
 F:	Documentation/i2c/muxes/i2c-mux-gpio.rst
 F:	drivers/i2c/muxes/i2c-mux-gpio.c
 F:	include/linux/platform_data/i2c-mux-gpio.h
-- 
2.51.0


