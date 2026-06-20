Return-Path: <devicetree+bounces-314000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eytaA1lVNmpf9gYAu9opvQ
	(envelope-from <devicetree+bounces-314000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 10:54:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 611ED6A8A14
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 10:54:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=abscue.de header.s=dkim header.b=LF4K4g0w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314000-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314000-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23FB330356F8
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 08:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D410349CDB;
	Sat, 20 Jun 2026 08:54:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E09234388C;
	Sat, 20 Jun 2026 08:54:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781945653; cv=none; b=fhHP1XQa/BR5Lq4/y6NgMZvQrDfkJ0T60ltOfQ39K4aYTSxHZNRU1PjsKisb9cfudL/HGk1CfKbq3xUOcpq8CJMHusPdL6857ZXlfKxRq9+9XYOhZywLzhR2DZzyW0HmRype7OKfMR5M9SKvJo/eowb+h/Ja9HnpGG2WwF52uzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781945653; c=relaxed/simple;
	bh=VmHPXkpXapnHavQ8VmdyeO9QqMrfcrncWaJhDMVYKy8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DexqCis7zYWd/kygUYuKDWtlvDwjivxfES3ewWDHGkBr81jApBENoU4ARTTIdv5cDi6HPLXofwzoqZpJGxy76f6Mok+uI6RuFFEQVVcd44vkVtbxRbjosXPAPQXfkpqRfuzwF3fk5XxcJMorD35sl+9Evq7o/HtPs0HWiSrY5u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=LF4K4g0w; arc=none smtp.client-ip=89.58.28.240
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdf0:7400:2cd7:7cb2:ecde:c017])
	by srv01.abscue.de (Postfix) with ESMTPSA id 9399E1C6F50;
	Sat, 20 Jun 2026 10:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1781945647;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2OHFwX/Tsh8l8Q/zMA4KLqp2lnKUbklU1kAVQ61I/h4=;
	b=LF4K4g0wJbkdpKX2ANRwhtpTtj8QuiT2MkOISoslymPG07mKVo6+6yFdXi3OpslQMbnu+1
	/HCq/gTAZw+Ex04d/xYWA9wAx0B1JVL+uoTL8jwXGzAgDTWp4CIYabmp303+ISAqeBqOOd
	etLeBcNHa5mOE3CW5MtGQp2iAF5yj7XFXb5fRgJrGAWHfwsBIo9F5xy8WEHH/wVSvMlENj
	xm9/R8LLzric4dmvQiUODEwfyVC2VtKdAEMu80wX+axA6uD0W/xMqlqYCPbPZbkHzDaOYa
	Tvz2avL+qJ+w3Dd3wbe0Z+6jaf+dXthtYDEFwf0P26Ga6cfm8XcjTLE92uh/GA==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Sat, 20 Jun 2026 10:54:00 +0200
Subject: [PATCH v6 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260620-sc2730-regulators-v6-1-bbd2db395231@abscue.de>
References: <20260620-sc2730-regulators-v6-0-bbd2db395231@abscue.de>
In-Reply-To: <20260620-sc2730-regulators-v6-0-bbd2db395231@abscue.de>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lee@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:otto.pflueger@abscue.de,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	FORGED_SENDER(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[abscue.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314000-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[abscue.de:dkim,abscue.de:email,abscue.de:mid,abscue.de:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 611ED6A8A14

Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
PMIC, used e.g. with the UMS512 and UMS9230 SoCs.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/regulator/sprd,sc2730-regulator.yaml  | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml
new file mode 100644
index 000000000000..ab945c46b08e
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/sprd,sc2730-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Unisoc SC2730 Power Management IC regulators
+
+maintainers:
+  - Otto Pflüger <otto.pflueger@abscue.de>
+
+patternProperties:
+  "^dcdc-(core|cpu|gen[0-1]|gpu|mem|memq|modem|sram)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^ldo-avdd(12|18)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^ldo-vdd(18-dcxo|28)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^ldo-vdd(emmccore|kpled|ldo[0-2]|sd(core|io)|sim[0-2]|usb33|wcn|wifipa)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^ldo-vddcam(a0|a1|d0|d1|io|mot)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^ldo-vddrf(1v25|18)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+additionalProperties: false
+...

-- 
2.51.0


