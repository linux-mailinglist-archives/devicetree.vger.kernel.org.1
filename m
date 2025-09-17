Return-Path: <devicetree+bounces-218187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD96BB7CC2B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:09:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D53731C01E80
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 06:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9951429898B;
	Wed, 17 Sep 2025 06:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LslUj22g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D52296BA2
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758089456; cv=none; b=mbhlCA+xeXErJciU0+McdwcE1mWwHDTkBf3CtVDsdVxvMl0Ix5kCXpKSdaXhIvHKzoJfWpPNtXJTzoIiEMPMRQzroDwKpfduCYeNn6ku3zDmzYqNkkk3BhdPK7SHcd/9ciL7fpNcHljBtmdwAp2mzRBNhUaJYQP00hZyeBzpuH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758089456; c=relaxed/simple;
	bh=6DyKuW7ypyV0ODas0VjBoT5/k58gaTSw4Q8zpDyXSs0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XczOLGmNOI8Cxzn9rB+wtvywjZxXtjn1D+h7/DYptDWq9hmsbqxI7x380WXMn0YpVBoMcQo2LVchXWJxMrJfMZyTgYaqIUQOaGcqJ3lCH7OrqbfU46B6s2eIfk3oIfX/MLmwU6SXmIT6xzg1FIlSopnNnopudnsWHfb4QlZmtaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LslUj22g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H5Rn3w008633
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:10:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9B57qsGGKRM92nT7xW4t6YKghhIgbB6i0lMTdcycnBk=; b=LslUj22gg0k40vHm
	th9cuJkhMha19OklOpjOuoWIBHAt2sIsCTyl1q/lLBYx3QvRDDWAIFfw/N925p/i
	2bxdFIClDKFMuUlSNU51Yw0XVE08WGiTUi+DyH6kV+H6ZfyFaxFBMqpW/QQ/cKWx
	XK7+t0gZV4NWUSlbV7SR47LtBmm2dXpifSukkbJ57yT6hfSz4cnjmCyokwkUHm5I
	WZzmhBTuE4DGlXvUeZORaTEgXROmQmSJ7FDrYw3U2xZ9fXuLxSbF5MWl0rMeaK10
	df72oi2b3gz7yrJgYm5jnfOGHwt1XfOFGZEkrbsF5vW9X3yiX7nRgZzOR4DxUEZm
	whvWAA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxx94xx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:10:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb18b5529so1236597a91.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 23:10:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758089452; x=1758694252;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9B57qsGGKRM92nT7xW4t6YKghhIgbB6i0lMTdcycnBk=;
        b=Lcg683w5YD7L2tDXs4lX7/6HYfJ8uy3LZ1TdJf4nCNWaFagbo/zqc/kqPAfUKy/d9o
         UgqVVwawUO5EhE/4Nq69jJg/zDAhycI6oqnjLroTz/JkVfun/nn84xi5mwCpDn+Lpxkt
         JdNY7Mi/I9iFAQVNsMysCsFzKE1qFlnAc6QdDMug2LqgGS5yD097dtJwNBtt6mfHdXpa
         2YE581x0If1+l/LFClTYer5uMjpZA+hbCnkATb1KVh27fzSuupqbgdFkJNXCjf+Lu2ou
         YxEzhKU17f3HMZ1SUIKG9/iKluruS6PbIckOrRXUCz9pOz/ogc83Y4LF+Juk5gvkFE7s
         EtYw==
X-Forwarded-Encrypted: i=1; AJvYcCWeU9YxMbahQZnDp9bc4TWfxJ0UEONC7rdv9qbgQVOhXfbRiXkSYs455kw25i8LqZTskuAJUfgj1O9L@vger.kernel.org
X-Gm-Message-State: AOJu0YxaWX7Hkcruv9fWk/T/9qDn7ELNQe0VpVX+gZ9by8G/7LrfB1Yv
	d8CkEMXciL6moeez0rt0hB+35AAVR1zJYn2ECl9oX1atBZoLdIgRZpwwiJPPeS3XC1yDEHWf0tP
	2rt/8XBuR7dKMEQrkf5G/wsNHUL03PgAHr4ii+kEx/tOyUwOR+h24KauPHnz2CqXh
X-Gm-Gg: ASbGncs8BsxmWjMfyKwGxihLQZX/RQ+MT+5pWncBHKNmvYY/MpDpRcK+g5lkTwlI8NO
	bl+ssTo+9u3M7mJRXYVA/yKl/CujYydY9XS6I1EyYTx1blrhXgO4JxU0vm2HOdctIxXlke1wvqW
	5OB2zCWJmw7QR5iInwbDZrHPIdApWCmTDznBbwie6hsTQ5gPQAxLWCy3LMRVtuiQSsqUf+PFVrx
	JufsYlQhFXcTlA2Loy0+Ou7MDBI78O35qZSpQhq21guujSoM/mhXPUS9fxqew6ozO7VV/XleRi3
	gyl/uoEf8/0OPvOh2ZPNf22iyMYNKa4OPnu7NeNEBWmgLnVU7DxSMH5vctH1aaICqekwzko=
X-Received: by 2002:a17:90a:d88b:b0:32e:1b1c:f8b8 with SMTP id 98e67ed59e1d1-32ee3f7b4c2mr1154164a91.26.1758089452025;
        Tue, 16 Sep 2025 23:10:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVy1hXExNeFQxl+RVv25qeBAOGV6O/WOoBTKFWMTueYSdRGFRA/h+K6J9cC421l1FOysuHDw==
X-Received: by 2002:a17:90a:d88b:b0:32e:1b1c:f8b8 with SMTP id 98e67ed59e1d1-32ee3f7b4c2mr1154124a91.26.1758089451500;
        Tue, 16 Sep 2025 23:10:51 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b1917dsm17966812b3a.52.2025.09.16.23.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 23:10:51 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 14:09:48 +0800
Subject: [PATCH v6 2/2] arm64: dts: qcom: qcs8300-ride: Enable Display Port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-dts_qcs8300-v6-2-5c862aa80f64@oss.qualcomm.com>
References: <20250917-dts_qcs8300-v6-0-5c862aa80f64@oss.qualcomm.com>
In-Reply-To: <20250917-dts_qcs8300-v6-0-5c862aa80f64@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yongxing Mou <quic_yongmou@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758089439; l=1782;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=6DyKuW7ypyV0ODas0VjBoT5/k58gaTSw4Q8zpDyXSs0=;
 b=A2h+bqxS8+s8TzF1poHBzzfPH2lWRvhxZDfuOGctM0g+na9002p3o0at2/C/tx8Dau5IXlIwb
 1Dn+5m3wwSgDbR6hrPtndpaHttdMfBCmGrSsmRs6WuDb9FAqxNNIXCN
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-ORIG-GUID: KOFFXc_sIhAQNAtaLX1dHG4HReEDWQG2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX8SHPeE1jx+RY
 8ag0xH3Fy1m0G4abQSlQOdcgR2RZHKoslpKH3LKKBTTJRewfMcBnv7VZWUYOgMZVMvn64upe5BM
 GEcAjFd4PcPQsqydwx8g9Fn4BKMtufsETQ6kF2kKdX1p5+w2NkbYTn9j4i7WMPLvEiibZTK3rnt
 SWHdq6Y7pb65rUYT394KtvvSP1WRTINlQnfO+BpgKjn6nOTwCxrk1CuKScMhhhkO4olyUSzUTX/
 qrFwgUhBoSRQAz5QiV+82xTbz1ul/sLWnWrWENI7J6w45qLVRKHhQfGxMp+sRFanwA3jy9GFDQ4
 DItSsHxTWSVcCeFO2DbDOCvVMiYeUNUsrVKYQoF0BGxfq1lwAVHJRPyfS8PAz6PZleuZ1mEvusG
 s2wiD7vH
X-Authority-Analysis: v=2.4 cv=cq6bk04i c=1 sm=1 tr=0 ts=68ca50ed cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_VwKv_mhVLi2vGvBpDMA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: KOFFXc_sIhAQNAtaLX1dHG4HReEDWQG2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-16_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 phishscore=0 impostorscore=0
 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

Enable DPTX0 along with their corresponding PHYs for
qcs8300-ride platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 +++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 9c37a0f5ba25c7b20133dd374918cfea252c6882..3e8d4380bacc0fbe16d2d3419f45c8c0298194d7 100644
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
@@ -309,6 +321,30 @@ &iris {
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
@@ -369,6 +405,12 @@ ethernet0_mdio: ethernet0-mdio-pins {
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
2.34.1


