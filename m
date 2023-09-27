Return-Path: <devicetree+bounces-3975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A4C7B0BD1
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EE81D28546D
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36FB4CFA0;
	Wed, 27 Sep 2023 18:16:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA69262AD
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 18:16:12 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6180AB4;
	Wed, 27 Sep 2023 11:16:11 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1c60c10db16so10365635ad.1;
        Wed, 27 Sep 2023 11:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695838571; x=1696443371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o0vSW5Wj5X6j0h/2ki6LSDJZa1MPmcl7J0cT4Is8Ajs=;
        b=Iqf3oX82Wcezdr0PnyZcoRHVned3n0zGCfkxImfJFHEaxYnDnibx9Wgs9z+Nis1xdB
         GRXaSbhqRTpBEy9jYOR2qSDoANqaF5rM4zpnXrajT4kuQpwKRsoKKXchPJVcygRbatk+
         vrzwgz2UCxzfp5pnaBRrDu1fAJqa2B+6rIa4V8d7tex9S6Pw1pXcDQ1QvPI0oWTz90EB
         hC6g83E+jEwHOuciT6uQomixVEofTALMrFhv7vEGOnHWbkqJ/p5rk9pnMXOHUugRpIG/
         q2RvZkRRrXG1X3uFYie48i8FDImU8AjUFqsXZSVzhFzIsoHauyZ3eYjsEYsa4MdeJ8Pe
         eT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695838571; x=1696443371;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o0vSW5Wj5X6j0h/2ki6LSDJZa1MPmcl7J0cT4Is8Ajs=;
        b=Nvs49/tCJuBUJF3lgqYAwJt2RDwL3DMXXbV0eohMoXTc2wTGWHfpdQRC8XX+egNz26
         Gl5F5nfscVXWk9wme6WBsr1jMkhCZMQOkKjyhWXPzufxKWhlAGEtrj8Se51AHW+Jb+Jq
         X7a1wQKpjjFNyiVoRrXu4DiqincO209PBsEFU7unsYuW7eB2nRskehxXf8yYOh7W34zg
         zQy/7PjoLd5Jz4EHGGu/9zDeyjD6dbis++U1DNkFXdV3aubZXDdjK6tZ0HqjIgeI5rZA
         On+IKp5kTS8XThZjZht4sU/n8ru5pxesk3o01dPgXCPk/VJSF8fDk1mN+SSzXUGKEg/a
         jepA==
X-Gm-Message-State: AOJu0YzkoblduJSeVrMxBLMjyan6XKfmpSr/LGK/tH9RjyNWDdMqBcgD
	a6nGkKH3uXHhEcCwWlH9kCXUeWRp77c=
X-Google-Smtp-Source: AGHT+IE0pJeGKttwGX2TfrnMPkRRPG1ElIvoF36aRcWqVlVvLuUyeKpcW/ccgfZ8jCvRtRb6/UuAIQ==
X-Received: by 2002:a17:902:f548:b0:1c6:2902:24f9 with SMTP id h8-20020a170902f54800b001c6290224f9mr2898111plf.1.1695838570729;
        Wed, 27 Sep 2023 11:16:10 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8313:ad6b:7769:5148])
        by smtp.gmail.com with ESMTPSA id jw12-20020a170903278c00b001c625acfed0sm5673257plb.44.2023.09.27.11.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 11:16:10 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: mchehab@kernel.org
Cc: sakari.ailus@linux.intel.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	martink@posteo.de,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] media: dt-bindings: hynix,hi846: Document orientation and rotation
Date: Wed, 27 Sep 2023 15:16:00 -0300
Message-Id: <20230927181600.272904-1-festevam@gmail.com>
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Document the 'orientation' and 'rotation' properties, which
are valid for the SK Hynix Hi-846 sensor.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
index 1e2df8cf2937..ab0ff6f60fc0 100644
--- a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
@@ -48,6 +48,10 @@ properties:
   vddd-supply:
     description: Definition of the regulator used for the VDDD power supply.
 
+  orientation: true
+
+  rotation: true
+
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
     unevaluatedProperties: false
-- 
2.34.1


