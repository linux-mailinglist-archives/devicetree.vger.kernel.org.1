Return-Path: <devicetree+bounces-296612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMPACq8FBGoHCQIAu9opvQ
	(envelope-from <devicetree+bounces-296612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:01:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B9F52D643
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AB34307B396
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 05:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629BD39A077;
	Wed, 13 May 2026 05:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="IsIznn9B"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403B5367297;
	Wed, 13 May 2026 05:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778648452; cv=none; b=k9qfZuC+HGT6QTHG1nM2CdCG7jcUS8rD8TpATx4HFco6Zqt20qKXjtQ2F7VfKdMLIi9qtPQXPS6PMAmv7pSNu7hTNrJ9alR3J6PSeQlz5GVyu5HDQebr1C+FGUO8M1PNQ+7MXN3AgrJg1Foc/hcs+p+NX62pBRwRI0eeSYNqvn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778648452; c=relaxed/simple;
	bh=n7OmLK+G+swK8U8KTOiNlbnGO2KxE8y9tMCQrEw0lXA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uFh3dOUQraBeUpiaMDIfuojI4zkYlve5t/fsuRU17oOTb44gFtn27GcYETQpWHIWfdCmMKl+UgCIvXIzQj+gFCElPDyHwdvdDGo6SJG3lKj85T1H32zzKQ5ttWE/vR3BUmIG+2UmSmn1DaJ8gZSQDK4OyHwrF29rnrEZ1e7oqLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=IsIznn9B; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=71JsG6gVDXctQDIb7LaTsQ0pEfRTsF6nmijRQ5whL8E=; b=IsIznn9BC+baZ2a2HHvTmIF5bk
	UNTAkCwxlMLgNb3NR7tgPa1C+BC1WUD3iSiNW0gHIzrl77Dcu3NvZfLul1GxQnq88cB7c8mb/04+j
	8bKb+PBU7WVDAzawfXWh8toF33zDtoXDOnK+jxNiDpd7ZsGsffhlRKjNPSyWPu2EIDbwyCmPlERId
	kvinxnwUP7TPb/Y8Zx8VnkdfzvJN3ym0I6l//k8YtJ+LSrodgP7LvMmI5LI/n1/BvpIy1kQ0eHgN9
	oUzD4mt4v/64idvTOuH0U1/DfKhYGqd+plLnsInc7ZOHtyl/Dwh+nTaN+zVxXUDQyMQmLlaKX3tW6
	D4U9BPMA==;
Received: from [91.102.182.218] (helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1wN1i9-0000000EbQH-3j76;
	Wed, 13 May 2026 07:00:45 +0200
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Date: Wed, 13 May 2026 06:59:42 +0200
Subject: [PATCH v2 1/3] dt-bindings: iio: adc: Add GPADC for Allwinner A523
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-sunxi-a523-gpadc-v2-1-d5efde151dac@mmpsystems.pl>
References: <20260513-sunxi-a523-gpadc-v2-0-d5efde151dac@mmpsystems.pl>
In-Reply-To: <20260513-sunxi-a523-gpadc-v2-0-d5efde151dac@mmpsystems.pl>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Maksim Kiselev <bigunclemax@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Michal Piekos <michal.piekos@mmpsystems.pl>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778648397; l=1776;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=n7OmLK+G+swK8U8KTOiNlbnGO2KxE8y9tMCQrEw0lXA=;
 b=ELbVIHXde+q5YmXB8IE0eAW32UNyEM5FTi/D0b4yAJ9QlutFfLOBULwxdjrPewFo2uqDg2SZD
 2/sJxabLF/wB8peOJyGDiopjk42Msve++vCujiqfSK3PCpEfoxN+jUx
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Rspamd-Queue-Id: 83B9F52D643
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296612-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,sholland.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.292];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Add support for the GPADC for the Allwinner A523. It differs from the
D1/T113s/R329/T507 by having two clocks.

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
---
 .../iio/adc/allwinner,sun20i-d1-gpadc.yaml         | 32 +++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml b/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml
index da605a051b94..6467800d30e2 100644
--- a/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - allwinner,sun20i-d1-gpadc
+          - allwinner,sun55i-a523-gpadc
       - items:
           - enum:
               - allwinner,sun50i-h616-gpadc
@@ -29,7 +30,12 @@ properties:
     const: 0
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
 
   interrupts:
     maxItems: 1
@@ -40,6 +46,30 @@ properties:
   resets:
     maxItems: 1
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun55i-a523-gpadc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Bus clock
+            - description: Module clock
+        clock-names:
+          items:
+            - const: bus
+            - const: mod
+      required:
+        - clock-names
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names: false
+
 patternProperties:
   "^channel@[0-9a-f]+$":
     $ref: adc.yaml

-- 
2.43.0


