Return-Path: <devicetree+bounces-240631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4A7C7397F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:59:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id DFB492A817
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE9632E6BB;
	Thu, 20 Nov 2025 10:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wntjfe//";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MvgqIQTw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC64031A563
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763636356; cv=none; b=fhiNNMtkM9FJ0y2z22Fop9bjUlWtKFzSYO9qe2mR0RySRn8lgJVEOTPdsPbhwPw5nJZccGvFL2eUGrHZa4ng6UyG7UBk592pfTlUvSZJptPckLiORSs6k7f51lqGHWfuoyF1jgWqlNcTTBTbUShaBzdig2pFArG5NuIysZU24J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763636356; c=relaxed/simple;
	bh=qIPGenZv9w9DwaR3O0qip5/mmYROjTXdWQ01oiMJN0Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rTB2TaxhDU/bRKP3RXOyaOurfinfnruef8bFqi0UkDvKWEUUhDtXgeVlZo5TFwYPYdibMukHkOzxWKVJbw5wO9pI3MsejPfx4byx0MSlTFmplEjgDSiuDXVGinYL/nFNCsmvFZdmjtnNUYd8k5l9zZcA4HO9B0GRUp8AOcRNW8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wntjfe//; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MvgqIQTw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK4pfr23543892
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:59:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CDnvoOcC4d2LAqFwcGheU3WU1Q1ULe2num2u66BFRLs=; b=Wntjfe//dwCKHsxZ
	RqBeF2nuHPb0aTBr9AHZtBsV1dD9KnqOzqn2Qk+dZnpCkvUwNVfxVN8cjKJBiS4M
	CI4wDzwD4lo0GbKY/0gETLkiXYZ55bnCJJWdIqgELRDgYdC+JKPlB1pEGe0wHknS
	ZvXg+b6c0vq/FA4CDVkh751gt3gaar6wUm+xWJKHBxATe337x30ountDJYwmQhwK
	9fin3/TJLmMHYS/KQzytS6buKeCXqewejVtmVLJ/XX2pU6MmBtDlmsenTKXTs3V3
	Qb4jVvVe6n/SA/GnkQh+XXY5orzxVlirSVbY8HjSnIa0nh0YrpkTegRlWhaajFi+
	OK3JUw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahh8t33sh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:59:13 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34361480f51so197827a91.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 02:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763636353; x=1764241153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CDnvoOcC4d2LAqFwcGheU3WU1Q1ULe2num2u66BFRLs=;
        b=MvgqIQTwUcTMAaRhhylYMpO2p8OFZzk8RMxUIn2HVXVu+jqIM+qcAtFcvn152Ur/51
         NzYi8X2mcfVlpUqyPHdZk8GvAyQiw4+KoRhCdoCRbVYM9rJPLDVd4VKE3Hx0lvwHZxl0
         z8encrQqAayP/T4fdO2kBtYtVN+6CStXHEZluVWRALXkN0KoclfL8wClWrCAw8/kmXep
         XClWd2/Fm8StNbgjK+qirjWliikGu4u0xERy2yqDTjU+4U9ToCuTpeQ+2BlUxfI8xA4Y
         xwdKi0qz/B9Wit3jxOGk+jcdcZRVluMeZ2WhN+zzaeUIcCUb7zluEvXC4cilFtDewolA
         ndZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763636353; x=1764241153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CDnvoOcC4d2LAqFwcGheU3WU1Q1ULe2num2u66BFRLs=;
        b=po3CwM0hfLLBpQyGyBkZylL3IykQuE3Dn3L79Hq2gW7ztSPLPpdDd3XlCIGhp5lbzX
         7XTFwvhLqc9SsRqnS18Q5dKqi41etnWz6zOcN2zD8z5V6AWbX0J9dPDWQvrcW1GrG4g+
         oyOMC6V8KR0YMMn1ZTOA5hD+F8mm4owPGWjAkN2y+fJXZu43C01t6BTDA60WKLH0jk6e
         cF0oB13GKosLGvwKJhUAj4cIztgBVoY7BvaJPZTh0Odde6KCvoCK5OoVNSkMPDslx4TB
         spG7dLMv35zHQkiUlAQbvWiwsBMK1JmpqRQ8tGi/wpFEzGEhJSlnrNVmYT0uxEht7ZRS
         Z2zw==
X-Forwarded-Encrypted: i=1; AJvYcCU6U6kqSpD0j7EOu5Bo1c2JRvmXQaCK+P603CN4NGFsPr9Nq7IOvD52pme37JsxS+hmYY9vsg5hh8Fo@vger.kernel.org
X-Gm-Message-State: AOJu0YxSjb2wMOIuht2OZdGVCA2u00E9sf24wPu1gCdR+hUJWQr7xO7/
	V9RBV8Cye6AndoCIa2KKjQNWMQf6aKRbxUjWORXlOAmI0b6HIM0r58y8AiWK608xbsn3KV+3JOJ
	BCIoP8ETT2Gea2bPYdWumSMeGN1YEXgWUrFseTchNilzSVoUb84466UJMnJWvYH1x
X-Gm-Gg: ASbGnct/m03eGALST2Tv4COsQVDrNZ7bVoevZJ36+yKEiURBonPzII6m4vnwL5Tz1tO
	2CysEtRiRoEnx+pJ32bqKz7nUrvrTcaRQmrwInNiuFawy0C3TSBTe8r7mmsRgqREDsuxa9yTo9i
	2YsvBnQLeGj5TZTwVQAkYTJIKv+2J0KlvVl4rCKzxO8ksRsZ4hnaejWFGVZIiibipxgznQOg3SE
	r0QaBxiGJanJoe48EdzUMZqQ7l34+6kxhcQTYRTC/uXoD8QIUHKP8hXl3viWWnB1kR8LHVJ9uQ+
	C/Y41JEfBWJqvIjAk04h+uFnOvyjP19OKJcK38Fk7FMaXkUoNRNiwYyakE189c8OJ0AdOs4Pkhx
	uOxDTuYV9UEqXGHuj478nJMUFC9THG5lYl+Qx590eRicwot7OZSQPMp4lz7aHcmli1kokd5/qKT
	vfLPgTB8TmPAg88bqp4TEfaBHRhbBFrA==
X-Received: by 2002:a17:90b:3884:b0:340:be2e:9884 with SMTP id 98e67ed59e1d1-34727bcc639mr1584969a91.1.1763636353080;
        Thu, 20 Nov 2025 02:59:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWXJ+JykT8wJra8WxUM/H55YELoXOVFzZeUrvvV4Wfe5xIvBULr4R5iktrOZ8nSRsH1P0ifQ==
X-Received: by 2002:a17:90b:3884:b0:340:be2e:9884 with SMTP id 98e67ed59e1d1-34727bcc639mr1584956a91.1.1763636352403;
        Thu, 20 Nov 2025 02:59:12 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5d3sm2248944a91.9.2025.11.20.02.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 02:59:12 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 16:28:05 +0530
Subject: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-lt8713sx-bridge-linux-for-next-v1-1-2246fc5fb490@qti.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
In-Reply-To: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763636345; l=2432;
 i=vishsain@qti.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=qIPGenZv9w9DwaR3O0qip5/mmYROjTXdWQ01oiMJN0Y=;
 b=8X+ihkkKZQgsnhFUMI/slY6fBUlOBFboT0T3FpDoXPe5S+AfZpDGLrks3zFlxDkiT6M0WZ3Ru
 1nSbBvhV64BBTaMpPznIqKKlNEXH3KHAxlTsyL0J9CUWfsGHmiaLbBw
X-Developer-Key: i=vishsain@qti.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Authority-Analysis: v=2.4 cv=F59at6hN c=1 sm=1 tr=0 ts=691ef481 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TtjlSvZfWGYSd8DQyFIA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 9qfQ2FzpJowf45zXS9K1No97nDBCIwOe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA2NyBTYWx0ZWRfXzyACzAaonvjJ
 2yR3Np/DJ3nRbQpYkEr8YmArj41iPhEofI9hDHKjsiYg9Xvkrk8B7cX4LU0HoexgXE5cz3T23ak
 Kb5dTcL9RyfelbnSpKtVxly/qhjx0Y/iIAtguSY+1ShJ+NMRHW5f+XtWPm/GzbP+hle/nN1XPp+
 bXRnQda95upmmqPEqTf8Va4KmW2txAQAd7PBq3w3HwrZoUndu1FHgnZzNwrY2QoRy98llR5KdSK
 DRzLbyvhtXbTtIuooVjuV1sGWs/GOwOUAqe7ZdZy5slHdZZyeu0qcguv3ZZ6ovFd823v38W5z+f
 l3PbLApvsMFq0+/W21xx1qsfdoFtRJl0BCFJ912HEInG7fkvhGadDK4vmJzqTMVz34rLSLsJPhA
 Z6sLqCBNs8RiVLq025bKITGkiIbcrQ==
X-Proofpoint-ORIG-GUID: 9qfQ2FzpJowf45zXS9K1No97nDBCIwOe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_04,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 phishscore=0 spamscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200067

Monaco-evk has LT8713sx which act as DP to 3 DP output
converter. Edp PHY from monaco soc is connected to lt8713sx
as input and output of lt8713sx is connected to 3 mini DP ports.
Two of these ports are available in mainboard and one port
is available on Mezz board. lt8713sx is connected to soc over
i2c0 and with reset gpio connected to pin6 or ioexpander5.

Enable the edp nodes from monaco and enable lontium lt8713sx
bridge node.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d..947807f8a9cb 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -317,6 +317,20 @@ &gpu_zap_shader {
 	firmware-name = "qcom/qcs8300/a623_zap.mbn";
 };
 
+&i2c0 {
+	pinctrl-0 = <&qup_i2c0_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+
+	lt8713sx: lt8713sx@4f {
+		/*Display bridge chip, DP1.4/HDMI2.0/DP++ hub*/
+		compatible = "lontium,lt8713sx";
+		reg = <0x4f>;
+		reset-gpios = <&expander5 6 GPIO_ACTIVE_HIGH>;
+	};
+};
+
 &i2c1 {
 	pinctrl-0 = <&qup_i2c1_default>;
 	pinctrl-names = "default";
@@ -396,6 +410,23 @@ expander6: gpio@3e {
 	};
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
+&mdss_dp0_phy {
+	status = "okay";
+};
+
 &iris {
 	status = "okay";
 };
@@ -435,6 +466,12 @@ &serdes0 {
 };
 
 &tlmm {
+	dp_hot_plug_det: dp-hot-plug-det-state {
+		pins = "gpio94";
+		function = "edp0_hot";
+		bias-disable;
+	};
+
 	ethernet0_default: ethernet0-default-state {
 		ethernet0_mdc: ethernet0-mdc-pins {
 			pins = "gpio5";
@@ -451,6 +488,13 @@ ethernet0_mdio: ethernet0-mdio-pins {
 		};
 	};
 
+	qup_i2c0_default: qup-i2c0-state {
+		pins = "gpio17", "gpio18";
+		function = "qup0_se0";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	qup_i2c1_default: qup-i2c1-state {
 		pins = "gpio19", "gpio20";
 		function = "qup0_se1";

-- 
2.34.1


