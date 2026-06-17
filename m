Return-Path: <devicetree+bounces-313063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DgcSIga7Mmrc4gUAu9opvQ
	(envelope-from <devicetree+bounces-313063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 17:19:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 215AC69AE6D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 17:19:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PUEY28jU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313063-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313063-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9D9C430A5876
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41AA14418F0;
	Wed, 17 Jun 2026 15:03:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E510B47ECDB
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 15:03:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781708628; cv=none; b=aimuLiSJpJ1TazEy+nxShhN92fiL0PM7UVTaCb91Hu233C1Ad6MvG9uz82xtBbiVielP3RwqRMj8ojOuEKz7Lh357P8UschdX7coqj/Xinkg64bMWMvjI7wvj6n02jZ/SyrYb9w5FQim9sjyl3kPKwANLJsmFJOVz5mpkK32ljI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781708628; c=relaxed/simple;
	bh=ByBa3DUMMmsAqDPHY9GN8y9L8dL3v17I0RL8QNLS9zs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nQ+6grpxmA/rqeqsurJwNd/P6xK48zEpP6ff9CgXg2Ut51Dk9HdCJg9jFz+sx6oG8E+Tmvi1rlhTAxjLPTLR/F98RveSazEbBMsNm+te/Cfsavj8mGjjq4J4D08t/HrX/usAHyKwOiFcWjarvdMJwOJiJ+f0KD643pWJxVATT+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PUEY28jU; arc=none smtp.client-ip=74.125.224.54
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-66043ecf6b3so5339412d50.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 08:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781708626; x=1782313426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QpqJy4+Omr/p2TKo1zUjalm52kTRBfgDV2CGB6DKgQk=;
        b=PUEY28jUuA78ufnOa6VcZZePvZObgRhg4SleQtNCx5LeTlq8RMvftkj6QCOxM4L3iS
         x2PXpq2fULb2oGtM5Ph5P34FD+Aph8cY12nvCRFavpBr5W+Mlp7xF3xZQRfOiGa9xQpM
         yiDl9BUx2v0/jv8nKIbpcOKRrLTChnn3CmfFjmWEZzAcjQA9cZqmLb4CIjr5OtphNSk4
         EJLlX12DvwkDB+JxXzVIx4vd1ywXdFIxe7on6XLR+X5W1K2RMoLH4+1m0gaX5+xl+pBa
         HfiDMQoAQP3sBF4eOpqRWfAZiG76C41nNSOp3pFhJg38UjIzXKDEFSPdAaapI1Y2G1An
         mc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781708626; x=1782313426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QpqJy4+Omr/p2TKo1zUjalm52kTRBfgDV2CGB6DKgQk=;
        b=jJvcwWcAES+twX0eOocrNXJQCyMayGOtEYat5lK/465CUc5jr/dp9VP2xjTsCXVYoI
         lMKypGyuItHUyMnaMfjes60Wu5KTIbvGtm+Tb9QSgZ+Mz+SGh713GXgadw3haBsW1uRE
         WDgEzpz8WKLnFTqGnmskIzoHV/ObhFLsOk0TkTx8UQJRwtCgqkHFXNaqfpGeWeiPG4iG
         eqqUdp6CPgh5cUwkec0vD3OfJCS2H8K9K77e/tDb2fh7zPdYHyu4NYcn+OwQk/lFubct
         f3NRTfGHYDP6p9AYHBv0CG/YwEimVvCepK+5jETv+XK+lWkxc61vE3f6GwHa1rg4wSUa
         J0tw==
X-Forwarded-Encrypted: i=1; AFNElJ9Wx3L3qaNzsd2lFkib3Bki4QbsRHO2k1SMcc5Fvte9uxOA3IiRaO/NPlC+Tighm3c7rSsMhUwnE0OK@vger.kernel.org
X-Gm-Message-State: AOJu0YwB9aDFgTECjZUNfNfvuct2Ofea04FcWHnaWCQrhtTrGSLHiW2y
	yS2SwUBuvRo5VlhjJs33MwsT6ifvuRy4li9w/dnE6mlS2g7AWrsFC40D
X-Gm-Gg: AfdE7clR0BTtXd2Et1xLCfsDYACBDSw8efLXDYnctsGhHX2qPE4Ime78xBWqBDfv1p1
	+tLuKZnaVACXIv1TGrCTePelBZLfpb459/+baPWVxSFq5uWXwJ77W9jHl8pvPFuO+Eqjw9WdTqk
	zGHlKRiw3KciC26MAJNkbQhQwL/ZewSEyPK9fP4KvPOAq59LCDABrc8i0L1wyO1Zfr2DCyw6Uyp
	wmn2Jw83ElwV3p5NdN9OoQpPI0PplFW0cWlrCCtY2RDxfNsqDzKTDuFa3BO8I2U4FuQwVAe6UW8
	22CCG3AAaOKwCDk0BHM5D4KtjGNXMTqUM+vsLlP/hixhj5FxYitQFS4pfafobx9XxYsdIw8XZ5D
	QNK4Hzjg+IZ1yLvwvVp3fNXbOx+SzKqNV0GM7X0iDiixWj8yEqdTpZu+iqnjhOWz9rthZsDdupk
	EmOmpHp9wevQ==
X-Received: by 2002:a05:690e:1c0d:b0:662:c2b3:8e93 with SMTP id 956f58d0204a3-662cd9f9e28mr3072886d50.60.1781708625919;
        Wed, 17 Jun 2026 08:03:45 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a52:c491::1002])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-662b976e47csm4387677d50.20.2026.06.17.08.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 08:03:45 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 03/10] dt-bindings: input: microchip,cap11xx: Update datasheet URL and LED reg range
Date: Wed, 17 Jun 2026 23:02:42 +0800
Message-ID: <20260617150318.753148-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260617150318.753148-1-jerrysteve1101@gmail.com>
References: <20260617150318.753148-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,microchip.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313063-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jerrysteve1101@gmail.com,m:conor.dooley@microchip.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 215AC69AE6D

- Add datasheet links for all supported CAP11xx variants.
- Update LED node regex and replace enum constraints with minimum/maximum
  for LED reg ranges in preparation for CAP1114 support.

CAP1114 has 11 LED channels. minimum/maximum constraints are easier to
maintain than long enum lists when expanding channel count later.

Drop unnecessary led unit-address pattern.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/input/microchip,cap11xx.yaml         | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
index 7ade03f1b32b..eabf06a1163e 100644
--- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
+++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
@@ -10,6 +10,15 @@ description: |
   The Microchip CAP1xxx Family of RightTouchTM multiple-channel capacitive
   touch controllers and LED drivers. The device communication via I2C only.
 
+  For more product information please see the links below:
+    CAP1106: https://ww1.microchip.com/downloads/en/DeviceDoc/00001624B.pdf
+    CAP1126: https://ww1.microchip.com/downloads/en/DeviceDoc/00001623B.pdf
+    CAP1188: https://ww1.microchip.com/downloads/en/DeviceDoc/00001620C.pdf
+    CAP1203: https://ww1.microchip.com/downloads/en/DeviceDoc/00001572B.pdf
+    CAP1206: https://ww1.microchip.com/downloads/en/DeviceDoc/00001567B.pdf
+    CAP1293: https://ww1.microchip.com/downloads/en/DeviceDoc/00001566B.pdf
+    CAP1298: https://ww1.microchip.com/downloads/en/DeviceDoc/00001571B.pdf
+
 maintainers:
   - Rob Herring <robh@kernel.org>
 
@@ -131,7 +140,9 @@ patternProperties:
 
     properties:
       reg:
-        enum: [0, 1, 2, 3, 4, 5, 6, 7]
+        description: LED channel number
+        minimum: 0
+        maximum: 7
 
       label: true
 
@@ -158,7 +169,7 @@ allOf:
               - microchip,cap1298
     then:
       patternProperties:
-        "^led@[0-7]$": false
+        "^led@": false
 
   - if:
       properties:
-- 
2.54.0


