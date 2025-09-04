Return-Path: <devicetree+bounces-212947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 980A0B4433A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9C97A41CAC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DAF73164D9;
	Thu,  4 Sep 2025 16:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XKG6ow57"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AF5314B71
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003994; cv=none; b=TQPHB/AYKr3bZIGLOY5+Vuhk2mB+2EkJpErcms8MtrbgtYVDqmDmxFIfIj370X+rFok9PYU3jhLdfQj9pjqthV0C8VcapyV5seqt343Cort4ejjB4beCYbTExuyR/3ffjwP32+U2GOgKNRKUyLpDQ9U1W3jCqdgTuID2jLXVekw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003994; c=relaxed/simple;
	bh=smFcX8ezCgxfaauQ11dA4JFPET3ZGgByEqRN3eXWKdc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WkguTl6jgdnlviBRWVqrLg3Uhw7GDfHDmrApBTvRXHqYQXoZXeUsUZuJSf6QSflx8eJ2niaIpaD7vUVHTfHwOGAal90yXfrEFyFCbCsgdMQJ1WE8qWjqNtytPUbFk6IRYjH8jvht29rB6p4JWDOlLtcsbiOJIW8KeHP38ExccD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XKG6ow57; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XHvk007841
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:39:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pbq+DXdSP7cwBiqe8xvfggttCay/BKrNEnQjjAGNbvU=; b=XKG6ow57Au3OTTNb
	fNt5VvZsxQgDbMqrvnLKz1HdO8W7RUsKIU1mqQYe+7DoN3XmOL9NcAOOSvDcwb2j
	aJbQkluaShj25UAK8LaIcfLrqDNte1STSVf7MYWVIlE5TavBKtDgCAySIv130xiE
	iEdUAEpKqZ5zWJ9KmRvlg8F49nNd8GlHR2UK/YfXZ0pEPpdHW95Nv8Cl0+J8YMuH
	BCSr4ZwQ0hOYooHYiV2iIxKiRBzkBX6QO7wf3xvyTSWNZe6DmuIDDWp2MGLDvLFW
	67ldR8J42/K5DPsyMHy5sLgkrIs83ePZ9szy4CadIUOMazs9qHYatmjU9j7++sX5
	nqVL5A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura903y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:39:51 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2e60221fso1878552b3a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757003990; x=1757608790;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbq+DXdSP7cwBiqe8xvfggttCay/BKrNEnQjjAGNbvU=;
        b=UmCnOlx5ozPIro4DU5LaxrVnYOQDJs6StB7tsRuk+lq0IETxflwhg7X84Vz7dsBcm9
         3/7Wky3W3LKjpfKq8U9LXPx+VwZA0SlChK3APxmkHzDozlKmVM4mZ+73M1eJ+mnb2NVd
         tLy+MemsR14G4UB8ItwNbgUdRq/PbEZg3TU9yTR7+nLghNXuH/Y5akyy1tnaaGEqGFlN
         eA53kM+K1YeKE0ZK3iLLHs/F6yW3lF8bONslw2MKsnrdtLXfwKyWZKKRbR/O/wLBDYya
         2F29C1UqEu2y24xKzchUNwtw+F03hdq2vzuc7rvFD+RMToZS1e+vaOFZHtN432mklexE
         rSrw==
X-Forwarded-Encrypted: i=1; AJvYcCX3VP7Pit6xzXybwR95FFhpugSf+xmO6nnK6qTK/T4cS3oxRYWBmNtSnjEw9MCUlKjvw3hpXPLy1ATm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6kWX7luAmJUslcBYnU3kkxtLpf4VBEYCfD1bqDHQtUN5YuAu0
	JsIsRxSFAC/+zqYxA3HT+5QYanntZQMJOnVuXl07ifMoLA0nSRf9fJLDd9Wwl3P7sIC35kub7tm
	EDovAKHsir+VI6AaEyiGKEOSdwYPLwwk0QFvprqmDGH99B6RXAHWsBJh2AhK5Ikd4
X-Gm-Gg: ASbGncttYOwUjgJ5shnqH5da3VpGH2fI7JKbxf6H3/pcI+ncJl0p0gDzW1DZUjkbY7m
	+/paJ1TvlH1oE+AG54mR2cn5jqIsKxODwaBhNCAIwVoHOV4OwIc1ke2XBOHLEAxtv3EQHHvIhEK
	wysjC82rMaD3chDQUY0cNC5KpGxa6nCYd/M7AyObNj9T753VjCAcYCqnuCEGZJzSHAnY6RoOcfF
	IHobvE2eMnfYhz/aDWsuQURTLgoJ16zboRnw8/X2aCadm87/37o4H1y4/eKFUStevoZuJhwkyD3
	LCHb4sWXIfaiQbjA6Rlkdu5GjcDFUddcob3c8pX592YsAcwU9+44XqMX/Ri0R/hSuufw
X-Received: by 2002:a05:6a20:918c:b0:243:c9e0:8b06 with SMTP id adf61e73a8af0-243d6dc8090mr27501098637.5.1757003990215;
        Thu, 04 Sep 2025 09:39:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzD1cTEmn46NSwuPKASFsNepjo9nil4ymDu/y3d+JRFqWGfDQaJarZ32y2Y0+rG6IDPPIl4g==
X-Received: by 2002:a05:6a20:918c:b0:243:c9e0:8b06 with SMTP id adf61e73a8af0-243d6dc8090mr27501054637.5.1757003989802;
        Thu, 04 Sep 2025 09:39:49 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006e2c6sm17346371a12.2.2025.09.04.09.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:39:49 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 22:09:02 +0530
Subject: [PATCH v3 06/14] arm64: dts: qcom: lemans-evk: Add EEPROM and
 nvmem layout
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-lemans-evk-bu-v3-6-8bbaac1f25e8@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757003953; l=1094;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=knYck7yyW6VH/Q+lPTq9YrCWE79eVzE8DYwVhqZMEi4=;
 b=KiUQmzDNRdHpUoNNOOZwRETiT45RXOL7r1Avo9JLIX/1LpA5Sp/Jj+CgPqyqoaxYKbexO/E08
 DO7S+I1Z0LEBfPOruprdSDNbvw4+O9N5yOMAIHLSc7r9qgpqb2rb0sj
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-ORIG-GUID: lqBAp2F3_rTf6tVK-E7NRoHJw53r7-Mu
X-Proofpoint-GUID: lqBAp2F3_rTf6tVK-E7NRoHJw53r7-Mu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX6pTwLl8VOIsT
 wMtffXJm+GAFOcdKZRmqiaL2DmFE1wADfOWhbJU5npGSY6A2xyf+E0WixBl5f16PuF3sJ0MJAPy
 pSShkMb0LHBP3UUKwR2D4MWdbj3AIIMQNIjlXykX6mi2vvigw5driVpNxMZPjBqlLTU1Kc7fnwV
 NY0aD5bPzPupia3tR48j52B/KQo5l3ezvM3cy8Q8h63llyh5AlKLkf7cqKUiGAguoYlHoxER3LC
 mIvrrPgk2A+oS8rDZN8+sXT4w529Prp//lWCMxL1P7+p47LRqkLsplumF7vPXggaqTzJ2P7wnEn
 k0/b72x6tDYyRtlPEe8FNsOmevXxf15E8knTiyz2yc+c8EfExFWpQoJmBUJg0fhkjt5b8arAwea
 YTIb+diE
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b9c0d7 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=cq19zQBcvAJi0RM8MkQA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

From: Monish Chunara <quic_mchunara@quicinc.com>

Integrate the GT24C256C EEPROM via I2C to enable access to
board-specific non-volatile data.

Also, define an nvmem-layout to expose structured regions within the
EEPROM, allowing consumers to retrieve configuration data such as
Ethernet MAC addresses via the nvmem subsystem.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c48cb4267b72..30c3e5bead07 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -319,6 +319,18 @@ expander3: gpio@3b {
 		#gpio-cells = <2>;
 		gpio-controller;
 	};
+
+	eeprom@50 {
+		compatible = "giantec,gt24c256c", "atmel,24c256";
+		reg = <0x50>;
+		pagesize = <64>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+	};
 };
 
 &mdss0 {

-- 
2.51.0


