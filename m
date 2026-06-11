Return-Path: <devicetree+bounces-310438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gFxHDEGqKmqTugMAu9opvQ
	(envelope-from <devicetree+bounces-310438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:29:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E2B671D71
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:29:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=SRH1Iqmo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310438-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310438-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD0B932681C1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54316346FA0;
	Thu, 11 Jun 2026 12:27:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AE82848BE
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 12:27:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781180832; cv=none; b=r/ZGBelrYnhFca2r+gePjSdeQ9Yp3GcAuOOu9+upfBu3REif07xVMd9erpHF03oaM1BR9XrC8xNotS0ijzCgSdPjP2k45bAyhXt5bafdswccaJDdV73dHyEE3R5X72oO4Tq2jyRBQRQR67ONE2DZocgnSnX096nZHtSDI8GrWyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781180832; c=relaxed/simple;
	bh=07XhFOZIzFvouZx4+034ijG/oHYdilZ0gKzqtG233e8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PRE4azbuFKmEoz4BNAIMWSB0srbd0QsiYUb65HoYkzqhH8PRrpDylXsQ7mBeiEoDCmSdciRJtz8T+9thnGyoNsU02h1Rt5epWPSbdSqYFqxXVo3mes9iOOKX+LRsJzZI4U6NrtnYvIeWntyATmJBaBtaD1DB+g+aXSmJJoU/fbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=SRH1Iqmo; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=pzCWhYTTaHarIV
	WSw9dJjxLQ5h4uRp5jhIoJCVn4y5Q=; b=SRH1IqmoDon1gNM50cL9B7fNXPfWgj
	RcT1fqj3DDhQC1KVVIrc2UB8alJqNgWPzXkw2IGsABQ0pNNvCAoI54D0l0qEWY3K
	xHMUsPkEPlL+spAvJ6xGt3yFA0yi4fRzxgdsdVSlygCpp5NUzy1nu5Rjp87zDVBz
	ELhL1bMq7QPZ5zRF+ojpvpdgP+7i5dkN7bEdTAoPIhGJFw6cH4m05Dn7yUE7F8Yn
	6zNcK4I711pBK/yUcyUciIug0LvdjZjQA0mNIFAKg/RLdYVycSBkNl0AbD8QbeF0
	B8BoH2LOSC/Xh3V9OLmNAIho2WdJvG3iuz64WcF281lPeRGHMRJ8mCjw==
Received: (qmail 2112875 invoked from network); 11 Jun 2026 14:27:07 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Jun 2026 14:27:07 +0200
X-UD-Smtp-Session: l3s3148p1@dxKCevlToKUujnvX
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Thierry Reding <treding@nvidia.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: i2c: i2c-mux-pinctrl: change maintainer
Date: Thu, 11 Jun 2026 14:26:24 +0200
Message-ID: <20260611122704.7559-2-wsa+renesas@sang-engineering.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310438-lists,devicetree=lfdr.de,renesas];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[sang-engineering.com];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-i2c@vger.kernel.org,m:treding@nvidia.com,m:wsa+renesas@sang-engineering.com,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74E2B671D71

The YAML conversion added me as maintainer but I can't recall being
asked nor do I want to maintain it. Thierry has created the YAML file
and works for the company which contributed the driver.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

@Thierry: are you okay with this change?

 Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml
index 2e3d555eb96c..f7502da71909 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Pinctrl-based I2C Bus Mux
 
 maintainers:
-  - Wolfram Sang <wsa@kernel.org>
+  - Thierry Reding <treding@nvidia.com>
 
 description: |
   This binding describes an I2C bus multiplexer that uses pin multiplexing to route the I2C
-- 
2.51.0


