Return-Path: <devicetree+bounces-259402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YG2SO1syd2mrdAEAu9opvQ
	(envelope-from <devicetree+bounces-259402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:22:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AEE85F30
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D3739300600E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 362F5308F13;
	Mon, 26 Jan 2026 09:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A6LA8ssg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85880306B21
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769419326; cv=none; b=jk9JAX4vfXyQnMogXH19Vh8gdzC3M/LxxYEwccO+sGEhQ0AiBYwlRNh6hbtBvmsXKZK3cI7SqehXuwuKMrap+iSJJfTe1ax/DjrKqTexqhM9OIVtxo855SQxx9JlAOIJQkQj66ebtLc+JTeoaQS4zR2sQzwAzdB+ciOZWrdlSso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769419326; c=relaxed/simple;
	bh=HzBu2NbGKcOQwsBSue+2sXgdaUYPXA/eSDYmPrHSRrc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AZomd1epYSzo/3U8lGnXqjG2yMUafkgFhWRXNibe0NvBzPeKQEFTuop7UEp5AQ8hCslV9UFjdAbgn6OHUCAk1fqkmdNewZFpA+odKAE87g29Ualp7Ahwt9TmmkYcCfaEMLCVJzZmMqmGuHgbb8MOgTErBOQixKPW0ahHwKXbjOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A6LA8ssg; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso42435765e9.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769419323; x=1770024123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3Z4Yd2fRXfRsRi8a3YRl2niiXC4DwI7ABHuLbV15ig=;
        b=A6LA8ssgTyZ23s7ItqrjdXKyy0kKFQmZE47uDIl8IhELHnUBU7QA78F1iq1E0KF+G8
         /gLQZIBP/Q8wHBisCXHqqAmVwdXpD/DNT4j4F3OWwx+G/Y8rKH4kkFjB4qKWfrtpib5C
         WIbb9UFr2FvAUAYU/RuJudpPAFN+oSiz+EyWJt7bz2aXkylvsMikxt4z0E8KCkS5kzDE
         NUg8o6cm02pmDv04MKWkAKNwnEAcSa9BeXVgqCSMkRIPJ3feZOBMz7pL5yWdJyO+aY9f
         YIcWL6NVCpofqGni5QywUl8akcWgcrcmxyl0SxWZp70aEIppCqV4cPN7UKPTL3KWXqnz
         U+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769419323; x=1770024123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j3Z4Yd2fRXfRsRi8a3YRl2niiXC4DwI7ABHuLbV15ig=;
        b=LZTjMNigpUpp5dd85vt/7VJfh/VPjF6WoACpMHTH9lJ/HTUYO/iCbns7CL72JSIVl7
         HnjP36br3geM65EbgehHqnH+JLT1JO0+PTw9OtcEtAIJGTKLR/E0rSDo7B5INdgCkYSI
         uGZ0RwSHucQxygrJmAuXhdy3vNk5QySacuJQG5opbidmHyQQw73bSYt/2eeA1QoiDNOi
         fzkp0Rswg86ZhGHyzSMR9AO6wSekK7hcCg6wl65wF9PU3h/phl8V91iY/TNux6v6rw4R
         WJ8i6KKG1wsRpwMxNySMij+ySJJxNAL39W44xfEyKa9e0pwpqDT+agtQhczpKZfsCinB
         XKdg==
X-Forwarded-Encrypted: i=1; AJvYcCWmolmZ7dn0v8rOj8lOchy3Qvf9bvP2ivkWovZj18X/bMJMfPSsUdCnyZYh7FyqbBiS3AflHFbwIXIo@vger.kernel.org
X-Gm-Message-State: AOJu0YyEl+gFimitHWCet86l6Twph9A6tAKa/u2yQYURWBJdqxxylwFM
	uMjVE/4brBkv0FVckHF1xIHbx92viKGliCFhyECSc6Tx+OxYV6D1X4A8GRCMYYR1QF4=
X-Gm-Gg: AZuq6aL8/3Yla7lb1rptF7B9aajQboqtcJpn/VNF0ksGuOb/mcCbAGJAxaodKCO94AI
	tLqTWWpcDw7brnIUK+Kr8SWiatLNcHPs9D+1/bAqQj4sZ3YeMwhcWKLPxasGyq9mcQB8GVeLyXQ
	VyqbhzN0Im3jen5MGdaPbumeCyL3ZCSTCZMFfsTfXds/QcjwTBwVvow5LKb/zaw+THfuLX8Vtfn
	FT/0e4Bq5Yj9lSt2rJBVchm2fbV/rGfE1e/Xa1+Mxz+sqC4ZM8aWoOk/vDn89Gc93cVlmUBjQX6
	T4RXJmh65rUbsG1+C2R2xSVbjGiHN/sfQpLMYl4EZNR78ttTYLGZJMw4IQiLeT/HwbpcLRDn7R9
	HgqucWJdHMxAT6h9+9mU4z2aIEDy4JuRJAx8yoZtGzkgBBZh4a2X8BDKuFM3AiU3gVHzmkTJaKa
	cv1Dup5Kr+SHYQlqKw5b4=
X-Received: by 2002:a05:600c:3ba8:b0:47d:264e:b435 with SMTP id 5b1f17b1804b1-4805cf5ecb7mr68589285e9.22.1769419322750;
        Mon, 26 Jan 2026 01:22:02 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:e270:a43a:f2fa:900a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cf1acsm346669855e9.14.2026.01.26.01.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 01:22:01 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com,
	Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 1/4] dt-bindings: serdes: s32g: Add NXP serdes subsystem
Date: Mon, 26 Jan 2026 10:21:56 +0100
Message-ID: <20260126092159.815968-2-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126092159.815968-1-vincent.guittot@linaro.org>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
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
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259402-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 42AEE85F30
X-Rspamd-Action: no action

Describe the serdes subsystem available on the S32G platforms.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
 1 file changed, 154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
new file mode 100644
index 000000000000..fad34bee2a4f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
@@ -0,0 +1,154 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
+
+maintainers:
+  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
+
+description: |
+  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
+    - One PCIe PHY: Supports various PCIe operation modes
+    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
+
+  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
+  must be adapted accordingly. Below table describes all possible operation
+  modes.
+
+  Mode  PCIe	XPCS0		XPCS1		PHY clock	Description
+                SGMII		SGMII		  (MHz)
+  -------------------------------------------------------------------------
+  0	Gen3	N/A		N/A		100		Single PCIe
+  1	Gen2	1.25Gbps	N/A		100		PCIe/SGMII
+  2	Gen2	N/A		1.25Gbps	100		PCIe/SGMII
+  3	N/A	1.25Gbps	1.25Gbps	100,125		SGMII
+  4	N/A	3.125/1.25Gbps	3.125/1.25Gbps 	125		SGMII
+  5	Gen2	N/A	        3.125Gbps     	100		PCIe/SGMII
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,s32g2-serdes
+      - items:
+          - const: nxp,s32g3-serdes
+          - const: nxp,s32g2-serdes
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: ss_pcie
+      - const: pcie_phy
+      - const: xpcs0
+      - const: xpcs1
+
+  clocks:
+    minItems: 4
+    maxItems: 5
+
+  clock-names:
+    items:
+      - const: axi
+      - const: aux
+      - const: apb
+      - const: ref
+      - const: ext
+    minItems: 4
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: serdes
+      - const: pcie
+
+  nxp,sys-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      SerDes operational mode. See above table for possible values.
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^serdes[0,1]_lane@[0,1]$':
+    description:
+      Describe a serdes lane.
+    type: object
+
+    properties:
+      compatible:
+        enum:
+          - nxp,s32g2-serdes-pcie-phy
+          - nxp,s32g2-serdes-xpcs
+
+      reg:
+        maxItems: 1
+
+      '#phy-cells':
+        const: 0
+
+    required:
+      - reg
+      - compatible
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - nxp,sys-mode
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        serdes0: serdes@40480000 {
+          compatible = "nxp,s32g3-serdes", "nxp,s32g2-serdes";
+            reg = <0x0 0x40480000 0x0 0x108>,
+                  <0x0 0x40483008 0x0 0x10>,
+                  <0x0 0x40482000 0x0 0x800>,
+                  <0x0 0x40482800 0x0 0x800>;
+            reg-names = "ss_pcie", "pcie_phy", "xpcs0", "xpcs1";
+            clocks = <&clks 1>,
+                     <&clks 2>,
+                     <&clks 3>,
+                     <&clks 4>,
+                     <&serdes_100_ext>;
+            clock-names = "axi", "aux", "apb", "ref", "ext";
+            resets = <&reset 9>,
+                     <&reset 8>;
+            reset-names = "serdes", "pcie";
+            nxp,sys-mode = <1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            phy_pcie0: serdes0_lane@0 {
+              compatible = "nxp,s32g2-serdes-pcie-phy";
+              #phy-cells = <0>;
+              reg = <0>;
+            };
+            phy_xpcs0_0: serdes0_lane@1 {
+              compatible = "nxp,s32g2-serdes-xpcs";
+              reg = <0>;
+            };
+        };
+    };
-- 
2.43.0


