Return-Path: <devicetree+bounces-24487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ED70080F4E3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 18:49:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9796C1F2152E
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CFF67D8AC;
	Tue, 12 Dec 2023 17:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KF5rf7ao"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4335F9D
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 09:49:22 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-51f64817809so985220a12.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 09:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702403362; x=1703008162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rhtIJYJ5IrHbc4P7are5F0+u6NGnL7LrCMmoPv/s/FQ=;
        b=KF5rf7aopPMlhmiocYK1M0QME1zBw9/iOVt+4Rl6sSmufBZ3J24q/7ayT36JK5pU/c
         yxvpFAfGTeWuYncNdEoBHnmk2VaE2YrXYv3kB/qyN1/TYMgAhty3zHmL/hgPivLwa+pT
         kfwzjmYZAobZPH4O2RlwJ+gVVjN0MWjvPpPldnKfM67XMiTFMsYirLlWsPgYKVWJRxqG
         bFq6pyO0FYuWSxxStE74YsPw4paNe4mYxC+kBfZtgJP+NhL7iurt28+JxBm1Ye8oCtiK
         WdI8P2q/pFt4Am62hajb61wYq6nZb6yXXH41oD85vVWG/xmRyXBNwy33k1zBs1EjC+5O
         rW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702403362; x=1703008162;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rhtIJYJ5IrHbc4P7are5F0+u6NGnL7LrCMmoPv/s/FQ=;
        b=snEztPviOhJrDs54OqHqSdVKQ3B2rNbKgSsYgXOpFXDoB3zFg1Y16Q0fcNCuLY6qEf
         kiPoG68ZDdOmC8kjF7FbTdoVAg/vIePgXjPyhxWEyITQ+WQI4tewR1L++75YbcXXtEbJ
         ThYfrEoLIMj6uD+4/cSma7AAXeyhtoJ8EVNPMuwAFFzVxqTStd8UwgAcGmTgoI7cNT6W
         yml26XnqkYs/355hurL3b62kX1F3eTtLY/CfrSKO6Ns7pnN/vtWTyET1SDDrmN70EcsU
         Fic7UDdTLxrFFlbsCgE7Z0HcQN9AgOfPeu1dKbnSLsRY86Dz8Z9jVAbBdmQGGn4WyawB
         TTSg==
X-Gm-Message-State: AOJu0Yyx7Ugrq1TmwSLw6T5U0Fi47e7w8VoDuv2CKXbqv6DfphrWqcBU
	kZNrIQ6eFXQRaEXPuGEHNnY=
X-Google-Smtp-Source: AGHT+IH/flFTNCLyqHck0eKYrLllXI1borR+wifYtTutCVWaKl4Vkt9ZCHRr8/4A8Yd0y6v86baAbA==
X-Received: by 2002:a05:6a20:3d07:b0:18b:3c9b:f196 with SMTP id y7-20020a056a203d0700b0018b3c9bf196mr16607844pzi.1.1702403361685;
        Tue, 12 Dec 2023 09:49:21 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:a620:342d:797a:5c59])
        by smtp.gmail.com with ESMTPSA id w23-20020a170902a71700b001d0c418174fsm3115008plq.117.2023.12.12.09.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 09:49:21 -0800 (PST)
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
	Fabio Estevam <festevam@denx.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: extcon: ptn5150: Describe the USB connector
Date: Tue, 12 Dec 2023 14:48:45 -0300
Message-Id: <20231212174847.759164-1-festevam@gmail.com>
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v1:
- Removed type and unevaluatedProperties: false (Conor).

 Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
index d5cfa32ea52d..b3e5c0df0cd7 100644
--- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
+++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
@@ -37,6 +37,9 @@ properties:
       GPIO pin (output) used to control VBUS. If skipped, no such control
       takes place.
 
+  connector:
+    $ref: /schemas/connector/usb-connector.yaml#
+
 required:
   - compatible
   - interrupts
-- 
2.34.1


