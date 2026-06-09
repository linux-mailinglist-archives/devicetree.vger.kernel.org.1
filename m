Return-Path: <devicetree+bounces-308618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fGeEGWyDJ2q7yQIAu9opvQ
	(envelope-from <devicetree+bounces-308618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:07:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B035365BF94
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:07:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308618-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308618-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9550C301BCD7
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409B033FE36;
	Tue,  9 Jun 2026 03:06:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp153-182.sina.com.cn (smtp153-182.sina.com.cn [61.135.153.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB59336891
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 03:06:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780974412; cv=none; b=LEUqETQsrPZoZwO2sdtNs1TIsKL/wZF7No8NMUNP2uihEFDVmvgc6LEBeWwgnqO415rCrPHztO3fNn2R2/jp4KvT6YTzSVd/+Aw2ejL6eZwQMIarObRqYjq6BjAI1acTFUMtnESQqKudmEtWCabLnO7Yjps5fGo6C5QLx1IiezY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780974412; c=relaxed/simple;
	bh=mEAgPbspjroupkPkgrEhICZ9xaV855GXoWdTYDZ3dHE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=PTx09PSDnIJbUF/8v6C5J1VvfzGaGZ2w1vmLyg074eiB4c1NhRzx+cxhgTA+Nj36GEc90lakbbUpPOOWV75mdGx0wKqxlWt0yF7u5ILO/1EkOavQjlsjSxxLD2Gcvp1+kvRFaUi3J9wYC8TYa4hkg49CIo0X3t0YGf6dPYtcPtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=61.135.153.182
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A278331000011AE; Tue, 9 Jun 2026 11:06:29 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 91644FDEAD464A65A2EB1BD2E2454BAC
X-SMAIL-UIID: 91644FDEAD464A65A2EB1BD2E2454BAC-20260609-110629
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH 7/7] ASoC: dt-bindings: ES8389: Add members about HPF and clock
Date: Tue,  9 Jun 2026 11:06:23 +0800
Message-Id: <20260609030623.17404-8-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260609030623.17404-1-zhangyi@everest-semi.com>
References: <20260609030623.17404-1-zhangyi@everest-semi.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308618-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,everest-semi.com:email,everest-semi.com:mid,everest-semi.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B035365BF94

Add members related to HPF and mclk_source

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.yaml        | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
index 75ce0bc48..be92014c0 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8389.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -38,6 +38,27 @@ properties:
     description:
       Interface power supply.
 
+  everest,mclk-from-sclk:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Indicates that SCLK is used as the internal clock.
+
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
@@ -58,5 +79,7 @@ examples:
         #sound-dai-cells = <0>;
         vddd-supply = <&vdd3v3>;
         vdda-supply = <&vdd3v3>;
+        everest,hpfl = [0a];
+        everest,hpfr = [0a];
       };
     };
-- 
2.17.1


