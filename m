Return-Path: <devicetree+bounces-234082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E7EC2841F
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 18:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A2B4349CE1
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 17:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4FBF2FC887;
	Sat,  1 Nov 2025 17:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DgJEcrlf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UkUjD2DR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1907722333D
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 17:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762019104; cv=none; b=Nw84PIb3iFqkPKSoYycwnjXZ9adM8x0FYFMQGH/NyFZnuhNQlTtirT1C4ZiK/s7L+s6S7Rb4eBAXbwMcyC+SvkClg5GpZqfgDpPYMC092jeWDTseCLmL0qH+dY5vdkuRid0WQ19EQjxBy7JBrzWXUlIA0AfqV7VvceqlMyosTsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762019104; c=relaxed/simple;
	bh=WzgAceLBoyhe70T5JMBC+eLDbqFgqKfzb70WCArDfyU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dODHCvTbHLAGn5ymYFdjeFtP0CcQg08IHjRag25kLnmYZp8v4Me0oLpZaI8gOdEl7BSSP/Wx9yqZlFcpQwXi8ju5jeqcJzloIy7A2W2KbqT3zi5lrP4DbfBxOubCLgdD/hVK1UQxEYtKrzF4UUFLt36fR+O7PtL6QGodVmuZgaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DgJEcrlf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UkUjD2DR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A1AjRgH1304546
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 17:45:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0r10pnmYmr+
	Fs9IaUNrJNpuORDRgX7ggHWjcmGL4eXQ=; b=DgJEcrlfue14WVgLmzQCJM+dAef
	pjA8cac/JVx2LFD4JZdil2Kv8s/99u0yeMm419nCVTeJYH7gBOzG9DsEzNxWxJWq
	FtrkJmAnV8noSXMmpeMGULLAu4gH5MjRNRtkcAzkDnTr2baSZr2mCOK2CTyzDxa0
	jApvWjen2U3biXfJHx/cEgo1cdIL+jdtctKpzKAe2fJRmZk6Pmgq8tdtuxW3yWvu
	tNIrU57WBVAB+CZmS5TpT+INbV/Y6XM9Byxz9ZnIlg9SCw6tnjm8VJGHONjeUhcj
	pvmeflkPcCbNxyBb1av2yPxupNfckEwtvU3EAcoK9hZ6TEaPDtbDaoeNhnQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5bg9gvb6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 17:45:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62b7af4fddso2543829a12.2
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 10:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762019102; x=1762623902; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0r10pnmYmr+Fs9IaUNrJNpuORDRgX7ggHWjcmGL4eXQ=;
        b=UkUjD2DRsF77cHBaTymGNRqFv5/tTXURhviSjn66B2DGw/JIQ3Pxm3l2aSfqOrSI2w
         ke0fgIrLisFUS7fPwiYK+OkNwIovSlfaFWqQe3qTL2RtUz/Ibd26gOOuyuBIeezKDPVS
         49zu2yWIJC9abI1vMqXgA+xnPeSmsVxZFCRAAK9VR1yfLxGPBrKcymKOWjg2YsIgOecW
         KdeTGvW7VAJIFPMoDv3zk5v0t7uZalofH8aWX6cEoLCGeoPKSFFmTdpubVbRQOpxRjTY
         uwERNEa8VGz71y9PwIuZ1ecMBu05Jet1crgyyi5Br8cGK+2hNrYdD5Ruh/y+4QMBC9tA
         hcrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762019102; x=1762623902;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0r10pnmYmr+Fs9IaUNrJNpuORDRgX7ggHWjcmGL4eXQ=;
        b=uAfRsPqkc3Ck+pBsqEjY3kJngmhBuP0UnRfjLPRahIIVPZK537OLXrsxraSgUzBnRB
         PcWOZ2RLrxUjTnSL7zyRvFPsb1VRioVfFH6zNPAPzqUgV5kOttU+258htMcStuzuvbJk
         YMD54YL0zsQM8Dn0hhElppg+39nOtDdrk99Gl7XUUoOGFdhqcaFW6xMZHhXlqRdE7u8i
         GuDZQIukHC1p7Lgf6UX4oQb0YdNDQhB8qhdlICxH22cAkNpn4mH9UlJPNAJxjr4Z5tuV
         SN8JI0cABZSC18vjyES4z0YNGWH7zuUMwBuVQhp1th1RTF9gIEOnK6wwOQ8GTVS8KJg5
         GjIA==
X-Forwarded-Encrypted: i=1; AJvYcCV9o2wagifO8Te97kktX75VW8dmVFY0YbPyZT2MtnJre8WC8riqemdWBP+YETvgHDTs77vS734nv+FF@vger.kernel.org
X-Gm-Message-State: AOJu0YxnvaqtEcCHe+cEANgYJeRX6d8+yWsMHcqNiGYZsPElut48m7N7
	gtLPIIvYkPvdNwYbC3jZrnxttJ7CYDqSY7VjCOuDJHn5BXwjKFGik5UXI30DTSTyidGn3ce7wOp
	kgWebX4WamcZsmYZljWFfGv50rZNIRboys42kvCKEv4JLk6eqlM0Lrzr/Tj5hpcXr
X-Gm-Gg: ASbGncsz2J3kLeWa1d0GDgno9RzdbyL0Lg2/sjzA4xgGlATkz/YpGlet5sDZAwsehzg
	bDdTpkMZiNqAVBFXuJGQGsMTsJ5IJ+eGniKU4ydRhqnZFn+2FqeHj+rhLBqqzobM2XIs2VlmUBe
	J69z+tqEnumMRLrb9Us7VwSsrPIn29bHUlcxtFaAcWnfn94A5wHCpWL0EGZVdbc6tTdX0y0f8vb
	LEBqIDwrPAHh++FAStdQbuCLr2/K4d/t4t9Xt29inlI0/msS++b67IGAZGGxqwNIHBznlZIqWKh
	Q1N8Rr+jpT+dc+nEFTkl1DM2k/f/iBtC3clHu++u3QzXKAh1ZRpLX7R/wYN3xoN2gGccTKdq+7Y
	WQnJ3x7ZRhbseIiVL9ssolSqXryglHoWStkHs
X-Received: by 2002:a05:6a20:a105:b0:33e:84f7:94f9 with SMTP id adf61e73a8af0-348c9f6707amr9071802637.9.1762019101587;
        Sat, 01 Nov 2025 10:45:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEm6LFQ1ZY+MxVoKxBuq08jfHxXgaNcLK4ddAl2bIzfJO+X1BHFquzWtxjbjZ7+Zb3IW0AG9w==
X-Received: by 2002:a05:6a20:a105:b0:33e:84f7:94f9 with SMTP id adf61e73a8af0-348c9f6707amr9071784637.9.1762019101083;
        Sat, 01 Nov 2025 10:45:01 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3407f24ee93sm2793393a91.9.2025.11.01.10.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 10:45:00 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v11 3/3] arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform
Date: Sat,  1 Nov 2025 23:14:37 +0530
Message-Id: <20251101174437.1267998-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101174437.1267998-1-krishna.kurapati@oss.qualcomm.com>
References: <20251101174437.1267998-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: cdzPfI_P-S7FwoNIsB1LEJWJUByJi6AZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDE1MiBTYWx0ZWRfXyCNx3gkUctNi
 SnTF33vzBW+afWF0VSkieqiweq0uaeLA3s1ablcsEwHVwQ9oVCKs0D1Z9WyqUJEpqp1LVjugp+i
 8kkEnk0od77whRsl/prhAD5z2GiiX4eyuFPbFEzFQuIracumVvXvMrC2IAhbZ1VbCAlSeCMX/0Y
 fiePca2F5xC8a9euaHGpAkf21bnJLCBJWWDVCWpChTrOuRfb4m8E18mRmO410CZj4ptoOGIgAY/
 pry+Uqje7oRJv93UNCpYpp3565tQim8CLJx/i6hiNY7JNAcg3TkqhX8AbJxp9JgYkUuT8FFwETW
 LJvOsY2s3h7klU2w9vHenS7TyXCyKmF72JgBah6sEBoyEz193ssifiG+N6DV5QDsFOYJdGbVChi
 s7+ON35nsSpVjizGQp+Jq1CKq4kTWw==
X-Proofpoint-GUID: cdzPfI_P-S7FwoNIsB1LEJWJUByJi6AZ
X-Authority-Analysis: v=2.4 cv=TaKbdBQh c=1 sm=1 tr=0 ts=6906471e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JjTwLu2Kam44ScBvYj0A:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-01_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010152

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Enable USB support on SM8750 QRD variant. Add the PMIC glink node with
connector to enable role switch support.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
[Konrad: Provided diff to flatten USB node on MTP]
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 73 +++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 13c7b9664c89..b0cb61c5a603 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -193,6 +193,51 @@ platform {
 		};
 	};
 
+	pmic-glink {
+		compatible = "qcom,sm8750-pmic-glink",
+			     "qcom,sm8550-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_dp_qmpphy_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_sbu: endpoint {
+					};
+				};
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 
@@ -1054,3 +1099,31 @@ &ufs_mem_hc {
 
 	status = "okay";
 };
+
+&usb {
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
+
+&usb_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
-- 
2.34.1


