Return-Path: <devicetree+bounces-286733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBLLFZ1c2mkU0wgAu9opvQ
	(envelope-from <devicetree+bounces-286733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:37:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A902E3E05E6
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8F15300C5A9
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 14:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121E038642A;
	Sat, 11 Apr 2026 14:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b="i8gdiMs6"
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.localdomain (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7421236DA10;
	Sat, 11 Apr 2026 14:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.81.229.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775918206; cv=none; b=kgVp7bcFt3Fn8eeFNIxl73oUE7/2kauXp3SxS/5akTo0fa6wBlwTNor8CxTrHQyJKG1SQ7hJcbWWdIfQa/AVfGWled4AGccyMv+CNjhY0lCJYWxIbPTVmgTklTIPmCp13PJH6Y6Aj99DgQocXJes6zH6AatlTXqlWl5gSKLy+Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775918206; c=relaxed/simple;
	bh=pFvZzJ+2JNqYzGkXOj7yghuqMYYsZ3ZA8LBIkJ02IUE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jq2Ax5IzEHjtIBMWIJMTKmjrxVMQqxZub0IX5dOgGr9aZ1yWUTxQulcE8nZ3cf/AyUdUlMWyJw4/x2RvEC/WtiVOhA632mkXVbh8xUWY0qkcpDqGntmW5zW5OCr1Wkm24AyAQ6jB++xnZ5V4jXOmji+y51YBVg3zkEjt9I1wf9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=i8gdiMs6; arc=none smtp.client-ip=77.81.229.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chaosmail.tech
Received: by chaosmail.localdomain (Postfix) with ESMTPSA id 70E251CC199;
	Sat, 11 Apr 2026 14:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1775918196;
	bh=FtGiuzbBUavxf6U1ObnTJRZNvgby5w8mIWpcdSCRg1c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=i8gdiMs6OirV0FgoRzPc6yf1cj1E4SqkRsX2+QnTzxkovWGCypUuFF8+BQVzHVDDQ
	 TC6qyWzVhmj+0MxaCECOzqVyq/B+eWz3HCEL4C9cFppemYML3H8re9rAJ785reIYpk
	 E+IMn8TMIAdIMEkfxyG+I+Avkhq7fgqUAv19YSuQ=
From: Sasha Finkelstein <k@chaosmail.tech>
Date: Sat, 11 Apr 2026 16:36:08 +0200
Subject: [PATCH 2/2] dt-bindings: Update Sasha Finkelstein's email address
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260411-mailmap-v1-2-5a519f7b00b5@chaosmail.tech>
References: <20260411-mailmap-v1-0-5a519f7b00b5@chaosmail.tech>
In-Reply-To: <20260411-mailmap-v1-0-5a519f7b00b5@chaosmail.tech>
To: Sasha Finkelstein <k@chaosmail.tech>, Janne Grunau <j@jannau.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sven Peter <sven@kernel.org>, 
 Neal Gompa <neal@gompa.dev>, asahi@lists.linux.dev
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775918195; l=5761;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=pFvZzJ+2JNqYzGkXOj7yghuqMYYsZ3ZA8LBIkJ02IUE=;
 b=PKhHPXjAYr92OwJv1HfI491wy7Rq9kUg4J4oHSojaFmvFMG5p4v2T8pMZNEiSkDeen/nhxq95
 t624Qwgt9RECOPpdKIl+dgGsGbG8c4KpwtGwOqPJkyTn+PwkJ2NgqQV
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Spamd-Result: default: False [4.34 / 15.00];
	SEM_URIBL_FRESH15(3.00)[chaosmail.tech:dkim,chaosmail.tech:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[chaosmail.tech,reject];
	TAGGED_FROM(0.00)[bounces-286733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[chaosmail.tech:+];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[chaosmail.tech:s=mail];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.821];
	FROM_NEQ_ENVFROM(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chaosmail.tech:dkim,chaosmail.tech:email,chaosmail.tech:mid]
X-Rspamd-Queue-Id: A902E3E05E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Change the bindings that list my address

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
 Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml    | 2 +-
 Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml         | 2 +-
 Documentation/devicetree/bindings/display/panel/apple,summit.yaml            | 2 +-
 Documentation/devicetree/bindings/gpu/apple,agx.yaml                         | 2 +-
 Documentation/devicetree/bindings/input/touchscreen/apple,z2-multitouch.yaml | 2 +-
 Documentation/devicetree/bindings/nvmem/apple,spmi-nvmem.yaml                | 2 +-
 Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml                    | 2 +-
 Documentation/devicetree/bindings/spmi/apple,spmi.yaml                       | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml b/Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml
index 5e6da66499a5..d7c822df8a94 100644
--- a/Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml
+++ b/Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Apple pre-DCP display controller MIPI interface
 
 maintainers:
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 description:
   The MIPI controller part of the pre-DCP Apple display controller
diff --git a/Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml b/Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml
index 102fb1804c0c..571fa32db2cf 100644
--- a/Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml
+++ b/Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Apple pre-DCP display controller
 
 maintainers:
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 description:
   A secondary display controller used to drive the "touchbar" on
diff --git a/Documentation/devicetree/bindings/display/panel/apple,summit.yaml b/Documentation/devicetree/bindings/display/panel/apple,summit.yaml
index f081755325e9..1c1ba59467f3 100644
--- a/Documentation/devicetree/bindings/display/panel/apple,summit.yaml
+++ b/Documentation/devicetree/bindings/display/panel/apple,summit.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Apple "Summit" display panel
 
 maintainers:
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 description:
   An OLED panel used as a touchbar on certain Apple laptops.
diff --git a/Documentation/devicetree/bindings/gpu/apple,agx.yaml b/Documentation/devicetree/bindings/gpu/apple,agx.yaml
index 05af942ad174..59989d8bd1cb 100644
--- a/Documentation/devicetree/bindings/gpu/apple,agx.yaml
+++ b/Documentation/devicetree/bindings/gpu/apple,agx.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Apple SoC GPU
 
 maintainers:
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/input/touchscreen/apple,z2-multitouch.yaml b/Documentation/devicetree/bindings/input/touchscreen/apple,z2-multitouch.yaml
index 402ca6bffd34..44158e89e818 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/apple,z2-multitouch.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/apple,z2-multitouch.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Apple touchscreens attached using the Z2 protocol
 
 maintainers:
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 description: A series of touschscreen controllers used in Apple products
 
diff --git a/Documentation/devicetree/bindings/nvmem/apple,spmi-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/apple,spmi-nvmem.yaml
index 80b5a6cdcec9..4ca75ed07a54 100644
--- a/Documentation/devicetree/bindings/nvmem/apple,spmi-nvmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/apple,spmi-nvmem.yaml
@@ -9,7 +9,7 @@ title: Apple SPMI NVMEM
 description: Exports a series of SPMI registers as NVMEM cells
 
 maintainers:
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 allOf:
   - $ref: nvmem.yaml#
diff --git a/Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml b/Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
index 04519b0c581d..d8f4f9ffe884 100644
--- a/Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
@@ -8,7 +8,7 @@ title: Apple FPWM controller
 
 maintainers:
   - asahi@lists.linux.dev
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 description: PWM controller used for keyboard backlight on ARM Macs
 
diff --git a/Documentation/devicetree/bindings/spmi/apple,spmi.yaml b/Documentation/devicetree/bindings/spmi/apple,spmi.yaml
index ba524f1eb704..3e5b14bc8c31 100644
--- a/Documentation/devicetree/bindings/spmi/apple,spmi.yaml
+++ b/Documentation/devicetree/bindings/spmi/apple,spmi.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Apple SPMI controller
 
 maintainers:
-  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+  - Sasha Finkelstein <k@chaosmail.tech>
 
 description: A SPMI controller present on most Apple SoCs
 

-- 
2.53.0


