Return-Path: <devicetree+bounces-7192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6E77BF9F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:41:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E00C51C20A62
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A6518C2F;
	Tue, 10 Oct 2023 11:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cFHjyAI2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AE4D515
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:41:33 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBF7AAF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:41:32 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-693400e09afso1482589b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696938092; x=1697542892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2SbQpjA2N0dg4hNK7K0m4YHQ09Ib2RZaELYdUWq8NX0=;
        b=cFHjyAI2SfU8YjHlUeOFoJGcvTM9Th8jaMPs26wzRT1ie+KXs6YaM67rL7X1jgpeM4
         D/Zx4sxdjJD0nrL1ziJsDOcHEZlhSifrJAKm+GvVJwQtqjPMEBUXpSDU06KhVnVl9JTp
         3YeYoOSBjM9j9nNKIE6uDhugp/Cr3fpabuvQECfejNSdmDzrRQv6NHt2RrN3omAkAAvV
         q/XwQph1s9VhbZA+tJZdxH6HmXatRY09/pyKw0UOwJqRgem8+WGHXkR2V0CPZAFuwJrC
         vr8q9thEpNPZaawhAHpyA+Jbr0/+agnVPf1sMDu37kpx8TJELZzDSZkjOxPDgczAzUGI
         8FWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696938092; x=1697542892;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2SbQpjA2N0dg4hNK7K0m4YHQ09Ib2RZaELYdUWq8NX0=;
        b=D7j4pE36Hjw9MgbH0RyeRas3ur798np7l1aqyj8iIVTH+yte6WkyS+BN/iierpqrR7
         5Na9FQc4pjniVzMXDPGPZ9KOd05M9yeN7MlSjaODVXqoCk8joMiFGRGpctxp7xw4sxn4
         LqwYOhgJlJJFA7AC45JnARQhtEQWoO43gFGZTJDyoO0rt+86UMHB+KIIXpynEx9EbiBr
         QJvMy1WPlFqb7ML/q5Xm1FzbHmASo/2t1xrtxX4LmsW5/PmNPMZhLABCzfn9zzPXlGM3
         5EirwYD7p1iaMQLb7Hk7whBiRpnW1w1iRuDReI/K4DiCN821AncUIDfKp/afN8lpx/ZV
         pdig==
X-Gm-Message-State: AOJu0YxX6xi/gG+ymkaTtJolcQgq6eBKudd2d3vG++kQK642MgCqzVGw
	PlH63jfQwxUPG20qoGZKwMM=
X-Google-Smtp-Source: AGHT+IH2Pab1gOyb8MApo1PTsWZ1RzZG74B6x2V/S3KlcoHXZ5940W7Xxg0Y1cS20tYXTLXr7bY1ow==
X-Received: by 2002:a17:902:f24b:b0:1c9:af6a:6d12 with SMTP id j11-20020a170902f24b00b001c9af6a6d12mr2033793plc.5.1696938092003;
        Tue, 10 Oct 2023 04:41:32 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:f1d8:e6e4:3ef2:66e8])
        by smtp.gmail.com with ESMTPSA id a4-20020a170902ee8400b001b890b3bbb1sm7526553pld.211.2023.10.10.04.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 04:41:31 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: srinivas.kandagatla@linaro.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
Date: Tue, 10 Oct 2023 08:40:34 -0300
Message-Id: <20231010114034.3660226-1-festevam@gmail.com>
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

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
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


