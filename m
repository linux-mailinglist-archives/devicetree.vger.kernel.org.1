Return-Path: <devicetree+bounces-319663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ajh5DyLnRmpLfQsAu9opvQ
	(envelope-from <devicetree+bounces-319663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:33:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8F76FD36D
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:33:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319663-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319663-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 41563302A4FE
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 22:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14A773CBE89;
	Thu,  2 Jul 2026 22:32:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FD33BCD01
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 22:32:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783031567; cv=none; b=RmksdZjqFOTiAxwm/uzRsYMdLvkDuiYhfVlF2k2C6XNRCJXP/ojZfkcYAZ79khvfr8VrGAt8GtD9jZI4D0z078VU9uHMDzaxkI2AA46U/rvJW1Fqj9Ct7Zq6nZjeYaq49fD6qp4bfYuqrO33cmeytu6t/Uddl05NTejeoGi79oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783031567; c=relaxed/simple;
	bh=wzHE1s+2gX2BTWsN80A15vJGvuGnxkYOLrgZhcQZ1X8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PjTsjf+WzWDadCVCL9ded8FAEsIOhLI0Jl3F0xDmU+JHQoJUdeZF7NsGujhCUDG84o39TDUcP0F9X6lJ+ZZR5kxMACSEGWscoE/SzIDiotXI0uiksz3tMIFwQj5OvNQe1HksaVX0JCeOtKuEnG1/EJXUOtv1+CiFmAumBh1Osoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1wfPxW-00081n-IA; Fri, 03 Jul 2026 00:32:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri, 03 Jul 2026 00:32:23 +0200
Subject: [PATCH v7 2/4] dt-bindings: vendor-prefixes: Add TouchNetix AS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-v6-10-topic-touchscreen-axiom-v7-2-0d2a550a7ee8@pengutronix.de>
References: <20260703-v6-10-topic-touchscreen-axiom-v7-0-0d2a550a7ee8@pengutronix.de>
In-Reply-To: <20260703-v6-10-topic-touchscreen-axiom-v7-0-0d2a550a7ee8@pengutronix.de>
To: andrew.thomas@touchnetix.com, Luis Chamberlain <mcgrof@kernel.org>, 
 Russ Weight <russ.weight@linux.dev>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Kamel Bouhara <kamel.bouhara@bootlin.com>, 
 Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
 Danilo Krummrich <dakr@kernel.org>, Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-input@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:andrew.thomas@touchnetix.com,m:mcgrof@kernel.org,m:russ.weight@linux.dev,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:akpm@linux-foundation.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:kamel.bouhara@bootlin.com,m:kernel@pengutronix.de,m:rydberg@bitmath.org,m:dakr@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:m.felsch@pengutronix.de,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[touchnetix.com,kernel.org,linux.dev,linuxfoundation.org,linux-foundation.org,gmail.com,bootlin.com,pengutronix.de,bitmath.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319663-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,touchnetix.com:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,pengutronix.de:email,pengutronix.de:mid,pengutronix.de:from_mime,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE8F76FD36D

From: Kamel Bouhara <kamel.bouhara@bootlin.com>

Add vendor prefix for TouchNetix AS (https://www.touchnetix.com/products/).

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 396044f368e7cf0ca1436713ae44f1950259f006..b8450050d7299cea2b5cf6f57fe71f5ead1140c8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1715,6 +1715,8 @@ patternProperties:
     description: Toradex AG
   "^toshiba,.*":
     description: Toshiba Corporation
+  "^touchnetix,.*":
+    description: TouchNetix AS
   "^toumaz,.*":
     description: Toumaz
   "^tpk,.*":

-- 
2.47.3


