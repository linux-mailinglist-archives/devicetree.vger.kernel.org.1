Return-Path: <devicetree+bounces-197734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8C9B0A764
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF9C058212D
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5CB2E541C;
	Fri, 18 Jul 2025 15:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e7ScUeNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D048B2E3395
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852356; cv=none; b=D7xL+6wf5WkszbWgNKDYwQtOfIU2ve7ZeT8h4TPe1jz6TDZhor2ybDSI3raYfhZTKdzP9uF+F8z3qpi2pl0MYtcShYV4YDV6UQ20GaV5jq9L9cT4+oFqVXAK0/kHN5zlBnC70Qxix3XuPChGjjVME1/Qt47+mC23GvO29czcI9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852356; c=relaxed/simple;
	bh=1De67kCy8URfztxKyr/raL7Bg9/P/WLNdrwWTrPtkxg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DnxEtDKcmGIW3lq2MIHIi0ePokLHQ7bfShqDvA/PAVP+ss+m+N0rOw0F6jdbFw0FWUxB29Er2/Jy52iYhHvB/JwCMhkfD70G0YKA7JIhqXOxr5WTGXVe1qm/RtsUOrpvYcoREELnRCJ1q0gM44acc0wsSAhXWnUHYK8eENJEovY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e7ScUeNy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8MXlG009880
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uv7G97OIul7rO6dcvJJAbppowFCFlWCEEc9IoZH0x4Q=; b=e7ScUeNyNFLIkoqW
	B7r9tiYVueJs0ANGPThJROuGmDaWWTK2+ZAvHrdTpU2JeFuPqxgiIprH2IfYN2aY
	qerHtnKhPNMUU9hWVJAaogoeoCgUJJIg9ksWmeOB6kWOpjNgEJdKteCC0uIPUAFs
	KLmskZySVg71NNb3UOxsKw+2Xt4azJXR8tnbJZC3yt6JC437fBDaCYnNLXDPLcJD
	k2aUeFlj2GYlvbSG2RD44KwD9PuiQKKFkuhv1+1ZLyGdQCpyg+xiCScjJr8WL//Q
	CQqAiZTGMZufHkTNSBamdrR/3l1HqEdP/q1bXpQs0qInJBSh/qJQwgYsWeSC5uqY
	DFFbCQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxbc3by-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d413a10b4cso299907185a.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:25:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752852352; x=1753457152;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uv7G97OIul7rO6dcvJJAbppowFCFlWCEEc9IoZH0x4Q=;
        b=tZDv8xzHMlenguhizhmihERL2ZqXNm9/IgO51CmhFBuHHDCf3tm6RBeIxvVzF9SeYH
         4a/eooBdzd57DqXVWaHl/FwZRnr8TOb4blPy0Fwd0x70zzzOIJe/MW9XFZPVNfBm37Uj
         zu2lWcNq6gdjZuOw3nH8xERb8blHKwRDQ/3yvrQmYVUGhgTLn/lRRu62ncif1Aa4J73N
         4wArfYM7OoGdehyzQKXE2SB6rXOeWjU9GgT2+Qng8lyadTFdrp1P4tr0PxbqOoB6cmIz
         qGIWBsvfImAFBAdkqxpJzIRjPWEpOlA7wGZ7xIHDeWN/9Hfsa3a3nPrrWLM5zVMMosGk
         Q5uA==
X-Forwarded-Encrypted: i=1; AJvYcCUIhNCN5Zc13zTWZ2sJdZVMwBb2V/H0CrJUUMbZ2hUKfvG+LfrOPOx13tsT74Rz+4ioU9xI4WkHAPDU@vger.kernel.org
X-Gm-Message-State: AOJu0YxKH0JOOsvWAdON7mXd/nFz2aI3RmNb8j2gpGY+8QiVfb1evtl4
	fpIhLbQ8aEzx6N+rjtilCN9Zt1nMaak0jgsSDXqXYBw6xg+iLJhq2Nr/iBfCN9CLyteenzrAW3J
	kJ69Arr+P/ZhHHKTNTjgha9bKdiEqEG6i2TM4G9GCg0wvH4ZsSAHGdN8NtQepEEiM
X-Gm-Gg: ASbGncsA77pewu1VzuidR6ylLNNafjsRJnRApNnkpunR78disb0K3khkqTKAB5yVwwS
	15Hz5mFVZltbUzgIodlMj6A7q0FbZAfo7CoP5VOHHXE3qU0HLK0GlBHm5MCN1wGwZp8vlIHTBxH
	wqFZbB0uwPB9+WhZXn+Z/LuDYDaNpGHd2npWz7Ig0alZqAGB7djAjbSzctkdDt5dqk3F/8RYr75
	xLz+X3rrUmqieaH3DOxo3C+ybsuWPtahl/cenEd/MilIDJcsRdmN00yga/QfH3eQL/l5kmSk0nc
	WaZP5iVOColSfEAvsSb2qhAmI5YsJ5u8wjnVlMdMKfsalmTVMopPLOK9U/uCuDLQHLNIBJG53Av
	bBDvoYjfpHO/O5OqbleBaQzCzhtc6+cdIpV55D5EToESkM0iJOevl
X-Received: by 2002:a05:620a:414f:b0:7e2:19bf:4e01 with SMTP id af79cd13be357-7e342b43fb6mr1483104985a.28.1752852342319;
        Fri, 18 Jul 2025 08:25:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXNJSKWpVZoMoVHi4t6o0RfQNPL9fdUuEDcWxrS63N1vsmlqqt5W3qdsSaF3AqQyjZUNxjyA==
X-Received: by 2002:a05:620a:414f:b0:7e2:19bf:4e01 with SMTP id af79cd13be357-7e342b43fb6mr1483100185a.28.1752852341817;
        Fri, 18 Jul 2025 08:25:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91d994csm2466821fa.84.2025.07.18.08.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 08:25:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 18:25:38 +0300
Subject: [PATCH v2 1/4] arm64: dts: qcom: sa8775p: fix RPMh power domain
 indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-fix-rpmhpd-abi-v2-1-0059edb9ddb3@oss.qualcomm.com>
References: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
In-Reply-To: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3265;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=1De67kCy8URfztxKyr/raL7Bg9/P/WLNdrwWTrPtkxg=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ0ZVetGFGK5Y1o457J3dDlxHjtW83zHj9ax3Qkn3k3KkV
 GztLeM7GY1ZGBi5GGTFFFl8ClqmxmxKDvuwY2o9zCBWJpApDFycAjCR65vY/xf5Hw0J/inR+q/a
 LH6166ZzOy8HcMglXT7R7pRi+jF+YVP98WeMW2YF63zaUnqcLffkw40MqaFqn+vTpA1y/8m78r+
 ql658URB9X8mJVS/8af0+0Q31rNqKycyS2uIXGHOvm6g1skeFhfv0nI3emfvMbtH/P9c+9fz8Eu
 qncS+Ee8bPuX7tP88JmUZaz8xyO8BdfaCXzzz584W/9nN2bg16ZSGtnXrj6rGm5/qbjU5P2FUS+
 jAh84y7zLxbGUuXvnnH+i/s8flWrZ/GyxP8Xau/sPhEJzHVncr7snj7XdWuaRvNJ/10sGXOrMju
 fLBgjs+O3OxyXcvqqPeia7nf3uqLrs5NFRdmeuKxxzAOAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: tcNrmchjZHIwWpxw1JRaiMFRqEFoQnBr
X-Proofpoint-ORIG-GUID: tcNrmchjZHIwWpxw1JRaiMFRqEFoQnBr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDExOSBTYWx0ZWRfXxr+5pSlftJ4W
 sZJVZtYsS8LkdFwFO7gO66CV9qjTbBwGYcdzQ5fWpUfIJojBxYNgQq9wIh7SqlSLxlDtJGJ/YAd
 FuAUwUi0PadtldTNcRxdyvZY/7qnuiw8mVTvV35G5ZYMCTM/rIVQ+o55BZLNg9Ma0NKP9cP24Dk
 CLA8cveciFqwm6ri3niRT/mDdTqHdE84k+TLGiEWQoZx3kgBZ+JqGDXOt7oMlCFl+Sbcdg3nqXH
 ILLe3jaSbx+Y1DunnZbJlD5GcikCuVjXr8OYSJ6DlDllrOtKMtl4LJOi4YwF+kS8hbbxr5MYRHE
 QZRh+gihurOML2rh/SlPK6UsQWMiuF8B/2Ao5HEr/7JRV9pBSPF1TfLHNjXxTxKbbubjoJYIC9L
 +zirOzU7/Xc2s9e2cNsbp34PcIKsl8mk+hntrHsV5HTl17UxVlF1D0zfutl7X1ihWjF+GEKE
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=687a6780 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=kgFMI072Rb3UDlC8HFgA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=843
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180119

On SA8775P power domains device doesn't use unufied (RPMHPD_foo) ABI,
but it uses SoC-specific indices (SA8775P_foo). Consequently, all DSP on
that platform are referencing random PDs instead of the expected ones.

Correct indices used for that platform.

Fixes: df54dcb34ff2 ("arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes")
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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


