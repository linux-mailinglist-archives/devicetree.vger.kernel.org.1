Return-Path: <devicetree+bounces-177874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF56AB974A
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:17:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 427555029CC
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 08:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E85A22DF95;
	Fri, 16 May 2025 08:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DgrcO7ql"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F64222D7B8
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747383386; cv=none; b=OHKJZdVV2ZUKE2niHje4eMDJe7aUzZnv+UEbPlzYPcc6ibbtyjdSugydbMTnszdpCMmT9kqKFTAzXsDeUSDilOwI4cK5lIZddid/iKtR1ZWl6bHaoOh6n0XDXMzhazUwOkn/Sgh4NqAbJuefOe8LifPOuxCCnRWOH2Ophg4xPxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747383386; c=relaxed/simple;
	bh=AJiXTQ0EOJlS1g9vVqxLUd8SYyp7UcEk57ly1dn2WZc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=vAoDxeVukqqkqXGwNtLknF3199iVdjVKomvVeCYaegY/PLAALp4Uv/oqe3Jln22Q4V3MC507Qnoiv2hz7Sk+btHnvX8oAHONflzOPEE+uu6/dSUmda0TZTq8NPdo8aScplGOb/vE/T5Wm8JzVzL/eRv5sNImJWj05EfVYw01tys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DgrcO7ql; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b26ee6be1ecso246680a12.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 01:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747383384; x=1747988184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDYJgIg/XfLQ4T3AnKqpWjTJ3VlUlKaH3qQ7kODug28=;
        b=DgrcO7ql+9MFjL3bVPMDtZfi3y/XUQKm4pVo+VsPjxKVL6QW/qqIBhBB2AwCaiLJyw
         AbMqlQSCf0HpWeSgDQ8qNmLM5GEZoKqnVjb79Pb2bUPKZdZex+uZcMerU0vy/rIVpEES
         TSWDAiUzK0mLGn+Aou87cVpu2tMvAw2ptGafmN8j3+RIqmIskCVpxM8RzvTURKMiJT0w
         hdtydD6FoAA3+o3G5WrK/WfbeQT0Mwdp4LnkH0nm9Gp3+zBCIIKeHYnBAlnx+CEekZzR
         pwmOVmsh4FBgq8xBFlmQjKcFhwyJoNiVWRFfMWRo5DCnpBYLGi+nINz1Ejf4QSvhHi7r
         Hjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747383384; x=1747988184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YDYJgIg/XfLQ4T3AnKqpWjTJ3VlUlKaH3qQ7kODug28=;
        b=bE4YoMcCrGSv+O+2+4JxQ1Sh/6tMTJuKiaSFxM+JntvfmF2SV5M57PzHvdSbTEMI1t
         vgXkYHzP7Ved+NzOUCKikzW6dPbimFS3rBfrf1VMAuYqumcTuS9S/25F0KUtmf0F+kEK
         cJ88x3eok1sh9eCE7mstOmgfioPSWHuc7qQxb7Ew10xzYa+vxHSPgl2DSJXSk6IlbsjT
         vs5YHRZaIzX9tcMwYVgfcYa21SefVmod+RYjzXOe3LWe8Rrdem/iTUdmJgLVWcqU/cLb
         zE1iT2eY+gT4k3U7QDiACs42DUjGwMQGMY+Z7UE0id9ywyZ0LWwctCbg8j+KDoFTrudG
         EgNg==
X-Forwarded-Encrypted: i=1; AJvYcCUJGOjecUtPVg4SfBzw67zdEscl//RtDLx2lCMzrA5zIb4cVffkhGx0M16bq73eW/iJeBj5s3aabJWs@vger.kernel.org
X-Gm-Message-State: AOJu0YxImH/eXTj7YBGGDcFFY908Z7sRCe6D5fpvDL3Zfc8Rl5Cszt5C
	bJrAHDfSSpjv0/PnDAAqZhtQGbc/8C1UgY66E3LtQT8GkZJbdhvdbwtxcA7Vs+2vx355njVe48M
	UVDif
X-Gm-Gg: ASbGnctE7RnT2Cd18NPusobFeIRT9DfZwrkxj4BxIYq/0t0MLSf2e8dJS7vmgAQ1GFm
	TDqEmtoZ7a/RVDKJ3CFTFoQfo8UdzKkKx/BH4XU3+WidA+H21zNZHsptEprnikucxAB5EByVj9S
	aJjFxziHkJuyIVP4QEXGG7UhwsfbDdHUnWv875ydW7TZUY4mBkFrte5mpmGL0ss8vWgR5DH+wta
	1ab3AcAcMdLi8fjxFCQgHel7yFAl6Ih/6fD+Ecmc4ZR/aoDwEjWPvIGEd4c1dvZsYPJltL2Rzl4
	qLWQrQap7oOkglthYSnjlZEGaz5MLls2dm3BbSwLm9J/YF+BZ27pZpVLMhnpFijpCckcOEv2QDJ
	ZcBmNB1f85mgcWw==
X-Google-Smtp-Source: AGHT+IHjfCQYUeoSxu9+w/ENkGRThCOfn6xGkz+JFBl6zC5TxNJfq0HP75bI2Yk1uTXbHqzVwNqrkw==
X-Received: by 2002:a17:902:fc46:b0:231:cb8e:472e with SMTP id d9443c01a7336-231de3b9eedmr22826645ad.46.1747383383770;
        Fri, 16 May 2025 01:16:23 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4e97801sm9397695ad.133.2025.05.16.01.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 01:16:23 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: clock: ti: Convert fixed-factor-clock to yaml
Date: Fri, 16 May 2025 01:16:11 -0700
Message-Id: <20250516081612.767559-3-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250516081612.767559-1-sbellary@baylibre.com>
References: <20250516081612.767559-1-sbellary@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This uses the ti,autoidle.yaml for clock autoidle support. Clean up the example
to meet the current standards.

Add the creator of the original binding as a maintainer.

Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
---
 .../bindings/clock/ti/fixed-factor-clock.txt  | 42 ----------
 .../clock/ti/ti,fixed-factor-clock.yaml       | 76 +++++++++++++++++++
 2 files changed, 76 insertions(+), 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt b/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
deleted file mode 100644
index dc69477b6e98..000000000000
--- a/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Binding for TI fixed factor rate clock sources.
-
-This binding uses the common clock binding[1], and also uses the autoidle
-support from TI autoidle clock [2].
-
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-[2] Documentation/devicetree/bindings/clock/ti/autoidle.txt
-
-Required properties:
-- compatible : shall be "ti,fixed-factor-clock".
-- #clock-cells : from common clock binding; shall be set to 0.
-- ti,clock-div: fixed divider.
-- ti,clock-mult: fixed multiplier.
-- clocks: parent clock.
-
-Optional properties:
-- clock-output-names : from common clock binding.
-- ti,autoidle-shift: bit shift of the autoidle enable bit for the clock,
-  see [2]
-- reg: offset for the autoidle register of this clock, see [2]
-- ti,invert-autoidle-bit: autoidle is enabled by setting the bit to 0, see [2]
-- ti,set-rate-parent: clk_set_rate is propagated to parent
-
-Example:
-	clock {
-		compatible = "ti,fixed-factor-clock";
-		clocks = <&parentclk>;
-		#clock-cells = <0>;
-		ti,clock-div = <2>;
-		ti,clock-mult = <1>;
-	};
-
-	dpll_usb_clkdcoldo_ck: dpll_usb_clkdcoldo_ck {
-		#clock-cells = <0>;
-		compatible = "ti,fixed-factor-clock";
-		clocks = <&dpll_usb_ck>;
-		ti,clock-div = <1>;
-		ti,autoidle-shift = <8>;
-		reg = <0x01b4>;
-		ti,clock-mult = <1>;
-		ti,invert-autoidle-bit;
-	};
diff --git a/Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml b/Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml
new file mode 100644
index 000000000000..7a63b0992976
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/ti/ti,fixed-factor-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI fixed factor rate clock sources
+
+maintainers:
+  - Tero Kristo <kristo@kernel.org>
+  - Sukrut Bellary <sbellary@baylibre.com>
+
+description:
+  This consists of a divider and a multiplier used to generate a fixed rate
+  clock. This also uses the autoidle support from TI autoidle clock.
+
+allOf:
+  - $ref: ti,autoidle.yaml#
+
+properties:
+  compatible:
+    const: ti,fixed-factor-clock
+
+  "#clock-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  ti,clock-div:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Fixed divider
+    minimum: 1
+
+  ti,clock-mult:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Fixed multiplier
+    minimum: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+  ti,set-rate-parent:
+    description:
+      Propagate to parent clock
+    type: boolean
+
+required:
+  - compatible
+  - clocks
+  - "#clock-cells"
+  - ti,clock-mult
+  - ti,clock-div
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    bus{
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        clock@1b4 {
+            compatible = "ti,fixed-factor-clock";
+            reg = <0x1b4>;
+            clocks = <&dpll_usb_ck>;
+            #clock-cells = <0>;
+            ti,clock-mult = <1>;
+            ti,clock-div = <1>;
+            ti,autoidle-shift = <8>;
+            ti,invert-autoidle-bit;
+        };
+    };
-- 
2.34.1


