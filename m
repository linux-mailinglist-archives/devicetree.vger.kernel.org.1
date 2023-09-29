Return-Path: <devicetree+bounces-4474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 343EA7B2B7F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:40:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DAB9528263B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804F2187F;
	Fri, 29 Sep 2023 05:40:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4849399
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:40:23 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2417F1FC7
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:01 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so600259a12.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965999; x=1696570799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wor+2ysYovWwz79wDHgf6lw48XDzirr+UHoMWUaKK0I=;
        b=hv11lyyqdIZllhGvop+tiXsvBx+tCxEzKcTeHASCgpgZ9P2/FvzCwN43vmBXmgW9lU
         WT5FouJdYvDCClB9VU8nBoiBZb5IbUKYe2aHIZmaGrBOeqt4xX/1SiDuj4zEQF83xA6+
         XPqTN8YFTydiGU2wCnBNzQDIkhWp6pm6D5htLXIX+W4tzaxfm6A6BkQe2tPyFeyDhDK2
         qV1AcaIYCZlwbLFSMgIxEdEgpIzgUij3uquB0kjLpJ3FrfUB4hIJD5MZ1mvvdZn+6JQX
         l3IAv6QWf/bAzaRyzleVx0O5xlLqVd8BCDO6ZDyenLshiMqa12ghthwRxc3vqXZ+egsT
         wPUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965999; x=1696570799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wor+2ysYovWwz79wDHgf6lw48XDzirr+UHoMWUaKK0I=;
        b=G4VW4nh/DqAv8RCMgcb2p5zdl/Qv77V4ZFqR8AxXN+blmxlkTARH81Hr9VFc7H7YNu
         z1YQII9Rwc+I848l/+ar09NMsLsFDqFFfR8mUoDHtTi8xA2Mv/s/olJYu1uz9+FcmI8/
         umA5Xr4KRdTKSO6jyV0ie54WP3FZdagMa/BCIRWWgH8HjdsOQa9nzOVZ12rnBypMGfMV
         kembW00YUaSC70M1D/u+vaHzVAY52+zIJQj/bO2/0HtaLMZwAUJ1Bm+uel8Pa2QwbsZ+
         eupAeLD+CaZkr53jIoQh1gkBBHi0CyFBJmx5pO8mxMa3XCjmQXr7OAH3iTrhDTsD/P7l
         fsPw==
X-Gm-Message-State: AOJu0Yx4uKNzyXgO2+FC8NnOwI17ewjdWUMU98asZTlHczOZJ7rO/F+u
	ODVyC6Vgniotw2ffL0QK0NkPUg==
X-Google-Smtp-Source: AGHT+IGuHtC57n+o1bpWpASywaDobhLzZbsZm4sa2GVeKsCcbnMjDU8gtdTIYb+NLm0dPD1iTjOvRQ==
X-Received: by 2002:a17:907:948b:b0:9a5:aa43:1c7c with SMTP id dm11-20020a170907948b00b009a5aa431c7cmr3069995ejc.26.1695965999656;
        Thu, 28 Sep 2023 22:39:59 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:59 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	quic_bjorande@quicinc.com,
	konrad.dybcio@linaro.org,
	arnd@arndb.de,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 20/28] dt-bindings: pinctrl: renesas: document RZ/G3S SoC
Date: Fri, 29 Sep 2023 08:39:07 +0300
Message-Id: <20230929053915.1530607-21-claudiu.beznea@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add documentation for pin controller found on RZ/G3S (R9A08G045) SoC.
Compared with RZ/G2{L,UL} RZ/G3S has 82 general-purpose IOs, no slew
rate and output impedance support and more values for drive strength
which needs to be expressed in microamp.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- defined drive-strength-microamp as general and make if/then schema to
  not allow specific properties depending on compatible

 .../pinctrl/renesas,rzg2l-pinctrl.yaml        | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
index eb726770f571..86228ba69aab 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
@@ -25,6 +25,7 @@ properties:
           - enum:
               - renesas,r9a07g043-pinctrl # RZ/G2UL{Type-1,Type-2} and RZ/Five
               - renesas,r9a07g044-pinctrl # RZ/G2{L,LC}
+              - renesas,r9a08g045-pinctrl # RZ/G3S
 
       - items:
           - enum:
@@ -78,6 +79,21 @@ additionalProperties:
         - $ref: pincfg-node.yaml#
         - $ref: pinmux-node.yaml#
 
+        - if:
+            properties:
+              compatible:
+                contains:
+                  enum:
+                    - renesas,r9a08g045-pinctrl
+          then:
+            properties:
+              drive-strength: false
+              output-impedance-ohms: false
+              slew-rate: false
+          else:
+            properties:
+              drive-strength-microamp: false
+
       description:
         Pin controller client devices use pin configuration subnodes (children
         and grandchildren) for desired pin configuration.
@@ -92,6 +108,10 @@ additionalProperties:
         pins: true
         drive-strength:
           enum: [ 2, 4, 8, 12 ]
+        drive-strength-microamp:
+          enum: [ 1900, 2200, 4000, 4400, 4500, 4700, 5200, 5300, 5700,
+                  5800, 6000, 6050, 6100, 6550, 6800, 7000, 8000, 9000,
+                  10000 ]
         output-impedance-ohms:
           enum: [ 33, 50, 66, 100 ]
         power-source:
-- 
2.39.2


