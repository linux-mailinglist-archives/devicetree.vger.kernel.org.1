Return-Path: <devicetree+bounces-310721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pu8iCSu0K2qhCAQAu9opvQ
	(envelope-from <devicetree+bounces-310721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:24:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E066772EE
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:24:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NEXFC43Z;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310721-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310721-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A95043019DB9
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBEF33DB63F;
	Fri, 12 Jun 2026 07:23:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51330391E78
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:23:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249015; cv=none; b=fLLjxDIq1o5ifh6Z3kkvmHI5T5jc8k1ZHiXxtL2BpPgHLm4+Trp3p0f/9KyhhEELQGtyP6eHZB02oiCyHmplbcp1fBppECeNgNlh9X2huqU0InsK4ZfrDvgJk/Wr9cxd5HyI+4wVdpEy5dxzoTJ3SV8LXuHf79Uv7rcZoQCEkCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249015; c=relaxed/simple;
	bh=sni3Vfc+Eo1D4ZxHj4qZfEnv6EajkjCp775AqH7GGvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KxUSfnOoFsBe/M/2czbH2/9Usq93xItBzsRVytUHzsklN7qzCCTZ7zkUFzI5Bzx4aCtaPwd4AQyZlZGoOc1652qJGFkddIvDPFJlKt+FO9tXvIMWqGIX8WzmyH3TZO58CDYkCjl99YVSSgAY3UdpNc4qK4TccesSuZZb3UFc2Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NEXFC43Z; arc=none smtp.client-ip=209.85.128.51
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-490bc6a7958so15988415e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 00:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781249013; x=1781853813; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZzuJ81oGZTf4ZC4Q8t/Gu5IOv8ZAbUAnAwamVat/tXw=;
        b=NEXFC43Z/YFyD0gHFlYKPAd7/kor1ZTcOg7uYMzrijBj4SnWDFG71dvUO0+GALLiRR
         OptZxt/JNkscCieqoQooYL9owsrkoShOQ6Ik/ZsvNDZz/de2sFUHRKtMTnCzY9ez6ghq
         p9HywbVY7J8y6V/IAJN5ZaMsCrrXEERMPGL7f/edjViBabnhyHx4VovZWjJ07f515uEb
         T+V45XdotmKoFjIeoMRSTzI+85CxYpz6UDsbPcy34MQ294QJxLplfFqfkskfg9FzycAE
         zJubAEfCTA50q9efLsCef8NbNcohPvevoo/XysSy2fa6AlcBqcwh9gYqoYX8ho/4lCGL
         lIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781249013; x=1781853813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZzuJ81oGZTf4ZC4Q8t/Gu5IOv8ZAbUAnAwamVat/tXw=;
        b=Lu8nmWp62IdM/+nmQMCkyYiAFlLJX1IJyyC8SA/zKS0gAJmWKmJj7f8I3QwE0CYu/m
         BtqubQb2ItBFhndXd9DdIIMmbwtRf11AAB1qY2r4VqQrEq9/H2Lgg2yAk03+OI9wgstq
         7oZ/DvRBIvjaD6MMMgwJOjTrfRcEVRz2xzZu6eVaX0ZwlgCTctaxl+LgdbZ6apibimsX
         ZbI8zT5SZnrfJUUb1+rpkc5NSUoVWNjjhrPT84CX5SwM8JYr1N1FkI6LKGDSxJWAjofo
         W8ClnSk+FpfA+j9zJUDvos83KgIKkjl5nL8FRs4oV0BUo9eFyglHy43yjuuCg6XbQjK2
         +w0Q==
X-Forwarded-Encrypted: i=1; AFNElJ/qiS7ci8lG/i2QPxhRruqR+YtNmh2loB0D+X8IxySiQdBcFWpnDePfMdofDWTVh6djgt1fVVrr8x1P@vger.kernel.org
X-Gm-Message-State: AOJu0YxslerInnllItlcnZW8DCXTVpz8rcKNOBS3s1RiOb8gchqOVAyA
	rA/BJz9nsNlcrpqzTy44feOvHvi/66CnQ4CD0rVUazO79Tc7t6JKkYUD0ZcVXUSIwvE=
X-Gm-Gg: Acq92OHYLbT8IkClloFsGenMFxJkAOgobnMG79LIYEDmLtqz6ccX1bkr/q33rQ468lA
	1Uef//u2sW2jl5F/LkVbSVlDlaYOqG2Hy91i9A+OtmTqzbrDSNl2Dl2A2gG7ww+JJqPBt6GAOHF
	PUmuqXwJHPuYHdVmsmky+U05DPn1meKWF514B61sgUkGKGcF2vyffSwKDzXzg+cx/R5UbsqF3IX
	nknYoH/1Qx4lFccc39XSKvkBoVgya4uQwVZGMHE46c+a+9XQScDMHqub+h/+I3bgdIMCJ5io57J
	Czjrf2ZtjTFVQzVtxNZNXZv+aOAzZvlOlDWjuICBWrI1Ec6DRpr/8FPnGNvzAFSbRJs5edlVVbS
	NpuYdwhgtJ3CEPDdfKnQXZGrd2GxMBtmXvB9RsHnzpYJdUNYvPkFEV9OCkENbLTz8O9nBlOtuYF
	9GY1TSsF38xDQoaaldU2S+jfabOWhcJD0lUudl/SM=
X-Received: by 2002:a05:600d:8446:20b0:490:c1cb:48f4 with SMTP id 5b1f17b1804b1-490ec4d77afmr8812475e9.12.1781249012588;
        Fri, 12 Jun 2026 00:23:32 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a54:e741:3a5a:3245:d3dc:4b5d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490ea963cf8sm28715245e9.2.2026.06.12.00.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:23:32 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/9] dt-bindings: input: microchip,cap11xx: Update datasheet URL and LED reg range
Date: Fri, 12 Jun 2026 15:22:09 +0800
Message-ID: <20260612072237.1177304-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260612072237.1177304-1-jerrysteve1101@gmail.com>
References: <20260612072237.1177304-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-310721-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jerrysteve1101@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,microchip.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 41E066772EE

- Add datasheet links for all supported CAP11xx variants.
- Update LED node regex and replace enum constraints with minimum/maximum
  for LED reg ranges in preparation for CAP1114 support.

CAP1114 has 11 LED channels. minimum/maximum constraints are easier to
maintain than long enum lists when expanding channel count later.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../bindings/input/microchip,cap11xx.yaml       | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
index 7ade03f1b32b..9578c7c206a2 100644
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
 
@@ -124,14 +133,16 @@ properties:
       The number of entries must correspond to the number of channels.
 
 patternProperties:
-  "^led@[0-7]$":
+  "^led@[0-9a-f]$":
     type: object
     description: CAP11xx LEDs
     $ref: /schemas/leds/common.yaml#
 
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


