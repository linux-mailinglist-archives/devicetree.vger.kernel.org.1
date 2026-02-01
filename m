Return-Path: <devicetree+bounces-261588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ObVLXqIf2mptAIAu9opvQ
	(envelope-from <devicetree+bounces-261588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 18:08:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2CFC69A8
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 18:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 47457300145A
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 17:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D23CD274671;
	Sun,  1 Feb 2026 17:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W62HedvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354AF274FDB
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 17:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769965688; cv=none; b=T5jvvpBson17Dto3LRqbDba4gblgkzDIVsqbzTabqIVGb/cTshFH95ANK4kiPm5fgkQZ917qeD8nUS2amLWQcYRNN6bFAFbnp8eqFOGwoJzbKHYpYHUtiRPYMNc6ZxUiy9e6UWrd4m5MWKLFNAR7H0CK+myiaIhQeIZGdW7vVZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769965688; c=relaxed/simple;
	bh=oZVM0jsRUZFOAD5WZ3E63gXjNmhECNXFhQvLake1fM8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qimfApSAgZET3j2Y+S8gulKkDimTzUIV0dUpi0Y6ty/2ZxDe4eKlFmoCT9j0soRcOs8Qz6tSMnhwTp11JHNyfJcnTYstKTMpgUi3IFmmTzaAZWVWj/lHVku+JO+fs2Wqge1ay0/Oywt01sTLOciIOB9NkMsi8b1tVS+/pJVn970=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W62HedvX; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-432d2c96215so3572628f8f.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 09:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769965685; x=1770570485; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aiP44f+/iNWWPqnIpAiWlM8Sc6MEYUGh+76c97VATbg=;
        b=W62HedvXZHq5oo2iN1BxGFnFHcGm9JNQJVgneXQhHTy6XE/G5HFHXZo4mhi0brhSo9
         N2WS0xx3e8+S3injvEHcDYHMMmZ4hpO7nr3KseH7BTUFgIZ6ON0/YSRzffX+EHDu+39H
         vVNAStUFGPiVRmfNcDFK7sOyYnN9DT/aPPUzNN94YyOpGFQkrSEk6kkPyexqQnmV0zPP
         SV/eMPUHJMvDFomQqkWcwDEE1zIKg+Qm7kmebjLJmq7RAnIWkQ9ilH313pKim6GtVe+x
         tvXcnkW8UxhZdaY3AGdg7UIGkzaVg+GwcmjyT9Poe05XoQITb/6MCQsO5SrI2fZKbt3f
         1+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769965685; x=1770570485;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aiP44f+/iNWWPqnIpAiWlM8Sc6MEYUGh+76c97VATbg=;
        b=J1hCdm2vv3wvmY3XdIrtIV5+NZfYQykSPgehwOFxX6qNcGUx44FU5Y9E6eOb0GLKtG
         2rk47XoIKws8k+3zp7Y+Rtbtu3unxra7PeAec5tq6nC8T9dcDgHsf99Yii7X9Togpv+u
         EQJJ1cjbNveYm9QoMzcuC5UCKSTttgExYNxHyVFlnDCmzfI/9ImwwysaKolatGVmAnMj
         6E0H/YPuTzvLrMa5tPfL/nh+pioyh69TojlRFiBkP4TjGBR0HjLJKaqJcQzqZ47RMoAP
         87GyfHooAJKBMAuycWrbk9iv4tQU/JONhlnGvnJr70P0orQY3PiJT5z99isNsqfzR1Lm
         N9Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXbHlF4m7NXGqSe3el2wWnNHF1Rpk1sOGuLv/gHDRU8jaRy5A1fDE/DGQCrPmaaZqQc7N/ycH7z2giD@vger.kernel.org
X-Gm-Message-State: AOJu0YxA4rT2QTxgdtQIMhNjC/y85Maqs4RIi7X+i1hSqx0oCWSTUo1x
	1947CKfcgtNRXk1i02nxOGzYU5YlFK8Hx3Rc5Bnx8DdU2K1krzxkinOQ
X-Gm-Gg: AZuq6aLgI9626n9yYkdYDuQo92airg0T6PMcQM7cBeRhRPkvS3INiA0Z/KRrgsk4Ld+
	NoMfUvxQnmRT0V5LhvRylC9NnNtM+VuUHhOEXDtL3UKU4MwwNl6G7vxeIwatxRaKZ/s5nzrHVRb
	qExEEykGQgLuG2WrMEJML/gTq0MTWi1F4s7p8RlEVRK7gwEoC8es4NUYh0Aa2AxC3hDlkJZGoRq
	zEr4j80uz1wqm3WkVlV0beTepj6cBuWeWqwQY38Qsv6pm5KC8eBErpKNogSZSp1xnNGzGWNjxCn
	mMhp+hCMdgjPDgOanjLyrJv7wIfTctv071i7017Owwqkmay5065JvlgqqQ9YeqRuPAtfIHmoaj/
	F+tA3N54z571R7e9YACbsUPiiATIcdYDp7uTkuI3h/wZ8KDiQROYHgHbZkzCQjDA8AQEHd+3i/P
	PYwRl5/aQ4z4q+cg==
X-Received: by 2002:adf:fa02:0:b0:436:348:9a7f with SMTP id ffacd0b85a97d-43603489b39mr2583532f8f.28.1769965685455;
        Sun, 01 Feb 2026 09:08:05 -0800 (PST)
Received: from [192.168.8.10] ([2a00:f502:260:44d4:a26c:adcb:8da8:2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10f82aesm40615460f8f.19.2026.02.01.09.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 09:08:05 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sun, 01 Feb 2026 19:03:48 +0200
Subject: [PATCH 1/2] dt-bindings: Add binding document for cm36686
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260201-cm36686-v1-1-4949a2a9ba63@gmail.com>
References: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
In-Reply-To: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261588-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.60:email]
X-Rspamd-Queue-Id: 5E2CFC69A8
X-Rspamd-Action: no action

Document the Capella cm36686 ambient light and proximity sensor devicetree
bindings.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 .../bindings/iio/light/capella,cm36686.yaml        | 74 ++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml b/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml
new file mode 100644
index 000000000000..5f0a585e3d87
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/light/capella,cm36686.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Capella cm36686 I2C Ambient Light and Proximity sensor
+
+maintainers:
+  - Erikas Bitovtas <xerikasxx@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - capella,cm36686
+      - capella,cm36672p
+
+  reg:
+    maxItems: 1
+    description:
+      I2C slave address of the device. Must be 0x60 for both cm36686
+      and cm36672p sensors.
+
+  interrupts:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Regulator that provides power to the sensor.
+
+  vddio-supply:
+    description:
+      Regulator used to power IO and I2C bus.
+
+  vled-supply:
+    description:
+      Regulator used to power proximity LED
+
+  proximity-near-level: true
+
+  capella,proximity-led-current:
+    description:
+      Current for proximity IR LED (in uA)
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [50, 75, 100, 120, 140, 160, 180, 200]
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      light-sensor@60 {
+        compatible = "capella,cm36686";
+        reg = <0x60>;
+
+        vdd-supply = <&pm8916_l8>;
+        vddio-supply = <&pm8916_l6>;
+        vled-supply = <&reg_prox_vled>;
+
+        interrupts-extended = <&tlmm 113 IRQ_TYPE_EDGE_FALLING>;
+
+        proximity-near-level = <30>;
+        capella,proximity-led-current = <100>;
+      };
+    };

-- 
2.52.0


