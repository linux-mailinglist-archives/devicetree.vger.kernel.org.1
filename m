Return-Path: <devicetree+bounces-266509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAcLL8EMlmlKZQIAu9opvQ
	(envelope-from <devicetree+bounces-266509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 20:02:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EB3158DAB
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 20:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CA2C73004D3B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A547C30DEC1;
	Wed, 18 Feb 2026 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YkQM8PB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767152FE56A
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 19:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771441343; cv=none; b=a8MpUkCqn1nUol1kLw7oOf2WNKbpjghUQuTlvO+1UPzqTK0qOfPjJDmxVtf6kwR7qMoVIXVnjyXwsTxScqO1S2KqpFEadfGRztnc2gX0cb6FeEZchbBFitMLPpgkNhq8UnBc79nVIYYq7U61Oy42KXCkECzOiWIZHhK+4PMFNy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771441343; c=relaxed/simple;
	bh=cm6d+Fg+VP3Rd5tjT1b8fJy5kUEu9F5lJGDT35qu9vI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=E8o50KJOKoU1xmKcl8a9PbUHvMVmXaXuoz/i7/QgG5gvstARw7hsAcZMj3VV176ZfjWQollP3l3/ClKVPIZ2kJko1VSnRVfJ2vkHQcPFC9rRXl7OHSC+tt2EuZDtkVIqTAlSuggm5punia2h2Qab3DXls2e7BhUCuTk79GsGlX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YkQM8PB4; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a9296b3926so758365ad.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771441342; x=1772046142; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f1dEATHF2WkVqMtvh8xVHN7g8sVFpJdMQjOLJjAqxBU=;
        b=YkQM8PB49x3+lzuVtYRf2HnGUDD8d8dMHrvV1QruwxHfsPdaG/NWAm652lls+tdHZ3
         AL58BlcltHJO9PnFG20BbK3cqUfUPVZE+OjNv1RwHVwlNCNULFM2tUq2GbCSq2VjSzXX
         0dm23LByXltx/MYjKmCXrL7bsW/nJ7pmrvN//6MbTW+abVy5JUnpp8vs2QQdvKQvdpTZ
         L0JJhQ/4zitV32Xo25znYj3t2XhzifA/UwW1xB3DogiIFSUWYNIgTcSGu7N0I/IQ10Rw
         dlM8QlL2kuvlkaqYYf+WMnrV4i8xA382XccetYPhmpgqbWq9teUizmc0cLzz0VbZMRdH
         sRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771441342; x=1772046142;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1dEATHF2WkVqMtvh8xVHN7g8sVFpJdMQjOLJjAqxBU=;
        b=Bf8bv0vcqBPpHMex4htZTnBptEql73RRB+rSswM8hsmepTZCeXVy+pui04nfGO8U1Z
         /wyYMfzerC89gKEVHRGNIKE5OSEZtPQus2I5YXop5hY0nYAeskFjZDX3r5m5Dxw4JWp2
         b01ocfcnkZhh4WBTdktxQvumNg4nykiymH55jb/2sSpNiVorF9NqRD48Adej9hFUzNKI
         CQESuP9fcvqlRSqzyHQbSpFj4dLBKOCc4f7usD2ArIlOoXBxF9zpJ3tniKDUaODVbX00
         ywgFeLg/mBLn8mQsOMqrqr0ZmbWvxPazHkR2bamMCSOHtlYkxjyYG561q5TJml8W2ek0
         yJdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgJMvBXMTThY7UHgKywWc0+6umFd0CH5l8tLVKX5NkhvJZd2iTvxdjAESWo9j66QDT/FfQExYy+8X0@vger.kernel.org
X-Gm-Message-State: AOJu0YzdaSpcDYoKhzASnMz/DaRDLEvjVQUXE9uFupzPxp+wQZqOaero
	aGHzCIzoZctLAJFEk7BmFx2sBQW/UP1nISd0sBB6JBONbDc1AOsMfJAb
X-Gm-Gg: AZuq6aJ+i6ETRlWIjhH8eCxQ9bgq5W8u+bo8AfVfqbgRaqySRmnKaYJJTbMOU1IXtxG
	2eL5HdHE8fx4j1MTW5mwFK1dU8qJz2sQ9nVyvhlmvp2aqKnS9fZDb31mqD+Lyl8Bw2YwEO7Hh4n
	UeEHqZsjAwNS6u8lbXzQ6jLUjIxh8rv0gIt1/okpoERg46Uhq0dCAy8nuzbUmP8hpfofmlCCCoo
	ZBbopY2BprmVHKd1P8Dcpequi7vQzXAJq2pO0I+gm6mgQeFKmI9Brg3rvrE1laWSqq1dAny/lWh
	zY+p1Yzr9nHYkZoM0QY6keKYLwasAztG6AK0WfH9K6RyXY1akMkYLHFiQmo1aIQSCtp3JdbzLWy
	uQTUN6RhEMGLuzpVXkls5itXLzR3bq4ehBr8nEfnD6MQNz83ZSJdQicQZsaE8F0Vs1v10Gi/Fm+
	ZIWYeoaDyDWrvLydapXt1YPvFZowEHl4JOZBHmhEbjw0MbbfP8k1Zudj41VayNsIT7LeYj4fg8V
	AIBGfR1Cw/X68FWuz0shrajTVRIJjUIQpxH2w==
X-Received: by 2002:a17:902:d486:b0:295:b46f:a6c2 with SMTP id d9443c01a7336-2ad50f4e4famr27163345ad.37.1771441341565;
        Wed, 18 Feb 2026 11:02:21 -0800 (PST)
Received: from lorddaniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2405:201:31:d01f:77a5:d08d:18e3:2f36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a713ac9sm137396275ad.26.2026.02.18.11.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 11:02:20 -0800 (PST)
From: Piyush Patle <piyushpatle228@gmail.com>
To: alexandre.belloni@bootlin.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: rtc: isl12026: convert to YAML schema
Date: Thu, 19 Feb 2026 00:32:13 +0530
Message-Id: <20260218190213.429892-1-piyushpatle228@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266509-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,6f:email]
X-Rspamd-Queue-Id: 64EB3158DAB
X-Rspamd-Action: no action

Convert the ISL12026 RTC binding to DT schema format.

The binding was previously documented in text format.
This converts it to YAML and enables dtbs_check validation.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
---
 .../bindings/rtc/isil,isl12026.yaml           | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/isil,isl12026.yaml

diff --git a/Documentation/devicetree/bindings/rtc/isil,isl12026.yaml b/Documentation/devicetree/bindings/rtc/isil,isl12026.yaml
new file mode 100644
index 000000000000..5f0ac73b1fde
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/isil,isl12026.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rtc/isil,isl12026.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intersil ISL12026 I2C RTC/EEPROM
+
+maintainers:
+  - Piyush Patle piyushpatle228@gmail.com
+
+description: |
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
+    description:
+      Value written to the PWR.BSW bit for proper device operation.
+
+  isil,pwr-sbib:
+    $ref: /schemas/types.yaml#/definitions/uint32
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


