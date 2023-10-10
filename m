Return-Path: <devicetree+bounces-7350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE0A7C025D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:14:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C8001C20B56
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B0AE6126;
	Tue, 10 Oct 2023 17:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eufR/s/S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE072FE2A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:14:52 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDEEB9D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:14:50 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c72e235debso13216845ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696958090; x=1697562890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LaSkGGmp5BNiRx9qvUCepbxW/JPkqIjBZQoL/JF6cEM=;
        b=eufR/s/SKcrERISeFvQcDQcOiw4hkUecL2k/fOyWsEj40aQUe/SYE/gCWrdrCjVYXG
         RCS/iQZ0hajg7N+Bi3P7+1NEspw4UM9VkVMGO8aBJAkj30dyFw/jiHPG53ViR7wGyuID
         OT0N7b2KHiSFDkCYCR6m0XRCOsNQwRt3UsJNi3ykMAZeQU66TDtOYpl+oHuI5QWAaF2O
         /tTPagRjUL7SonSvMd7jf6Ehl9CYFSrmxFA+bfx4iEPsDepBWlvPlbvCnbe4M0m6Fx6j
         VNyyqM9tmwVMTlhVu3pJx+3IkEvxRdABY+7V+Tz4OZkU9xTntNm6/zrC53y7KB/TVsVJ
         KY1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696958090; x=1697562890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LaSkGGmp5BNiRx9qvUCepbxW/JPkqIjBZQoL/JF6cEM=;
        b=Cft8ADQqhwCDbaAo4jgxqDEQC56QD4U1zI9I1ijyUkvnSwpJUzkbOcEk3dXd9wkv5k
         wzyAVlpw6EO6V4cV8JgKFaF0wWFcONbdxYzEpej/FEjbRVJ6gCxsrwgJamGGuHwSsAdQ
         JS8KyVcJ9nYIqetv9OGRh99m2qZRagjtTFDT26YgqVw0EryIBR49qKORHYrjgnFKbASW
         6e7LgaKoO9wIFzSsrRtye8I9i2Dy8ohaSx7yP5p6hvaNO9KqVT6Bp2c4lbp2MBA58m48
         4UrQQIvyW9pdeCD+nXeVQhEn7HE/TnYxOuqOjLwAX5DBvVPS6MdUY4xJCIn9F3rIX7tn
         fL4Q==
X-Gm-Message-State: AOJu0YykhVer2Uf1dJBL+GlcDPQ9dm8NYu7ZHvhxNqlbTpIqpXPSamCK
	pwiLkVb/xeWOq8T8tC6MeWE=
X-Google-Smtp-Source: AGHT+IF8I6apiIZFJc6ABfxK291E4IK5yRqLxIcBPKyBdw00s4p0ZKGf8pQGXjdjMl7ujTvk/ZGCPQ==
X-Received: by 2002:a17:902:a40e:b0:1c9:bd60:72a6 with SMTP id p14-20020a170902a40e00b001c9bd6072a6mr1727441plq.4.1696958090030;
        Tue, 10 Oct 2023 10:14:50 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:1ce:3624:df77:60f0])
        by smtp.gmail.com with ESMTPSA id z15-20020a170903018f00b001c7276398f1sm12053760plg.164.2023.10.10.10.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 10:14:49 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: srinivas.kandagatla@linaro.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
Date: Tue, 10 Oct 2023 14:14:42 -0300
Message-Id: <20231010171442.3693843-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Both imx23.dtsi and imx28.dtsi describe the OCOTP nodes in
the format:

compatible = "fsl,imx28-ocotp", "fsl,ocotp";

Document the "fsl,ocotp" entry to fix the following schema
warning:

efuse@8002c000: compatible: ['fsl,imx23-ocotp', 'fsl,ocotp'] is too long
from schema $id: http://devicetree.org/schemas/nvmem/mxs-ocotp.yaml#

Fixes: 2c504460f502 ("dt-bindings: nvmem: Convert MXS OCOTP to json-schema")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Added Fixes tag. (Conor)

 Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
index f43186f98607..d9287be89877 100644
--- a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
@@ -15,9 +15,11 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx23-ocotp
-      - fsl,imx28-ocotp
+    items:
+      - enum:
+          - fsl,imx23-ocotp
+          - fsl,imx28-ocotp
+      - const: fsl,ocotp
 
   reg:
     maxItems: 1
@@ -35,7 +37,7 @@ unevaluatedProperties: false
 examples:
   - |
     ocotp: efuse@8002c000 {
-        compatible = "fsl,imx28-ocotp";
+        compatible = "fsl,imx28-ocotp", "fsl,ocotp";
         #address-cells = <1>;
         #size-cells = <1>;
         reg = <0x8002c000 0x2000>;
-- 
2.34.1


