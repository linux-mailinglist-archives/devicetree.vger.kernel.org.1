Return-Path: <devicetree+bounces-15486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F8E7EA5D6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 23:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FC161F2295B
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 22:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAD623C060;
	Mon, 13 Nov 2023 22:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ssFwK2mk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78E12D616
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 22:15:34 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34C1210EC
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:15:32 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507cd62472dso6585962e87.0
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699913730; x=1700518530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDEfI3fmZ1biiC+ccdWJBl3geYA6zIrVQqlMMvHL3wk=;
        b=ssFwK2mkgSNSnesj16Xy/wTZkDqnwfmfXiNyp+FdHyFeKD3+o9RuKtvz4oqgwdpfSx
         L5clYqLBVZmWgM69uI1sm9JUP0PgJqQ7yerB9rOKYoy6iMzuvT2n6MzN2aoXrv7qotlt
         8SzFwyIRBXkGcURmbkR3u45UnNy6iLd5oSHBZbsSUYcDXqnzgN+soc0DSX9r67Cn1m6h
         FwFZtpnINDevzJBuAPH9Nc7l1Bfen1TCEWp1oOA2dRg9KeDkgjPLsw43rr/EbXmwazPh
         QlvhPfGI4+pY1wt+y9XvNx4n3ACWb1284ZkhK/VbjPWVrpK77jZpbeEjsuEsCIwNNo8p
         GY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699913730; x=1700518530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KDEfI3fmZ1biiC+ccdWJBl3geYA6zIrVQqlMMvHL3wk=;
        b=fUjSo7hS3VQ3kE5LLaQhzAQOgQ0xVzJ/kHMbp1FWCNgZQWX2ibtiYcd4SUwkSTcqx1
         166dXaFAMkuyPYRJv26nNUv1iHYBYfmFX3deBK7jhqX+lD4uFWpoBUEZTntoUZmv0JED
         LRI/M8Spa+uKRJfrQOSRrp8QPBKVsGLovvdWXaDO4Y4cFGywc53jae3zyPwjWLRaJ2qA
         9tEziC5AR5hgHWg2nPdIhd7sT+iw/lzhGXZYWe1q9tIDRXnD5CNZxp4N2YpDeEe0eTFm
         fofE2hSSwuQ8rczxXgFTuQKQx2+Xrt51KDxjQsPCAmXWkjio49RSIQpt1RQBclH9DX/T
         WukQ==
X-Gm-Message-State: AOJu0Yyux6Qjlwd4cL37I3wmzExAw7NfhDqGt7hlwkrc3XJf6pNeysyX
	QPU1Kn4aubEbIU+d4jy6qCZLgw==
X-Google-Smtp-Source: AGHT+IG/Ybushcz8/wmWdZjZKPiaPV3O37JJsoL+tgbJhyD9BVkl1IG6CFz2r5tJJdU3gJmqfQiRPQ==
X-Received: by 2002:a05:6512:3044:b0:509:5100:6060 with SMTP id b4-20020a056512304400b0050951006060mr324350lfb.0.1699913730343;
        Mon, 13 Nov 2023 14:15:30 -0800 (PST)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id w8-20020a0565120b0800b00507f18af7e0sm1097578lfu.4.2023.11.13.14.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 14:15:29 -0800 (PST)
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
Subject: [PATCH v2 1/3] dt-bindings: connector: usb: add altmodes description
Date: Tue, 14 Nov 2023 00:13:27 +0200
Message-ID: <20231113221528.749481-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231113221528.749481-1-dmitry.baryshkov@linaro.org>
References: <20231113221528.749481-1-dmitry.baryshkov@linaro.org>
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
 .../bindings/connector/usb-connector.yaml     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 7c8a3e8430d3..1bd51b86906f 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -14,6 +14,31 @@ description:
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
+    type: object
+    description: List of Alternative Modes supported by the schematics on the
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
@@ -171,6 +196,10 @@ properties:
       offer the power, Capability Mismatch is set. Required for power sink and
       power dual role.
 
+  altmodes:
+    $ref: "#/$defs/altmodes-list"
+    unevaluatedProperties: false
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description: OF graph bindings modeling a data bus to the connector, e.g.
@@ -289,6 +318,13 @@ examples:
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


