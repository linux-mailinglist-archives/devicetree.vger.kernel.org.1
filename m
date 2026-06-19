Return-Path: <devicetree+bounces-313653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nwk0LmqTNGpsbwYAu9opvQ
	(envelope-from <devicetree+bounces-313653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 02:55:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BE13E6A3747
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 02:55:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="lIUt2vA/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313653-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313653-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AAD0230CEA36
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 00:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1177243951;
	Fri, 19 Jun 2026 00:33:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D64239E60
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 00:33:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781829201; cv=none; b=XRy2zSa4DC32DQjucPcB2+qZH7gUSQAL09d+lo8clYa4YLWwBLj0sDfW4I4494zRDaOgNY+h2kxAwZLyZgQgl44QX31358ox0cDG9+1bdblqOXf9ow21nuA8dBI7YU34QAksPF36rnxSA8OOTMTGg15xb2tMUjjfQoayUnoUGAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781829201; c=relaxed/simple;
	bh=+o1IWm3ogx4anjm8wKaVkDQQRpMYjTWor6stuR4Q8HE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lF/0attACf9wkZ1oVRvgSNKbJLDFydKkL5fyvIAc1svXUY8zLJEtgIdo/ty/BX3gC1Uj2S5a+UsEtjq6vlLLsaFfRZj7sqlNcK32wgidEAYiLTU/ygE0spso9LQu86910hrq5oixz0KDla39bNrk1DUqBnlgfPud7kBUhinBt4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lIUt2vA/; arc=none smtp.client-ip=209.85.221.178
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-59b074ec7ceso614797e0c.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 17:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781829199; x=1782433999; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K1PpCHW3MF9RlXP4kf1MhsbG+5YRxmne5CpCTsQxScI=;
        b=lIUt2vA/KxIKD9jIikK/TXeOxBOgUk2/3IirfOcSni8fHKce1XhFzrhJyMwPRuqhP6
         MjRkD5UnDrOggbt1h64pu9ODQo8nsIA+3Qtc1anA/kMTzLVy1/iAhsviidiNSCTzNYRy
         ud536oR8Wsjs9yJrXDB6wnFnZ73xDEb8herIjJk9cNIpR1TT9lI65CYqW+udNArv1utu
         iU131MHTP5PWzFkMMQqzxqNS29dVg9iVfBoC4pvy28+Vdnbja5XHaJcwcKRRDVp0SmlT
         qXUBiUoCIrOpCSqAnkyd5mwtSHacVCxzVEqKcrKX6oNh3P4rO5xn3TM//+S8KsqxPInZ
         vgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781829199; x=1782433999;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K1PpCHW3MF9RlXP4kf1MhsbG+5YRxmne5CpCTsQxScI=;
        b=lPVEHTJaBXzh2adfaPnshqmCxPZXbEu5XerX6vBLf6kYqPWChZRiMPzKONEW1iICFi
         H9ns2vmx2bCupwQ3WBM34cI9Ofyvu6KAqDk8lmEbbn6qz9cMI7zhA3ASUNPozfsp+UMy
         Tq/Xh8wj5nZH1kkaz2TwuRdffXYyCkjbH4ieqsAgAVdx7e5ICFzdPp5MFd/kKvfAG6TB
         J/8IiI+BA8r+TJ0Ata68peigzCxuoUbCVYqwATUQK7UlCql2EE88XmyKqd0w53p0dxZn
         k+BTSypiBJRGh3Rw+sDRLILwVBUqdOP8/p5ds1gXr/sS8RfPyrLXX3d3QcGu+xV9QarG
         iQhg==
X-Forwarded-Encrypted: i=1; AFNElJ+gkTv2JodONIxLZFIuf3snKNkfIBSLhkeuGd8rT5S30SlP5OEl/7oZbTLz4jSJWJjKzbGnTL4/dIZf@vger.kernel.org
X-Gm-Message-State: AOJu0YzuBCO5iy5zICYbab+bLxCDkZHymi+Yf1856tGUtEOZVazmFW9g
	U/xy2Z1uHjuWhFAEL+nkiRJeFkRyxYohgeN+ae0QKyltmmPzBnL2pOc+VBGXLQ==
X-Gm-Gg: AfdE7cnR3KGQCzy7b37wExJJx3WbBW5xH36toyYvu/koj8W6LUHKzCm1CsVRF1xXEOD
	1leexs6WTFhBIqfCW/PhtePNhNVPTO1Bz+/U3UyIy8QWbtDCl9pdIuAflrhE1/h+XzpHL/6kHVD
	gkZt2a8Mf1wCBsuvEZU2oJSxsfzNqzqxTImq3vzS04DmELWF20Cps61cVAphCj4roEvJ07X5WED
	tK+oUDxEqagGe79hxRpQrEo9RKkoSDiMJfBOxod5xqJ2xR60U9L2a28xfpxeLKh8Khhnnz9JJT+
	5hGgBj6KJUehurS2NUtSSpxlo+w6kahWrd3X384cLeXvx14jxkK4FbYQO3Va6CjCnGtRKrrWKrP
	2/YpEnknhQEITtnA/5tG6pFZj/YaqMiXpNB5dmxeabiaLjCwgx6KZrNVb6jrNFiZWYQuBapyVse
	yhuq2CdZA1M9IPVOwoEZSdUoEcKQ==
X-Received: by 2002:a05:6122:6606:b0:56c:d34e:bb1a with SMTP id 71dfb90a1353d-5bbee61a891mr264303e0c.4.1781829199079;
        Thu, 18 Jun 2026 17:33:19 -0700 (PDT)
Received: from [192.168.100.222] ([2800:bf0:177:563:8f3c:3421:b12:7a09])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bbea36b5e6sm861581e0c.9.2026.06.18.17.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 17:33:18 -0700 (PDT)
From: Kurt Borja <kuurtb@gmail.com>
Date: Thu, 18 Jun 2026 19:33:02 -0500
Subject: [PATCH RFC 2/3] dt-bindings: iio: adc: Add excitation current
 sources properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260618-new-channel-props-v1-2-963c1b5cf40a@gmail.com>
References: <20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com>
In-Reply-To: <20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Kurt Borja <kuurtb@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1814; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=+o1IWm3ogx4anjm8wKaVkDQQRpMYjTWor6stuR4Q8HE=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDFkmfZ5nf3P8NpKe+mmbbtfT917PHZn3GSgm150KX5Vrq
 7j1r3NdRykLgxgXg6yYIkt7wqJvj6Ly3vodCL0PM4eVCWQIAxenAEwk8wIjwzOZG8vmqCd/mGrh
 vSktxmKFctCpHdo/ZIyWXW3dEbRg73VGhv5tOrUfW/zt7edsNGdXdHoT1nc5/pTiNvZ4Ad2oold
 ZnAA=
X-Developer-Key: i=kuurtb@gmail.com; a=openpgp;
 fpr=54D3BE170AEF777983C3C63B57E3B6585920A69A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[analog.com,kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-313653-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kuurtb@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE13E6A3747

Some ADCs incorporate current sources that provide excitation current to
resistive temperature devices (RTDs), thermistors diodes and other
resistive sensors that require constant current biasing.

The maxItems constraint of 16 is arbitrary but should be big enough for
most devices.

Signed-off-by: Kurt Borja <kuurtb@gmail.com>
---
 Documentation/devicetree/bindings/iio/adc/adc.yaml | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
index c74c2084fdb68c..106b1e317411d5 100644
--- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
@@ -83,6 +83,29 @@ properties:
       This array describes either a single reference source or a positive and
       negative reference sources.
 
+  excitation-channels:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 16
+    minItems: 1
+    description:
+      Excitation current sources provide current to resistive temperature
+      devices (RTDs), thermistors diodes and other resistive sensors that
+      require constant current biasing.
+
+      This array describes the mux configuration of the excitation current
+      sources.
+
+  excitation-current-microamp:
+    maxItems: 16
+    minItems: 1
+    description:
+      Excitation current sources provide current to resistive temperature
+      devices (RTDs), thermistors diodes and other resistive sensors that
+      require constant current biasing.
+
+      This array describes the current configuration of the excitation current
+      sources or the single matched current for all sources.
+
 anyOf:
   - oneOf:
       - required:

-- 
2.54.0


