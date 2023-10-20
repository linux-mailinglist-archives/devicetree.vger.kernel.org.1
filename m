Return-Path: <devicetree+bounces-10487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 748377D168C
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 21:51:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E6451C20F9C
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 19:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ACC922339;
	Fri, 20 Oct 2023 19:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898391802E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 19:51:49 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15C8BD57;
	Fri, 20 Oct 2023 12:51:48 -0700 (PDT)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-1ea45b07c59so880063fac.0;
        Fri, 20 Oct 2023 12:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697831507; x=1698436307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K8/ZbVb/9IBC0WHwq8jl1yDqEWiHfKExUA5yi1WK5j4=;
        b=rmU9uUbtLDCSOWkVhw67/Bk/zB+G9tlsxI4PplkxPTWygDNnEbVYC1sDIvE3+YXKM7
         rJ23raeIp53YbTc+9Rt89Ax81cS29adKY9Gy5Msa4mVe7Ebf1kn3MP9XhdMDopfh99kF
         WhW1S+HdB5M/irNd4lpxxpIg7mAYqcG/NHM13JiJ4rWJv5NDEuUuB8hAMJuG9PPvTIuv
         6Q+mM1JRVKi98MFNGC6/UrVgVL6SXb3o8lUhfbK6BXf+P2tQ71JfIG16fwofDhq0s2MA
         D8kN5andnyEue7W/9XlR7jUTULv9ZCaRhXlsDtD1ArC7kF/ENZnDzT6+7YnuoLYHqhJt
         viNw==
X-Gm-Message-State: AOJu0Yyg8SDeE1e0UMiEfGJHABvLAXTRTBBTo+TCWfAFDwVbE/5jecWF
	ZP9fpH0R9KwZMlLXYXB3XQ==
X-Google-Smtp-Source: AGHT+IFDQtRnNsXely0BT6dTlD9vbK/uYWv6xNMrP4qF2nI/sgu7QAY8ttiA22cFlzAmEMbaUvSsYg==
X-Received: by 2002:a05:6870:5cc9:b0:1e9:9989:33a5 with SMTP id et9-20020a0568705cc900b001e9998933a5mr3353395oab.5.1697831507323;
        Fri, 20 Oct 2023 12:51:47 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m7-20020a056870194700b001cc9bc7b569sm483158oak.27.2023.10.20.12.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 12:51:46 -0700 (PDT)
Received: (nullmailer pid 4185737 invoked by uid 1000);
	Fri, 20 Oct 2023 19:51:45 -0000
From: Rob Herring <robh@kernel.org>
To: soc@kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: Pierre Gondois <pierre.gondois@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v2] arm64: dts: Update cache properties for socionext
Date: Fri, 20 Oct 2023 14:50:22 -0500
Message-ID: <20231020195022.4183862-2-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Pierre Gondois <pierre.gondois@arm.com>

The DeviceTree Specification v0.3 specifies that the cache node
'compatible' and 'cache-level' properties are 'required'. Cf.
s3.8 Multi-level and Shared Cache Nodes
The 'cache-unified' property should be present if one of the
properties for unified cache is present ('cache-size', ...).

Update the Device Trees accordingly.

Signed-off-by: Pierre Gondois <pierre.gondois@arm.com>
Reviewed-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Link: https://lore.kernel.org/r/20221107155825.1644604-21-pierre.gondois@arm.com
Signed-off-by: Rob Herring <robh@kernel.org>
---
I noticed this one fell thru the cracks from the rest of the series.

Arnd, Can you take this directly.

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 1 +
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 2 ++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 1 +
 3 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 7bb36b071475..54e58d945fd7 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -52,6 +52,7 @@ cpu1: cpu@1 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index 4e2171630272..18390cba2eda 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -86,10 +86,12 @@ cpu3: cpu@101 {
 
 		a72_l2: l2-cache0 {
 			compatible = "cache";
+			cache-level = <2>;
 		};
 
 		a53_l2: l2-cache1 {
 			compatible = "cache";
+			cache-level = <2>;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index 38ccfb46ea42..56e037900818 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -83,6 +83,7 @@ cpu3: cpu@3 {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
 		};
 	};
 
-- 
2.42.0


