Return-Path: <devicetree+bounces-4798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 374D97B409D
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:41:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4DD051C20863
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 13:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4927011C89;
	Sat, 30 Sep 2023 13:41:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA90211C85
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 13:41:28 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A70BCC2
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:41:26 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40566f89f6eso123637675e9.3
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696081284; x=1696686084; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ob3ZO09IJVP3lc8Sqc/svAT3F+GaUvuno74Y0tUjZPs=;
        b=uRL47zh4ltsZTD2/mLBEkpEuh9RE2+QuTvNKyXXS1QeLkBBcwgByJgtQQtm2ClO3fP
         9HgNVqkWr/Qn24qUewYG16m+61qnaMjM19+Rm/Jv17R1ni5E/S+7TNB85JyEwRRVirYm
         jLDuJUZQ4bhpTYEyzs+zvMhiZCqdoMaB+VTlfgvEansvCfH2puh0Gm2TYlLLgTq6r7bB
         gwOFdcsAF8EH+xfcaSCmH43pkyc5SSNBWQfIdpwZ+nkbRiZcyh8P2v1+drlwIDcvgeTF
         NjnHvB9O20BoD1kSpg+QmCUOJj4g6AVQ1a0iPuDo1Mwhw5gPqqBvVFKmuIetvHGmmVaI
         WtMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696081284; x=1696686084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ob3ZO09IJVP3lc8Sqc/svAT3F+GaUvuno74Y0tUjZPs=;
        b=QquvYh4vCTvZy6Me1JaUHiPAkq9G0CIe/GSBJsMnh78aLTyIc/q+7IT6cm1MiVFRda
         gIxb5z0xt+LmwhONtq6rBNMhFqGRcZJA3xj5U4/55HJYLNluyWQMEDNX+wx1mMha+Xf2
         aT1BownvVAqDbqaUjx9UXTTHbv7upmVw48YykEnm5BTccqj9tjIVcJvE+SxOAatpw78A
         l2Jsbc6VLk1PU08WVI5X/TZRuhnN7CDjy3cK5pugx8p4s3LJ2jAUS+6hpe/1RM1Xw845
         lgreT5aQ42y1ebEyb6IwcY4hv+DFAjurV2dl9B+ECUweH0BV8gI/HksALX3qeXUhYbXd
         7Ybw==
X-Gm-Message-State: AOJu0YzAeYm/Nr5fMkwJXgbrV0IryZq1Q2OC+qED0PSjslohlJ5EB2Io
	HYeRamB3K+LFcDKptUfoHNvnGA==
X-Google-Smtp-Source: AGHT+IEK2bVhax5ff+Obe4qs55fcg29wlRqsn4HOd9i2311layUjNRRLgWw1Wu5rV0SCWh+yijGWtA==
X-Received: by 2002:a05:600c:acd:b0:405:37bb:d940 with SMTP id c13-20020a05600c0acd00b0040537bbd940mr6377448wmr.0.1696081284776;
        Sat, 30 Sep 2023 06:41:24 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 11-20020a05600c020b00b003fe2b081661sm3408261wmi.30.2023.09.30.06.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 06:41:24 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v2 5/5] arm64: boot: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
Date: Sat, 30 Sep 2023 14:41:14 +0100
Message-Id: <20230930134114.1816590-6-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230930134114.1816590-1-bryan.odonoghue@linaro.org>
References: <20230930134114.1816590-1-bryan.odonoghue@linaro.org>
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

Add in CAMCC for sc8280xp. The sc8280xp Camera Clock Controller looks
similar to most of the sdmX, smX and now scX controllers.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index cad59af7ccef..ca43d038578b 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,gpucc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc8280xp.h>
@@ -3450,6 +3451,21 @@ usb_1_role_switch: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ad00000 {
+			compatible = "qcom,sc8280xp-camcc";
+			reg = <0 0x0ad00000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
+			power-domains = <&rpmhpd SC8280XP_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss0: display-subsystem@ae00000 {
 			compatible = "qcom,sc8280xp-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.40.1


