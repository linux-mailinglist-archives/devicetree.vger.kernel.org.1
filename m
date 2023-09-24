Return-Path: <devicetree+bounces-2830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6D87ACB5C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:31:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 86A251F23BDD
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2AFBDDC6;
	Sun, 24 Sep 2023 18:31:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA87D294
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:31:15 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83E97FF
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:31:13 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9a9cd066db5so668767666b.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580272; x=1696185072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kjWcS63QejljbTAaZCxi0uzpk4ik0ikwDkLDQ/WQMSk=;
        b=SBUDQVfUfWHfoXPYV1xYpZcH3xi2CHp1OZsmLM0lgG7/hB9Z2LhQlDJaAUyZ/xRRXj
         UwAuVB6u8Ia3JKGmkvXnEA8o1NzDEP7L6QtyAZBSYsbuM6x7dSbyY8w6nEO/L06/zJF/
         YhrJMBvtyHPmfvKdBnYTTBOLTf5iCZStqErPuntFj5SUzGBFO+IRihVRutNUs+tmKoWH
         JoUyq43KgT6e3gS5vX+r2baJl9ifMYnxNvYFFGjr+rcwTvN5EBb2PFzUgHvvdZNyw+MV
         1QjoygiuufrBTnNtBTAdph3pzLD78WWv+C5/zTeUerygrertoa8gvzxvixgojIv6TO87
         nIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580272; x=1696185072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kjWcS63QejljbTAaZCxi0uzpk4ik0ikwDkLDQ/WQMSk=;
        b=CL1s/PXAnBVcis1XGhrDloxIs3rl5W3n6KTE+2C6d3jUxLGhDwr0yLL9BieS4oI8vR
         IfH87wCoPYYAKiWKxmS2hTpJffrbPUn1bNnmfArxzyxtuJm5QD8kpWP95MhqYpFeaYf8
         9c5FZJtYqh5sqpB75iZCsKiK2KYl5rx9VdxkXwMtWuhZg5e6pNTTJIqGwp0szUbHzP2C
         ns2NrL6RojyBmxjWq59P+D0OdBqnKadEN8BqGGJdh9F3YF4lbVDESWBcdm/cSITnghVT
         l7kczicR0XQv1oka/EJ2+nxVFg9H+o9COdZByK7Y4VgMTd5vmd46/z7DYpEgAlhMGMWM
         dqGQ==
X-Gm-Message-State: AOJu0Ywmyw+24fNCVfmXCetjsTMSGh1I+A/8SvP9zLwpb+ePAMSgrpry
	0LDFLp0nO9Xkv0Lzd4UYGaMIGw==
X-Google-Smtp-Source: AGHT+IFEm8mCP5zUh5jnGWNXDx9Yw/cImSj86/qjegCW0fh8SN8iR2IfgnFgrBR/dgTNqUN20rZMCw==
X-Received: by 2002:a17:907:60c7:b0:9ae:6196:a4d1 with SMTP id hv7-20020a17090760c700b009ae6196a4d1mr4070144ejc.68.1695580272081;
        Sun, 24 Sep 2023 11:31:12 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id ty15-20020a170907c70f00b009ae6a6451fdsm4599845ejc.35.2023.09.24.11.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:31:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rohit Agarwal <quic_rohiagar@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 3/3] ARM: dts: qcom: sdx65: correct SPMI node name
Date: Sun, 24 Sep 2023 20:31:03 +0200
Message-Id: <20230924183103.49487-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
References: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Node names should not have vendor prefixes:

  qcom-sdx65-mtp.dtb: qcom,spmi@c440000: $nodename:0: 'qcom,spmi@c440000' does not match '^spmi@.*

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index 4a8cc28fa1db..49c16ee2e169 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -537,7 +537,7 @@ restart@c264000 {
 			reg = <0x0c264000 0x1000>;
 		};
 
-		spmi_bus: qcom,spmi@c440000 {
+		spmi_bus: spmi@c440000 {
 			compatible = "qcom,spmi-pmic-arb";
 			reg = <0xc440000 0xd00>,
 				<0xc600000 0x2000000>,
-- 
2.34.1


