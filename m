Return-Path: <devicetree+bounces-212119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 428D3B41D5F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:48:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB6973B2DFA
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EEF42FD1D0;
	Wed,  3 Sep 2025 11:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fehguLeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A732F4A09
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900074; cv=none; b=uYKuu9vQTD2ar4TEptpX+nVloTn6c8McTsbCb05VfnMXlfbLmsoug/wtfAWNqR6hL5wbeBSh4mHQ+eD9MuI1PLVa6hrnmzECAcgYnX8YT4JrQcRVU9/CIwObP3BodgT1/lICN166HAuyHnBJRFthx7Onw0Imp/yrSQLlq8WSpjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900074; c=relaxed/simple;
	bh=OnktyLXlAvw79LU30W2286PIYUB0ZIxd6VhBwuBv3ZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tGHmwD3zi4pfXnzrsLQT7kKNhYgMPFL0oeOD616RX2+L3AMZ+7T6cnRoObxFUdYycr7EOL6mWaIpR+sj5ojSlyKpgP2vHIQuBxOh9NbhSeZjBW1wWiRE4EUmwdsXN/6SLhGhuh1bmcNFEihBXOOhl69rZ5zHHGeAgVxG81o7q5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fehguLeU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BF2Qu011020
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:47:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RXZGpMX3yOrOQ/k31nwEuT7jwrMYrLpKw0F69FmVEdo=; b=fehguLeU8nl85U4j
	rhXTLdC9xdLtUq8Hg07zOGaP3Ad9x/JL4mbtOcnaFcYxeKRCQMSUIzEzsLpZWGPE
	GoBkvDYOv3kMkp2X5ix42AsoCGdAQgtdxb4QNfwmcDIZPo+yqs2mJO8u+1UoXl3A
	iw20o0Tr8f09+6k2YsCNuAzqfV3+rlLNTj86Dj7lQD5LLkhTz8EpWU+A4KP2QX6S
	2yMn4pAbBXaX4qmkoR8neOp6d+5Y6j2e96SnbcKFPZ4RZd2hdEI7+iu0bO4goShF
	g7V9a3xQNSMoNCF98k0cR9smmH29TzZ9waGzpYwcMLJpj3DY/R8VGADSqj3Saba/
	WPcBdg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjkejv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:47:51 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4e63a34f3fso3059652a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900070; x=1757504870;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RXZGpMX3yOrOQ/k31nwEuT7jwrMYrLpKw0F69FmVEdo=;
        b=B1rtxRKjbq2zxVvhngBMkRjJF3q8Unxjrku8HPfdZBMYFckOqiKFjKjJ/l5BUe2NhH
         6vDtw58h0Z2MPHF2hDa7H4+4Oz9/UjyiKjk1bc7wsRDmkSABMeGVgwqDZJlWUk1+iyFM
         cf36+c1Wor15cr8zMnBN1KQaXk66K7qG4IGzeDgFsh8tGMiCyagk0/TaHK0FOt2mGnDz
         X2Hh6OPH+850QR1KnDzJMLnMPMfP302pbdIU2VkmrY4BBYdKtqtj1FJ/Ia4Ym4eHRzdX
         ivd4NaFwMt/DTZzlo3oTLubDGHtPZH6/9q6xYxm9XUyFQIayFBnsMP2GA8pL0kn7P7mK
         9umQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRyKLQ1cOSmC4Z1FNiIXcF3exZnkTn+czHFMvxIl3kHkqelVMjXZo/ReLacB50NLgrcMxklygKPq5Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyciNmovEW3JyquDFjvKDMmHdPckM0vbvTbGnx+3dhwCBDsgg98
	aO5tPlm1dq9/YaVkWMqr8qKjITjvhzOej0bELzl5vXNVkjRkX3S5beGr/aS3+M6T6FVot2wlH4V
	ZWmJDJuRRIawIcZU/U/dNAoTv+tPq8LuxAXbzkq+bheOnYiUJHMf9iqyqij0iPGod
X-Gm-Gg: ASbGncsC4fHbvuCdPgwxQouyKRfG0ERP1M8ze77O/L0g9XZtemEhhh5NJQ27P/F9Y7W
	18p2Mu2zQJgaaOa7GhUkB/mwCmDM39QXKBbgo6D2a6xtth8n+tahd5jWAg2ePl8TXrQ+aFy0FL9
	64GYOzXueUygCeC6K5Bxz+5dLCPkgxK7J27amvu7LeazkZtQ/UcJXMXnMaxIxY9S68XQ19PRFFE
	2f+Xv3sLsQnnA0cxl7IH20+9D2n2FSZp7Xzjwoke3QOp4Lm0qL4VF0gVmArgbXedC1rKfYt80E4
	7Px5TCs98Br9R8/cZ+CDsNz7CPSiDom6ocZeJPYyGtKwe9wlAqMVOlGeUMUSH0QbstE4
X-Received: by 2002:a05:6a20:7fa8:b0:243:a91c:6564 with SMTP id adf61e73a8af0-243d6f431a3mr19272876637.50.1756900070445;
        Wed, 03 Sep 2025 04:47:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGE+Q7esFWKub9PAlvBnehvvfXsc6KCukl6SiDDF6aya8S/1QEYowQVoz4bs50W6LD49Jov4w==
X-Received: by 2002:a05:6a20:7fa8:b0:243:a91c:6564 with SMTP id adf61e73a8af0-243d6f431a3mr19272834637.50.1756900069926;
        Wed, 03 Sep 2025 04:47:49 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f8a0a2851sm6584074a12.37.2025.09.03.04.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:47:49 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 17:17:04 +0530
Subject: [PATCH v2 03/13] arm64: dts: qcom: lemans-evk: Add TCA9534 I/O
 expander
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-lemans-evk-bu-v2-3-bfa381bf8ba2@oss.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756900050; l=1237;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=wNPfzyJsHuof8OoLd/8jyZfN9jNfvGHQW02eb1RzEjE=;
 b=0b/LYijs/sr4es5fM86gI5QstjtnDPg6dCaC3GynfKhA8oLib+VAZsHsOmZBI2gUq5fzF3dL0
 K0ocgFnwazdD47ESQZRaghlLahaQT5VBA+vJ72LdfZ4XLgPnl8cC3aE
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b82ae7 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=_e_tMwhLnjs0gR3cx5AA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 7mdiDFphgf71KFAkcGKDfkpTcdjUVgSU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX7DsWXsTUXOIi
 n1e+NZF8QoX48sB8lBGmym5XoExrYE7wNkPAs6LIwaQx6SDBAfRuMn5fcmSHrTrrgLxd5zYZ/Oa
 t7db240BLGV/p1D7o4l3d/twCCBAV3dcNuT3QkCveiCOMUzfLux3I/g582FIUeqBLVL+86XnNzi
 /CgOWYobRDa0uZ3RgylXJIezfBosNu4kJIEMuYnHpUbIqdu5tOclR7Z2F4YWVvhFqIowBU8pvLy
 6P8ZnTgckho+1lFGjZJjiVrZ0mGhUjUoPWx/uVzEqdZ8awh2oOXPoIyVBCPYld8kdwDQw3fHwi+
 5BtJugqKnbqtOE4Suiwf5KeF8rt61YhbuosYrTzpxOuzG7dxOZ1yqewIL2A1wF3VD8Fur49aZPp
 sp90ySWx
X-Proofpoint-ORIG-GUID: 7mdiDFphgf71KFAkcGKDfkpTcdjUVgSU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

From: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>

Integrate the TCA9534 I/O expander via I2C to provide 8 additional
GPIO lines for extended I/O functionality.

Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 9e415012140b..753c5afc3342 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -277,6 +277,38 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&i2c18 {
+	status = "okay";
+
+	expander0: gpio@38 {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x38>;
+	};
+
+	expander1: gpio@39 {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x39>;
+	};
+
+	expander2: gpio@3a {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x3a>;
+	};
+
+	expander3: gpio@3b {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x3b>;
+	};
+};
+
 &mdss0 {
 	status = "okay";
 };

-- 
2.51.0


