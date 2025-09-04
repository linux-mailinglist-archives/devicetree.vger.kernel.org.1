Return-Path: <devicetree+bounces-212948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A68B4433F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:43:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6D051CC351D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABA5E31A561;
	Thu,  4 Sep 2025 16:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oKYTjy4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DAE31A563
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003999; cv=none; b=gLqO3awgLKE0bmLRj7jEJERJTfciGGrLVthGqkQsFV1UPHO2n+e6T7KFTJDMAWMDfzkpqMScxCsvZ66AXd96GnOn5VzY8wvcPAGIHermn7jTdytYE82yJH7YAWr8XShDeQ0pEo27ZkrQtxZYyNd/dTQFhdLi0NDlh/Rg55BQGfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003999; c=relaxed/simple;
	bh=fDkqRvGyaFinSWWq2t1lwFf0RsUH7vJwveAVvT94bTA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BLdToNgDv8jNQu3trMtqAAcqWC4P3WlKVJLR5gNpLz2zvtUg4bPaeuFQQ+9dZIuj3Fc3idtc+zj/W/AEy1ii9OwmIjNHkACDYB0Y25fTORZ/64ZY07qXMRDhpWzaOKiSVvmgIOTMLydIE+OA80jGEw7zrQOxOZpe6cwgmjXbe3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oKYTjy4D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XBJ0013631
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:39:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xas60C8ijwiTmwJqhI40fQNiOoeLXxnVG1r0X3sdz6I=; b=oKYTjy4D0n4qQ0o1
	XQq56dMB//2ozU06P8HYW51yWWdR1d0EXY2FQKUzl2vzzv0CkUF6l6oVZRJMuO5X
	NSkDxELMXfhTTGvR5rgDBZ8DJv9AcdTyr49KR8fNRG5DIEnRC+Ny52nIJNkilRa6
	hbLqsOYCfmuUcJthhMlRqVKy2E5Cm2VyqxLV/b3LnVIXUI4SKlV4krmiUHoV4QYL
	AFmN+LmbvmzLVFr5a1qzTdthMcGQvwu2X+8szW9N9ebLv44Z+Gwl6+wMPyUc+PJJ
	5jEXAokkG75hMqPlJuCOPwwWyIuIORwCA+zn+RXV6lNarfJWOLgEeKvwrfx8ylct
	d3kOMw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wyc4k3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:39:56 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7722ef6c864so1186412b3a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757003995; x=1757608795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xas60C8ijwiTmwJqhI40fQNiOoeLXxnVG1r0X3sdz6I=;
        b=vh4+zsPxhhkdbuM7gFaQStQv1u/u1i6yliQOZ4mFPmIQ6MWujKwJdsA/lACVXA/i/A
         6corI/3oiYZxfY6VJJcR2SjlMMsrhoI51J+dSh4yBFsK2u+aQq+jnfhew159c+jsy4mu
         NorFe0SO94D6WKbqAhdGI/8IdFb1yTCcWHPmPO0ldWiqDOR2sRTtp7jMwNC0gAIdzREh
         aICrHOt9Sr3t6djPfLCYbr1ijc9eSkhF7/0zBX/2gY5kWJta7h9MeKZJWvNWND7hkLEr
         Jfun12yvbArLtFsrVhNNTWmPHC8VsDqzjJUGYkpDzT9A0WGkOXfHng+YCpixtsaZ9zNM
         k+5Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2mp4OCaotfR/NXEECrKHeW/jqDklR28TgIY+UX9+rzd64PUd5NOS8mouz2KpO688LbBS21VHCfoYY@vger.kernel.org
X-Gm-Message-State: AOJu0YyXmuVHuRR/It+2HvCWm73j5x/cY8w2bEvZFTU7s/5m5nCix7aI
	R5US8PqRt37sauyNaEHW3+KYBBRJzKeOenlp8Hw+v+KmstKXPDFuuy53c8uG/nM6wOqLR5uH0Bi
	gP8bHQjIU0KyEkYvaSEl5mqN3soxBytCdkWYujuD8MjZISuxRlZ1l6Yx9REgr+ZeW
X-Gm-Gg: ASbGncuTPQuEI6RlbkFkeSaQExWtzQlcC1f15ixgQ4I0G5ffU3d7cta+bgUSW+CfcXj
	SZjbM7LyONI6u1mbpy/qReaeiwuzyhubdtI4THDJoY6+0VN/1+kqRjy26n+5IAQDBqz0AaxmdKt
	HoGzndlihIv0QjhhX+Io19/WzJgFG8Cjs0vJtmX7FMqUpXWvglgC/2szhxOu+oqc/07eGQGDFKL
	36sg9+tqQTmk2VTTz296gf0nJrwDPdbkmNpM9MMMhW5t7xJE5zm59NWEpf8teHG12YC3zGXg9+c
	bseRNGT+u/tAwLgL+/kyknLsNtoPSGKuKB+ycw/MdwSbLfcDYNBDJrHCRGJ8ZSSEt3EW
X-Received: by 2002:a05:6a21:33aa:b0:248:ace6:755a with SMTP id adf61e73a8af0-248ace67795mr8575124637.11.1757003994880;
        Thu, 04 Sep 2025 09:39:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFP41A3JzklvhNIPpcnoxxSAwwOYtQAUUMNoQYKRhiAy8Q6cGA9PJGa1zZ+GFCUFRtnpQ4phQ==
X-Received: by 2002:a05:6a21:33aa:b0:248:ace6:755a with SMTP id adf61e73a8af0-248ace67795mr8575090637.11.1757003994387;
        Thu, 04 Sep 2025 09:39:54 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006e2c6sm17346371a12.2.2025.09.04.09.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:39:54 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 22:09:03 +0530
Subject: [PATCH v3 07/14] arm64: dts: qcom: lemans-evk: Enable PCIe support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-lemans-evk-bu-v3-7-8bbaac1f25e8@oss.qualcomm.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757003953; l=2445;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=AqtBG6UZAsfussB7MJK1QEtygnY7f30ULmObk2D0omU=;
 b=LEmcR/9fffgUDa8DhLlIj6NBanm8EP60HW1h8I+sRyX/OaSOwSy0qGZsrE57ArTE2Ic6mhyiL
 9jxjR8kYUdpBn0n4CQzixqhXnmOgh+c+/RAJSw6eY4mThbrMSmUG2mK
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b9c0dc cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=RIgN3AgQjrtB0c6oJ0UA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: T7UIlXc7EnAs4K4eflYP4KtJlddAudif
X-Proofpoint-ORIG-GUID: T7UIlXc7EnAs4K4eflYP4KtJlddAudif
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX7ObWwa9SQlDa
 0a8I2XujSv0cuGOIHcXr+R19RZVpMbUMNUmx4fqq1XtwY5fmwbibErFKNGXTVvvHIfxUokrZqVb
 94daprgnxGG6uo4k9Y9ZaELYvmFo9yjcuR42hiDykFgp3LqSCP+xeTDvfihO9JcdmXT3sgddq9E
 ir/oZczvkKORVP3AIZwww3RkBfAhGrwhWsGwl8xR/I3e8mkSuI+MqYI+O48aKltmaqvywV+6Ec7
 1ayAu07VW7ao/fB4fEdmuej9Jk83dxb8VxtafXlcEbOmLoPHI6Z30vcY7ZHyj0zRYl6F8nrmnNa
 iNjSdcFpvsYye8XqhOzMtq6k7LBbE0UtHVV2OWJ7rlAYbpVESo/WF1/FX19dTkGasF+Cgs7Nt4c
 QXMnrBaA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>

Enable PCIe0 and PCIe1 along with the respective phy-nodes.

PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
attaches while PCIe1 routes to a standard PCIe x4 expansion slot.

Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 82 +++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 30c3e5bead07..17ba3ee99494 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -379,6 +379,40 @@ &mdss0_dp1_phy {
 	status = "okay";
 };
 
+&pcie0 {
+	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie0_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
+&pcie1 {
+	perst-gpios = <&tlmm 4 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie1_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -395,6 +429,54 @@ &sleep_clk {
 	clock-frequency = <32768>;
 };
 
+&tlmm {
+	pcie0_default_state: pcie0-default-state {
+		clkreq-pins {
+			pins = "gpio1";
+			function = "pcie0_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio2";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio0";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default_state: pcie1-default-state {
+		clkreq-pins {
+			pins = "gpio3";
+			function = "pcie1_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio4";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio5";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
 &uart10 {
 	compatible = "qcom,geni-debug-uart";
 	pinctrl-0 = <&qup_uart10_default>;

-- 
2.51.0


