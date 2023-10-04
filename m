Return-Path: <devicetree+bounces-5797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E1A7B7EB9
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 38BE91C20863
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D023A134B5;
	Wed,  4 Oct 2023 12:07:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9438C13AC7
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:07:37 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87B5BEE
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 05:07:35 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-536b39daec1so3582535a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 05:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1696421254; x=1697026054; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DcpgkwL12FHEODFIbiIinUiJz0ey3tDqVJ4nMPpi9XQ=;
        b=V9RCFdlJxJPeN2qqsrEOkUbdbMF+s1l7AbJ8SVSHF1CpLqDU0jAn7W6yIBckYTOF+F
         j+MEGX1ENQFHf1Qt9oVU1/zSaKL5ZG+2tX/nWl1KbTMDLeKAN6kqLhmjuYajxEaBWWIb
         8XZ1ysD/dinxHrXCCqPTPkhm1Pcq1OPUslnholPy7j/W6E/B+EfqljJ5J+SqfvOQilfe
         O/3VGquhkIbKpC6kNeZ//kEDnEwdzuvRl9FiQ3gXr67QnccPAH1mhN1/WRgk2ABwWl1z
         69fsbmrq4oVfpFYXrfxcNe7wGrtMO0XHa8vkW2QcY/SWu+/CwOk6H2t8Upo3uqucjpcf
         ZPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696421254; x=1697026054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DcpgkwL12FHEODFIbiIinUiJz0ey3tDqVJ4nMPpi9XQ=;
        b=ESxzf9Mt+XLwv+cX85YwxOwMaEbDTSgRXJx16iCcr9XeG7u7RwcghiHrln0EQW7mhr
         +RPfou87Km0j10NUbtChqZbD/J7dtBgvJfya7gHahJVqHarVHrRjvMNfeAuq4zuowf18
         ZXm7yp+dPjbZPa8XtBQ8Q2+xo2KL/mzaqXjHVSwTQB0RzfBGDAT5IwxKwy3ZKlxpEhV3
         Nm03x9wmAVcX9mMXHO6DGezeQpfRmBLOL/UBvT8KHSOIKhtGb50/L7c4ga2dIkYCPQRs
         ttY1Ns/MmJfJU+uMxoHW2XS2yqd/Xs0gaaR98GkA95/FNeUJCeIlVyCjuJeuQHWNpAIf
         jg4w==
X-Gm-Message-State: AOJu0YwrW6FWAtSeVFVmdDf+DgYg+La+y7acUbXg86dqmlC0aZxUA1q9
	ueFZz0qPQ1aOHa8DBaPKv8Ylz2RDU4hWMWOQ+bU=
X-Google-Smtp-Source: AGHT+IGQl+QJ56FDZS+Rm/TD4LkArvBTO1OLeqKs2GJ6Eeu1DmI7zlmFkJRsD3WjQIyjfsMQ/3eTzg==
X-Received: by 2002:aa7:c58f:0:b0:531:f4:57a8 with SMTP id g15-20020aa7c58f000000b0053100f457a8mr1872504edq.26.1696421253763;
        Wed, 04 Oct 2023 05:07:33 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id e6-20020aa7d7c6000000b005362bcc089csm2324665eds.67.2023.10.04.05.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 05:07:33 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: broonie@kernel.org,
	zev@bewilderbeest.net,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Naresh Solanki <naresh.solanki@9elements.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: regulator: regulator-output: Multiple supplies
Date: Wed,  4 Oct 2023 14:05:26 +0200
Message-ID: <20231004120529.1155700-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add support for multiple supplies.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../devicetree/bindings/regulator/regulator-output.yaml  | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/regulator-output.yaml b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
index 078b37a1a71a..6d077f123729 100644
--- a/Documentation/devicetree/bindings/regulator/regulator-output.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
@@ -21,13 +21,13 @@ properties:
   compatible:
     const: regulator-output
 
-  vout-supply:
+patternProperties:
+  ".*-supply":
     description:
       Phandle of the regulator supplying the output.
 
 required:
   - compatible
-  - vout-supply
 
 additionalProperties: false
 
@@ -37,3 +37,8 @@ examples:
           compatible = "regulator-output";
           vout-supply = <&output_reg>;
       };
+      output1 {
+          compatible = "regulator-output";
+          sw0-supply = <&output_reg0>;
+          sw1-supply = <&output_reg2>;
+      };

base-commit: f9a1d31874c383f58bb4f89bfe79b764682cd026
-- 
2.41.0


