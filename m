Return-Path: <devicetree+bounces-167189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 353CEA89A18
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D0A4188EC61
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CFD294A13;
	Tue, 15 Apr 2025 10:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SxJ9vVGU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ABF2949F5
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712820; cv=none; b=RvFxcCQbhWyqQbu3PXa42PvpiHGfNIuR8yOYKplsKK8/Uh6Ie8sIAav68luofioobTNJ52Yy9gpYmm08YbcrsKAVteROQNgCoIqrnc8xmH8ZXGXWLca8F5dvvrai2tp164pclZUnRiKh9uAkrwGQBl+j66mikweWHNeNbsvc3CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712820; c=relaxed/simple;
	bh=KHJ7VZhN8rw3VfAx+BGydOiTqYcD3AQrJrNdTioIkBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oOqSmiAk4uknGBSYVC/1tuOalgHladDKktfgNY83IKIfdZoz60iXXUPnq0OrK1oRrExAZnsZREfVYzL4EI0ueZxgnTlQUh4B83ybKF+G1sEk08bDA9rrQxFFl0r0erVFQ4TJuPIxT+N47qagfBuJqG2qZqXnXHaef6FpciaYF+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SxJ9vVGU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tHKr005246
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2NjQe/Cehh14emWoioDAkyVKlMIZtUYyZlfNAc6nIWk=; b=SxJ9vVGUL9vYswht
	OfjHueH0gUGTM93RKKKe+WGNPECTsRPU5A+i27OYqHaJgwyLKScMvNSvG8vE2CXW
	J0R4BAgV9nHeIaOZf2cZneHyrBUvORfLMpnJUkedb2pot2MRWdVQZjEY33u2iLtJ
	RmLAVkppwQyH2GE0udjPd2e2oL85yZgKYg0c4/z+lg/wBQQaXSjaKxLFA4GjYDrY
	MQ0lrqeXaDcwwyqICXc0uXGiGYCsU/6vuNjtE8sfVVArh2QfzfXENuQQzmOxbHRS
	B5xyH1G2BFCBHFvr+pJE3EemhxWJo7177tnMirSSTtLuVqAh7C7QeFi0EqranlY4
	rUVwtw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpqfxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5f7210995so915962285a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:26:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712816; x=1745317616;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2NjQe/Cehh14emWoioDAkyVKlMIZtUYyZlfNAc6nIWk=;
        b=xKa5IBxzfYpC940rHI4j5HjJhg5qVCunPcBsbLbGlcptd+DfongIN8N59D0JUQZ0g2
         lsnfOmtXX86kDbpIbfK/TFDsC/2WZz1EtEBsz6DAQZC5006gzXZBLAT3n/x4H3q4YNQ2
         hImDopG4z/4hn062HJtF2LbVpcCmtCbYCQJkX2rTqY8RXy3MT1tHxLsfgdK5A64QDakp
         uYtCmxaL6t06NHPt9cv9NRmW+UvQDBGNmyfa+kE9qjhQcD7mASA3l5Vse/TNGmVFOG8L
         KHW8a+4n1eJCi/yIQmSsbTYn41IOQDKIeM4vKfTrhLATOAStBD3HMtCcpX4WqBhKIFWK
         qUAw==
X-Forwarded-Encrypted: i=1; AJvYcCWa/mLPTqP2+Sh5SdLsT+1Dao7+/GcLIGWr0+0U3rWdaC6PajB9cl7XF119099YW1A6Hm7Htzj1j3is@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7fS3oQmmK/6AJE+/ixKGNFmEt2csEXHwMhec/8lxFut1sskBr
	Z3oMTkYec1cgkPmmraFcfsqv0gjhoQh9nE16M1nlZtY52xrAauOkNpQQQ0si/HQkMJJypnP6w0G
	gUj82IhpMgDHVo8Ag4+9NTDb7dzutzWlswPUVCc/A59HKGQtVOn5Cb581FleB
X-Gm-Gg: ASbGncvmGWCjZfB/KMXkjKyBhSz3HTrshytgvzxnFSPYaagk/LXFgwOPT75G63sIODW
	d2YOukK0ORKedEqStnDf/YR/i8EiODY6SO5nu3RLyHcgAyc/qMgfuEmP9T7nAj9Q/LuB0hFV5+k
	PeM0095TcIAliSWNOdzvMc8CemcuDaiFwMORpNx45CcT0b9gY7AfrgQZpHxKnMpLEuQsdim16Qw
	jYvuz4JG1ykI1vZjvdc+h9lwTqZ2z6t94Y8CA4Y6K1W5SfECsZ/bmAB53OPS7E/qiVfUKyfuCbR
	UO3hEfRdCjA3vIgFXBEtqcc4nBfvVTZSO2ElVcSXepMmi0/l/KEuC0Y/i7vRVYasmw29zOyFaJr
	RZHzVu1aEQC+WwoO9AyxcZTYC
X-Received: by 2002:a05:620a:4244:b0:7c0:a264:4de1 with SMTP id af79cd13be357-7c81e02a3dcmr391832085a.24.1744712816252;
        Tue, 15 Apr 2025 03:26:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1dlRojfFTSAw1KzfFhkgSfB++VdMKvftNZPaHwRR8Gxr2IPTV83OyfO/501TBFtv8koK9Jg==
X-Received: by 2002:a05:620a:4244:b0:7c0:a264:4de1 with SMTP id af79cd13be357-7c81e02a3dcmr391829885a.24.1744712815956;
        Tue, 15 Apr 2025 03:26:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:26:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:07 +0300
Subject: [PATCH 09/20] arm64: dts: qcom: sc8280xp: use correct size for
 VBIF regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-9-90cd91bdd138@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1334;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=KHJ7VZhN8rw3VfAx+BGydOiTqYcD3AQrJrNdTioIkBA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRcp8T0wB1v8Bqmdw52kn+AiNkrsNC1XgLKb
 bCEVy2E1vuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40XAAKCRCLPIo+Aiko
 1cPQB/9NmQNmJ588bnUVmcmkk4bsmhZqcZq4sKvvYsAYwh0cHfXS7VtPTt/Cu95sFbrpQmajBDD
 aSYIjKvPRMimFU6LIee/jmyRTD3p/Z+PcMEvvkRgNRPFnVu4XBSFoYHLhC69gvs778SmLhCqAqp
 rNsjeSX37TFFyPXo1c1cHBsaoQXwA+U5qbIhHxnljSNwWPq7AuzCEVIDn8+cIDkeb3s458VUOzo
 6Qk6tO1Ki+4AF+2PJYHZd+lTRw9Zzhkg93Lv9Lnq4aDY0hjjT1PTswQHF9MMsEt+cagwdd+sxcD
 jb7yzVmiY5PrTqDNT8WVYIM6hpVQdud6gR0eFx4N7MZzuPS0
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 9YDRUPoWzJDEvkR0prCFNI18kU-shr6D
X-Proofpoint-GUID: 9YDRUPoWzJDEvkR0prCFNI18kU-shr6D
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67fe3471 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=HDgN_FK0fIBovgAwvSEA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=780 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index f57c23c244b6bb8a5502493553bbd17372e57b0c..35ef31d4ecf26125407bb64dd2de6e777a3400a3 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -4141,7 +4141,7 @@ mdss0: display-subsystem@ae00000 {
 			mdss0_mdp: display-controller@ae01000 {
 				compatible = "qcom,sc8280xp-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
@@ -5459,7 +5459,7 @@ mdss1: display-subsystem@22000000 {
 			mdss1_mdp: display-controller@22001000 {
 				compatible = "qcom,sc8280xp-dpu";
 				reg = <0 0x22001000 0 0x8f000>,
-				      <0 0x220b0000 0 0x2008>;
+				      <0 0x220b0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,

-- 
2.39.5


