Return-Path: <devicetree+bounces-275852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOEaGRort2kLNQEAu9opvQ
	(envelope-from <devicetree+bounces-275852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 22:56:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB04292C2F
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 22:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3554F30790BC
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81F3437CD4B;
	Sun, 15 Mar 2026 21:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k06V33/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A55737CD25
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 21:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773611697; cv=none; b=d8IEfD53iWUnuIXrnwHakeaTOqIgsZKzV0P7HsKLKoi0gs82pQtYL360yEpO/QMU4lLeaheNHbOHlta5vG7RlYW35FzNuxNiff8xvxdm167bnii21xkwf2Vk1tWwZ0DsG1pSUpm116k8JEuukDxMYg7Yf61FRNGe9Y+t2x72SDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773611697; c=relaxed/simple;
	bh=ZHyFZQHqWgam1NdfpOD11Poa3CjAieCq6kZVddSJ+8A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=If+3SnghIEO+XH+pfs7Zm1wooHb79LqV7tw8nd6QId8tYI2UDvJ/jxaoG7iyEHMk/lif6a907CqQT255la7qI2NqA3S6DOjWxF2k/DKq3Nh70Ghp/iDLatIMyUx7A5OwBalG4oknoGXrL+5Xin4oZNGLsar6x2a3wvDL3/qTH2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k06V33/7; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-82a072db915so3334080b3a.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 14:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773611696; x=1774216496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r1/aL+GcrcXe4rkRjHz6Qdgy5d873vnDywLVzNx1zBs=;
        b=k06V33/7CHwvSPwlT03eNcysWnq2+pZMw0VortYlR/8/X+pjNX51YMBxSXlzFo2Qev
         FiDKqIPSie+MX+K6roA/yQT4RgrzXe9wixJdt0qsadywFOEK0PkV3SR5wKq7fk98XC1n
         mhSXJ0bprs5wFa6W8JMLAByLWeNfZWO3x+Ojvyfe173XTFviqFDxYDDMblRQH0Mavs9R
         ayTRsuq+7bHwXunBj14/sfJKg389TkQPx4fSScJo04CsqiSdPmnf0Y8x1+rwlL2CFUC9
         ro1kclq43fHjDZjSzwFVP+MvLdM2fuWE7J2r2jEbxMQ5lE1gzpkZ+VB274HG5DZGxNd0
         9lOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773611696; x=1774216496;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1/aL+GcrcXe4rkRjHz6Qdgy5d873vnDywLVzNx1zBs=;
        b=WESVDxnQy98aaLWL8dejc6Em5bRdsxHNCP7MNsG/4BUHMA9Zfvb7RKcGr9DH8WToGW
         4G9s/zTIL5JKSVPgS2fIczkafIOr5z8cCeaSl/aPNycuotOMOHzbK2Um4zUXGB8I2sjK
         yY2ROg+t21Ph1n7O1pf3xittOWdgFZYT5IEas5s0lPBtC8LHH6GAWIUVg5MGV6fmRGZz
         YDZmGhMQLQHz3eUX0nIDRsD/tlyz37izc/w1mT1ixRphz5AmjIlOAn9LU9eySrAjhD5n
         8t+OOUa7cllOfGx3+UTI/UuNq3dhLdQBUngrDsk53OPGDrQJHlSs0mT+KXEaqbt9ITZM
         yZmA==
X-Forwarded-Encrypted: i=1; AJvYcCUN47IylYQUZBKhSaz8gRKDYxymXjjLNi/MCDzUvJTrKGnyM1vWJnRsDVPM41T2ATPrNKpgHhfSaciI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1+LP9AiUmC/47vWAqtOSF3pl09kGlF5tV16ObfCqFs3GPp68D
	BDLpBmjVxnwOCJSZQy671W0UBXs/nPTPNIEtS23BrbQhsOrfR1ezmQjT
X-Gm-Gg: ATEYQzxNiAe9Rgkh88Yun33XHoBeN9VCP0rDQj+I1cYOp0i6+h00QVY6UNvUiM1Jhf3
	sDR0zpO/Zak6Wykqy8htEmWdmX0Q5h2+PeZbElq9U4V/xejj8buuuzv8aBevshupKmO2HA3zXxT
	lbM6J3TB6twzENwWjTfS8xjR2uopufdRCJvtNMYXxHdCyeEIWbOvY/rmgZtTWnaJrjLTT4TVKrf
	sl/dHC9BzC51Fwys0Yd7rwp5DByyRtt/x8ReIPWEw23Dp+o2pGuGP28yNWlTjAHRQGd+jQAA3ep
	abILdxtl6GDUbhA59VsxtjhjAJxzv3/zzX1T/7qFYhfSoq4iSdPQbKtxjmZ7uLuCf+Av8qC0n5K
	JyxYQpObLHFL9um9qdkXcmkDnb3v9lyK+XL7SGI3gdSb8vrbyLFmvQ+MTcgM0TdHzh6siN+pKcx
	HCZY6JJNIjPbTWgwYGX3i9VkWmLaVRts9x3ecpBLazhvkfEq7eDfF9/l7vjwWXROuIku3Gm2MmC
	6Wj47KWzggeznjgkd/aXSWW1n/HLrsrU7pL
X-Received: by 2002:a05:6a00:a04:b0:81f:994f:cb with SMTP id d2e1a72fcca58-82a19716f8fmr10117321b3a.24.1773611695607;
        Sun, 15 Mar 2026 14:54:55 -0700 (PDT)
Received: from lorddaniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2405:201:31:d01f:962:a48e:8021:2c05])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07244071sm11782298b3a.6.2026.03.15.14.54.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 14:54:55 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: sound: adi,ssm2305: Convert to DT schema
Date: Mon, 16 Mar 2026 03:24:47 +0530
Message-Id: <20260315215447.276886-1-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275852-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,metafoo.de:email,devicetree.org:url]
X-Rspamd-Queue-Id: BCB04292C2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the SSM2305 speaker amplifier binding from text format to
YAML schema to enable dtbs_check validation.

Remove the legacy text binding.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
---
 .../devicetree/bindings/sound/adi,ssm2305.txt | 14 ------
 .../bindings/sound/adi,ssm2305.yaml           | 46 +++++++++++++++++++
 2 files changed, 46 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2305.txt
 create mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2305.yaml

diff --git a/Documentation/devicetree/bindings/sound/adi,ssm2305.txt b/Documentation/devicetree/bindings/sound/adi,ssm2305.txt
deleted file mode 100644
index a9c9d83c8a30..000000000000
--- a/Documentation/devicetree/bindings/sound/adi,ssm2305.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Analog Devices SSM2305 Speaker Amplifier
-========================================
-
-Required properties:
-  - compatible : "adi,ssm2305"
-  - shutdown-gpios : The gpio connected to the shutdown pin.
-                     The gpio signal is ACTIVE_LOW.
-
-Example:
-
-ssm2305: analog-amplifier {
-	compatible = "adi,ssm2305";
-	shutdown-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
-};
diff --git a/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml b/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml
new file mode 100644
index 000000000000..b841da2dc284
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/adi,ssm2305.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices SSM2305 Class-D Speaker Amplifier
+
+maintainers:
+  - Lars-Peter Clausen <lars@metafoo.de>
+
+description:
+  The SSM2305 is a filterless, high efficiency, mono 2.8 W Class-D
+  audio amplifier with a micropower shutdown mode controlled via a
+  dedicated active-low GPIO pin.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: adi,ssm2305
+
+  shutdown-gpios:
+    maxItems: 1
+    description:
+      GPIO connected to the shutdown pin (SD) of the SSM2305.
+      The pin is active-low; asserting it puts the device into
+      micropower shutdown mode.
+
+required:
+  - compatible
+  - shutdown-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    analog-amplifier {
+        compatible = "adi,ssm2305";
+        shutdown-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
+    };
+
+...
-- 
2.34.1


