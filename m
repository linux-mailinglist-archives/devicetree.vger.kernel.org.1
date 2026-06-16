Return-Path: <devicetree+bounces-312300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RwSXNwTpMGp+YgUAu9opvQ
	(envelope-from <devicetree+bounces-312300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:11:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B15D68C629
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:11:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=feNEt3vC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312300-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312300-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 02ED530B8296
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 06:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB403DA7CD;
	Tue, 16 Jun 2026 06:09:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E403DA7C6
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 06:09:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781590160; cv=none; b=k/fiBYG9PlQ1VgDJqGMkpEI28WBXpwZ/jCfaiZjKe9r328qd+8eXC3YiHkpXdFeJZZUAMXYmCMJodPpVGuOWDU08jdGEf7wkerHPsUQjsgk4/c0Z0Mc64KqcGtc2h3MXiUz0l2KTIM2UXt3KN6pEh2omu3utFgFVgTYGcQWBRSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781590160; c=relaxed/simple;
	bh=yZ5RUy1SHlj4Agc04wu+N+N5u1RHewqN7S9NoTE6/Qc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tTCfzk6JLbTwgfiFC2baTYjIVV9ek72nhD0UnhUn8bs94+JW/BGzOY0EUPX3ksCv0YZEBHlZQwV4eTpGRes54nt3i61ZZpqt3WyaswuJADY7NiHMJOJ4mexQ7F1/8N4bLujduacJklp6BTo2cQ2fwnK4Swi2owUuyviOJjEoNTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=feNEt3vC; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=DsOHWnokrLGDiA
	aPxwF771u+2jfOFJirl+erfy56Joo=; b=feNEt3vCfrkngOCmdbo1z8bOygAa8F
	xcoycGRGvU387pFb+IJU1JJo4jxNaf/chetGBDun2qYbrF2Wr2qpKYHyirEHN8D4
	0mi7+kHd5A1Imq6oBZjVTBdcegMvKGYuvQBUuRB7grelMNSutWDj0DO3MWFbWZez
	PHyz75Hz7BxqeLZdKPv1t4cDQzIR7qlCc/j6pBOlfXvR7gReFQUwFkQmCPXpNwPM
	2hsbQS6ThQvmSGwqeIGnylj/LIvlTdVOgo8cIcDPYq5+1zVW1SscONfaOC5/X8Wz
	G9/C6Ru3MmWYDwNKvYtTGSWnGUb4Ov/hBrD9TetBXYWAlRbwPcqhVaLg==
Received: (qmail 3825552 invoked from network); 16 Jun 2026 08:09:16 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 16 Jun 2026 08:09:16 +0200
X-UD-Smtp-Session: l3s3148p1@RjViyFhUQz1UszEP
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: i2c: i2c-mux-pinctrl: change maintainer
Date: Tue, 16 Jun 2026 08:07:59 +0200
Message-ID: <20260616060910.1480-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.51.0
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
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-312300-lists,devicetree=lfdr.de,renesas];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-i2c@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:thierry.reding@kernel.org,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sang-engineering.com:dkim,sang-engineering.com:email,sang-engineering.com:mid,sang-engineering.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B15D68C629

The YAML conversion added me as maintainer but I can't recall being
asked nor do I want to maintain it. Thierry has created the YAML file
and works for the company which contributed the driver.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Acked-by: Thierry Reding <thierry.reding@kernel.org>
---

Changes since v1:
* added Thierry's preferred email and added his tag (Thanks!)

@Andi: can you kindly add this to your second pull request?

 Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml
index 2e3d555eb96c..99812a893476 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Pinctrl-based I2C Bus Mux
 
 maintainers:
-  - Wolfram Sang <wsa@kernel.org>
+  - Thierry Reding <thierry.reding@kernel.org>
 
 description: |
   This binding describes an I2C bus multiplexer that uses pin multiplexing to route the I2C
-- 
2.51.0


