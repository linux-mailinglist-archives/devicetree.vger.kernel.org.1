Return-Path: <devicetree+bounces-5799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2345B7B7EC5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:10:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 506D91F20FA0
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB21E13AD4;
	Wed,  4 Oct 2023 12:10:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7104E134A2
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:10:17 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB217A7
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 05:10:14 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5335725cf84so3376547a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 05:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1696421413; x=1697026213; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DcpgkwL12FHEODFIbiIinUiJz0ey3tDqVJ4nMPpi9XQ=;
        b=U+JNMQPuIoa1rt+1Y8+7XEgfbPY/Y9/ymgVsR0Y1ShzWaAB1AeGZr0Dq0JXGR7so3L
         wdl+/8pdiH1hV/qAVXPCqT3Jl345l9L5v9g4/EKIR3g99Bt72iLZGfUaxI50lhDSLd7M
         /P8/eZz048Pmhk4HSl7Q6JylZ/4ST/Xt1Ij+WUNjH7n6b69uPAnPs0dBO141rbuq7+38
         8Vm41XgKRoETDAvY7zUmfp+aCvKIQFFkkyRHbHi0Wl192q9QOvx39CdFILE+HZlfgNSu
         2iGW+E4HjAeuHIb7WceR88/aGtfnvZoJ1URWtU1eVrinubF9YLyJ3TbE0rv8T1nDqalk
         FouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696421413; x=1697026213;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DcpgkwL12FHEODFIbiIinUiJz0ey3tDqVJ4nMPpi9XQ=;
        b=ouZndejsXmSL7pMn7u/Z4X4HaFLCMk5qz01rIJPUvdEKwPEnFVq+01qbIHA/aKc5Pa
         SvkPklx135pfBhT4D+ANc+mUum1diKchu7i23vjUfWGIgATZNqPBMyxVhBETvnEhOomY
         HvY1PrVvZEOM9Bw3W346f7kq5aDiUslBNiHmnxL+EsL79l65Zw3fQSrxFt/ZUY4Q0Pqn
         2yqpAyHzz6WLj02Rmy2kib5WEvPMozB+C0ZV8jLTwJzmTR+5sij41LuIAQFdy/1Q8kL3
         ndnRD7TIGqfHsguzBiTw4xlHRmZKfSOb4TfZeHSVy9BciUZ0mTSjb/fpPHVmD9nb/taF
         0AMA==
X-Gm-Message-State: AOJu0YzEeo/4L1mnjTc8YjGqUZ5Tywj0ox2d95YmNSOfSRZlm77WfUsk
	3te3Zm9T2OV7DWCwLtTiV1Vs0w==
X-Google-Smtp-Source: AGHT+IEw1AYTD1ITVBPDXdbNhagjO8bZw4GAvqGvtORm5qqx8YzluDcSo+X6mTFuHkedMAn8Cix9Lw==
X-Received: by 2002:a05:6402:3445:b0:52f:a5d4:1f5b with SMTP id l5-20020a056402344500b0052fa5d41f5bmr1571327edc.9.1696421412940;
        Wed, 04 Oct 2023 05:10:12 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id d10-20020aa7ce0a000000b005288f0e547esm2354627edv.55.2023.10.04.05.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 05:10:12 -0700 (PDT)
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
Subject: [PATCH v2 1/3] dt-bindings: regulator: regulator-output: Multiple supplies
Date: Wed,  4 Oct 2023 14:10:07 +0200
Message-ID: <20231004121010.1192344-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
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


