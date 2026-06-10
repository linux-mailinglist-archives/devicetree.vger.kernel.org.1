Return-Path: <devicetree+bounces-309918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KlsfO9CDKWqjYQMAu9opvQ
	(envelope-from <devicetree+bounces-309918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:33:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7275266AD43
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:33:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309918-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309918-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D505230421C2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 732CA3CAE99;
	Wed, 10 Jun 2026 15:29:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E6F2110E;
	Wed, 10 Jun 2026 15:29:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781105367; cv=none; b=PSnz6BI1Acnj2+YZE3dS09p3ZviX/yxJ4djp4b/sdw3Z34nmzveib+ePc+ZLNJqbSKTRkx7sNGNeriqC6Ay1WK4W3wHr3OAmO2KCmLxVmd0Q3vXJHx4/FpQvzxfCCXlZW2kWd9DNx8RnI4joI97SujBTm+RVtdwXAwNaPh/1qf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781105367; c=relaxed/simple;
	bh=LR+z/1z26lv1FHeuZFOizhY+18yV6SEkpsY/4OMdUk0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E+UWpOZJT5K+yd2W8Oi5QvTrhiiwDWhkdELZtLEMulUbOhOcArcuy+H7fwYP2IwUYa8vKljMSp/hvbQ2tq6RF3zFlcs99/CsqEm3+atv+n8faas4PJ03H9TzRr/JxTIQqQgh8iermUvvhmJHWCN0JbTLRtarzHqqYQzh8+heBfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C215E1F00893;
	Wed, 10 Jun 2026 15:29:23 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: cache: l2c2x0: Add missing power-domains
Date: Wed, 10 Jun 2026 17:29:20 +0200
Message-ID: <0a57ab356e5f426e28ead373b809f88a63e55380.1781105151.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309918-lists,devicetree=lfdr.de,renesas];
	DMARC_NA(0.00)[glider.be];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:geert+renesas@glider.be,m:krzk@kernel.org,m:geert@glider.be,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@glider.be,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@glider.be,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,glider.be:email,glider.be:mid,glider.be:from_mime,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7275266AD43

On Renesas SH-Mobile and R-Mobile SoCs, the ARM PL310 L2 Cache
Controller is located in a controllable power area.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
This fixes "make dtbs_check":

    arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dtb: cache-controller@f0100000 (arm,pl310-cache): 'power-domains' does not match any of the regexes: '^pinctrl-[0-9]+$'
	    from schema $id: http://devicetree.org/schemas/cache/l2c2x0.yaml
    arch/arm/boot/dts/renesas/sh73a0-kzm9g.dtb: cache-controller@f0100000 (arm,pl310-cache): 'power-domains' does not match any of the regexes: '^pinctrl-[0-9]+$'
	    from schema $id: http://devicetree.org/schemas/cache/l2c2x0.yaml
---
 Documentation/devicetree/bindings/cache/l2c2x0.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/l2c2x0.yaml b/Documentation/devicetree/bindings/cache/l2c2x0.yaml
index 10c1a900202fc2ed..ee604117ffb3fe74 100644
--- a/Documentation/devicetree/bindings/cache/l2c2x0.yaml
+++ b/Documentation/devicetree/bindings/cache/l2c2x0.yaml
@@ -66,6 +66,9 @@ properties:
   reg:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   arm,data-latency:
     description: Cycles of latency for Data RAM accesses. Specifies 3 cells of
       read, write and setup latencies. Minimum valid values are 1. Controllers
-- 
2.43.0


