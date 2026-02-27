Return-Path: <devicetree+bounces-269405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLN0MsbnoWldxAQAu9opvQ
	(envelope-from <devicetree+bounces-269405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:51:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C4D1BC333
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AC573067764
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC22C3A1E72;
	Fri, 27 Feb 2026 18:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XHhVqIe/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994593A1CF9
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 18:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772218286; cv=none; b=cg37AEZGXgYoUqLgWo+qe+oltmxx/FNnCJaWhuMW6aOOLjkNxhuN//fEFE1+OCB1jnxAqjSoGNHxnqwSVioBKWi7WU+0faOkVR1kmqYU5QqMriUWIuggDzRi62w1aqgr2wa879oT7+A9Fx1qu5vbPVNRSVUbmwr3kHzvFR/PPZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772218286; c=relaxed/simple;
	bh=Fw+ygcshW+Ez5JeznJZyRzggAtAKnuqwFiwXyH5mzYc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DGwBH5wduleQ3/BsrMwBTyp3o/NfC5DWGxRnaHjc8pUho4c9wBYcykVhUJyitaA3woquSE57kws8AkLs16RQneix/zIe8KVjmI9BCM58q7i7sen78rO3aJr5b2ap6bKOnsDOsABnM5tOQNpdAoGSlyaQo4bPTBJ+XdHY1PNsq8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XHhVqIe/; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2aaf9191da3so14586425ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772218285; x=1772823085; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b0jBv3hiCjWTiVXdoePC+mGdPZMAbToenOvNm0ORIlQ=;
        b=XHhVqIe/b8sYHaJW/Pssyx64cujjmrb83JEME/e2aT1aGmdxOw7Dxhc+gLp9EdXn67
         eK1+IKNopBPKRA4DtKKxE9/6+k+4ewXZPOt+qKjFb7huXXsUA6hZHTeuDjf6ZSrJ8R1C
         AR8nXbg9400dX5rBV2KqG4jNKQbg/tOgaVavleCqaIGpLeyZ19VPqR7R2UGVlHXHNGM6
         yYLCRb2G6tEmmKlBcjjjAE24kDCOysqrpuUiKmPjLEneiSMdd5kEAyNO+NOdjeA0Z51E
         aFh0Pm678hT8+kpf/X+119Vq3qkL+21NBOJqtLtuZ9YWlddhRI/k16c5ThKUO6H8MFBh
         ZGnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772218285; x=1772823085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b0jBv3hiCjWTiVXdoePC+mGdPZMAbToenOvNm0ORIlQ=;
        b=TSvlldgzuJY82iJkhx1Yyue8caSZIs3RlCT5DGfJkgotm2tit3PecbBtGnYYsDRh5i
         poOUmSZqnDN8OeCPMxRg+vchPRyJiX1I/PlBTvx8ghL+2Sh4IZ23JwZV2e9k/3oZMIKt
         frkQ32LucQkyrFcdlTOfEM6fHR+p+pzsgAoQsMoVL/DTVg/b3iny1w0NRgNrzVsFUwTY
         winI2GUfU34BZm7+7TK9co/3FUv0365HoN3CocHwgeEQzCmuUvRbUmt4uuDBw7bp/qlw
         iMSlyT3ai5NHH4iKpkDTJLuOSByYs9ny9OG4ydIwc/8MvFiKtl+IJ55KHhh1V3C0zI65
         g3dw==
X-Forwarded-Encrypted: i=1; AJvYcCW21SHeCuraDpiG+qu6sjufcURTAsRdizY0uf9Rotkd/zkCmhhOoNe2E03LHhBtCKDIQgoPKoEY4wjk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5ucjRyt9rBMjxIHuJBofNtMjYGL7vqRRFX7w9LzZ7aLt22YcU
	7Q87Uy0yaZGQ6HZPY5euNs4atApKPE47JRbRpLFoBgiym5HD0NM9pv1U
X-Gm-Gg: ATEYQzxEGUpxFa+5VH6X1W8gc0pXj0eg2+AHVzlxH1fOVHA8DGhPgVrBfVsn/RaasEB
	fwDnFe36TDakxYEvW4TsVzLZMO8yLDC3LVKWODq7B6wNNzVS2zFF70+eluUBdAN6GVekYP9rC7v
	J/E4Q5h7rRyNN4zeb149MT+lQfVEo1tNXRZa6mnhZNl2OzNigCyVDkfT8lyHhRVDSuZaknvF/ap
	rGu1mKEKIrOwux0Rqobe4Bbi7mxju5EhTiHzOrFZvRZDKpAGIrfYUxotUOJK09gll9AiyH+5TmC
	+mol3Om1aG3VQ11c3TAjpF7YEtLeS86WHQ1yiizFGiJORrzVZpjvh5RROn2OalgI20BcwVsAg8Z
	sqOLA/QvHzNI2qEqokrhByrFwKjB7bVeZG+YY8V7r5TwEk1Ix8C27j7kPdcZsvs8m5Y5EJUy/QN
	vFMpZvU+fzEN7I41AyKW0u6HFqastxJAo2IfA1GXJ+BG0lCB8/g9q0p3wW4RHL0JH87Xknc7XKe
	cVlE5KpowMyYzXZIpu/emFA/yzgUXgnJ8zAJcx5Tug4k0CZ
X-Received: by 2002:a17:902:d484:b0:2aa:e574:d7e8 with SMTP id d9443c01a7336-2ae2d14bb98mr34204495ad.0.1772218284845;
        Fri, 27 Feb 2026 10:51:24 -0800 (PST)
Received: from lorddaniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2405:201:31:d01f:5b61:73bd:9dd0:d660])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6a043dsm93368925ad.54.2026.02.27.10.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 10:51:24 -0800 (PST)
From: Piyush Patle <piyushpatle228@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: rtc: isl12026: convert to YAML schema
Date: Sat, 28 Feb 2026 00:21:15 +0530
Message-Id: <20260227185115.174997-1-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269405-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 27C4D1BC333
X-Rspamd-Action: no action

Convert the ISL12026 RTC binding from text format to YAML schema.
Remove the legacy text binding.

The new schema enables dtbs_check validation.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
---

Changes in v3:
- Removed unsupported select section

Changes in v2:
- Fixed dt_binding_check warnings
- Improved example formatting

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
---
 .../devicetree/bindings/rtc/isil,isl12026.txt | 28 ---------
 .../bindings/rtc/isil,isl12026.yaml           | 59 +++++++++++++++++++
 2 files changed, 59 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/isil,isl12026.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/isil,isl12026.yaml

diff --git a/Documentation/devicetree/bindings/rtc/isil,isl12026.txt b/Documentation/devicetree/bindings/rtc/isil,isl12026.txt
deleted file mode 100644
index 2e0be45193bb..000000000000
--- a/Documentation/devicetree/bindings/rtc/isil,isl12026.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-ISL12026 I2C RTC/EEPROM
-
-ISL12026 is an I2C RTC/EEPROM combination device.  The RTC and control
-registers respond at bus address 0x6f, and the EEPROM array responds
-at bus address 0x57.  The canonical "reg" value will be for the RTC portion.
-
-Required properties supported by the device:
-
- - "compatible": must be "isil,isl12026"
- - "reg": I2C bus address of the device (always 0x6f)
-
-Optional properties:
-
- - "isil,pwr-bsw": If present PWR.BSW bit must be set to the specified
-                   value for proper operation.
-
- - "isil,pwr-sbib": If present PWR.SBIB bit must be set to the specified
-                    value for proper operation.
-
-
-Example:
-
-	rtc@6f {
-		compatible = "isil,isl12026";
-		reg = <0x6f>;
-		isil,pwr-bsw = <0>;
-		isil,pwr-sbib = <1>;
-	}
diff --git a/Documentation/devicetree/bindings/rtc/isil,isl12026.yaml b/Documentation/devicetree/bindings/rtc/isil,isl12026.yaml
new file mode 100644
index 000000000000..152edce2ab41
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/isil,isl12026.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/isil,isl12026.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intersil ISL12026 I2C RTC/EEPROM
+
+maintainers:
+  - Piyush Patle <piyushpatle228@gmail.com>
+
+description:
+  The ISL12026 is a combination RTC and EEPROM device connected via I2C.
+  The RTC and control registers respond at address 0x6f, while the EEPROM
+  array responds at address 0x57. The "reg" property refers to the RTC
+  portion of the device.
+
+allOf:
+  - $ref: rtc.yaml#
+
+properties:
+  compatible:
+    const: isil,isl12026
+
+  reg:
+    maxItems: 1
+    description: I2C address of the RTC portion (must be 0x6f)
+
+  isil,pwr-bsw:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 0, 1 ]
+    description:
+      Value written to the PWR.BSW bit for proper device operation.
+
+  isil,pwr-sbib:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 0, 1 ]
+    description:
+      Value written to the PWR.SBIB bit for proper device operation.
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rtc@6f {
+            compatible = "isil,isl12026";
+            reg = <0x6f>;
+            isil,pwr-bsw = <0>;
+            isil,pwr-sbib = <1>;
+        };
+    };
-- 
2.34.1


