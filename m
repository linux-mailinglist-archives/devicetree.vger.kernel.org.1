Return-Path: <devicetree+bounces-10486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9DF7D1685
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 21:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCC77B21447
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 19:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B279922332;
	Fri, 20 Oct 2023 19:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD9F1802E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 19:50:08 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40FDBD52;
	Fri, 20 Oct 2023 12:50:03 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6ce37683cf6so621363a34.3;
        Fri, 20 Oct 2023 12:50:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697831402; x=1698436202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sM5vuZZPtLOe4hJSbBefWkWbsAhOGZLPnuNSBD0x/PI=;
        b=Axnb2W1srnOS4Q16Ty83aXQXAaOO7lt7uY7CcknbOFGAzG769Xj2Gy/LQr9o5DUjKQ
         L2BW0QMNath8u+L8z/sFrpGt0HPlcHC9yy+qXoeFilnkW5BdbncUt+ENcgNpiuZuwJ6o
         ohfXK65DpwQdFZALNc7ws6CXuIwzk1uDlWZC5aLYTQUQ+w8SrcO1wbG9M3gEQlbDpKWu
         aCiUzJVBiC8zbu6D8Soq42Xf7NrpvxDawhAaD9TV7SsxPdChlBcaefnWtOj6TIZ65lCU
         kt2acj2yhFAU9ZWvNjo1YXzQQhKe5oR3i7t3HGkd3UJ9Xe3ocWWBKrAWa5nV5sgIzz1n
         sQog==
X-Gm-Message-State: AOJu0YwizKwFvEljSNKgVPlx4c/RuNgbowV6o+0Jf9YMWLtgV6QTBRVC
	FANtzyS8ARmLBNowcCSoNA==
X-Google-Smtp-Source: AGHT+IH7Zz7jeVqsvuY4TO59akjVdECQntAhusPs80kaL+pZG54AZrO5pMUSbkCIxgZXVe1DEpLQyw==
X-Received: by 2002:a05:6870:1311:b0:1d5:a303:5f39 with SMTP id 17-20020a056870131100b001d5a3035f39mr3130325oab.49.1697831402489;
        Fri, 20 Oct 2023 12:50:02 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id eb4-20020a056870a88400b001eace5491c8sm491643oab.18.2023.10.20.12.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 12:50:01 -0700 (PDT)
Received: (nullmailer pid 4183428 invoked by uid 1000);
	Fri, 20 Oct 2023 19:50:00 -0000
From: Rob Herring <robh@kernel.org>
To: soc@kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: Pierre Gondois <pierre.gondois@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: Update cache properties for socionext
Date: Fri, 20 Oct 2023 14:49:53 -0500
Message-ID: <20231020194953.4183220-1-robh@kernel.org>
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


