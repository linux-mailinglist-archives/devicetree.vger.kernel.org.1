Return-Path: <devicetree+bounces-2529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA207AB256
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 14:42:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 02125282384
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 12:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B658E22F0E;
	Fri, 22 Sep 2023 12:42:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2766168AA
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 12:42:40 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C56938F;
	Fri, 22 Sep 2023 05:42:39 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c4456d595cso3810185ad.1;
        Fri, 22 Sep 2023 05:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695386559; x=1695991359; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nywMer+Mj3vum0HNAimi+OFLw1xlk4qhC7kYw/lyJjE=;
        b=gt+an6bAPBVuPEVr2zjZc8396+cBGLJU3j2aiBNbfCYCCZjlhOs2BTBGvhACXTq2C3
         ErDRQcKVRQaEu3JRYeX6svP6hiGTWSwm4qkP0sQEDyhPAokmplRsNB5q6PiEK6va29XJ
         3+ZE76r40Wq8KGroLbKtJ3hgFmRwx5OqemIrNlNOBZMP9z9h1qb45NjloNpb+FcHghcC
         JpXIEa6Qlp9SyTyxwixoviXhyNAqQx0UDSNcQ6F5FnH+P7zHI56e6MLPk7jzt9/YtR2X
         2uF17D+Q0L4H5ZwOnpR0QD/Pp1j3L10xLx8H0QB5gD31WG+C9TfeSizoottrlScSGvu5
         V/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695386559; x=1695991359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nywMer+Mj3vum0HNAimi+OFLw1xlk4qhC7kYw/lyJjE=;
        b=wMyAqK+TXv9fvStlcU9XMn7dxApHXyt+5Zs3Lir/iKTtBdYLcUK2mID0yqVsGZcnUH
         7GT326nPcqIoetLWieiDLw2ipNi06HVJasE5Ia6X1tfx/XwiLWDxB8tgeVuhRXJJi55F
         jiRyavXz4iqA72lqQh1zAMLAS3GuPZzP06s/5wWDv5hssSjJU1BH9tVGvx4fe86DzIKV
         Darp2cFy20MXNiHVMlZerqqTIwt5cN0+jwWcn395qp6M0Z2ewhAc0NYscfV62EqwDXaH
         s+8XEXlhROwF3vJzrx9dGSTiEO9JDHDMI/80+NXSmSq2A7sZCNN3ZgsNGPasY6lM1pZn
         GPmw==
X-Gm-Message-State: AOJu0YzcDdJR2mE/YWFWg+nRT8YnarjgJfGa2oX2EHjX73Tm7vbx3gw4
	3rny6OLIbH7hq5iS+YNHBZU36E+Do0Y=
X-Google-Smtp-Source: AGHT+IFZ4ZOOnJhg5/+HD4kDbMuvkgHPN0tgqhlRUeBRi9yf3KTQLliylVhvzNVngckGnyUvDK58yw==
X-Received: by 2002:a17:903:2303:b0:1bb:d7d4:e2b with SMTP id d3-20020a170903230300b001bbd7d40e2bmr8422397plh.0.1695386559195;
        Fri, 22 Sep 2023 05:42:39 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:2546:6c99:4de0:9123])
        by smtp.gmail.com with ESMTPSA id jg13-20020a17090326cd00b001bba669a7eesm3368170plb.52.2023.09.22.05.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 05:42:38 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/3] dt-bindings: pwm: mxs: Document the clocks property
Date: Fri, 22 Sep 2023 09:42:28 -0300
Message-Id: <20230922124229.359543-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922124229.359543-1-festevam@gmail.com>
References: <20230922124229.359543-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

The 'clocks' property is mandatory for the PWM to operate.

Document it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v1:
- None. Only collected Uwe and Conor's acks.

 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
index 655f008081d5..8f50e23ca8c9 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
@@ -25,6 +25,9 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
   "#pwm-cells":
     const: 3
 
@@ -35,6 +38,7 @@ properties:
 required:
   - compatible
   - reg
+  - clocks
   - fsl,pwm-number
 
 additionalProperties: false
@@ -44,6 +48,7 @@ examples:
     pwm@80064000 {
         compatible = "fsl,imx23-pwm";
         reg = <0x80064000 0x2000>;
+        clocks = <&clks 30>;
         #pwm-cells = <3>;
         fsl,pwm-number = <8>;
     };
-- 
2.34.1


