Return-Path: <devicetree+bounces-8978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5893B7CAE4E
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:55:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CC142812D5
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CA492E64F;
	Mon, 16 Oct 2023 15:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7B92C843;
	Mon, 16 Oct 2023 15:55:38 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D4A783;
	Mon, 16 Oct 2023 08:55:37 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6c496719a9aso2468038a34.0;
        Mon, 16 Oct 2023 08:55:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697471736; x=1698076536;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRerAnxCUqMpLPzL2U+W33V1BBPnxzPAPP9+9Nf5S4U=;
        b=VuN3cRErX9nssesiCfgF3NKWsXv0igYvDWTULGPEmA3uOxFrSGVl3be3+ur5muFfHT
         dZayHDXcYFo3PMiUk9RzsAtziVttnN6kubzFOegFeEpyqLG0hQ7c3dFf5j1i/htY1ARI
         7vfFba7WWk+J0aGCy1SnIMT5YLrrtU8uu1lY7L6n0Akbw9rh2eGI0jIt5pwqz73aEdHC
         HD7MaeLyJQLLqck35CtKKz8BTmr8PUu+SuXqbmAbjdTM7G20j1jUeXG0o+06T26kPhIK
         8TRZl+8tL4P5coT5Fc9+zIocgIAiq2m6emBP5a7mUEMLRphWaXjdy6rAw2wSaizuP93O
         XNFQ==
X-Gm-Message-State: AOJu0Yy66ys+Kb/TZwWZdWryg5+cOP9tYkANpQvqFvW21jRdbl+VApOO
	zmxBBhYnzqcfolWQXfs5EkLLg5dyXw==
X-Google-Smtp-Source: AGHT+IEgGnWwWCwXC/MWSMrQ3hgYX6hh6hy4XAZ/g9tulnhZsn43JY8+y8s3hr3MyQ4lMPFif1ArzA==
X-Received: by 2002:a9d:685a:0:b0:6be:f8fc:8207 with SMTP id c26-20020a9d685a000000b006bef8fc8207mr4553001oto.17.1697471735915;
        Mon, 16 Oct 2023 08:55:35 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m4-20020a9d7e84000000b006c4be829aa8sm1771179otp.44.2023.10.16.08.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 08:55:35 -0700 (PDT)
Received: (nullmailer pid 2973568 invoked by uid 1000);
	Mon, 16 Oct 2023 15:55:34 -0000
From: Rob Herring <robh@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: usb: ti,tps6598x: Disallow undefined properties
Date: Mon, 16 Oct 2023 10:55:27 -0500
Message-ID: <20231016155527.2973385-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Device specific bindings should not allow undefined properties. This is
accomplished in json-schema with 'additionalProperties: false'. With this,
the 'connector' child node needs to be defined to prevent warnings.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/usb/ti,tps6598x.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml b/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
index 5497a60cddbc..6ab674dea4c6 100644
--- a/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
@@ -32,11 +32,14 @@ properties:
     items:
       - const: irq
 
+  connector:
+    $ref: /schemas/connector/usb-connector.yaml#
+
 required:
   - compatible
   - reg
 
-additionalProperties: true
+additionalProperties: false
 
 examples:
   - |
-- 
2.42.0


