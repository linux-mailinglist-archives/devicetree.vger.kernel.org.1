Return-Path: <devicetree+bounces-15410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE407E9F45
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B4B05B209EA
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6ED2135D;
	Mon, 13 Nov 2023 14:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dx8NiN0P"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F085B2111A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:53:34 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3017A171F
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 06:53:33 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507973f3b65so6412449e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 06:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699887211; x=1700492011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mRz0RhXvXEDvxsQyGFzA2Dam68j7hbTQ8jEDNkV7Cw=;
        b=dx8NiN0PKia3f3DOJGnqv/Xwu0qJwQaVxU6+sxmyNfKiCq0Hcvi9ac4pGJjkACPQFR
         TPZX/2gNlO685kkohl42SddBsEh5Q2mldIPPX+w+rKbAZMrVyJDI5slY3P+B5zGZK4KA
         VbX871XJEiiGtXWRRjJcidOb4FTAvA8ymcwRZOBVj+n0MWDYTPgHo8pzUhvzr1FZuWvp
         lciz2SGH9sgl0zoouh2dfC6aUNFccMckVrFJykR3n1+kxH/Hs5Kz5Xa2DwfrTbRiHm8e
         ++1mIv+zPzxAA4CpbP3KY6dbUzk1F0nc2/ilQ8aToDFRiLe+anZoBmEtemXwCue68vRo
         yCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699887211; x=1700492011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3mRz0RhXvXEDvxsQyGFzA2Dam68j7hbTQ8jEDNkV7Cw=;
        b=KsWguMuypuOkO6yewABUZDkt+d04/ZnB8DLR/Pn2CvS6F618mHmzDKc4MRN/0RxKZB
         eufXQlBhclo/qTp47yUJPep8atXoFPfkCYCkmxtXuA1XDUjez/tIpuqzmMMcfidiZZr3
         KBfWFUE8SYUnzV7K6GAoFWnVBBVWlW+ca99HaVb60F7euree1oxijvxQIJSStJkM9Wen
         /zf7FvEx8mFtu3X2QJazu0x150L9gMD/b3IIztLFu9yESTFw+EtYKVTkDXRJCfyjXlnH
         4n+R+Tder5Yj0FeAoLdgs/pydTG5oGUBDaj8Qw8l+/Qcfan4NIRO4m+olff4EujkjDkH
         Ejow==
X-Gm-Message-State: AOJu0YxUlSNGnCs3mWuthe8lp8LnwgjqFIEhuBoeaCNYpoWLKoMFTBCA
	jaDkLEA4LMJuiqfqWGd66cr2wQ==
X-Google-Smtp-Source: AGHT+IGexvXHE9m92iJ8rHBEKfIRIdYbC12J7VLNjDkZ8FPbr7i6C9RDxa06fLL1FfG1wxc/8RUEZA==
X-Received: by 2002:a19:2d4b:0:b0:507:9787:6776 with SMTP id t11-20020a192d4b000000b0050797876776mr4929444lft.5.1699887210818;
        Mon, 13 Nov 2023 06:53:30 -0800 (PST)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id x24-20020ac24898000000b0050794b05c8asm991429lfc.42.2023.11.13.06.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 06:53:29 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Mark Gross <markgross@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: connector: usb: add altmodes description
Date: Mon, 13 Nov 2023 16:33:07 +0200
Message-ID: <20231113145328.42575-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231113145328.42575-1-dmitry.baryshkov@linaro.org>
References: <20231113145328.42575-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description of the USB-C AltModes supported on the particular USB-C
connector. This is required for devices like Qualcomm Robotics RB5,
which have no other way to express alternative modes supported by the
hardware platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/connector/usb-connector.yaml     | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 7c8a3e8430d3..9922622abf51 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -14,6 +14,30 @@ description:
   of a USB interface controller or a separate node when it is attached to both
   MUX and USB interface controller.
 
+$defs:
+  altmode-desc:
+    type: object
+    description:
+      A single USB-C Alternative Mode as supported by the USB-C connector logic.
+    properties:
+      svid:
+        $ref: /schemas/types.yaml#/definitions/uint16
+        description: Unique value assigned by USB-IF to the Vendor / AltMode.
+      vdo:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: VDO returned by Discover Modes USB PD command.
+
+  altmodes-list:
+    descrption: List of Alternative Modes supported by the schematics on the
+      particular device. This is only necessary if there are no other means to
+      discover supported alternative modes (e.g. through the UCSI firmware
+      interface).
+
+    patternProperties:
+      "^[a-z][a-z0-9]*$":
+        $ref: "#/$defs/altmode-desc"
+        unevaluatedProperties: false
+
 properties:
   compatible:
     oneOf:
@@ -171,6 +195,10 @@ properties:
       offer the power, Capability Mismatch is set. Required for power sink and
       power dual role.
 
+  altmodes:
+    $ref: "#/$defs/altmodes-list"
+    unevaluatedProperties: false
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description: OF graph bindings modeling a data bus to the connector, e.g.
@@ -289,6 +317,13 @@ examples:
             compatible = "usb-c-connector";
             label = "USB-C";
 
+            altmodes {
+                displayport {
+                    svid = /bits/ 16 <0xff01>;
+                    vdo = <0x00001c46>;
+                };
+            };
+
             ports {
                 #address-cells = <1>;
                 #size-cells = <0>;
-- 
2.42.0


