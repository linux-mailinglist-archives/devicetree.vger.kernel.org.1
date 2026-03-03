Return-Path: <devicetree+bounces-270378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uA5zDG2lpmkTSQAAu9opvQ
	(envelope-from <devicetree+bounces-270378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:10:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 859C91EBAAD
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71EC13062FA4
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8303374E5A;
	Tue,  3 Mar 2026 09:04:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44E5388E7C
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772528664; cv=none; b=MPUttgT+iym8wfIQhWAJJV4iezm+FS3Tm2G+GqjUdmPc0CkWsjdqCMAWjU2LyAqTkiJL3X0CUhcyHEv+ZY2Sc2ftP+atRwaWbXDhvteVqIHUk8tER/k/s4uFO5wzOt1mBeAqWnxx0aEM5VZtmM/DkEMn2L/gbLNhh2RCf6+S1T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772528664; c=relaxed/simple;
	bh=HMWLi5YF4lA0CxQ8/r7Lh7BOhSJi3O7f2hDG4tWEiRE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ot7HZEm8OxnFhb6//A3hBQx6KET3/HECa1aOEXjbfWUhen+HhvGjbjiuIDSznwLGC5QOnCuX6YJ/r72BV9+698ggJFg4FKzmRnfqg5vUkHpq609ZNU/PLxqg2F6AOpcT3m6URKHKOg3tjVSkSrSlOiNoISMUfK/COQ9JSefgtV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c70ef340a02so3105950a12.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:04:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772528663; x=1773133463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=41EUXMaXVnuo7cK8Z5CD58qbq04Mb1iyKiHB70SkViA=;
        b=t2SgORZaMp4x3yx9RGSH6DPCZMwX/IRjS/9fAvdnp8eHWo+wk8zDnh9waRd5+YlxLV
         X7u+ysKlDRZcNhrjRuJlFOzdTKoi107v0MeXq68OmPIEtkA6oVcKAcW/ZNnIbIwr46AC
         CY+I+lNHP5FYs0TGfBTl50kZ6URSKdLkgXL6qKUo/vRj4GAmC/3RajrTxGGIriYZFI28
         jFu9i3BvVuSESWDx5z/IY3jj7458erScOv0BtU3aX+68fIsi3CFpBq6RDcmBZ7cNe9yQ
         UEc6tV0i0D8DLcHbJxpE+9OXx1Yv1Gduo3crR/5bangwPKR3y9pfn1nA54T10BRG1e8J
         c1Jw==
X-Forwarded-Encrypted: i=1; AJvYcCWZnJ7pIA0LbRrkzgNtarUWehj1xcdy1I0sSaZFmdgzaYRVEsxEZCIbdUKAynXDoIrSkvfIj3gIjgFb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+v8lZ70Y46XUZVnZpD7RvsLCjLSVDDHEWXzyj8On/QveqMJgW
	cUkoSt2OnYElIGCBjAiacCtl8rSPH+AiJKrfByj27nc/VjgNIPDMJGoj
X-Gm-Gg: ATEYQzzaI/q4z1N7Vp+JJdEo7D/pza9v9EHMr/Td2XlZ2V+TZhdmTPw8V5FH5MqQmZo
	0208herJEQu0XgOIl5tvv4Txh86kIG/fU0mj/XXkISA9ornM5TYbnh0bgaMQWBzNrRS517KDOQb
	WI5kTGzS9fIYJ1uWz3FBDBwrHTs0x7Ck7XF/cpCbdopRg4Zc+LSIrvO7xZOi1M+l6uP1Q2yQwmK
	25d6ZY9DbfzGISTYJWvVYk6KuwWZn1IfGVR3KXb2l4vufxEBfPiwUX8bTE2c8GsktN/5DYlUW5D
	UwgYOTQ3wpD8uxTfedY9/Co21J4csOYSChWb7F2bjoisIjOGSkTvfNqYvjxZwkRSAiX2WyiCL7X
	WUDtaJXk36kOMjvvClhGUbJP8zKrZL+QtMla7PzxFcoOQkewqBz4eiw0mKckIz55+Kht9WboGjc
	TrtGlEL2Lq8adbiVlU
X-Received: by 2002:a05:6a21:110:b0:38e:676a:f31 with SMTP id adf61e73a8af0-395c3a4a18bmr12885122637.25.1772528662985;
        Tue, 03 Mar 2026 01:04:22 -0800 (PST)
Received: from archlinux ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4c0792sm1638259a91.14.2026.03.03.01.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 01:04:22 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 1/3] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Tue,  3 Mar 2026 15:02:40 +0600
Message-ID: <20260303090253.42076-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260303090253.42076-1-email@sirat.me>
References: <20260303090253.42076-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 859C91EBAAD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270378-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.968];
	DBL_PROHIBIT(0.00)[0.0.0.29:email];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirat.me:mid,sirat.me:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Action: no action

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../bindings/iio/proximity/st,vl53l1x.yaml    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
new file mode 100644
index 000000000000..1b14063ba344
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/proximity/st,vl53l1x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST VL53L1X ToF ranging sensor
+
+maintainers:
+  - Siratul Islam <email@sirat.me>
+
+properties:
+  compatible:
+    const: st,vl53l1x
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        proximity@29 {
+            compatible = "st,vl53l1x";
+            reg = <0x29>;
+            interrupt-parent = <&gpio>;
+            interrupts = <23 IRQ_TYPE_EDGE_FALLING>;
+            reset-gpios = <&gpio 5 1>;
+            vdd-supply = <&vdd_3v3>;
+        };
+    };
+...
-- 
2.53.0


