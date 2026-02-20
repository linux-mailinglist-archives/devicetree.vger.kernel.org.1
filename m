Return-Path: <devicetree+bounces-267042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DrlxB/mVmGmCJwMAu9opvQ
	(envelope-from <devicetree+bounces-267042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:12:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4D41699F7
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:12:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CECFF302D501
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE8F314A78;
	Fri, 20 Feb 2026 17:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=abscue.de header.i=@abscue.de header.b="qIw1Khu5"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5302F3C26;
	Fri, 20 Feb 2026 17:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771607539; cv=none; b=EJkVfbSQFdb4lcZxjeb80gIoS0DmxS0SwqIa8EnFXKKwHIIgRhWM/05vqu8mKQknfwtIhZ7cEDCR7atNM4EoQ+9f4L9GDIZBv93FdhLVwg1DfU+NIKXG56dwIWNfzhn+t4MWooHjh1QOgFIvio8ES7aDJ7W7PJEzg1a4D0Oc2IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771607539; c=relaxed/simple;
	bh=RJFqoIAa1+OblD1pRdXqdTg0gcixX56vsq1qkDHJzyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K/TmMYZTK6V0GO0PAgS3gxt9AxqoOT5UfAM8Mr+Ea2DmGt7Iqi9V8UDgVsYBAbqds/tGnJHDgWO2U2nkxTta9zYsAjCovtWriyY8zVpg9zvwizMFaOUJ4xFj+ukNZ5r7pYujeWsLT4Voz+umLo77DM/POI26OrOFy6GFEfuWG4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=fail (0-bit key) header.d=abscue.de header.i=@abscue.de header.b=qIw1Khu5 reason="key not found in DNS"; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdd4:c900:fc49:439e:37d7:68d])
	by srv01.abscue.de (Postfix) with ESMTPSA id ADB031C6E35;
	Fri, 20 Feb 2026 18:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1771606971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pkowgPBRpxCHbF2C7DNbg/lISjQnMGiRDK9RgEjUL2I=;
	b=qIw1Khu5k032UtguxtAs139L0XU26gr0U0wDe/KnGxL2daVYvgRbekVLZZuDFbPyNFqhOS
	YUkv5id1ftXVzpTUsHRZ8yeMi9QS+OnTbUeiNfMVeLIaMvxa7abPyY1gLHUQyZV+nU7xEQ
	KH5rpfgmSCkiXvDKUDQugCb2mwQ0G12a21t4ldTIRbhTT+orJ0PRFmD/my2rhwl7ZYvzab
	znUElfXmEnTipqnyoOUJjux7iSxzdoOPw/se8M4XegTv8S7jWayFyuQB4AI9icOEU+SvO7
	1MyDR1GjdBRISFbCBbsP5b5QxZDI+dTesKEluFINOylxkadZVo+SgUiIRoMLJA==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Fri, 20 Feb 2026 18:01:50 +0100
Subject: [PATCH 2/3] dt-bindings: mfd: sprd,sc2731: Reference
 sprd,sc2730-regulator bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260220-sc2730-regulators-v1-2-3f2bbc9ecf14@abscue.de>
References: <20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de>
In-Reply-To: <20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267042-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	R_DKIM_PERMFAIL(0.00)[abscue.de:s=dkim];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[abscue.de:~];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.639];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,abscue.de:mid,abscue.de:email]
X-Rspamd-Queue-Id: 6D4D41699F7
X-Rspamd-Action: no action

The SC2730 PMIC provides a different set of regulators than SC2731 and
thus requires separate regulator bindings. Determine which bindings to
include based on the compatible string of the PMIC.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml b/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
index b023e1ef8d3c..e4ebb511bba1 100644
--- a/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
+++ b/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
@@ -99,6 +99,19 @@ required:
   - '#interrupt-cells'
   - '#size-cells'
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - sprd,sc2730
+    then:
+      properties:
+        regulators:
+          type: object
+          $ref: /schemas/regulator/sprd,sc2730-regulator.yaml#
+
 additionalProperties: false
 
 examples:

-- 
2.51.0


