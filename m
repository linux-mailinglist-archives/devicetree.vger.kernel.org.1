Return-Path: <devicetree+bounces-56112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B98F6897DB4
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 04:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54F631F27080
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 02:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3EA71AAC4;
	Thu,  4 Apr 2024 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gcZv2HpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A931803D
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 02:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712197793; cv=none; b=qQPns/IugBtqwm/HKMkRaMOXZbzapGzj2arTd2sty5pEk8t2iWq46z2wn1S7cSl/tCN2HKhWCB8/W1knVLU0BB2q1gf4IPDRJtE3T+ZFXG4MjX9IoeWw0euvlXeQEt2cAYzGJJWx5uxnAxwPeEvaCYCcFosUbFIqR3rXt6WZdsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712197793; c=relaxed/simple;
	bh=oXJAPGjB0wkxwXFRkWUaS5HDlL8RvDF68JlptF+UQKg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=rfZ/ytEvEx/CvZvKq2uwQZLkztL1plPZLL3na8OKiUvXOH8ZHtuXQU9pZNDy/CwX/1yiVXpTyZ+Z+rt7EpLWRnGqoZbBvVbdhpC52NEfMaZkcIhTcPBSYkAGhIbqGPZ3c4WZ/ycOFUVN6nJpqV3/PeveCc/lSeswNb0sRlfqBys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gcZv2HpF; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6e694337fffso90124b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 19:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712197791; x=1712802591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b90vlsOf70GayonCq2ALhOC2zCZ/02BwoawluaVjjRY=;
        b=gcZv2HpFbPOVlm7FWHlqruiduUvqtVBbEOnZqT/5kX8eCsESlfiALdwB/BTqkOsGnZ
         k1uqfD2Aj3u+atkDbezA4zryIQ11vJ5XB2wb0aTpox1PkHRC0h9gsjZiJ9JvBErIsf0V
         ou4khceUD+WnuNPF0RR+OmyExBeamBt/58NrCTrKUphT3KPL2rpDdNIDE8rWkaN3zA69
         GaARE3tzMoYaZbjDOhDcPlnZs+LC4XyAxGTJ749aYxQcMTiFG8IuwxfhRfTTHhJ8Lx2R
         PwhsKdfnMQddTiXf1qlofGE7sCi3+W1lYawL3GCNjkFhN9z5gUiLle93YatvJotUz8s4
         Y3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712197791; x=1712802591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b90vlsOf70GayonCq2ALhOC2zCZ/02BwoawluaVjjRY=;
        b=SFqqbSfG8graczVtvr8nMP0GsaiKb+zDUVHa7zJxKHU1UVFMbJlFleITxpGxMa2Wiz
         NXDC+MONF+UyTbDewLM00XlOCWGH3EjgtxfbRJLFcsY5xBahc0HcY92bCWb2x3BBn6No
         j0qwMjWnlviYcTycVqSnL65Ic89DULerBVXWVsB/Gq9+gGEmoay45LcJyEYubCELNypF
         ORgcFx1jUbsTHMhzvWkv/dgl1055SNBLpQQvu80iu8Lr5Yd3e5leyGfoCTVOI4Q5H+Sw
         bUv3PSOOY0yXLmsiu+/U5a7RBeMCA+aKpXj54JyYqefiv7BjzZWpKw+U2cAPK4tGL6Pp
         62Ew==
X-Forwarded-Encrypted: i=1; AJvYcCWjw80bAuhicWYklEv8KrCU081uakigw4wcX+TmBGcY+EMEdTHVb6M65MY5i7aJRHbCkgEW0TDGaRSr1hnuM4yaoVihrLWbK8PL1g==
X-Gm-Message-State: AOJu0YxnCEWEHGMQZOrsVjUftaWZniXk+9zRVR0ixTfp3cmEDzOMr+8d
	fb3xNfC6P3KVglBy2r0QcZAMfjYvspoVykYo0/L2/0VEG4tYIrvEdAqfqYLe
X-Google-Smtp-Source: AGHT+IHBxzjOnlaG1Y06/71hhznIFZRVHgeONDBdOBnfICWcT4vDMwCrB2D74VNjAHTELaCfnhXT6g==
X-Received: by 2002:a05:6a21:7899:b0:1a7:2d42:7a8b with SMTP id bf25-20020a056a21789900b001a72d427a8bmr1707997pzc.0.1712197791524;
        Wed, 03 Apr 2024 19:29:51 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9c:998:79c7:d666])
        by smtp.gmail.com with ESMTPSA id n14-20020a170902e54e00b001e0f2dc4165sm14060437plf.60.2024.04.03.19.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 19:29:50 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: cw00.choi@samsung.com
Cc: krzk@kernel.org,
	myungjoo.ham@samsung.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	marex@denx.de,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: extcon: ptn5150: Document the 'port' node
Date: Wed,  3 Apr 2024 23:29:43 -0300
Message-Id: <20240404022943.528293-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Doument the port node to link the PTN5150 to a TypeC controller.

This fixes the following dt-schema warnings:

imx8mp-dhcom-pdk3.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/extcon/extcon-ptn5150.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
index d5cfa32ea52d..3472c69056ac 100644
--- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
+++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
@@ -36,6 +36,11 @@ properties:
     description:
       GPIO pin (output) used to control VBUS. If skipped, no such control
       takes place.
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    description:
+      A port node to link the PTN5150 to a TypeC controller.
+    unevaluatedProperties: false
 
 required:
   - compatible
@@ -58,5 +63,11 @@ examples:
             interrupt-parent = <&msmgpio>;
             interrupts = <78 IRQ_TYPE_LEVEL_HIGH>;
             vbus-gpios = <&msmgpio 148 GPIO_ACTIVE_HIGH>;
+
+            port {
+              ptn5150_out_ep: endpoint {
+                 remote-endpoint = <&dwc3_0_ep>;
+              };
+           };
         };
     };
-- 
2.34.1


