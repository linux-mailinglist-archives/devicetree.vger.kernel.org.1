Return-Path: <devicetree+bounces-299544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAUJJAY6C2qWEwUAu9opvQ
	(envelope-from <devicetree+bounces-299544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:10:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AF25709D9
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:10:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9ABE13045AB0
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EACC48AE2C;
	Mon, 18 May 2026 16:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b="o8m9YDW+"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2799477E32;
	Mon, 18 May 2026 16:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779120109; cv=none; b=M2cmqIu9TU6N/VBqqwKojVFqoEs/61IUqc+QX1E87DoM9zwM7YlYfAs5SVJm6ytK7FA9BTJIgTsjZfxPCmSSrlIUtLUl3KrH9ol4iMPib0UTJCCiVGugyiW4wdcvlZ6xFJwyNZMKsgu75yUCkeVlseZQCug+8gCpVGx45mU628g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779120109; c=relaxed/simple;
	bh=gRc2GPNbzy1gUcDmLd08j+IwLIBRwgJpCyQXZUphpEQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IOOzTwTKsnPyaYw0vp88SUo/XMENr1fyQ9rpgp5OIM3W+mWy9HHDAcHW1hzacfE0gP0lOLJpfHStOILPkSjakHw3ZuZLc7gJ69F+flvLI9md63OuMpZ5BM9c4K4WQwz/16B0x90HKcCPAgNXbpkKRmBCz4ribI14pDGhfxOawF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=o8m9YDW+; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cde7:e200:dd31:dcff:5f50:b86f])
	by srv01.abscue.de (Postfix) with ESMTPSA id 04FFA1C4BD2;
	Mon, 18 May 2026 18:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1779120090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7xpZgEWlsaRm/eVfAgUynhaXghfA2jV97U+XC4rnAhY=;
	b=o8m9YDW+O5tS0jiPUteZ1nDJ5BPF1gFBdNRkYqiP/B4BoG0zTfpuB2lk6bNZjp5SG9gYTn
	KVe96+UO4McK8dyZ+Q3ZS3V7DXemRIG0o0iofNXTmi38N9qdd/eTg69bTIjc7e9WFcCDZU
	/Wv8BMmvA8EyrlS7dmMLFPOLI2WpcPGPFXx/3AJx6xGJ4K5vmygcNYtwh8CcLX0+bX8vw9
	DWuICRNoHvkQF+z6ovqPXuYOa76ae+rKfbOj9K8/VgoxFpbtlSLq/USXdzD0WLRQYO4Wnf
	fmc5VIGGbonh0drBz2HQkqHUqeZBjDhsPkvT1cePD40YDBD8Q2FwwAAE+K74uw==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Mon, 18 May 2026 17:59:47 +0200
Subject: [PATCH v2 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260518-sc2730-regulators-v2-1-9a5b3a7b1e49@abscue.de>
References: <20260518-sc2730-regulators-v2-0-9a5b3a7b1e49@abscue.de>
In-Reply-To: <20260518-sc2730-regulators-v2-0-9a5b3a7b1e49@abscue.de>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299544-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,abscue.de:email,abscue.de:mid,abscue.de:dkim]
X-Rspamd-Queue-Id: 01AF25709D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
PMIC, used e.g. with the UMS512 and UMS9230 SoCs.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 .../bindings/regulator/sprd,sc2730-regulator.yaml  | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml
new file mode 100644
index 000000000000..1d460bf90fbd
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
+required:
+  - compatible
+
+additionalProperties: false
+...

-- 
2.51.0


