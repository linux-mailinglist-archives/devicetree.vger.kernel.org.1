Return-Path: <devicetree+bounces-307078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G201N9b3IWppRAEAu9opvQ
	(envelope-from <devicetree+bounces-307078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 00:10:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50171643BD1
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 00:10:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="OrSkfk/F";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307078-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307078-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9F12303D349
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 22:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A22F30D41D;
	Thu,  4 Jun 2026 22:10:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E8E30D40C
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 22:10:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780611028; cv=none; b=qgoWAl7TeBYSuxen9OwyWO6UY4+FTCQTe5tfPDBZqDvWOwEHhgb0OSfviDXUF4ULVOAf23a4SVVYoer4+xg8kSlkAptwROSsUxyczgkORX6G91vxglSGFX6GhGDMahfedEVTxKqeRDgo3WW317N/F10W6zKuivJ8TVCfLwseRT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780611028; c=relaxed/simple;
	bh=W5m2lzvYLlw7r+o+e7AscuV7yWW+tXbCRyHIj9wK4BU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WXuJzq0exgF6fftbmF4jxi/JOGW8caCPc/xma0dHGjUx5szfzP9NbA1XmFVpmPCibigkcsR4mb19dMeHjCCxsRRmiL/b+QmmqRq1IoiIs5MJJy63nyzQeRKuVdiP6eQPEB9c9i95cxVLHvZnb0vcRGGnaAkoXN69L2XiqQtDhAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OrSkfk/F; arc=none smtp.client-ip=209.85.160.42
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-43bfe209e45so846829fac.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 15:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780611026; x=1781215826; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASzuiA/oWwreVgFn7/8SW3dexF4emahYNJXfppn07Ak=;
        b=OrSkfk/FHAVg8HI63LIOZZdg10F4tV2h8jxc0mvTDBBKamSePmDW+oguPi8acF5HQl
         aWV27zAMwOdADj4ENjVy5HIq9YxhDZ8h7dzwhqQ5Lr4bipoExTyOu7gWbAfD/rIbqIFD
         Zh+NXSfDeyVVUtsUXmkHm+FF3AlifAPdDEY4UtNAX17oQgVpBS7xZ9NnrVvcbTWPcwLp
         72XQuOf8CUgUYc5PUI3HYH5BOfa7yvLi8iU36srjMwTLsl3Rd4n1X4ne/BwVtr95zIXL
         gYMhQB6cadNdKJFTz+TpRRt2tOBjp4YlGbvs031hzPf7lYKWWZh8paWenbdcsxMBgwUJ
         koWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780611026; x=1781215826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ASzuiA/oWwreVgFn7/8SW3dexF4emahYNJXfppn07Ak=;
        b=aW1Vc85GOQB6BizOA8SdWk0Kb36G6Ok6y8F5ft92TunEt3kog9MypLcsKL1wUKnfJG
         rptSuFRGxodPW9qxtfrNiTgpYGqlFbF04MPU0gSldF2u1zVDzTQbvTeoJdXmbIHpV4RL
         iDyyKT2SrnJpbZ+vzQUM0wU3E2PNnIhti2FoxI8T23DzS007qzm5h0/QNtrUfYnXsKct
         Aj5J3jzySpvF8qu/pcIZd5zwbP71SFLbRj9GkQcWt2jB04R6b/TzDHHuJei/VEtBD/sH
         7ve5dPNSPRfB9dclUjeK8m6oge1bMMJNANQxPQplScIdNZsNjyeEfmqBKvj9itDAmlCM
         loUg==
X-Gm-Message-State: AOJu0YzyJcNfm3XZG6zoV5gB/s86WvATXv0CWThO5h1PPG3db6atiWlU
	1b+OD/6uuA6hOtD/Qar7Ux9Hd8JDowUqH9G4U63zPM25uy/Jabu3MRqj
X-Gm-Gg: Acq92OGO67djU1779BdNdQG64c39rNYk8kc3oa109CvDVimrk8tIQ5uX33uEQjoWk+g
	Lqc7OlVo5034fAeqv4m6A0tBqmo1Sg0rtCIVOT/GHoqJAr3lqeppnGwC2z0ziW64LXBcqcaV73y
	RdBN6Lo77aTs2QE7+r7Sxnmp+SVOL6F7s6DTv5xR97U9em2ou+CJ9UHR0wwiD+OPttKgfy1xve4
	TkhUlxalIfDATS/PmBNhdZ+z6R7vZ9ojpXfs/NBLWiCuJX/9/Crb42gi3zp1nLLV4EBbkliIRHn
	InbRG2lAyhYLz5fyfZeS7ESY+cbJ9Pfv++FJN70RPO92H1zU2toQ8QPN85nihQMV652Nq2aHvME
	lQF55ZxmUhNyrLDsqxcgB2KO+LOotivstnHMm+XYKcoIqH7VUTp4cOw+Muj+pmMfC27i/W4pbeR
	PDRShOPIbpJqv9IrslRVY0p+LQFhokQBk=
X-Received: by 2002:a05:6870:6987:b0:43e:5b7f:8b81 with SMTP id 586e51a60fabf-4413ddad56amr411159fac.25.1780611025808;
        Thu, 04 Jun 2026 15:10:25 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d84c0ce2sm6802987fac.16.2026.06.04.15.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 15:10:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Thu,  4 Jun 2026 17:07:56 -0500
Message-ID: <20260604220802.119107-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604220802.119107-1-macroalpha82@gmail.com>
References: <20260604220802.119107-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307078-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:xsf@rock-chips.com,m:sre@kernel.org,m:simona@ffwll.ch,m:airlied@gmail.com,m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:jesszhan0024@gmail.com,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,rock-chips.com,kernel.org,ffwll.ch,gmail.com,suse.de,linux.intel.com,linaro.org,sntech.de,hotmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50171643BD1

From: Chris Morgan <macromorgan@hotmail.com>

Document the SG Micro sgm41542 battery charger/boost converter.
The parameters of input-current-limit-microamp and
input-voltage-limit-microvolt are defined as such since they are in
common use among multiple bindings currently.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../power/supply/sgmicro,sgm41542.yaml        | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
new file mode 100644
index 000000000000..a97afea83700
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SGM41542 Battery Charger
+
+description:
+  The SGMicro SGM41542 is a single cell battery charger/boost controller.
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+  - Xu Shengfei <xsf@rock-chips.com>
+
+allOf:
+  - $ref: power-supply.yaml#
+
+properties:
+  compatible:
+    const: sgmicro,sgm41542
+
+  input-current-limit-microamp:
+    description:
+      Optional value to clamp the maximum input current limit to for
+      the device. If omitted, the default value for the hardware will
+      be used (2400000).
+    minimum: 100000
+    maximum: 3800000
+
+  input-voltage-limit-microvolt:
+    description:
+      Optional value to clamp the maximum input voltage limit to for
+      the device. If omitted, the default value for the hardware will
+      be used (4500000).
+    minimum: 3900000
+    maximum: 12000000
+
+  interrupts:
+    maxItems: 1
+
+  monitored-battery:
+    description: |
+        A phandle to a monitored battery node. Values for the following
+        are used by the driver and if not present will result in default
+        values being applied:
+        constant-charge-current-max-microamp
+        constant-charge-voltage-max-microvolt
+        charge-term-current-microamp
+        precharge-current-microamp
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    properties:
+      otg-vbus:
+        type: object
+        description: OTG boost regulator
+        $ref: /schemas/regulator/regulator.yaml
+        unevaluatedProperties: false
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    battery: battery {
+      compatible = "simple-battery";
+      constant-charge-current-max-microamp = <10000000>;
+      constant-charge-voltage-max-microvolt = <4350000>;
+      precharge-current-microamp = <180000>;
+      charge-term-current-microamp = <300000>;
+    };
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      charger@3b {
+        compatible = "sgmicro,sgm41542";
+        reg = <0x3b>;
+        input-current-limit-microamp = <3000000>;
+        input-voltage-limit-microvolt = <4500000>;
+        interrupt-parent = <&gpio0>;
+        interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+        monitored-battery = <&battery>;
+
+        regulators {
+          otg-vbus {
+            regulator-max-microvolt = <5000000>;
+            regulator-min-microvolt = <5000000>;
+          };
+        };
+      };
+    };
-- 
2.43.0


