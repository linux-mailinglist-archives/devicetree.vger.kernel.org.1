Return-Path: <devicetree+bounces-214644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADB5B4A066
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 05:57:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26611441F6F
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 03:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2FDE2DFA3B;
	Tue,  9 Sep 2025 03:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q3a+8A66"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640DF2DCF4D
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 03:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757390234; cv=none; b=qbUUVTIwzfeCfOe05uHhFKrbVguPmd7XxVYFf4TSIferYLXS0yWf5Jkvm381Km8LfbFr3Mm6kZ4D7KvyIOxa2pBFxRF/cd6XS0LiRDDJeC87sK/M9Pg0hSwiBWrX85NsbtRFEqC1xN268EbBouygvKYcgY3aIaPJHJOVMWgXg3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757390234; c=relaxed/simple;
	bh=1r2sMelXbjk/wDAFKdurvjSblStRt30JAp3AyhW3uRo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NOI/XyKaES0GNadypUAjEgYU76JK9WYpWpt8ZsKIVvyoPeJtTba1f9P9l1z9sSxmp2R9VQ9oKum0JKludW3HwujX6/skvK0wsxPW7AJd5E9LfLkhrgR412nr8Ote3+hzc7NQJ7HhH+7EoXk/qlY7DtAUDzA1aohGPyEAPGIdZfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q3a+8A66; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5892ETMJ026149
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 03:57:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2zmm3mqUYRqAp7XjdK+i0CCS4NnUVrAXcuUzDM38Iiw=; b=Q3a+8A66NySPW61r
	vrZBVMMi5lopGOmBwGz1cX5iFs7rora+nbPLbPdSoi3xCw/Y8SxNFV3XpoucF8Ht
	/jCwkqrsyllpc8TjuN3K5fOfU1as5J3jqdGb/0rv+WwpvuNlR1Ns8dnmiLoQs4jv
	AkJVaT2W4WQ1kt2lo4PsxJ6su32rpBeg+6TeWi0kjDLUE5LBB9wlscCA8AXVOMEc
	vNJgyA9ueFZEFf7QcgLjdZ0q0gzeUh5wAhjbVrmiRwYyODidY0v8go8YaPbVtjte
	Re7P+5snh/D241TXkpuntcv63VOt0wpUJGqONTU86oVUXv2bbGluFbXw9CCrnnm9
	FNOAjw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kxp1v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 03:57:12 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24d4ab50385so58376925ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 20:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757390231; x=1757995031;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2zmm3mqUYRqAp7XjdK+i0CCS4NnUVrAXcuUzDM38Iiw=;
        b=pSZxpVNROi2wk6VUpdPjw+n47msCOwyHx5vTwk0OemVnm2TidHqorFEYKJ1M7CyrSp
         EcLeYNhUGbpNJWM4Ams5RmNBU7mR/MJk3wiqahYT+PTAgswfNrFmotUvGsd6hHnjg9jW
         qo4oybMgIZrQeqz3azV/a8gOLU1o3QNmRoDnWopbmbQMRMJZUv0Noa5eerb7vdwcBjqs
         MTeaT2z95SYu3P6ta4kNBHYxYxgPBNBDtjnFCqhrs8QgJKomBIxS2qWFDyUDn0H3PbIm
         LyAXpPJKZdaEOddYSIMstVnpUs7e3IsL+RF6n1Tdsqv4UFufsqrS32HeTG3A5hJ0RFvu
         aO2w==
X-Forwarded-Encrypted: i=1; AJvYcCVMoMvsoa3cm+wPsAwc/K3mg6OV/ecmfADGZjjdRe2M6AasU0Fn4bzpq75Iw0m89srNSaXXJooasdX9@vger.kernel.org
X-Gm-Message-State: AOJu0YwD3Ze+kzgvJbUdlQSLSCNlSXIdgOsTByKAD1XnwJrCMxBx6ydm
	cdnkL5mupeeS+BQh2tjFH9xVUyzsMebnyu/yoQ5nE8Y7tkyPfC988irr5KDfnzhFaYa0pqTLxCJ
	bdO52t9VjkW2Ln/Gt63pqr6YNSlKcbQp8tQcnveOHCUtwddvsnWwffeJjzqf9jcNG
X-Gm-Gg: ASbGncvJMaunTJcd8gTlHjKOn/vKy+aDWZSmNfeMj8kios8sZeqCUHympBuZYmangL6
	JVGGkfJwJxgTZlCRSbaE2YzdJnC3uQ2fEFIAnQGz2Pw4mU6So0/41nRzOd4tTLW8AmZ8t0QkLm8
	jJVtW7YBeHoiMDtnF8qTVc4ChsyNQ9ZmfDycVtxFwefNfHUnVU1YkpnclsMcEE6DqfHbGseyCeo
	vSAyEhjA2JDG9eEl+2Zj+xTfKnPIRtDlKehJcsjJRHlXy8VljA2a5YJ5dUvFpM1azvjtLS81DvU
	8U3XdJW03VsGHkGs1ISN9HFnULRNf7haJGMiN7335DYwfnpkRO5eOpyXHrnu+5ojH1BdtC1x4V1
	xnfZRl1l+cBqCe21g1m1ol+Te7nX0cWoB/A==
X-Received: by 2002:a17:902:e743:b0:249:1f5f:f99d with SMTP id d9443c01a7336-24cef940f8fmr192818585ad.22.1757390231234;
        Mon, 08 Sep 2025 20:57:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJCci47uEcYdrrAlKDV74Ch6si8QGfcDx7sIK6ebs5yPJEKcgCBw2AcEFuBlnCX399ax0Kjw==
X-Received: by 2002:a17:902:e743:b0:249:1f5f:f99d with SMTP id d9443c01a7336-24cef940f8fmr192818385ad.22.1757390230798;
        Mon, 08 Sep 2025 20:57:10 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24903724b94sm295614705ad.35.2025.09.08.20.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 20:57:10 -0700 (PDT)
From: YijieYang <yijie.yang@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 11:56:03 +0800
Subject: [PATCH v10 2/4] arm64: dts: qcom: x1e80100: add video node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-hamoa_initial-v10-2-ec10057ffcd2@oss.qualcomm.com>
References: <20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com>
In-Reply-To: <20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Wangao Wang <quic_wangaow@quicinc.com>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757390219; l=2903;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=uRYc8tLe70Gcn2K2RcdgjKkdTXcXz0g6iNtU/vtcWZg=;
 b=4OD1sNT5iJU58TyHCkZBdULUQXHTSkIHohFpEmw/ta0iN/g1Azbmlr1WlXoeLhayjISRCSD3U
 tk7RwEr0/0WD/zrE4PiNbHjpkOhUAjpDk+Re2C5P/r4Eqgb9sulhRXR
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX0VE7mjWLvOAy
 2zpy6Nfo3pITeLBCWlPPzwshXB/mJGx07pozbsTL5h9GtsKeaHJrfGsmbSV0oCXOyYYFXTcuVC1
 E5oM3t4+PN1SKEwuxm3+OOSyy/bUOLtkNIh0SVYjjUmYywXwO9E7kqQ7yrRpoYuCTH/5izS1Xcj
 SJAv1UgK+220fnxrCZUiyBdlO01aupF2+ovFJc32pwDTUpL86yCvGzcaDiQIjkH3MNErkkxdbjq
 fR4uWOUU5uAc1uZDGQskDcNlbBbNlRX8Y5xWy8p3oT+glreKhz48OQz7zJwNO40ePo3XxVb7fOo
 zcWUOE6CvTPJeV25Bdeyj6d+AIaytehGaIBpztaqVCMBa5TexkOd6bOoirE6UsayHXa958AOJzs
 MmlJmRU7
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68bfa598 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=tEm64AmstYfONosBKmoA:9
 a=Pof-dxJgaamTTWcV:21 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Mzm1dx5cZ7cnZ4ZVda1IRo4E_MpuZ4ap
X-Proofpoint-ORIG-GUID: Mzm1dx5cZ7cnZ4ZVda1IRo4E_MpuZ4ap
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

From: Wangao Wang <quic_wangaow@quicinc.com>

Add the IRIS video-codec node on X1E80100 platform to support video
functionality.

Signed-off-by: Wangao Wang <quic_wangaow@quicinc.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 82 ++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index e61c9010a3f2..7ddc3fe3e5cd 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5183,6 +5183,88 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		iris: video-codec@aa00000 {
+			compatible = "qcom,x1e80100-iris", "qcom,sm8550-iris";
+
+			reg = <0x0 0x0aa00000 0x0 0xf0000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
+					<&videocc VIDEO_CC_MVS0_GDSC>,
+					<&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mxc",
+					     "mmcx";
+			operating-points-v2 = <&iris_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			memory-region = <&video_mem>;
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+			reset-names = "bus";
+
+			iommus = <&apps_smmu 0x1940 0x0>,
+				 <&apps_smmu 0x1947 0x0>;
+			dma-coherent;
+
+			status = "disabled";
+
+			iris_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-192000000 {
+					opp-hz = /bits/ 64 <192000000>;
+					required-opps = <&rpmhpd_opp_low_svs_d1>,
+							<&rpmhpd_opp_low_svs_d1>;
+				};
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-338000000 {
+					opp-hz = /bits/ 64 <338000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
+				};
+
+				opp-366000000 {
+					opp-hz = /bits/ 64 <366000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-444000000 {
+					opp-hz = /bits/ 64 <444000000>;
+					required-opps = <&rpmhpd_opp_nom>,
+							<&rpmhpd_opp_nom>;
+				};
+
+				opp-481000000 {
+					opp-hz = /bits/ 64 <481000000>;
+					required-opps = <&rpmhpd_opp_turbo>,
+							<&rpmhpd_opp_turbo>;
+				};
+			};
+		};
+
 		videocc: clock-controller@aaf0000 {
 			compatible = "qcom,x1e80100-videocc";
 			reg = <0 0x0aaf0000 0 0x10000>;

-- 
2.34.1


