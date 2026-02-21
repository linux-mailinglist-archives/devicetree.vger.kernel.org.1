Return-Path: <devicetree+bounces-267122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PCvfJMT3mWmSXgMAu9opvQ
	(envelope-from <devicetree+bounces-267122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 19:21:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E03A716D7C1
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 19:21:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 219FC3040468
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 18:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1462DCC04;
	Sat, 21 Feb 2026 18:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iHRPjXls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117691CF7D5
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 18:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771698113; cv=none; b=KrwYmsHB2/BXJ6xwfjmj5Fst5HChQRNchfodEeIO9H0hNN2lMIkzTYIosXdEFvFFayJc1YyV/YfV+K/++lVmdhLPE2KmAVnkkKplntUoA8p/8FRSkjRMc1BY80TgTFLzk5OurnXtoNx2iQpaBxwPci6et1NF9met6KbqerymAqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771698113; c=relaxed/simple;
	bh=nRZQBWcjkvjCGEu90e7FQl6OWRx3sEh8rBl+DhVVEQQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=A5POxfx62IM+pG0BPFjEsFF19spRFv+pSaHm5NBeZidHdcOVeAUIbm9h4UEaiXcq6kQcJO1wQQ1It4mUDaArngIq5sjmntCRf7fNBSxYAia+HJuJFpxWKoVIR3RtHZW7YBXWNZaUHetEpyFDHieNTKl/WMyxJmWUcHJMqYYlXc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iHRPjXls; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-483abed83b6so3077295e9.0
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 10:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771698110; x=1772302910; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VYyZyvSI/uogoO1M5S4jWlG83eCRLvK0XsODRTpSy/A=;
        b=iHRPjXlsxq/bs9x35hbVaV8YwwagjxwpNVItpJYRYGsFXcH57kB2JbLkRA+ssL4SYn
         9Vff26yMbyOBmT68tLz3i1C3Vew8Kz1y6o6yo4f1JLQ0Q2Ybk0863q89HltNgqzhEY0X
         fHR6ucZ7rXiW6d/fqqJ055aJ3u573AEcukKmuA/7Huriv2gqJ9EyKPDdOUe3H7YkLomP
         302DSwZZ+voXIWFeVd3oLrlL6mM/f1rdHv9JKqn6GliCrzmuGX2C4QcROSpKlu63vkx9
         W8aEHpX8AhPZ5ZLemV9bdhxa66tO77+Gb8HGc+1KGXf0AkvyEk9hI8MZyd16yEulKgY/
         YOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771698110; x=1772302910;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYyZyvSI/uogoO1M5S4jWlG83eCRLvK0XsODRTpSy/A=;
        b=Vre83HdyvuzEb8BWWCAuMF4Kx8UIax+BTDjgA3cNvKlPV9vovVe8bVD7fegIWaJR2C
         cv5ay5LqUOTvNgLo7paJkNdWtj3veK70/iIkcCwkfo5dS+R/yjcLBPMegt/XIRQuNiyk
         dJFAzItOPG4b/1JtpCphc4dzvSx/62tY33ZihvoCGViUx7s8+Pn+ujvZrSO1RwOH64HI
         AYtPAAGgQJ/BQU7w9esA/1R4okgQp2RModbWbeutroNkKTCFq15JBLDJgSnRQZ7pX4tS
         GjHRKaASTGANfuULDk5rnxcLhoc58vMgz8cvbh9+cK3NMfKSKOqx8LipwDp8BwAUZLJu
         IpxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBxfMhFhe/X6Lf3IQgRXyYj02cdQ8f/mvJkWMtPEiAy3eq0anDZ5Ejd35YEro5g2I/QgbnvKY8X2Us@vger.kernel.org
X-Gm-Message-State: AOJu0YzCCH+owMesI76sj9K6iH0/3o5uLSLy9+jwS1Ue2Jth13Ae3psy
	IkbUCRkaeWAU+RvYWYoQB2xCp2Mfh0QJI9VzaQtoC3ZkGrb/Bz2lI+FNHVLFlQ==
X-Gm-Gg: AZuq6aIDvzScxpYIjMVMDGj1pPEqO6qRZi4iEMB+VUaPh0JJXN+F1P0M53f74nQWbPm
	WqzZFyeqBlOGA7G7zP7F5bwW9w0xM16CXHi8WLTrdHqSj4mgKXRGPofPdO3UuLBC1/pYsbCfIjz
	W7kBHpR8oM0qI+jytRpz1VEFHHAEY5fYtlggJ5NdnYoWniBEl3qpfkBbK5QRwtFR73ls41MyKtz
	i511ICjcHtSdvPvK6HjRHyUEW0P08v+KWeXg3dd9GviDGpqOXrauQIbMu/ByYaB88yRjYEYshQP
	OY30rIbXXJa6mfnkZkT3qd5xKnR1b4Z8zklJgADjEOJZ1A0VATaRmCLpiJJ/SOcJjZcMJIX11AO
	EfLz2T7IABUC+GICtz6ejbADLrEYa57dl/WmSi2BXZfGwBKjgd9Tf62N+YeZU8x4f4WFGN//1fX
	UZSvak6iq+ia1XRfKzb+6LgWPDMjRLCrKsVqjMZrlY33SSfb+Ur200Qw==
X-Received: by 2002:a05:600c:8a16:10b0:47e:e4ff:e2ac with SMTP id 5b1f17b1804b1-483a9603c2dmr38955185e9.33.1771698110350;
        Sat, 21 Feb 2026 10:21:50 -0800 (PST)
Received: from [192.168.20.124] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483a9b75e51sm71300135e9.5.2026.02.21.10.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 10:21:49 -0800 (PST)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Sat, 21 Feb 2026 19:21:34 +0100
Subject: [PATCH] dt-bindings: firmware: cznic,turris-mox-rwtm: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260221-mox-rwtm-yaml-v1-1-25dec4a0228b@gmail.com>
X-B4-Tracking: v=1; b=H4sIAK33mWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyND3dz8Ct2i8pJc3crE3Bzd5OSUNJNUs1QLM0NLJaCegqLUtMwKsHn
 RsbW1AHsm55ZfAAAA
X-Change-ID: 20260221-mox-rwtm-yaml-ccdf4e6e8619
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,bootlin.com,gmail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267122-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E03A716D7C1
X-Rspamd-Action: no action

Convert the Turris Mox rWTM firmware binding to YAML format. Both the
compatibles and the examples were adjusted to match with the ones used
by the existing device trees to avoid new dtb check warnings.

Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
 .../bindings/firmware/cznic,turris-mox-rwtm.txt    | 19 ----------
 .../bindings/firmware/cznic,turris-mox-rwtm.yaml   | 44 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 3 files changed, 45 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt b/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
deleted file mode 100644
index 338169dea7bbb69cf005d964d20d69fdb9b3c7a8..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Turris Mox rWTM firmware driver
-
-Required properties:
- - compatible		: Should be "cznic,turris-mox-rwtm"
- - mboxes		: Must contain a reference to associated mailbox
-
-This device tree node should be used on Turris Mox, or potentially another A3700
-compatible device running the Mox's rWTM firmware in the secure processor (for
-example it is possible to flash this firmware into EspressoBin).
-
-Example:
-
-	firmware {
-		turris-mox-rwtm {
-			compatible = "cznic,turris-mox-rwtm";
-			mboxes = <&rwtm 0>;
-			status = "okay";
-		};
-	};
diff --git a/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml b/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..2feb11103653f841b2456286b666bf523bd02e1e
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/cznic,turris-mox-rwtm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Turris Mox rWTM firmware interface
+
+maintainers:
+  - Marek Behún <kabel@kernel.org>
+
+description: |
+  This device tree node should be used on Turris Mox, or potentially
+  another A3700 compatible device running the Mox's rWTM firmware in
+  the secure processor (for example it is possible to flash this
+  firmware into EspressoBin).
+
+properties:
+  compatible:
+    oneOf:
+      - const: marvell,armada-3700-rwtm-firmware
+
+      - items:
+        - const: marvell,armada-3700-rwtm-firmware
+        - const: cznic,turris-mox-rwtm
+
+  mboxes:
+    description: Reference to the associated mailbox.
+    maxItems: 1
+
+required:
+  - compatible
+  - mboxes
+
+additionalProperties: false
+
+examples:
+  - |
+    armada-3700-rwtm {
+        compatible = "marvell,armada-3700-rwtm-firmware";
+        mboxes = <&rwtm 0>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index e087673237636268346979ddc270f8cf0905c722..43ec3489898e3bd5c79924670081d4eb397e2729 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2713,7 +2713,7 @@ F:	Documentation/ABI/testing/sysfs-bus-i2c-devices-turris-omnia-mcu
 F:	Documentation/ABI/testing/sysfs-bus-moxtet-devices
 F:	Documentation/ABI/testing/sysfs-firmware-turris-mox-rwtm
 F:	Documentation/devicetree/bindings/bus/cznic,moxtet.yaml
-F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
+F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml
 F:	Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml
 F:	Documentation/devicetree/bindings/leds/cznic,turris-omnia-leds.yaml

---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260221-mox-rwtm-yaml-ccdf4e6e8619

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


