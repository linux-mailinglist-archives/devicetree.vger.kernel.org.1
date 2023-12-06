Return-Path: <devicetree+bounces-22154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D39806AD1
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 10:37:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 946E51F2119D
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C1D1A710;
	Wed,  6 Dec 2023 09:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LBMT8KXt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC019C
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:36:59 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6ce4fe4ed18so563729b3a.1
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 01:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701855419; x=1702460219; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+2dLAKSciKS7QGuXNKASoK14doRScvY7pNxRNpgN9Vs=;
        b=LBMT8KXtIoIiGwby8qXJYgCBukB/eILGdRe6RUE7PbaPG5wHpr+UzFG54OtHIQWQuq
         S3aXECh1n18/0LJHcOmsK+iegy1r6I2w+gRnAMGNHk0q6/bC+cVQ3FmEPv+6JdJK3BDr
         gmqTPXDWb3mgS1ui6nmktYxOa76GEH0Fx2zMQBn9mXoUnAl/CpS/HYE0yC2Dpl9xPBmV
         nSeQDmqy354m3qvPpkjwak+scOQqjefc2aMG2cN7IMz9Ls/kppFz8zLyW/8LgemEUyyw
         ihzAnD1bQGiJDgMLeET3/0s3PxSx5wbNGQtgmpgV1S1XVTHG1gtOKeWYahwyu5yEU/sN
         YsyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701855419; x=1702460219;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+2dLAKSciKS7QGuXNKASoK14doRScvY7pNxRNpgN9Vs=;
        b=wU4usWrMSMw7mm1XsVYi8WmVzS9i0y0H9nd2IDBlhDv7bSgsgSu8LLHuYZYt1rE3On
         d1fhe9ThEAYlFUnN7ZgVgm5EWltlnltztmtlcAoOtSIz4XDj9Ik9cty/vMo4/ImgxWgn
         tiw3gvgIRVhamxHPyxHuReUVl5mLhpy0X28McHo2Mk5gCZMbORNFGjueDH0432sJLhHs
         beYcimGXtUG7mCvDYJ0B37VLf6ALXic0lxE8czWbOMVlQl29DnvXV+vQIQgvx5EBbAgO
         E3oS87DBvo6ku0cgyhVtPk6Zpka0ARewqdmsCPhccbaeBD++/rD6ibOZBW9JxUk+Aksj
         uE1A==
X-Gm-Message-State: AOJu0YygdJ9tCqGBIzkTCXUYje9IynX7bemQemmiXpucYiqRal4sbSRW
	pvU2+u9OP+qhT8LpiRidj0g=
X-Google-Smtp-Source: AGHT+IGuvJpJ2JVFORtV9m0mcL7xmhK4OZ504kkGXUtWUlhbRbAbMPOFwH0KxW02LP803euUV3Cd1g==
X-Received: by 2002:a05:6a20:4308:b0:18f:c9dc:df0b with SMTP id h8-20020a056a20430800b0018fc9dcdf0bmr1177622pzk.2.1701855419145;
        Wed, 06 Dec 2023 01:36:59 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:6764:e124:5ffc:3f5])
        by smtp.gmail.com with ESMTPSA id p26-20020a62b81a000000b0069346777241sm3052504pfe.97.2023.12.06.01.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 01:36:58 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: Laurent.pinchart@ideasonboard.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	aford173@gmail.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] dt-bindings: display: adi,adv75xx: Document #sound-dai-cells
Date: Wed,  6 Dec 2023 06:36:43 -0300
Message-Id: <20231206093643.2198562-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

When using audio from ADV7533 or ADV7535 and describing the audio
card via simple-audio-card, the '#sound-dai-cells' needs to be passed.

Document the '#sound-dai-cells' property to fix the following
dt-schema warning:

imx8mn-beacon-kit.dtb: hdmi@3d: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7533.yaml#
	
Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Adam Ford <aford173@gmail.com>
---
Changes since v1:
- Also pass '$ref: /schemas/sound/dai-common.yaml#' (Krzysztof).

 .../devicetree/bindings/display/bridge/adi,adv7533.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml b/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
index 987aa83c2649..df20a3c9c744 100644
--- a/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
@@ -9,6 +9,9 @@ title: Analog Devices ADV7533/35 HDMI Encoders
 maintainers:
   - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
 description: |
   The ADV7533 and ADV7535 are HDMI audio and video transmitters
   compatible with HDMI 1.4 and DVI 1.0. They support color space
@@ -89,6 +92,9 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [ 1, 2, 3, 4 ]
 
+  "#sound-dai-cells":
+    const: 0
+
   ports:
     description:
       The ADV7533/35 has two video ports and one audio port.
-- 
2.34.1


