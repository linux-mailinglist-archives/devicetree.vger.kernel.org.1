Return-Path: <devicetree+bounces-308110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NgocEgmBJmqBXgIAu9opvQ
	(envelope-from <devicetree+bounces-308110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:44:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBC86542CD
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:44:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308110-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308110-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33FA2303D0B7
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEF73AFD0C;
	Mon,  8 Jun 2026 08:36:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-212.sinamail.sina.com.cn (r3-212.sinamail.sina.com.cn [202.108.3.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45103B27C7
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 08:36:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780907801; cv=none; b=cyApgORkH8eKiwTlXnJLMDGKKa+EyBRMM6zSY/boNisz1tnaFPRXHiuDZgeHG5Tn98P7hIfuPHBwCa75STsIsjBHxOsZwVGW6DIfj4RTxl+lJe4rj/aECZJ1Hod6btfzMyg940MjYT0mcxkGFX4bTbvIkzX5AVxkWEC5BRSEfFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780907801; c=relaxed/simple;
	bh=PWcx8/Dn+2xQh7F9PERadP/6V3dIclTt9+aSzlSjToc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=FH8uvVQkz/2+saP3xGdTXyt5rbbSfKSvWRsdQVxcRThnHTawLVBMarXPEXQDqpuX47Mz+voa4v9RFj2oAbgV0g9OTxhgIVWEEc3nHXBCXYcLqANKu1P1tgz/7c8pZ9MkIYpWt3+mVc7pIzRndEjmr/XHI2C/GzGlA5YmRlhaN4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.212
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A267EDF00000BB8; Mon, 8 Jun 2026 16:35:51 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 5B284E84CEFC4205A5584B854CE328A2
X-SMAIL-UIID: 5B284E84CEFC4205A5584B854CE328A2-20260608-163551
From: Michael Zhang <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v0 7/7] ASoC: dt-bindings: ES8389: Add members about HPF
Date: Mon,  8 Jun 2026 16:35:40 +0800
Message-Id: <20260608083540.12581-8-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260608083540.12581-1-zhangyi@everest-semi.com>
References: <20260608083540.12581-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308110-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,everest-semi.com:mid,everest-semi.com:from_mime,everest-semi.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8FBC86542CD

From: Zhang Yi <zhangyi@everest-semi.com>

Add members related to HPF

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.yaml         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
index 75ce0bc48904..eb4639f60f09 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8389.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -38,6 +38,22 @@ properties:
     description:
       Interface power supply.
 
+  everest,hpfl:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      the HPF value of ADCL.
+    minimum: 0x00
+    maximum: 0x0f
+    default: 0x0a
+
+  everest,hpfr:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      the HPF value of ADCR.
+    minimum: 0x00
+    maximum: 0x0f
+    default: 0x0a
+
 required:
   - compatible
   - reg
@@ -58,5 +74,7 @@ examples:
         #sound-dai-cells = <0>;
         vddd-supply = <&vdd3v3>;
         vdda-supply = <&vdd3v3>;
+        everest,hpfl = [0a];
+        everest,hpfr = [0a];
       };
     };
-- 
2.54.0.windows.1


