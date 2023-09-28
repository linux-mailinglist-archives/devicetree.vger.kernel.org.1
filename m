Return-Path: <devicetree+bounces-4233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3089F7B1936
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 677C8B20BEE
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA03636B1F;
	Thu, 28 Sep 2023 11:03:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8FB36AEA
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:41 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDCE0CEE
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:37 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50337b43ee6so21180512e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899016; x=1696503816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qq3BxAnxew6Dft2P4UeUZDsOAM3fd799SyMWmIu1TH8=;
        b=nv33B66D5cEr7lsIbX4OiNQoL0BrprvId/r+UQB5OP5c6MilFFAyZofJXhEXnvzvuc
         +7VdPaZcOw3VP/Ca/NdJ1LTyB7mPqMgkOamj6jXg1zkwaE3PUplNTQFDl5xaMKHGevUN
         OYrGExb4sbjgOklBUZM2vIGWves7KtA9SKDETbOCNPGzhN+Pa+qgNn2r5lWeqFT+F3ku
         fjoclKtwt2M7sV5E9TuLxDi9nwtC5cOhN36r12Wzc1rw0faJvNJNAliScY0rHcbxKEbS
         5pLKtaZVpsqrbZHvZS8jDKLmC0xnxUmfStH5ZqL3no9Hh+A5axyPDmv+H7FdZTTm3GqK
         boIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899016; x=1696503816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qq3BxAnxew6Dft2P4UeUZDsOAM3fd799SyMWmIu1TH8=;
        b=TPws5xV6+SONC2AQwzjdqlRixEGerfdhqyqJwy5C+d0Vhud/+uhu90FI/ausQf/MfR
         bng7ZzH38pdWF0KJA9Tu+YYx0xg+8+LYIRtO49gQwnL3m06xZCtfRVwC60kNIDbluxAu
         FrS0Zk8Qs0y0JYbINdiunWFSxD1k2KJKvHFD7U0smEJAblTCumdiPFJoAeJIMgwpsKQm
         xV+E+7YNmaNtbD2PRavRHOPEBorQAFapFcB4JlK04kZXBq67ylhvzmO7Qi204ypklhio
         G7EGf42+xhWuAthHtiUr5zahGkAG2FZMC/qJliZyxsZmgvxd3SNpM1tM6HMbyIfGDQfu
         /ElQ==
X-Gm-Message-State: AOJu0YzwZcfxCTdwMzn6H31eJ/M6DvKa+e+x8pCc0Wsq9GJWDJ+2//c8
	hDvLCa0rt6UmjbUdyEfoMwOChA==
X-Google-Smtp-Source: AGHT+IEi4hiN8d6R8zX/SQdasxtvK55A/pK27zzXfe6YD4hawknzM9AT7QezwvD7hFpaxpOZJkKYjw==
X-Received: by 2002:a05:6512:3c8b:b0:502:ab7b:e480 with SMTP id h11-20020a0565123c8b00b00502ab7be480mr1034966lfv.36.1695899016149;
        Thu, 28 Sep 2023 04:03:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 29/36] ARM: dts: qcom: mdm9615: move RPM regulators to board files
Date: Thu, 28 Sep 2023 14:03:02 +0300
Message-Id: <20230928110309.1212221-30-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
References: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The set of regulators available over the RPM requests is not a property
of the SoC. Move them to board files.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/qcom-mdm9615-wp8548.dtsi    | 136 ++++++++++++++++++
 arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi      | 134 -----------------
 2 files changed, 136 insertions(+), 134 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
index 27c3d92d9452..0dd52cac0e2e 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
@@ -134,6 +134,142 @@ &gsbi5_serial {
 	pinctrl-names = "default";
 };
 
+&rpm {
+	regulators {
+		compatible = "qcom,rpm-pm8018-regulators";
+
+		vin_lvs1-supply = <&pm8018_s3>;
+
+		vdd_l7-supply = <&pm8018_s4>;
+		vdd_l8-supply = <&pm8018_s3>;
+		vdd_l9_l10_l11_l12-supply = <&pm8018_s5>;
+
+		/* Buck SMPS */
+		pm8018_s1: s1 {
+			regulator-min-microvolt = <500000>;
+			regulator-max-microvolt = <1150000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s2: s2 {
+			regulator-min-microvolt = <1225000>;
+			regulator-max-microvolt = <1300000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s3: s3 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s4: s4 {
+			regulator-min-microvolt = <2100000>;
+			regulator-max-microvolt = <2200000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s5: s5 {
+			regulator-always-on;
+			regulator-min-microvolt = <1350000>;
+			regulator-max-microvolt = <1350000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		/* PMOS LDO */
+		pm8018_l2: l2 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			bias-pull-down;
+		};
+
+		pm8018_l3: l3 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			bias-pull-down;
+		};
+
+		pm8018_l4: l4 {
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			bias-pull-down;
+		};
+
+		pm8018_l5: l5 {
+			regulator-min-microvolt = <2850000>;
+			regulator-max-microvolt = <2850000>;
+			bias-pull-down;
+		};
+
+		pm8018_l6: l6 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2850000>;
+			bias-pull-down;
+		};
+
+		pm8018_l7: l7 {
+			regulator-min-microvolt = <1850000>;
+			regulator-max-microvolt = <1900000>;
+			bias-pull-down;
+		};
+
+		pm8018_l8: l8 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			bias-pull-down;
+		};
+
+		pm8018_l9: l9 {
+			regulator-min-microvolt = <750000>;
+			regulator-max-microvolt = <1150000>;
+			bias-pull-down;
+		};
+
+		pm8018_l10: l10 {
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			bias-pull-down;
+		};
+
+		pm8018_l11: l11 {
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			bias-pull-down;
+		};
+
+		pm8018_l12: l12 {
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			bias-pull-down;
+		};
+
+		pm8018_l13: l13 {
+			regulator-min-microvolt = <1850000>;
+			regulator-max-microvolt = <2950000>;
+			bias-pull-down;
+		};
+
+		pm8018_l14: l14 {
+			regulator-min-microvolt = <2850000>;
+			regulator-max-microvolt = <2850000>;
+			bias-pull-down;
+		};
+
+		/* Low Voltage Switch */
+		pm8018_lvs1: lvs1 {
+			bias-pull-down;
+		};
+	};
+};
+
 &sdcc1 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
index e23ca6c42683..07e712e890f6 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
@@ -338,140 +338,6 @@ rpm: rpm@108000 {
 				     <GIC_SPI 21 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 22 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "ack", "err", "wakeup";
-
-			regulators {
-				compatible = "qcom,rpm-pm8018-regulators";
-
-				vin_lvs1-supply = <&pm8018_s3>;
-
-				vdd_l7-supply = <&pm8018_s4>;
-				vdd_l8-supply = <&pm8018_s3>;
-				vdd_l9_l10_l11_l12-supply = <&pm8018_s5>;
-
-				/* Buck SMPS */
-				pm8018_s1: s1 {
-					regulator-min-microvolt = <500000>;
-					regulator-max-microvolt = <1150000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s2: s2 {
-					regulator-min-microvolt = <1225000>;
-					regulator-max-microvolt = <1300000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s3: s3 {
-					regulator-always-on;
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s4: s4 {
-					regulator-min-microvolt = <2100000>;
-					regulator-max-microvolt = <2200000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s5: s5 {
-					regulator-always-on;
-					regulator-min-microvolt = <1350000>;
-					regulator-max-microvolt = <1350000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				/* PMOS LDO */
-				pm8018_l2: l2 {
-					regulator-always-on;
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
-					bias-pull-down;
-				};
-
-				pm8018_l3: l3 {
-					regulator-always-on;
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
-					bias-pull-down;
-				};
-
-				pm8018_l4: l4 {
-					regulator-min-microvolt = <3300000>;
-					regulator-max-microvolt = <3300000>;
-					bias-pull-down;
-				};
-
-				pm8018_l5: l5 {
-					regulator-min-microvolt = <2850000>;
-					regulator-max-microvolt = <2850000>;
-					bias-pull-down;
-				};
-
-				pm8018_l6: l6 {
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <2850000>;
-					bias-pull-down;
-				};
-
-				pm8018_l7: l7 {
-					regulator-min-microvolt = <1850000>;
-					regulator-max-microvolt = <1900000>;
-					bias-pull-down;
-				};
-
-				pm8018_l8: l8 {
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
-					bias-pull-down;
-				};
-
-				pm8018_l9: l9 {
-					regulator-min-microvolt = <750000>;
-					regulator-max-microvolt = <1150000>;
-					bias-pull-down;
-				};
-
-				pm8018_l10: l10 {
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-					bias-pull-down;
-				};
-
-				pm8018_l11: l11 {
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-					bias-pull-down;
-				};
-
-				pm8018_l12: l12 {
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-					bias-pull-down;
-				};
-
-				pm8018_l13: l13 {
-					regulator-min-microvolt = <1850000>;
-					regulator-max-microvolt = <2950000>;
-					bias-pull-down;
-				};
-
-				pm8018_l14: l14 {
-					regulator-min-microvolt = <2850000>;
-					regulator-max-microvolt = <2850000>;
-					bias-pull-down;
-				};
-
-				/* Low Voltage Switch */
-				pm8018_lvs1: lvs1 {
-					bias-pull-down;
-				};
-			};
 		};
 	};
 };
-- 
2.39.2


