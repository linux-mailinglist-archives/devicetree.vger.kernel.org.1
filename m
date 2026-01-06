Return-Path: <devicetree+bounces-251737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E45FCF6380
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 02:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D722030B3D7F
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 01:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E098327C09;
	Tue,  6 Jan 2026 01:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bgv2jbDm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i38WL4qK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C1231B825
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 01:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767661314; cv=none; b=WRYCiiJumy2bHnthiZ1dNB5UZTTkJn99c68sg4gNJOlEzwQCFlqGiXRi03KWzm9s4/yMFfNlshp/r6NDwqMwQY32kFYXgUm02TQrtFnMRYtUAsjtl6WTUqpkItrw4agOxQyIB3CHEpFHf3g8tz5kXKwruWeP6AWODM20HdaeCF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767661314; c=relaxed/simple;
	bh=/u1tgrZtHEkSxPcf5pHX7xHPoerlKHblqpNDjU74XrE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BmwkN92yxpumWktGEsyIDy4hTxDclhFhtnvpFS9+QDvbtQaiktjEMsmvVdMhjnZ64MYISLIe9niBOrwxu6uxyJE627ds7Q1IDBuW+/3Ihpv1YNrU65Rs9Jk6p6YuNEQMZVaiZN6Csnk/l0wGHrqPe4NrBE2h6KFbz2V/HLil0Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bgv2jbDm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i38WL4qK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6060nRXi2726441
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 01:01:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ex4s+EzJxH3coe9V2sL1LMe3/CJisGmDqJf1ChODQc0=; b=Bgv2jbDmLFM9KUh+
	VrvFw18/dz95CrplfgJwl0i33Mga+JO2UPlo11IsEzKgRI+fZue1jyZr0zn2T27q
	v2UA3y8uGn5Oz+nbU2dnbJG9UHGwQeqHkutFZ2XRfeN7wm7e2RZOlFcq2mzFx4Nh
	bE5EHnliVuz9hOKlZ8L68+R8HxUKbyVhQ2D3V5EhZ8L4oKZGE8A49oyPyBtUmSXH
	ThJ8k9ZmbihobD5gu/ZqvdwXX59cKL+UW/tfJhpMHBMqzXSj5DCUcpkd51Z5uKa4
	NXf0ngtWIwjSEQfu2SsMd/yZiuM5iHgOL5vbKTkWQwvg4Yo4iRjBeKoUfpq9HdV0
	91U65Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpn9r6xk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:01:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f4a92bf359so12612261cf.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767661309; x=1768266109; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ex4s+EzJxH3coe9V2sL1LMe3/CJisGmDqJf1ChODQc0=;
        b=i38WL4qKvRJaVOFqI4fxp1ZoK0E4EAzCHOvr2cQZ0d+90hhFIcwaBsMRJnMoFMPcQ/
         zEdIubXOO7lB5sh+F6xvRKGIWU3Rc/sVnAXWsdXZJ3Cu2Rh/evxNOt61meEJkPhNvUAh
         YIm+JMc0Dmyr6rW+myetpE3/1w04UBzTIjyDrniPYxOfuN0k5UJ4EdRTVzZzGrdphEuP
         cXkjhj8wp/rRjPtdh2RmD01z39g8XFQjnTTqaSCTeAudQuIyN6wzk/CWnTJlwjqCC6BQ
         zQZG3AaIqmHlqxpN998+NAxYXyYb6AJvboXG9uQys11hxsUMh4Ym4Hqrmz3aYWX3SdzC
         vwtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767661309; x=1768266109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ex4s+EzJxH3coe9V2sL1LMe3/CJisGmDqJf1ChODQc0=;
        b=wpD7DFYbfcxoIyI6cYOXGNORXxl+1M/6AK3nnmPvojN9Kp+FBNgv5/gojC0C3sd3yH
         scmBbLpl9cKB/vSL/lfjzPFghbFSfclT+eZA65oX3EglVhWdv1lcYD+WE5/8HVQKCZyN
         TVNefkKM47QKFMigohBI76yroHqBkK9oNaHKhqwHOBr/coGyb8GhQStNBNOSNvTbi+rL
         rC7ak3G6UzwPS8beww4jSnMITRs8LBrUGsfDM3PJzZWCtd1jk+2hmt51Fa+WG6qAVUyA
         IXE/7mif1lrt+eHJbGb8q6OqHJWu3gXCJFBJpZL6SK0TZyWhukhVPJJ9EiVmmqBVPBcb
         TD7g==
X-Forwarded-Encrypted: i=1; AJvYcCVhdi6GhC3rlL0bUtvBV+WQ37icI5JxjAATir6b2tLJ2PW5q0ZtvWI82xPvMoFVjYU0Taue4+YYX9ty@vger.kernel.org
X-Gm-Message-State: AOJu0YzIVIeVdUmovQr/KGmLlsn+Ry5Z/PlRA14nio+H8lNIR5Q3mvdV
	TQDze3fcbpw3RX2FkLTZLWDc4BlPKibhr4rTqqBTOwdkHU2zPNwuMSIlbzvWs4/Gquis2m6iIsw
	2dYdrvREApwfQlVAO2SRh0RHXmwaTqBpnTUMhsT155QzpX8pu9Y0HS7pm4aOhwtRk
X-Gm-Gg: AY/fxX50jWZQdOXf2/uZWz+47kVWWYVhPqG0wYjxk5KIvpJ2TRi3ciIat+IRSxQNIad
	cKbCS+fQLX8ja0GCZQFKub17xGRfo2RN61VSoDcwfmcyK+6mVdKAMAEPqE6hTneVnCRPTj+pdSU
	IaYXJpwEWLi97qFmKvpVqFn2gsszT8aLIl3x0pblPbkdxtIUeknGldWmjMqTVNElmPWtRkbdI0o
	TJ/TA2IpHJ7PoIeB9lpayUbdF6xuuNNkIrCJ3iZx+IosbEG0tVzmsttZnOu31M74I0yb66VxQ/a
	EUR2ZjHVvKK5Yelv5mrgOYnHkTyVL4HqlPtU3CbxVbBPdw+95TQUEh0Daz4TUtXxPqPT+23S7bv
	GdzILhbYqvO7thNgHU6xyFOKwt07+Mq6QgE+Ca/QNSAQvbkJ5t+CuiSNfLjV0kbqjhFHE6gbHms
	OyuyJkaCpGh+9rtOtsR3hTWRI=
X-Received: by 2002:ac8:5990:0:b0:4ed:b2da:966f with SMTP id d75a77b69052e-4ffa76da34bmr21391151cf.31.1767661308669;
        Mon, 05 Jan 2026 17:01:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGmwxi9YOkYp+Kj5Bqzdrtyu54onQjj7FG99+Fq838iN1qvkxSrv+NFDDAZ7ZUD561ezIHyw==
X-Received: by 2002:ac8:5990:0:b0:4ed:b2da:966f with SMTP id d75a77b69052e-4ffa76da34bmr21390551cf.31.1767661308206;
        Mon, 05 Jan 2026 17:01:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea8b1sm181082e87.6.2026.01.05.17.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 17:01:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 03:01:23 +0200
Subject: [PATCH v2 13/14] arm64: dts: qcom: sdm845-db845c: describe WiFi/BT
 properly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-wcn3990-pwrctl-v2-13-0386204328be@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
In-Reply-To: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3033;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/u1tgrZtHEkSxPcf5pHX7xHPoerlKHblqpNDjU74XrE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpXF7axr2YseItmnkTg90KlXZF4jP2cDPnp+w6m
 11MJbzET+uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaVxe2gAKCRCLPIo+Aiko
 1WmtB/95BUWWIbO40lh7AIu+2V+zI3fS1VO0vnTlojhc/1vdGj0kB/Ug+5TL5tB5Rdk6sOXAE8b
 Me5DW/hM9jhlJ6upLmROOBq7n3V/a1FP4TENKcCEmmAnn5INKtwO2nilDLbJLU+1gTmU79xM+/0
 1dov3LLjnGhFU90bR3crT9qfU6cqnxdeJ1+f/JHStf44/oCnrwsSNpNTCOivIR5V5Mb1WIAdUTN
 IaGmA+jLTQ0h9/YZBT539ZeZ+NPjUedUx6F/cJ0G1nnAVl2+Yt4v7qUWcWiBpOdGylYT6GlGRzi
 DR/Xc/f69bi0eLM+6Hb2/OuCZ4dYONd1abCQnqL8mCxdPXdE
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: nmWKPIe4OfiEGCZJetjIahjujvmCfz2S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAwNyBTYWx0ZWRfX2HtGbrSb6+Pc
 BO2ViOXqFiDS9PxmFYo+2Gm2lKLknTsPtko3g3ZdT1qmIJiR865MUvj1YKMnCmVmPLk61yWr9S2
 USTygYpuK1xt/H2Xh5fXG/JuM4r9SBtpVpuKCI3sZjD08VmYsPh5mZpOzfJ8noL7TQe6euyAkmh
 z9yUqItf/NDe5FA23dSGb02crxxv4WvHJbQFhel4QZqvduYr28JkESvnLMAIT2H0RSLDZkCnP9A
 /H/4UFHWiBqWWrUHfPBIvQVLvmVWlPHE5uHpd31Unnfd/hPw91uZ03Vo0SwhaP9zjs+iprV4toC
 UQuu6MIAk5rdItkT6iTDs8Apl9JHyS+ghz4eUg5chpGDdcrcd0O4dTIL1vsEvp2vYzpNDEG9erS
 oPV/BQO4K8g+oiyFHWm3YYmJ9THVZ4Qx7Aqj51xZ33X7z9uM0SK4yeLivl+R9lqNmeIOilQv8No
 dhLTYtGCmJLP/nWm4mg==
X-Proofpoint-GUID: nmWKPIe4OfiEGCZJetjIahjujvmCfz2S
X-Authority-Analysis: v=2.4 cv=KfnfcAYD c=1 sm=1 tr=0 ts=695c5efd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=urIVL_JefrS1cr2SfK8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060007

The onboard WiFi / BT device, WCN3990, has a simple on-chip PMU, which
further spreads generated voltage. Describe the PMU in the device tree.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 69 +++++++++++++++++++++++++-----
 1 file changed, 59 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 5118b776a9bb..02416812b6a7 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -276,6 +276,43 @@ vph_pwr: vph-pwr-regulator {
 
 		vin-supply = <&vbat_som>;
 	};
+
+	wcn3990-pmu {
+		compatible = "qcom,wcn3990-pmu";
+
+		pinctrl-0 = <&sw_ctrl_default>;
+		pinctrl-names = "default";
+
+		vddio-supply = <&vreg_s4a_1p8>;
+		vddxo-supply = <&vreg_l7a_1p8>;
+		vddrf-supply = <&vreg_l17a_1p3>;
+		vddch0-supply = <&vreg_l25a_3p3>;
+		vddch1-supply = <&vreg_l23a_3p3>;
+
+		swctrl-gpios = <&pm8998_gpios 3 GPIO_ACTIVE_HIGH>;
+
+		regulators {
+			vreg_pmu_io: ldo0 {
+				regulator-name = "vreg_pmu_io";
+			};
+
+			vreg_pmu_xo: ldo1 {
+				regulator-name = "vreg_pmu_xo";
+			};
+
+			vreg_pmu_rf: ldo2 {
+				regulator-name = "vreg_pmu_rf";
+			};
+
+			vreg_pmu_ch0: ldo3 {
+				regulator-name = "vreg_pmu_ch0";
+			};
+
+			vreg_pmu_ch1: ldo4 {
+				regulator-name = "vreg_pmu_ch1";
+			};
+		};
+	};
 };
 
 &adsp_pas {
@@ -659,6 +696,14 @@ cam0_avdd_2v8_en_default: cam0-avdd-2v8-en-state {
 		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
 	};
 
+	sw_ctrl_default: sw-ctrl-default-state {
+		pins = "gpio3";
+		function = "normal";
+
+		input-enable;
+		bias-pull-down;
+	};
+
 	vol_up_pin_a: vol-up-active-state {
 		pins = "gpio6";
 		function = "normal";
@@ -1038,10 +1083,11 @@ &uart6 {
 	bluetooth {
 		compatible = "qcom,wcn3990-bt";
 
-		vddio-supply = <&vreg_s4a_1p8>;
-		vddxo-supply = <&vreg_l7a_1p8>;
-		vddrf-supply = <&vreg_l17a_1p3>;
-		vddch0-supply = <&vreg_l25a_3p3>;
+		vddio-supply = <&vreg_pmu_io>;
+		vddxo-supply = <&vreg_pmu_xo>;
+		vddrf-supply = <&vreg_pmu_rf>;
+		vddch0-supply = <&vreg_pmu_ch0>;
+
 		max-speed = <3200000>;
 	};
 };
@@ -1155,16 +1201,19 @@ right_spkr: speaker@0,2 {
 };
 
 &wifi {
-	status = "okay";
-
+	/* SoC */
 	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
-	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
-	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
-	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
-	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
+
+	/* WiFi / BT PMU */
+	vdd-1.8-xo-supply = <&vreg_pmu_xo>;
+	vdd-1.3-rfa-supply = <&vreg_pmu_rf>;
+	vdd-3.3-ch0-supply = <&vreg_pmu_ch0>;
+	vdd-3.3-ch1-supply = <&vreg_pmu_ch1>;
 
 	qcom,snoc-host-cap-8bit-quirk;
 	qcom,calibration-variant = "Thundercomm_DB845C";
+
+	status = "okay";
 };
 
 /* PINCTRL - additions to nodes defined in sdm845.dtsi */

-- 
2.47.3


