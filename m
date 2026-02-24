Return-Path: <devicetree+bounces-267915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFrNAGSqnWmgQwQAu9opvQ
	(envelope-from <devicetree+bounces-267915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:40:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D296187E14
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E6DE31940D0
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75E7939E166;
	Tue, 24 Feb 2026 13:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kY6iUcV4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E9939B4A0
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771939969; cv=none; b=kRIp/Cr6VHgzTcts5YjD8b6276BA8BM01grymbow9yqxeC/3B6w1odqjba0wya6k7o0i+YpjKzZDd4Rrj8KV2lI9RcGfjBxC4UhGfDJyz9ToYh4WEEnzMhfIeRfMyao+WPA7Bqlm4dvXIv6QHM2NSXqqj8Y7aDjRsDY0yIC8h+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771939969; c=relaxed/simple;
	bh=klGFecYU+OQ3VT8azfjWf7pA53E8lecMJHJ+2Zw1S9s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Kl1Rp8/v5MQ9dBGtWc/J4XQUvkQr1tWxPpmS3uGsAgNDpQUIw1ebTT5eh9drDbU0pghoWzgMoD8YqZiPNTzxQU1AB3w4lMP57Wo98Qy9LeiUzdOtked4mV8HxOPy4P2sLfmrXByJ7CtZ6ywu0LThVJLBboB88ntHRYdrKh/xUdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kY6iUcV4; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-8230d228372so2661630b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771939967; x=1772544767; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ViR+3HWJaHYHgEOcq/xsyBm9C6vwdHi1tQDn5VUk72g=;
        b=kY6iUcV4Zt7Kti4fy/R6PUmLONPgOi/Ealho1/jIT3yWC+mrW8Lj9RSCDNuLzJVTo2
         eulluJn0oAX3f//R3p7C8tjGaFTcOHcqh81Fu1L53qyKK5iV6nTJoVVSRqzUC9efGzBJ
         a9z9GgkBSLAy/ypyEN9AAsOUkkwrzAQPmAzhpC4t/98nZhfBSLt+z6ZKdG6DLdadkrf4
         Nl2kTYJDLId3aYjnP6FsjGq/CIbtFPPLE4WO4uVW8/mWbVSE7kxozbS8q4usKcBloiFs
         ygImYIkN9uEaoaELCd9tiJeOSeF62mwjKNAtbsJORsjgvp8DHHrSGv1GZCSBARtHRCdz
         V89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771939967; x=1772544767;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ViR+3HWJaHYHgEOcq/xsyBm9C6vwdHi1tQDn5VUk72g=;
        b=KgforqYqqrlvl+NcTBv37EVvQUjrae8n9eM/+qFqUSHeRRZs053BES0tLhksD8hyAj
         DF2bPqxitM4wJ5lI5eoEYT5BPqna5L5vBBBJhgyFIoTor9bXbFEVpFxFcWoEktDHzssi
         spWLmyagPJv3YUhuKbe36HjM3tVVsUr+ZEQ3KjU6jeXTNR37as57TT0TRNoCy+4hoqe6
         xl/Few0XJQkYQhGfbKrWOEvMIXZatXJYMnZbiauoMeOFEeu+eEDw52WWUmGtMATp8ahm
         014AMybsJ12g7d92zZpQvp1AgvYdDSb2H0g/9diyGEaEpkU3fD/aIZHTzfOvn5luQi5+
         c4fQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrOKVSTUgd2OG0x/oASosiPcEM7eKmDvB5XJDXsZsy+CRcI1ZjfpnraiLum/qQAjFVt1ElOfpGcpAw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxgf6A7f9jy+kHbKjvHCQFtqGt+H+4HVbQQ+jHERUMSYxvJF1B0
	JNfD3ImyeTYj4g/YvphRkJpcj8nI77rG0frYn0s/ssqrCJO+m5/SSFM1mvzyJw==
X-Gm-Gg: AZuq6aJtxPdQPXoO1sDRJPT7HP2ukoTTpvYTwPEFvrT4fCAQ/Zm1VGraZWqN4rtR66a
	K3h8IZevpk4hiwtOsGINwhmUiBFrjVjwdBbdVk64kdF6p6UIj9qpDOmTRRXsp9eYBU0QIdqDfVR
	Iky8tIGSfP8jxJETeMuI993AzmZ1yrFG6yo/IUFcq8409TNPauURjW/sE8bHHRTvYQ9bmxIGw8h
	puLgb0yqGB6w/Ar6h9+jsowD5eTMxDhogXn9cOLQs51il+GfikLxuIBIwAAZ5Bd568Spc9M1lWi
	mIGvFjw63wxNbO6ClW1Qo1BzjE9RFc9aOkLvHIuO6VQKgRIl0Z65nZw+X5FQJw4rWhhOqfqw9+A
	Y2/dPUvdMAmccSrhitqIOcQX4AeVG9g+zflDphySn4/xHYmvrzAN3s1HPxH0P2rIxbCAetpoHrD
	uQWh/dckxV/AFyhduTDCkqv5iCqgTl2XZNk8GrP9D0t/gv/c/n7ssL
X-Received: by 2002:a05:6a20:d791:b0:393:2434:683a with SMTP id adf61e73a8af0-39545fb8023mr11351552637.67.1771939967565;
        Tue, 24 Feb 2026 05:32:47 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.171.51])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c70b72603dfsm10794571a12.28.2026.02.24.05.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 05:32:47 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Tue, 24 Feb 2026 13:32:38 +0000
Subject: [PATCH v2] dt-bindings: usb: st,st-ohci-300x: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-st-usb-v2-1-e8b7cb6524c6@gmail.com>
X-B4-Tracking: v=1; b=H4sIAHaonWkC/zXMSw6CMBSF4a2QO7amDyjGkfswDApt4SZCSS82G
 tK9W4kO/5OTbwdyER3BtdohuoSEYSkhTxUMk1lGx9CWBsml5pILRht7Us+8UPWl0dJY3UA5r9F
 5fB3QvSs9IW0hvg83ie/6I0T7J5JggvVG1a1X3HLHb+Ns8HEewgxdzvkD58oNwZwAAAA=
X-Change-ID: 20260201-st-usb-f1348562ad65
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267915-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fe1ffc00:email,devicetree.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 4D296187E14
X-Rspamd-Action: no action

Convert STMicroelectronics USB OHCI Controller binding to DT schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v2:
- Add "usb-hcd" as allOf reference.
- Remove minItems for the properties "clocks" and "resets".
- Link to v1: https://lore.kernel.org/r/20260217-st-usb-v1-1-ba347f30d0e0@gmail.com
---
 Documentation/devicetree/bindings/usb/ohci-st.txt  | 36 ---------
 .../devicetree/bindings/usb/st,st-ohci-300x.yaml   | 85 ++++++++++++++++++++++
 2 files changed, 85 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/ohci-st.txt b/Documentation/devicetree/bindings/usb/ohci-st.txt
deleted file mode 100644
index 1c735573abc0..000000000000
--- a/Documentation/devicetree/bindings/usb/ohci-st.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-ST USB OHCI controller
-
-Required properties:
-
- - compatible		: must be "st,st-ohci-300x"
- - reg			: physical base addresses of the controller and length of memory mapped
-			  region
- - interrupts		: one OHCI controller interrupt should be described here
- - clocks		: phandle list of usb clocks
- - clock-names		: should be "ic" for interconnect clock and "clk48"
-See: Documentation/devicetree/bindings/clock/clock-bindings.txt
-
- - phys			: phandle for the PHY device
- - phy-names		: should be "usb"
-
- - resets		: phandle to the powerdown and reset controller for the USB IP
- - reset-names		: should be "power" and "softreset".
-See: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml
-See: Documentation/devicetree/bindings/reset/reset.txt
-
-Example:
-
-	ohci0: usb@fe1ffc00 {
-		compatible = "st,st-ohci-300x";
-		reg = <0xfe1ffc00 0x100>;
-		interrupts = <GIC_SPI 149 IRQ_TYPE_NONE>;
-		clocks = <&clk_s_a1_ls 0>,
-			 <&clockgen_b0 0>;
-		clock-names = "ic", "clk48";
-		phys = <&usb2_phy>;
-		phy-names = "usb";
-
-		resets = <&powerdown STIH416_USB0_POWERDOWN>,
-			 <&softreset STIH416_USB0_SOFTRESET>;
-		reset-names = "power", "softreset";
-	};
diff --git a/Documentation/devicetree/bindings/usb/st,st-ohci-300x.yaml b/Documentation/devicetree/bindings/usb/st,st-ohci-300x.yaml
new file mode 100644
index 000000000000..a225bf5a2ee4
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/st,st-ohci-300x.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/st,st-ohci-300x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics USB OHCI Controller
+
+maintainers:
+  - Peter Griffin <peter.griffin@linaro.org>
+
+description:
+  The STMicroelectronics USB Open Host Controller Interface (OHCI)
+  compliant USB host controller found in ST platforms. The controller
+  provides full- and low-speed USB host functionality and interfaces
+  with an external USB PHY. It requires dedicated clock, reset, and
+  interrupt resources for proper operation.
+
+allOf:
+  - $ref: /schemas/usb/usb-hcd.yaml#
+
+properties:
+  compatible:
+    const: st,st-ohci-300x
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: ic
+      - const: clk48
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    items:
+      - const: usb
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: power
+      - const: softreset
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - phys
+  - phy-names
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/stih407-resets.h>
+    usb@fe1ffc00 {
+        compatible = "st,st-ohci-300x";
+        reg = <0xfe1ffc00 0x100>;
+        interrupts = <GIC_SPI 149 IRQ_TYPE_NONE>;
+        clocks = <&clk_s_a1_ls 0>,
+                 <&clockgen_b0 0>;
+        clock-names = "ic", "clk48";
+        phys = <&usb2_phy>;
+        phy-names = "usb";
+        resets = <&powerdown STIH407_USB2_PORT0_POWERDOWN>,
+                 <&softreset STIH407_USB2_PORT0_SOFTRESET>;
+        reset-names = "power", "softreset";
+    };
+...

---
base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
change-id: 20260201-st-usb-f1348562ad65

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


