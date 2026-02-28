Return-Path: <devicetree+bounces-269563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCd+ORvqomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:14:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3E41C32C3
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 259E930D0B09
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD82743E9CA;
	Sat, 28 Feb 2026 13:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RyIzCvaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEB533D515
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284401; cv=none; b=jvH7LRNziK/csiuUXbtIvQigH5Qa+hp/yV1z4MZmBPm5As5STuezmTPgSFWG+IVbLHuhRH2voh7i2ZoPCaijrY7zMnSInFbfr3740Q2gHIC7NLdGiMce65bsJDd27fyxOoobBk8AbVYu7tU4SYtU+JgFSsz5NFl+HrUHvgcd4WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284401; c=relaxed/simple;
	bh=vpPZDNWyaRiIeiEZ6dBWdMfSdrhuE1MFqlDWuu8feTg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=rFpbL+o1fIS8MqVkv4TIjf1fqGd1OZtHTRQrBkyYxglcfDkL7qjVP2u6IO+b2XLPx/m8gHYueY0o3fHzOxJc62L7NdZAmyKVPt7v7CsKlO5n9igIB0REiefNFA3zUnHvcek7vJv/dAIVnZ5CRGc/uqVnva6UCODfzLGVaMD/dtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RyIzCvaL; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2aadc18f230so20094395ad.3
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772284399; x=1772889199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e+OXOGPWktoMpqTrgoZHnGiYGl+B7CZqSTFyHXnY8iM=;
        b=RyIzCvaLJNGNV2dhAyqGOrb18eHaT5svJePZTIOMi3nXvYnjuRl0oJuG2nCTC1/YmE
         sH2CEWxGg26EQZ9WqOs9XfwV9Y9ILXE3c4Kp8rqWuN/Fl4freq347DUtRMBkzB0CWAxg
         xDyLFrYvi2smrw9FFBPelPhfkccdO94osGkJhDeX/znX/cOVST8KFo4KWzpVYffxmQOX
         D5mRdnjMP1G3G2Bunbc3+9rTX7XQlOkbERGp7Dl3v2yOruzoJ4ZvgvoTP6BQuIKJsgsu
         UVHIOjJOQUdGAphXbsnydWHn5PovJkJM5BM3eoV4pQ4CgbSRrNNQ9amGbOn9c2eGSIn5
         jESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284399; x=1772889199;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e+OXOGPWktoMpqTrgoZHnGiYGl+B7CZqSTFyHXnY8iM=;
        b=HGQDYWXJyvWdcxLJyu7qn7i6w1grZCedES+ypyQGIe3BAuAtnhoC8/rdboqNnkfvg0
         +Ouo+rXWgIxqmeyfEod+OKAgS5Iplbfj9KCUJWklpbutCiTuDAkL9rStuqWsl9FJyiOI
         WJRBdOuiA8ZClkeFyvcy+Lx3RJsKFWK6SwLAPHidd9TdTHhGUbl5qSvkM1elYqwgfzsM
         o0QV/dryhCvy1hjlpjx8fttxVV9N3uSTAUK77IGZeVfdw7WcFW2Uy9BEEJxXRv+sN9ot
         Th933IJiRBWabD9/VosDq/zxa265Ga7CYaA4yJ+IxcW2Bd7jqY2ARJgxqlIcUNypUJwe
         cEOQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2yXCs60g+T544XZPwgZTiPaQU+icDk4HP9RDt48sxjehHNvf0TkWFy99z9aOblI2gCt2HKN2P/tMr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt04Pxh4f9txDjdKwiQNeX6nA+N2D5quDp36Y0zk4P+AqoCk82
	Bo4KBDWN5GdSihqlmx0h9eIbUBwKJyQAKDBbkyGS18PCENoWkhd3PN7G
X-Gm-Gg: ATEYQzzyFD9NWoMgP+KO8Jv5Kp/FQhLrWFCU1GjOPtBfeeJjqqKRB0eV2Mj7DtqBajc
	pb0GWADRppedXBIQGSA6fJxVgzUIntfI1Du1woYSaQo8xej3KLlO0G2ZL7ky3xz/WekJpZW1T+Y
	2SwzJabLhxQGSlEC9IvAcYmG+zhKzBKT0TpT/PjFPiXQIKfaoMXSe6FL73vMrqf3HwzFw2vAxGB
	EtbqAEC3/KfZm3eqNyKkITMl5AOLdBSnVa6tsqRwrv4dCplGGig67MGJZvYmXxszEwy7Jxqe5JT
	dQNZ/1vO6EA5C3EjQ6BVUBdvK2WQ0WjNo1UO3iUeR75cSYjYTao3tGQJz1iWRHsrGFsbENKvcrL
	av7oED4PMMszDPG3rNeWrZ9FBhXhXcFWmFLc7cSRRo/GtTk/fmyL640VYHp+ftt2z5ndpvXDiB9
	GfoaL0FZucoqKG9hPga8LKJ5SA/vr6r4DyUeRiLsfG40pyuMSDUGJ0VmV8F+T2fxQvESHawyVXh
	rqj0OA48ZZKhHPc7OmEFUKDll+D7BBQNid/hjAY1dWdqJKe
X-Received: by 2002:a17:903:2b04:b0:2a9:62ce:1c12 with SMTP id d9443c01a7336-2ae2e4da12bmr73263415ad.53.1772284398824;
        Sat, 28 Feb 2026 05:13:18 -0800 (PST)
Received: from lorddaniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2405:201:31:d01f:38e8:e688:575f:115f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6f3436sm133656725ad.88.2026.02.28.05.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:13:18 -0800 (PST)
From: Piyush Patle <piyushpatle228@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: rtc: isl12026: convert to YAML schema
Date: Sat, 28 Feb 2026 18:43:11 +0530
Message-Id: <20260228131311.37169-1-piyushpatle228@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-269563-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,6f:email]
X-Rspamd-Queue-Id: 4B3E41C32C3
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


