Return-Path: <devicetree+bounces-2836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE557ACB6E
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:39:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E0FBC281741
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64874DDD0;
	Sun, 24 Sep 2023 18:39:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B167DDC4
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:39:24 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43D40FE
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:39:23 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-405361bb949so52478375e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580761; x=1696185561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1wH0YvnQ6jYF96S32ROkmjHWrFGPo6jeHbTrwGY3q+c=;
        b=gQRtcWNs/cGrHMvV3Y1tE74aeOwAwsUxfYNbKtOS+BQ4MqEC/mppx4zLx2iPI3uInG
         Cd5Mi1aRAakqr6OlIJ7senBvfIMi786QKs6JSwm6ojq6l2I/jiQLTnW7v76v4yAhbla/
         G4zgM1s6bpJKk7185w8ThCuioCRKUzJSifKmGxtNtEWHEZ5r1735/0KVyq4KZ5TEAGK2
         /NkM+aXpWkmSqQtQd8boQncINyl09gNhcxgx4Wsm9kbwHeZPbD39ZsETrfWShD/srXUT
         Jd7G/XmEYOigOjk9l7Vk9nReTo4oOiOO9tgC7qj6Z4039M3RcKCYQ8d++5A+1AflFIrC
         xWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580761; x=1696185561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1wH0YvnQ6jYF96S32ROkmjHWrFGPo6jeHbTrwGY3q+c=;
        b=i7bPywAIQa9WoZTAC+IWaJo4JEix9vWNiiuW2TzPuXy1hMbRpsAO1VY7pQiHuZA96D
         HQrbekVz0766+7Gyn32wwDXfGEWlTOYlMM8lZmH7+x1iWL67wjwfhJGo8i1z2DU0L/Ed
         q2Wk9lkqFWSNkhy7np88hG7BQ4FABJUuYNWk87ZN3Y1lwrM2iwflw4HRczQg2mQqzHLI
         lNd6Gp+eHqKlxI2/r3Oy5HJfds96vPALaLwqOF2VcCzkH6Kh0cAr7+8liAgzWleo8ner
         CArqq6w9G4QhALnIQRBN0OPX6zKKck0saqEYki+Ow0Suj4yGvvVGTrHT4GkldgNmzT6/
         RALw==
X-Gm-Message-State: AOJu0YxoCkKEBZJqNZ2/KjKBQ7JcfF4kV75dXz7sk4tU9mYK70J5lKrZ
	t1sIHEKb6d/J/RhUXEUQH1Slog==
X-Google-Smtp-Source: AGHT+IHCYmAWmcznj559KirBLhBzR+i8/f7MKpHRODcKELxTE0B2hw31PjM19Y+vN7jeDMI8BwxFqA==
X-Received: by 2002:a7b:c8d0:0:b0:402:fec4:fddc with SMTP id f16-20020a7bc8d0000000b00402fec4fddcmr4262928wml.17.1695580761727;
        Sun, 24 Sep 2023 11:39:21 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v20-20020a05600c215400b00401b242e2e6sm7570446wml.47.2023.09.24.11.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:39:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Stephen Boyd <sboyd@codeaurora.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 3/4] ARM: dts: qcom: mdm9615: populate vsdcc fixed regulator
Date: Sun, 24 Sep 2023 20:39:13 +0200
Message-Id: <20230924183914.51414-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
References: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
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

Fixed regulator put under "regulators" node will not be populated,
unless simple-bus or something similar is used.  Drop the "regulators"
wrapper node to fix this.

Fixes: 2c5e596524e7 ("ARM: dts: Add MDM9615 dtsi")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
index fc4f52f9e9f7..63e21aa23642 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
@@ -47,14 +47,12 @@ cxo_board: cxo_board {
 		};
 	};
 
-	regulators {
-		vsdcc_fixed: vsdcc-regulator {
-			compatible = "regulator-fixed";
-			regulator-name = "SDCC Power";
-			regulator-min-microvolt = <2700000>;
-			regulator-max-microvolt = <2700000>;
-			regulator-always-on;
-		};
+	vsdcc_fixed: vsdcc-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "SDCC Power";
+		regulator-min-microvolt = <2700000>;
+		regulator-max-microvolt = <2700000>;
+		regulator-always-on;
 	};
 
 	soc: soc {
-- 
2.34.1


