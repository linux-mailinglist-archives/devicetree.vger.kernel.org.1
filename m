Return-Path: <devicetree+bounces-197330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CD3B08D7E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A9B03B2A35
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B151E2D836C;
	Thu, 17 Jul 2025 12:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DoqYh6A8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CACC2D5A08
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756704; cv=none; b=Sg2+ePdNn7lsQwwMCiEtY/SvocRMZOL/zCF0XHBkapJRaNzFi4gNmbm6d4QakcXPNmRtR+hH0hfldSVr5pjXIEDnYGA2eMAmP/dRrolxoVNwjl22/gkhtvofxOLgLnxCd4qN508AZq7wxGRKidUnc2A14zyp5a91xA8VswY4jKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756704; c=relaxed/simple;
	bh=8fCws8CMRb56c2oRzF5lDcVyb6GSeZNulXhw/17eeuU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BJ9MucdpaYZc5IJqtWR9BRvo+jkjQQLkklCXRp806QRlhfeXh2kVDaI0DOT+l2vNJbn/eM8+RP7E4l22Lf1VXWrWLg7UClcpx1MNMww5jJBiREF0JtwwSw6JNPjhOxTa1mbM+6kC5TtNxh9qRIsNwBfqNFMG7Lxz8XF4MlJ5phw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DoqYh6A8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBvMqt030488
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5dmjx6DoFfD+EgytGx5MlRtogq65KCgsAvgpzSUdgR8=; b=DoqYh6A86OWqgsT+
	F/BMenk5LmUxSNUYWNhrhv08LDJ+Wc9lsrjm7ss/uJ/ekLdCWimiJ/67L/YOykye
	WYcDHRgFu3j4fh7S9xvX8ekUjqdEAmCfq7oFHiaLGOQOYSzdAs9rmn6c3ymZD8na
	Te//eN4BAoA+o+KACrMcY16OIgEDsnLZeY80wmWYyYPtk1kwQK94KcU5/A2DjR71
	2j90e01QJSxOe+aPqh+b+cNPpp9oODBOZcTbTedbijarqPb8LUsX1nvqzVltXHTY
	h+ZJFtQGi/T+zVB8Fi1EPZTTX7hHSgakZDUZgRwLLRwaL2CpGbztTah1r2INiQDz
	sGsjgA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47x8x7mh1p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7dabc82916cso156090785a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:51:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756700; x=1753361500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5dmjx6DoFfD+EgytGx5MlRtogq65KCgsAvgpzSUdgR8=;
        b=Eew5EWoxLa6nEUcRb4Y69aAZt25bKUoAm0VmWE0AkHBjohSyRXPqwZJTEK5UvuJ3Cw
         myqJMnYAhpMBRao4rbK9385+uIj+2P8dxfFkf7safBNWzg17SbGSi892Z8KZNIQuoMC0
         8yOkDT6e85g4aiB/f9lNWzkqBb8YHggnbXkOOGttGzhkCDJC50CK45f76wofbqlOUNnF
         09SvvTHXhHuIPp5RD0eikp3tkhqfyyKghDAd9Wp8Mlj/lUZgRCv3TG33K9oyVDOx54uD
         b9bfky/ZhAe+65LY6uxb1b3Hh6o1zU7vszZ6TEqc38GhouQ/9xOx1Rve4I2i6CFQQMkV
         maNg==
X-Forwarded-Encrypted: i=1; AJvYcCXNKNbj5Gl7743wJix9xonhr11JZE9enDbZqKBnMLxTvPubKwSD70Cv/Ai3DAWA0KGzjn0S84A0C4xo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3IWSs5TvxAWhXYkfJnFFHIJvot9DIbGzqEeSZYbXZSgXk7gfM
	PKPWVbdOF7lDn48VWdRxMURWInj0tlkChx1U9+RcIdFOnekMUsowaQ/BT+fSrHJN5wR/cNjKBJV
	c5HD2Nhx02FnD1CuM552/pBS3gkLtI5TcHALQGBdxRdEYlaiOMQ+KDHWQGxGAtFz+
X-Gm-Gg: ASbGncurnqERk6ZlxgeMbSStZX/JUDhUx8JJGQ88h+LP+HgsE1T7WEv4hs6+C8a/2Ei
	XkXdAMj7n78tBllXefO6quox1gHN7p0I7gEgpp0vS3dhgRd40ibo2UKD6Fc5vdnPTuPUCKZLQwT
	Dllhfn1Innsmdmzbbr9z8G+ZWDwqGuWDZcQBoo3IcGAFqnhgWWAmhX513TArf/5IwdRuRvTSq6O
	YFOX7x16G8V0DeL21GcI65AM+T4/qCR2pbbsySS5eIyne8Or/pJ2ZNLNkb3WwBmKPfYfp7T3TOH
	4jDZM30NUQ2q98iBL9tWGvXmHakrOtqw6GWysm+ZECJ2KFYVrafEpM/KTNDaRAObksruABz2Kf4
	YSfvpV46fhq8Rb6X3ujZsXZFjYmEkacPuhGldcMvqSxyCKUKa9zcN
X-Received: by 2002:a05:620a:19a1:b0:7e3:4ad9:4885 with SMTP id af79cd13be357-7e34ad94aafmr461234085a.38.1752756699958;
        Thu, 17 Jul 2025 05:51:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtWM46nbZv8/M/cXE3tfo3WZXNY1lQapLohcThkRMOjCJzW0sAKWFycICUqtnA3jrA5dm8Cw==
X-Received: by 2002:a05:620a:19a1:b0:7e3:4ad9:4885 with SMTP id af79cd13be357-7e34ad94aafmr461228985a.38.1752756699407;
        Thu, 17 Jul 2025 05:51:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c9d08fesm3032872e87.126.2025.07.17.05.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:51:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 15:48:16 +0300
Subject: [PATCH 1/4] arm64: dts: qcom: sa8775p: fix RPMh power domain
 indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-fix-rpmhpd-abi-v1-1-4c82e25e3280@oss.qualcomm.com>
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
In-Reply-To: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3137;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=8fCws8CMRb56c2oRzF5lDcVyb6GSeZNulXhw/17eeuU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoePHYNdvG92c1C0SfA+Uu8M31YZBxd84hLXKI+
 E5Wh5Oe15uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHjx2AAKCRCLPIo+Aiko
 1aM/CACe3a+BwmWFyI8/TiCJ1eTaLw/+/Av9al0JiC1R6qDfGX0AzgmTHNFKGcFZWPLvqglSUhF
 jLhsB2sqvMZY2u4b1q8bbKeeBQ24B9t0WTSdKjW1Rz/hEWtKoL5Uic3BO0SgmMmFKrWeAGrY/5s
 RFasXcpMZtCiyHHx/q+M25qwulI2MMoeiHT+MMwjyymBGA+waW1Bd9j6MtxMGnYXqopzq22HUYi
 hxy2jj7B42a9qxLiSoWV9r4U9a7puNhUSfpIoEhJy7DtmFu9H25YkTfoIMJtrW376O/W+ZzBAfN
 0MBQtlYZ5O4XOMwb852ymrSSIWkKuJkOosGd6nzKWhYRnwt6
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMyBTYWx0ZWRfX/4WUjbcCSYyn
 WeqEK5oqEKsGzAb0ZGuMXiCYajmiEvqnV9T/G6UD878jpxO20us1KtIvRNejQcOicjOAarCFMoj
 fYU1Bl8t3InetiP/NxUft/lDIC+LlzmqaRgZvO6Q/6+ojfPeWuExdPyh55AEHNuupnOhcCZJga8
 mZuosHofk4vl8fjopvXTIAutNJm4PbLcdcHIATzirfMWRHl2yqFeucn4qODIJyrgEnJ0+D/YUrm
 xI5e/17neYAHB696TXx5VmoQopNc3gIxzB4N1p31YlS3lQhPWxVDGnEG+O1fJ+pxQZSuSiZjjcY
 oQfIumDoo2u+yD6wBWmZuzreTXwXeIkTw/j4agmC4O9tItkO/zsEoHqoEAe03ntQb5npI1pXAqW
 iQP7JgOFWwL1ERrAV2JmXxPLPWtcbct25RtL4D7dPMaqC8Mm9/cNfxlgZIgJZ3hv2Gw38cP/
X-Proofpoint-GUID: 80wpjlvDMolp-ET8u9UrgzwLdLahlfuF
X-Proofpoint-ORIG-GUID: 80wpjlvDMolp-ET8u9UrgzwLdLahlfuF
X-Authority-Analysis: v=2.4 cv=N9YpF39B c=1 sm=1 tr=0 ts=6878f1dc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=bLvTzZXTTUYhi_MxgGAA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=810 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170113

On SA8775P power domains device doesn't use unufied (RPMHPD_foo) ABI,
but it uses SoC-specific indices (SA8775P_foo). Consequently, all DSP on
that platform are referencing random PDs instead of the expected ones.

Correct indices used for that platform.

Fixes: df54dcb34ff2 ("arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 9997a29901f57d7894dc1eacb6a809caa427c6c4..214e2c0e74ef53e8bc57acb8ee88901ef1006298 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -17,7 +17,6 @@
 #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/firmware/qcom,scm.h>
-#include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
@@ -6055,8 +6054,8 @@ remoteproc_gpdsp0: remoteproc@20c00000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd RPMHPD_CX>,
-					<&rpmhpd RPMHPD_MXC>;
+			power-domains = <&rpmhpd SA8775P_CX>,
+					<&rpmhpd SA8775P_MXC>;
 			power-domain-names = "cx", "mxc";
 
 			interconnects = <&gpdsp_anoc MASTER_DSP0 0
@@ -6098,8 +6097,8 @@ remoteproc_gpdsp1: remoteproc@21c00000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd RPMHPD_CX>,
-					<&rpmhpd RPMHPD_MXC>;
+			power-domains = <&rpmhpd SA8775P_CX>,
+					<&rpmhpd SA8775P_MXC>;
 			power-domain-names = "cx", "mxc";
 
 			interconnects = <&gpdsp_anoc MASTER_DSP1 0
@@ -6239,9 +6238,9 @@ remoteproc_cdsp0: remoteproc@26300000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd RPMHPD_CX>,
-					<&rpmhpd RPMHPD_MXC>,
-					<&rpmhpd RPMHPD_NSP0>;
+			power-domains = <&rpmhpd SA8775P_CX>,
+					<&rpmhpd SA8775P_MXC>,
+					<&rpmhpd SA8775P_NSP0>;
 			power-domain-names = "cx", "mxc", "nsp";
 
 			interconnects = <&nspa_noc MASTER_CDSP_PROC 0
@@ -6371,9 +6370,9 @@ remoteproc_cdsp1: remoteproc@2a300000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd RPMHPD_CX>,
-					<&rpmhpd RPMHPD_MXC>,
-					<&rpmhpd RPMHPD_NSP1>;
+			power-domains = <&rpmhpd SA8775P_CX>,
+					<&rpmhpd SA8775P_MXC>,
+					<&rpmhpd SA8775P_NSP1>;
 			power-domain-names = "cx", "mxc", "nsp";
 
 			interconnects = <&nspb_noc MASTER_CDSP_PROC_B 0
@@ -6527,8 +6526,8 @@ remoteproc_adsp: remoteproc@30000000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd RPMHPD_LCX>,
-					<&rpmhpd RPMHPD_LMX>;
+			power-domains = <&rpmhpd SA8775P_LCX>,
+					<&rpmhpd SA8775P_LMX>;
 			power-domain-names = "lcx", "lmx";
 
 			interconnects = <&lpass_ag_noc MASTER_LPASS_PROC 0 &mc_virt SLAVE_EBI1 0>;

-- 
2.39.5


