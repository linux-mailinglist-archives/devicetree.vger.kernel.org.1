Return-Path: <devicetree+bounces-239200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 819B0C62967
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:50:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4155D4E65C1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 06:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C841D3164A1;
	Mon, 17 Nov 2025 06:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ilpsZXr2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NRF5m2w1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0B93176E0
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763362217; cv=none; b=MHklwdZfpIm0qKmL0RBD4OJuIm8Dw+LO06nPCDx5tI/KzWU82SATKXHwaZJvVuggnfPHaRcr/5IEVwO6mi8egTl4BfyegHHjjUpcZnQ66k9aIUIXB/rt/aMma4r7wji0I7ikEEo2X/h1mS7neZ5BFWGHiPeSewwEpijutNFdNqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763362217; c=relaxed/simple;
	bh=JrPmVba1Qna3Yh/5AQECykXjjDf/f+ge1OffDaR1XvE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uKT60Hv63+Ilo3bwTQz1GkV+RZVkFDP0jLO0HOod+iZJHGM/X8jaTZoub4Ec+GODVCVOUuGHVxrrL7KqOOJFfiNtmQ1GB6+1wuDqxfRJVfnjRp1y3hpO716vQXz9ySmINzbuO0cV4Fcl5asd/xO7jpXKtcmzf9Rx8ENLZlJyCiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ilpsZXr2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NRF5m2w1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AH4nun53318441
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SswBHdUgUE2sOOjAItftKA23u5ysiFQCuEqvuXt5Yas=; b=ilpsZXr2exs3Bw54
	oCyjVt+estcS7FyojuTphL501a6MBFrZWuJw+UnUKm+wEebl47HkIRxTfRz4AbpV
	Bp7ycMCklnvamUMS0L4JHao+nq230PFfPVFFkOEVlg6J/N0pwHp8wLc+wHU2QJaT
	0w9RtjJFLcGHJToeyU8pa2Y4owCTVrKaQGwEfhpFeZFWvHq8VxAoucLdbvPkdExA
	gMWQ/QeRU1w5ip1WmM20rh9Rp5BFrpUDiVjLqV/vvyOqJebVnplwuytQULL/zGqf
	l1PJM9Rn0O1Esy9JCHNDgyGTw3ICiHI+jYXwy+1w0Fyr2tCmx9Ub5nA0LfynE1Cm
	8wJaFw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejm5bn6t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b24a25cff5so1156727385a.2
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 22:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763362214; x=1763967014; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SswBHdUgUE2sOOjAItftKA23u5ysiFQCuEqvuXt5Yas=;
        b=NRF5m2w1xWsi+pFP3XCp0lcjALPNEV71mnEto7IADed4YbRHibKDUn21S38/xJqNzu
         N9rLP7C3zqeYROAKO30iG6qjU+RYZk7H2BP79RMebFhLqsUlZOLj3u0jKskCpz9T6JS4
         H3bv3LvyxEdV1ZZmqQCclF61UudhrKIg8qENE3Wama3jSbCmCPJ/vZoAUdd/BkAwlIRP
         SpNTRWEPDsr8va162j3V+TWXvslxEEzEK9bovIPg+2GNlJLBwnKiYWVjm9N6jkufZt/O
         S4FTufFJ5udMpKq/apWYsEIQCMSGfAPFfjl6dRStBNtjFIv3lEQrQp3Q12pmfCn5uwcN
         k3+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763362214; x=1763967014;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SswBHdUgUE2sOOjAItftKA23u5ysiFQCuEqvuXt5Yas=;
        b=gEZunBH0WPNncgR2fAZVKud8nAQ7+vZBPs32jhFQgIHfnugpONgPkQj8nQJfLOKv9i
         ZOYYKBP/loFpBBy6FXEoCwjOqnDaP/HD+nbCqn2fZhQ2mgjK/XsTixSxWiQZ/mLoqAdW
         HYfrFqhTCZe5vuq2lBipCaVvCohxbpR/mLX+FSEIBykXxZt/Yk38SlKCsnFmuWPjnl58
         7+WQT45/IVdFPz+Iu0pEelHEnmAfetyQ+K5wvKFXY74FAqBh1Fd21HgtMdBKWyxQZxmD
         dFO0MImRibH3Yhz2OCGH23ZfTqy0dU1gN8xqzSdVK1ESfMBqeLWyUZBOEvlI6OTzWX1q
         jOXA==
X-Forwarded-Encrypted: i=1; AJvYcCUGvhxDTUhJkIF38fcGIAmhahR4lrQjbi3u2+9h2+W8m9MarpN8pXotGLvP44iV2s0YdA3mt7q2r1ng@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz4z/+aJHSLe9CN4l42w6Mf38Jp5hIwQMOCPQ6rRg6/qbhFFCk
	v7Ex2hCt7nX/jvb/1mMGwPw6Rcfihip9rTjGfftsmNdmvVHmoyHQNqlfhVxEdZswlxV14RphlEi
	1OW1313XDZT1FuPXMm9VLmQmF1dtgC7j3pyZ2T7cY4fOYfmzAXZQrTJWvw+2FtUCb
X-Gm-Gg: ASbGncvApiPem42iqypQVRbKr0yVfI84DNLmRtiHTqt7dSYfJQUiFYrMGiJX5+8HsoQ
	UfM3ow+SwYifiD+qwRZBK42StN+lv7L2gO1JvxMujYBI/cGlHKfkYFPkbnIrfGBEzAYIdPL41Pl
	R1fQPyje8CAo/LUT4+16H0xQiQQcCbYKNt3NSTi1EJNm3k6Rh+G6P8JhgtOxi7i2jrsaGsz3NM3
	z98XPlkf0XBOGJWJIEL55gCHYoZp8SHgQg7n9XCgFluBd9BiHyUf4nBxMu6z75+/xLw0xksB+xN
	flrp9HH1ypLAV++uz+cYayzxgzxKWzYuUOcvcj7uDKnf91Pyjv6SwnjKjOy2Cn/KeViARd9lQ+A
	i/VH44VloAiypY1BdF3briM204Dv3eMuZTgvkcRNMbQ==
X-Received: by 2002:a05:620a:29c4:b0:8b2:33f5:fa49 with SMTP id af79cd13be357-8b2c314d740mr1362964285a.14.1763362214066;
        Sun, 16 Nov 2025 22:50:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGCohsuvjB/xxMRojbKmmS5AtWCuRQMmx88/Yf3IuLmbnZmUYhghpXJhXidADDe6xxTryBfQ==
X-Received: by 2002:a05:620a:29c4:b0:8b2:33f5:fa49 with SMTP id af79cd13be357-8b2c314d740mr1362963085a.14.1763362213689;
        Sun, 16 Nov 2025 22:50:13 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b2db481f57sm498961085a.4.2025.11.16.22.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 22:50:13 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 14:49:33 +0800
Subject: [PATCH v7 2/2] arm64: dts: qcom: qcs8300-ride: Enable Display Port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-dts_qcs8300-v7-2-bf42d39e7828@oss.qualcomm.com>
References: <20251117-dts_qcs8300-v7-0-bf42d39e7828@oss.qualcomm.com>
In-Reply-To: <20251117-dts_qcs8300-v7-0-bf42d39e7828@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763362200; l=1793;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=JrPmVba1Qna3Yh/5AQECykXjjDf/f+ge1OffDaR1XvE=;
 b=tkEBwHcz3KuyLaJ/9GGXnGF+3UOq5ttzp89uFSQcxIeSCoeRj5VSDXIJVSeu10LBdRpoyWge8
 YZgN+s1V60CAFCCxCz+wOVjqIMEYHtsdLobiV9KL3s5QfRSNvrrtxF4
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDA1NiBTYWx0ZWRfXwf+icZY5NbNf
 076PGpSlTWifi0ndaDLgn1HpfOyqT3tPM7+kTMQ3ITg59lTl7mO4nnqQNdAjINKOgWhjHAVYZ0S
 C98pgN/m+0UBC9mJiVqnYgj7oOOFhIc0sJ7ZIkkNgV61Gajx3pHrsxoKUGou369IeFQJi8FhfHq
 rPcRyqbKgDJJzufbnMblaZy7iWjDMNc/B+GGa79deexU4aJMkU8de3lEGPSxp4UwPEwcbQFLYZ9
 MHsytlnpRqWjliQJDq44p3HEXVwKsaVbJ2it80SiDkZv64QBZ0iw8d0If495BP0IPBrubqfV8kj
 4Uto7xPwe8JVmBDYlxcCuvjbc4ofnCxP+udONKBUGDMbW9HRr7OTursoJgJjtv8+MxGcHtzW6o7
 Z9Fy6SLsd7Nj8TvFpIsoUM349014Ow==
X-Proofpoint-GUID: 6EC9bqptHXw3PagjagL1VZyqFLqu4kIj
X-Proofpoint-ORIG-GUID: 6EC9bqptHXw3PagjagL1VZyqFLqu4kIj
X-Authority-Analysis: v=2.4 cv=Pb7yRyhd c=1 sm=1 tr=0 ts=691ac5a6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_VwKv_mhVLi2vGvBpDMA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170056

Enable DPTX0 along with their corresponding PHYs for
qcs8300-ride platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 +++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 9bcb869dd270..4a8ac26846c6 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -24,6 +24,18 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	dp0-connector {
+		compatible = "dp-connector";
+		label = "DP0";
+		type = "full-size";
+
+		port {
+			dp0_connector_in: endpoint {
+				remote-endpoint = <&mdss_dp0_out>;
+			};
+		};
+	};
+
 	regulator-usb2-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "USB2_VBUS";
@@ -317,6 +329,30 @@ &iris {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp0 {
+	pinctrl-0 = <&dp_hot_plug_det>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+	remote-endpoint = <&dp0_connector_in>;
+};
+
+&mdss_dp0_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l4a>;
+
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -377,6 +413,12 @@ ethernet0_mdio: ethernet0-mdio-pins {
 			bias-pull-up;
 		};
 	};
+
+	dp_hot_plug_det: dp-hot-plug-det-state {
+		pins = "gpio94";
+		function = "edp0_hot";
+		bias-disable;
+	};
 };
 
 &uart7 {

-- 
2.43.0


