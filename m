Return-Path: <devicetree+bounces-24287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B851D80EA5A
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72F14281454
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 11:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84D65D487;
	Tue, 12 Dec 2023 11:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ofd9wCxX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B4DDD3
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 03:27:43 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1d03f90b0cbso10185755ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 03:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702380463; x=1702985263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UVcLWo9qevYj4NVMpda1U8nHLS2CP5f3SkgdbKzdChk=;
        b=Ofd9wCxXLzxyS8Ja+/Ssg0S6PUQwMAFN9bv7NGUqswLQGkHaGlaZVAK1srsYGfxy5Z
         WL3fFOgFzD3meH7bd5FWRJwZ3baZH5g/1qX2TYQLVCtfRqhKgNjMOXGFgcXcyqQwVhFc
         bD8hdAfjxSL0xLWnUXzanDJEjJYA6MpEzbtZcRv1UaFAvo9W4d0fyK/+UfT+LVDDg4nu
         t+KeSwCUf0rH8dhOkks1neqlXZgkmPlOo8yFZCvu3Goi/8qWIO5nKftnGMd7boGtUBHb
         QdmeWOop5s5XuLsF80zIF6xXjTlsbLi5N+e+pLDm91uRztXOvHZT7FF057bX4sA55vnX
         qseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702380463; x=1702985263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVcLWo9qevYj4NVMpda1U8nHLS2CP5f3SkgdbKzdChk=;
        b=JF5M9AdCitrA/g3oIdmO+XOMLr5u97nrlH7dAfPl+SkdzVprQiBjKvp38PckKKmWk5
         S5zd45jAi71h33eyPtaC6CxRBnvrYlbESSS0PalargvJhrf/Ki4NNHwbzx0BuO/oFH+v
         5MVdfNImy9RaGi1ocVMYDpOqauh/Do+EutilN0ldH97CDiFShr7NXYZwwP4WqSeO7d9D
         OTt+GLnPnH2opTRJ9Q7QuUJJNbBeZEl/6tbKk+Bsh0JkxD4Elr1SXPN4uH0yHwQvJMyp
         E2XZMSsp6BxDwpXYRktQ6r1dVnBZJAGbgR1PdawqGSD+1JCs00jOC8c23luEZvQuQGwS
         +/aw==
X-Gm-Message-State: AOJu0YwCuWfW4z1mRZHSiTwM/iHQ33NRQhj3IClEzVcgVyddM/xjooMu
	hADnC+dt2Nx7oXGqlbQvtUhHSguMGEA=
X-Google-Smtp-Source: AGHT+IE7LAy9GV8WyXYbwCWEPuMo6VQhdxFQbU7cfXD/Sg14xwrc4hSVNX0kmqEDX5yFtgiquxQugA==
X-Received: by 2002:a17:902:ee81:b0:1d0:5efd:35cf with SMTP id a1-20020a170902ee8100b001d05efd35cfmr11080044pld.4.1702380462710;
        Tue, 12 Dec 2023 03:27:42 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:a620:342d:797a:5c59])
        by smtp.gmail.com with ESMTPSA id w18-20020a170902e89200b001d051725d09sm8415421plg.241.2023.12.12.03.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 03:27:42 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: cw00.choi@samsung.com
Cc: myungjoo.ham@samsung.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	shawnguo@kernel.org,
	marex@denx.de,
	hvilleneuve@dimonoff.com,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] dt-bindings: extcon: ptn5150: Describe the USB connector
Date: Tue, 12 Dec 2023 08:27:27 -0300
Message-Id: <20231212112729.700987-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

PTN5150 supports USB Type-C connector, so improve the bindings by
allowing to describe the connector like it is done on nxp,ptn5110.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
index d5cfa32ea52d..3837da7416e9 100644
--- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
+++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
@@ -37,6 +37,11 @@ properties:
       GPIO pin (output) used to control VBUS. If skipped, no such control
       takes place.
 
+  connector:
+    type: object
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+
 required:
   - compatible
   - interrupts
-- 
2.34.1


