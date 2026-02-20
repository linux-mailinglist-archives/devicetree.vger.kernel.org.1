Return-Path: <devicetree+bounces-267043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HMNIv2VmGmCJwMAu9opvQ
	(envelope-from <devicetree+bounces-267043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:12:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB81169A07
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C3445303EFD9
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A01A318EDC;
	Fri, 20 Feb 2026 17:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=abscue.de header.i=@abscue.de header.b="sBohaxPk"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5B53090DE;
	Fri, 20 Feb 2026 17:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771607540; cv=none; b=KgAq8wWXrOrjKa2uTEk8SrlmZe3uP9BXEc4DWErYjDJELFn7dM/BgwYFtrGJpEOPKiIqEKRYDBbyIu/ChVYF/AkDHHkttIiZOtHcagOi1ZhW7zfuQg7foR4yhGG6A3CjH/OcJU4nBTf9mQkZL59r0/YcpkNBQP4xuhOZh84mQeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771607540; c=relaxed/simple;
	bh=l9n78PrlERskAAFtJC7dsJynepAFJSeSY6cGQYixgEg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Iuy7V/cg3RAwpYSpQIe877+LT+/9q6HJiBLFXJcNO8nu1XQEX2CCMYeBT8lcgMQHIZWM/Q6v9lpNTlu6wclPNey5btJH0uB/4mVv/MgP8OvZuTrL75BFievZ1ajpVFVFGrZTDVBCVdeyAlgLgt5ej+3xfJ/EHwFHTAGl8riZFfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=fail (0-bit key) header.d=abscue.de header.i=@abscue.de header.b=sBohaxPk reason="key not found in DNS"; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdd4:c900:fc49:439e:37d7:68d])
	by srv01.abscue.de (Postfix) with ESMTPSA id 1EF591C6E34;
	Fri, 20 Feb 2026 18:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1771606965;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1Q2EbxLqZZlsx/ThvrFIhnR879lhgdAno9gLbL4IBbk=;
	b=sBohaxPkjmNVvRxFQ6wDH6Bvrww9ubw4wQnLSVmS6HjJfgleBoQH3l5EQHXtU7evAn9PKt
	DSjQDaZxfQKP0F/ugl3vs9NhnrV4vwp7XGeeb7UOe1VI8iESCtprKR35VdL1S7+DJyakK4
	o3FcOPyAW2ntaDIZITuZJHdJEQtM8ax52ynvyBJbaSpirxn1rjEv2oWK00PLOyuYAwAYBZ
	gAFdwAUQqpFJ3iEnAQxf/AZhElFZsfQ8/Sg8NEtmpNXFchtvrCJGwl1CjYz/TzUvHlJK/9
	mpGbkINALWX8hFzJXdUgiRpLSBIbW1tFktSxMZ14InBPC21IAyDG+LAYBQkb9A==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Fri, 20 Feb 2026 18:01:49 +0100
Subject: [PATCH 1/3] dt-bindings: regulator: Document Unisoc SC2730 PMIC
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260220-sc2730-regulators-v1-1-3f2bbc9ecf14@abscue.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267043-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	R_DKIM_PERMFAIL(0.00)[abscue.de:s=dkim];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[abscue.de:~];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.567];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,abscue.de:mid,abscue.de:email,devicetree.org:url]
X-Rspamd-Queue-Id: 2CB81169A07
X-Rspamd-Action: no action

Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
PMIC, used e.g. with the UMS512 and UMS9230 SoCs.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 .../bindings/regulator/sprd,sc2730-regulator.yaml  | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml
new file mode 100644
index 000000000000..36f5f4d338bb
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml
@@ -0,0 +1,51 @@
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
+properties:
+  compatible:
+    const: sprd,sc2730-regulator
+
+patternProperties:
+  "^DCDC_(CORE|CPU|GEN[0-1]|GPU|MEM|MEMQ|MODEM|SRAM)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^LDO_AVDD(12|18)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^LDO_VDD(18_DCXO|28)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^LDO_VDD(EMMCCORE|KPLED|LDO[0-2]|SD(CORE|IO)|SIM[0-2]|USB33|WCN|WIFIPA)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^LDO_VDDCAM(A0|A1|D0|D1|IO|MOT)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+  "^LDO_VDDRF(1V25|18)$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+...

-- 
2.51.0


