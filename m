Return-Path: <devicetree+bounces-319353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PCHYAOJXRmrDRAsAu9opvQ
	(envelope-from <devicetree+bounces-319353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:21:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF546F77E2
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:21:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chaosmail.tech header.s=mail header.b=VnTaLvsX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319353-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319353-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=chaosmail.tech;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7233321FDEE
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C56D47ECEB;
	Thu,  2 Jul 2026 12:06:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.tech (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5F647ECD9;
	Thu,  2 Jul 2026 12:06:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782994018; cv=none; b=WeeI07OGDVtPRbcOEvpgQX1qMyGbmNBgdK4Vw3ubs4biAFVPXSk5/aci6idX32N97IX98D5Ild1gYDas7XrfhQbc/oietSracL7D/Imvyd4rG8Rt7DI2rjzR3Ino2zBabMEqhIePH+sloIax3R7P+0rLpMqaULYmp0DD1i6K1sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782994018; c=relaxed/simple;
	bh=j5hsB19O/gI7PDghu/Bk2CyHrRFqcTcAEEQaPelKHJU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NGhPvLjuUBsYapqN4mElAPKDpMBDnpVoaKPUypWayQymYBrGZpY9siik4/FnrAFEr6dFJ9oNW4ZjuM08RRgZ/5wQHzapqvTJdYmwDh9i9y70tFA9ka20fjGy5r77Gtva27nqEUCAl6zML2LrzOPNjIUVtJ0C9MOzNfagDkx/OBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=VnTaLvsX; arc=none smtp.client-ip=77.81.229.115
Received: by chaosmail.tech (Postfix) id E1E821C99A5;
	Thu, 02 Jul 2026 12:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1782994006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GUWb/CcjSnuu/zRrdol4Fbo696rxkegMYGydXx0/eNo=;
	b=VnTaLvsXZc2mgE2EesD+PcyFIGgOdjzA4N9AfutsVKw5VIrm3Hb8JqN19r6+67+9qEu1IM
	SnImmgIZoL5F5dEWgmKBjgxIljycXDzATC8XRmfhYmGICD9lEa0cI3CpvrWuEnplj+P8D2
	c+5wohD/hcZjQ/Ix3VoKZYiCNmVoqgg=
From: Sasha Finkelstein <k@chaosmail.tech>
Date: Thu, 02 Jul 2026 14:06:26 +0200
Subject: [PATCH 1/3] dt-bindings: soc: apple: Add bindings for apple PMGR
 misc controls
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-pmgr-misc-v1-1-4f075a3a95c1@chaosmail.tech>
References: <20260702-pmgr-misc-v1-0-4f075a3a95c1@chaosmail.tech>
In-Reply-To: <20260702-pmgr-misc-v1-0-4f075a3a95c1@chaosmail.tech>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sasha Finkelstein <k@chaosmail.tech>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782994005; l=2562;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=j5hsB19O/gI7PDghu/Bk2CyHrRFqcTcAEEQaPelKHJU=;
 b=mzWNSVgT0DW64WULlkv9oCBP5q5bXWWfYFP0xYpkwqasNXDDkCs5aXz9Tq/ppm1J/a27ajoDY
 n8A3h/PyQwLAklkWWSjiYD/ljhr5+bY+/LoGtr3lDEFLMcfDnQVhS5O
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chaosmail.tech,reject];
	R_DKIM_ALLOW(-0.20)[chaosmail.tech:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319353-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:k@chaosmail.tech,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[chaosmail.tech:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,chaosmail.tech:dkim,chaosmail.tech:email,chaosmail.tech:mid,chaosmail.tech:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3EF546F77E2

Certain Apple SoCs include additional PMGR power states that are
controlled via a different "misc" control block. On existing SoCs, this
includes the fabric and memory controller state.

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
 Documentation/devicetree/bindings/soc/apple/apple,t6000-pmgr-misc.yaml | 45 +++++++++++++++++++++++++++++++++++++++++++++
 MAINTAINERS                                                            |  1 +
 2 files changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/apple/apple,t6000-pmgr-misc.yaml b/Documentation/devicetree/bindings/soc/apple/apple,t6000-pmgr-misc.yaml
new file mode 100644
index 000000000000..30abedc67fa4
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/apple/apple,t6000-pmgr-misc.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/apple/apple,t6000-pmgr-misc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Apple SoC PMGR Misc Power States
+
+maintainers:
+  - Sasha Finkelstein <k@chaosmail.tech>
+
+description: |
+  Certain Apple SoCs include additional PMGR power states that are controlled
+  via a different "misc" control block. On existing SoCs, this includes the
+  fabric and memory controller state.
+
+properties:
+  compatible:
+    enum:
+      - apple,t6000-pmgr-misc
+      - apple,t6020-pmgr-misc
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: fabric-ps
+      - const: dcs-ps
+
+required:
+  - compatible
+  - reg
+  - reg-names
+
+additionalProperties: false
+
+examples:
+  - |
+    pmgr_misc: power-management@8e20c000 {
+        compatible = "apple,t6000-pmgr-misc";
+        reg = <0x8e20c000 0x400>,
+              <0x8e20c800 0x400>;
+        reg-names = "fabric-ps", "dcs-ps";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 15011f5752a9..5a29bb86499f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2607,6 +2607,7 @@ F:	Documentation/devicetree/bindings/power/apple*
 F:	Documentation/devicetree/bindings/power/reset/apple,smc-reboot.yaml
 F:	Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
 F:	Documentation/devicetree/bindings/rtc/apple,smc-rtc.yaml
+F:	Documentation/devicetree/bindings/soc/apple/apple,t6000-pmgr-misc.yaml
 F:	Documentation/devicetree/bindings/spi/apple,spi.yaml
 F:	Documentation/devicetree/bindings/spmi/apple,spmi.yaml
 F:	Documentation/devicetree/bindings/usb/apple,dwc3.yaml

-- 
2.55.0


