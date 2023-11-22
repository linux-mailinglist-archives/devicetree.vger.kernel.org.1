Return-Path: <devicetree+bounces-18126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDAC7F53A0
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27949B20DEB
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 22:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 972301CA94;
	Wed, 22 Nov 2023 22:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A70F10C9;
	Wed, 22 Nov 2023 14:44:50 -0800 (PST)
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-35ba5e00dc5so1065135ab.1;
        Wed, 22 Nov 2023 14:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700693089; x=1701297889;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dOikdkPRwRxmGwSUmHKMwAIqj7noxVlno/TgxvlhfgY=;
        b=R98wHvw1cDuPjWNZba6oGuG3/DDpF9F0qN3c92H2xxjkjUe+TW8gmZ/Se+76zmZBT3
         T+EgdHPlSl1CHt3KWZGJ3mULIrkiF20lNlNq1L3DOy/okpXarlLq4D0w5E9OfQDIf40u
         D6Wc/fLh/42sqP5N1ZcJCAlIwGyAFTCaQZ+c8DGaJbtY4V5tyLcv30BOu7TYXcWB7Qmn
         J0xM8jmts/ahFAv6rsVyMVHGELEiqYw/TePTaJNSeva91/TCZmDAyBZf5Dneb7i9Uhf8
         s7jc2Ov5UUHVezTTT9wPP7mVl7/xT/atqpl675khbP86AdJUmBI9ILC9WfRknTz7p/Bk
         o6NA==
X-Gm-Message-State: AOJu0YysIK8NoP9q9LdH+8a/XNh/VWt1bBmyoRiMiltERb9L10eaoKaK
	A/fCxxn9TPx8Cux/gQoJw/1Bq53HiA==
X-Google-Smtp-Source: AGHT+IH4xdm55rf6fjnkKmiDuqM0N+SsbGI6yZbHVZnjVfoO4fXJjJ0Pc+Q/FOVFSd++4w8z5URABw==
X-Received: by 2002:a05:6e02:4b2:b0:35a:b337:6f58 with SMTP id e18-20020a056e0204b200b0035ab3376f58mr3775500ils.16.1700693089245;
        Wed, 22 Nov 2023 14:44:49 -0800 (PST)
Received: from herring.priv ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id v11-20020a056638358b00b0043167542398sm98760jal.141.2023.11.22.14.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 14:44:48 -0800 (PST)
Received: (nullmailer pid 2810199 invoked by uid 1000);
	Wed, 22 Nov 2023 22:44:47 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm/calxeda: drop unneeded quotes
Date: Wed, 22 Nov 2023 15:44:32 -0700
Message-ID: <20231122224432.2809781-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop unneeded quotes over simple string values to fix a soon to be
enabled yamllint warning:

  [error] string value is redundantly quoted with any quotes (quoted-strings)

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml b/Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml
index a9fe01238a88..76b65ea149b6 100644
--- a/Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml
+++ b/Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml
@@ -16,7 +16,7 @@ maintainers:
 
 properties:
   compatible:
-    const: "calxeda,hb-sregs-l2-ecc"
+    const: calxeda,hb-sregs-l2-ecc
 
   reg:
     maxItems: 1
-- 
2.42.0


