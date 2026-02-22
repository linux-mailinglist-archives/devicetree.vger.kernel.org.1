Return-Path: <devicetree+bounces-267153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOqMBJvhmmlImAMAu9opvQ
	(envelope-from <devicetree+bounces-267153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:59:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E0616EEF8
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC1FD3011879
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F112253FC;
	Sun, 22 Feb 2026 10:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N9fRwPiz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390C41CDFD5
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771757976; cv=none; b=X6ET3gBRrU5RfE1BCr5R+0tq4eP41BVm31Tzbr5fGTWi4vz9/1KRBlll8A2xy2f76ta3QBP43V6frM/A62kXE6rE+tEgL1JUkVzoejknKgQ2FbLFpikpS7B/CVAekhKEBHYjGOcOeIVg7INNJyWtA95V6RIxbR1xbAdZVwgOO5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771757976; c=relaxed/simple;
	bh=cKB8GdjBiTI1IH3d5kRntsZzu1jt3bsi1XrHNbXVwYo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mQ7Qb6dT/B4PnxkPNsWVuNCsbiCuhcUqk+xylao6gc42t0CJWCAeAq2g5VdhJRbsITHGH522geOYnvKUK7exUJECX5z4dafofvZ5XXG9VgjCVp9pfh/dLVUagWoaBVbFk0kYwg9Mbg/xlQtwXEmieJHdbzIUIAj+LH7K/6N8NOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N9fRwPiz; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a95de4b5cbso31840215ad.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 02:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771757975; x=1772362775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k2pXf2JxN266dHpR5OZsunhHp7ZZzd2jqbxxjf9ZQK8=;
        b=N9fRwPizSoTwfLpdpp8+eUZoDN25RB1h6eEvrXgmp01VXAsUCyPjvQJARQe9rAaJXL
         e7nNSsIhpnGW9s8JR2AMVW2SmCEjQKeaj+2bzLs6R1G7SlUB1nspo25LJAxaWGNL6y0U
         W0tNIbCx+Pr0B7f4fn7s0iun7SobDk+hlnLw1yoTNoZUwEQ0AltIb917tJMcK4+R9QBX
         PIaf8Ljy8RQqNT6gp5K+oRQYPJKmKeO7piivsBuQTjre/qr+4ELncPgHg3OyvmqNSIY0
         Sw8uoebp9+I1JlJg+9hbKT/PBYbAe4rdqJrrYC0Eksevb8Jd2xKdIbhUFQEjoZZIwRk9
         eghw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771757975; x=1772362775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k2pXf2JxN266dHpR5OZsunhHp7ZZzd2jqbxxjf9ZQK8=;
        b=jU//3+qtqwkVdVD3asnbEUVtwyC07vQ9wPWpVBI1Y8OuxxX4e/4eOyyHct+dVyYrGq
         GWXxD7CEQQDRvaN7LDlOKe9ZbcYr3boa0Qs1Jz9cWN6R3JKpUizZ7ofA0uoMeZyFhzBB
         RhPSMdHCyN1mhmAmEei2pmAWp0dfYD3MwwBCULyc5lRjETF2ZAqtnluQo3q2uxfHAw43
         YtpwyGQPp1dFKS/m7LJwtIn1fm9XbROfnR9HzQhumt0rBoCgY4vSOYIkEH8JKMzDULeK
         S6xG66QNC2vmGaOy1E23JMZtxveknZRCqa39PUVksPQzw4Hhvhx77vhqPATg9XDcfJ9t
         7qzA==
X-Forwarded-Encrypted: i=1; AJvYcCX4/VihfmngeV7hpTRpR92hlFh1TPPf/gNZZnjDTpCveCH4wUbNnpA9d13pGGHu8GfjxSMJE0bBcZDu@vger.kernel.org
X-Gm-Message-State: AOJu0YwcxmmWtM5wabBoD6oszqdT5UOCPRug5fwDFf9H7xvS6r5tXqtP
	SHRXkRaA0VoKdm7oXN7u/KELIJ8EliCGYcGR6hayDFfR217JWz42IEWA
X-Gm-Gg: AZuq6aLwVkrg1pyX/cf8vMoj2KN4KCDg3kvqw7B4EBxnuIbEyZBBy8DcMru6nEFxcyz
	IpW3EN8SXP3W+ftQWdkWsjR6XjS1TKt6SztodUUYAP01evVEiciqrsOq6DHxTJzmVII8TCu4D8c
	lpf7gg1DLeBYGlNdrVyg7mm+robeUy7fWuF12DG2L5RCtAgLXgEPwTrfM5eEBLWj4RNLPNDJNoW
	8iEvCe44BPLbxOVqpVUtdUfmxqOhnZpVwb5kv2B27vLXSZ6EAoi/oDtyg0NqYdkjNlDmOemnyCC
	NRdhFg7onirayQ7p4BgGW5K8FXCd2LbdolP161zPPIlr2Se/HxYnLI5SBPHVpi12AuaRq9xGZHr
	Kmnxq1THg5+IDLJUpAeTJk90aC2d/w+Q/jKm+KYZ2XY4Q5fI1CG0daUtF0RuQw7V0HdxmRChA1v
	2cYXqXIqkVg5Ul/Kx4
X-Received: by 2002:a17:902:dac5:b0:2aa:dcc0:36d with SMTP id d9443c01a7336-2ad744d7624mr62163275ad.29.1771757974632;
        Sun, 22 Feb 2026 02:59:34 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358a1b1f84fsm3705278a91.2.2026.02.22.02.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 02:59:34 -0800 (PST)
From: Hao Yu <haoyufine@gmail.com>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: jcdra1@gmail.com,
	akhilesh@ee.iitb.ac.in,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hao Yu <haoyufine@gmail.com>
Subject: [PATCH 1/2] dt-bindings: hwmon: add aosong,aht10 family
Date: Sun, 22 Feb 2026 18:58:30 +0800
Message-Id: <20260222105831.7360-2-haoyufine@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222105831.7360-1-haoyufine@gmail.com>
References: <20260222105831.7360-1-haoyufine@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267153-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haoyufine@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.38:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 61E0616EEF8
X-Rspamd-Action: no action

Add Aosong AHT10, AHT20, and DHT20 humidity and temperature sensors.

Signed-off-by: Hao Yu <haoyufine@gmail.com>
---
 .../bindings/hwmon/aosong,aht10.yaml          | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml b/Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml
new file mode 100644
index 000000000000..6eb3944ae3da
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/aosong,aht10.yaml#
+$schema: http://devicetree.org/meta-schema.yaml#
+
+title: Aosong AHT10/AHT20/DHT20 Temperature and Humidity Sensor
+
+maintainers:
+  - Hao Yu <haoyufine@gmail.com>
+
+description: |
+  The Aosong AHT10, AHT20, and DHT20 are I2C humidity and temperature sensors.
+
+properties:
+  compatible:
+    enum:
+      - aosong,aht10
+      - aosong,aht20
+      - aosong,dht20
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sensor@38 {
+            compatible = "aosong,aht20";
+            reg = <0x38>;
+        };
+    };
-- 
2.34.1


