Return-Path: <devicetree+bounces-212122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA994B41D6B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6958A3B00DE
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 635EA2FE071;
	Wed,  3 Sep 2025 11:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aHMtxU5f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFFA2FC010
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900082; cv=none; b=J5X1/Gzc1oOnb5l9gOsa7oRqjM3HihunKCsqfcilp1MaHosDu4H7TR/RXQAUHErF6D9rzYZsTV4SO30WT1TPZBNBFZyGckjAaZWtbYMm4K/tQo0fR365CqqXoJbwl7P0BM/Ta3MJHJq/Y4tX8j4Sj8DSs4mpZmRHZlWmQU7OSRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900082; c=relaxed/simple;
	bh=wdoGSAgGZMAmaK8tU1XxpqdGvDf4YgSCTZ1IvUnFg9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eH2ph2+7axzvEh1VVqp2sozoLB+GnuAwLRYDuAUEnUmw+m9ppcLHE0fDAbvkWFEkizEKnHPjJAvtHt+wZpQ4NDpnpiMsrpnp5APHd5TIOvXkyPnw4w3rmRQ0smUGYsaaMKvxbEPJt7DsIyelv9QJ952hKrGD+9CT+tgMdKoa8fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aHMtxU5f; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Ba6ZM024967
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cWI9iycidWz9x65mS5Iihs700rJi1nYbUsileo1tpTw=; b=aHMtxU5ff7aY68oY
	xlQRXBncUnmMhqDC3Ljv6CkNYTKYSo8ulqmH2N6EwD1lBa7fQFyPEfzN8/IMCGQ3
	CIHFKQCam8kiVJ0b3KUFNcnzx3NHQGLwDuwdhDknoivfDOqkX0bxQ/8JNBGJc2qt
	CVUTugE7AUkKoVZZzKN06C0nHSMPod1ZjFAYnIBXtSoTWI/kuZcpIH3LLq6MjOQx
	OuZW8X0T8ystoX0bcHJz9OFg9VzL2574Aqs3FTPmzv9XTZ22alXKoP/1bSsK4m9u
	hrUNhWT1rrs0em0dJV1Qn9GUP3VO+lscmQCMgwxX/QlSX5kxhhKoUe3yWtWxcPx7
	Z1oWmg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj012a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:47:59 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b4716f9dad2so8394844a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:47:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900079; x=1757504879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cWI9iycidWz9x65mS5Iihs700rJi1nYbUsileo1tpTw=;
        b=WxmzFOjGzZZDXJLWSDs/luhPZbx9f8WyROs/Tj53e1OFZ7IBfjBh+9+nto/fCpIQ1W
         1eEUHeRsQGc8OqQPksK/ACwiz7VS0DoXeYvt584cTxrCIE081H2HE9wz0hOBm+yTqhPz
         wGqQBM9E/5Zc4yMYq7A4DulhcG8QLPyZaTglFgY0swCB7wBD40zLv59+dT3Wy/KxrIfp
         9GpQTQyYp4MC+OWxcn0x6ycDlOr1kQspfm3/9Dl70/byZ7G5cYfw0YcNCvNaOTVNMOgj
         3IOorBfhTUKA2j3/ZRl/MlEofM/ybTCJ2s3kLpXOMSzy8zuAm3NWv1LaZQ4kgv1XszRe
         9v9w==
X-Forwarded-Encrypted: i=1; AJvYcCWXNUNIJTLIFep4kII5YPtM1DKev7nxY7kEWjuJ5u7mnMOKW9I71XZ5k4AvgrAj+7PzyZgIYaXx25rb@vger.kernel.org
X-Gm-Message-State: AOJu0YxEHcBtL21/pEwlmCgElqj7F/u73tE7wYxfvpc0df/LhBye4xKK
	Sf61CJGYYGvwJpAVnwyVTC6GxPfBnsXpH3QR5+GbwdHDMnjGMQaG32tzgXYd0ihdceBxkzqlvbz
	gDcgIuQfVSGXUih32N7sFnvEUzcntG/33/y+NsATqKmNYu9SKbh3w8Spe2h1DY+lA
X-Gm-Gg: ASbGncsLxQLYGgz5C5p/5tjRiVGue/8Bxcm5mVhdjGc7bIup+ee4uJNF94X3OmkT3dC
	Y+unw6IEUJYX9JJq7ycyawkzW6Jl4GyI61KH6XJ0TIC9PbTzw3FQEeQxcF0UDHJ0Q1Kw2Z8eSrv
	hEoRavLZioJbkkaRNZ9q5WJFzBumj8fhqU4GhhNVjb1/XfQjWFlYoI13Y7uX7vZWDOfzMsdHkyc
	cI6pTNzLjdD++10IZlrp7eBegW3jq3IOakWf/XNcdXgx7HyXd9Gk7LOVoRTjsFhuN4BYmeRnfth
	i2NyhLXa7HbnTcBdg92kDMGufFeNFczKoRzeQvplG2xf9t+1uBJv8sf+DH7CkKpHYb+t
X-Received: by 2002:a05:6a20:1592:b0:243:b38b:eb99 with SMTP id adf61e73a8af0-243d6dfed84mr21286115637.16.1756900079032;
        Wed, 03 Sep 2025 04:47:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELv+J0huqr7i25bQr2YLgBlxEYaArp9gDC5zEKP1AaY9QJtkx2cJuebcKDmtTbXjmvqHsQGQ==
X-Received: by 2002:a05:6a20:1592:b0:243:b38b:eb99 with SMTP id adf61e73a8af0-243d6dfed84mr21286072637.16.1756900078540;
        Wed, 03 Sep 2025 04:47:58 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f8a0a2851sm6584074a12.37.2025.09.03.04.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:47:58 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 17:17:06 +0530
Subject: [PATCH v2 05/13] arm64: dts: qcom: lemans-evk: Enable GPI DMA and
 QUPv3 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-lemans-evk-bu-v2-5-bfa381bf8ba2@oss.qualcomm.com>
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
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756900050; l=1145;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=wsLLJGJFupGV6CzZCYaiHCkslrVWQAlmf3KCPEuSGPs=;
 b=cVeVijLP9GWIcOH9Mn5Rb8GJlF8iOXX4RdCeMH5UUSFfrnFcJ95gmfiJcAimJiLws62ZSAjJf
 z3U7sfxYS00C0b+JZPfAvLyWuwyJhlQAr35iJbQbgejNLu2a/6P89UU
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX3P0XiRzOUvIc
 MVz2+G9mqmCuvWhzYlD2dvmGXyjGG8Fhpxee1cNXXJfpnvNMytWazhEQmQ8yQYjow/aLxSF4+SP
 eXptaXMwraVZYruKTBqlZbPXsNHAd3ymWsc04vfqVskqhNn5hmOqylEiIKTY5wIq63KIT8ZBFJl
 eX1uxajd/3iQNr73UJY1uBNpVt64eO/i8LSjw2j/ZqXu2PZ8kIntQVd+/4qoteaQB+0DdPuQuLW
 SN+nAAfJR02+3gEEnc5s446F1k+bhC/fAkdGzXX0XUh9dxLjRKfr4bEjEhMjFgi8nGxUzUDQ05t
 delpg2GyXgs71n4bWbjKrcsXREwZQMSpykU8l9JXkHTUG033OVKaKcJoJ2dMYvCYYO5bhn8eYFU
 SR9YlVTT
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b82aef cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=c2l2xIwVH5VXVvV4u9AA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: gVh7K2k6R1z6afJkzgKPY6XXr_HaixYF
X-Proofpoint-ORIG-GUID: gVh7K2k6R1z6afJkzgKPY6XXr_HaixYF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>

Enable GPI DMA controllers (gpi_dma0, gpi_dma1, gpi_dma2) and QUPv3
interfaces (qupv3_id_0, qupv3_id_2) in the device tree to support
DMA and peripheral communication on the Lemans EVK platform.

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c60629c3369e..196c5ee0dd34 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -277,6 +277,18 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpi_dma1 {
+	status = "okay";
+};
+
+&gpi_dma2 {
+	status = "okay";
+};
+
 &i2c18 {
 	status = "okay";
 
@@ -367,10 +379,18 @@ &mdss0_dp1_phy {
 	status = "okay";
 };
 
+&qupv3_id_0 {
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
 
+&qupv3_id_2 {
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };

-- 
2.51.0


