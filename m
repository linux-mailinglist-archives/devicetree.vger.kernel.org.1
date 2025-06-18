Return-Path: <devicetree+bounces-187276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C401CADF511
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:56:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A502718956AD
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 17:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5238D2FA647;
	Wed, 18 Jun 2025 17:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hW/ured8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC962F94B1
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750269021; cv=none; b=SA2oxYqckFUlwc7Hn/CuDhFIXMMnZ0HPFyseh9bVKAdtMwA3AseyP4zEC7Pr/46HsVG3DQYJv2q2vVPC22RxsP+dRuOEdga3Mrbpc3zQVP0FrJ6yL0qqzYCSCih6WUY8QFthR0dRQnXZIP2G3CqRbV26/negO216KpRwPAZZjG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750269021; c=relaxed/simple;
	bh=tpBKnIAuCP3hHpY88s21IGk6s0xzFRbXOi1xBoSjdpk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J/cb2uS21EyA7DuHHjhV2fgm9lByp9muJXwdtNWMCFpbupGfU2qfQUCWUpmhWDQQs7TvmPuISmFEaVQhJRIwsdUmXpGoXhoQ+IItrZ8S2cwgai9nRKpXofBq9ik+GHJ5LiECdKSTKYpZjCLzaFOcE4jiYH/L2aqAA9iNatVKBWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hW/ured8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IBuUML024378
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:50:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MRtl5KObeetKj8XsueZwlT4HvnbbdDcQprlvAt4ypkc=; b=hW/ured8BPMN1U0k
	o7Bt1HVFzPsMA/0Q+4JZ2bNM4lXxmAOy7Y4/dlSdYKVMHIcJEDmmDWchNWxwOooq
	s5/AR8mwpNQ77FydMr5kYgVHMvEmNImIDv7G9UTWGKeehOjdv3MwnKr4+ZiueSLv
	lFAYWddrvuSISNWr53+iQNb1ba4ZQIUFzpU+/F0Qw6SGnp/lAyMQ8f98itplIv24
	ma0iHaw+iXYlb1L/DMRz2LaE11UCvmkAwhANPH4d8YCNqYhQZAtgD5kBKsBON2nB
	hF4bsqVLFHFc+oku9+xgz5WYJwlJPCiRVoKD/1H4l6O98qrCUGolg7nCYBXz2jGc
	u1EwNg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47bw1394tx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:50:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7caee990721so1751331985a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:50:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750268999; x=1750873799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MRtl5KObeetKj8XsueZwlT4HvnbbdDcQprlvAt4ypkc=;
        b=l/+qyygQixDvx7/eeEP+JCd4pNeTX67vWAhbJrep4+AlWxusCdn55AyINdoZuMjALz
         MMLZoiyFuU1P3qw0ncrKgID84Cf0Cqyj9pL5kmeVAAPNlv6Yy6NV0JVMyKp0i4w2Q0RB
         d/92zsKoFwJPxWc62Ew1FPi5N41Fq170OaxuZ2ABEylutg/P9wYZERSClS/O8gVLagKQ
         Ok2ZUFxaGok9P3DKVR6mu+bKyje0PS4X/GDsJGcGZtoYIevdRmTSvxoUvCzmEkDTO31g
         7zSaKDEnMZpJ26F4KjAsbu569HX/YCkMyWyRVD7UmG0LAfW3Y1FwT8B1Xv3nY6v3/uCA
         yKlg==
X-Forwarded-Encrypted: i=1; AJvYcCW0St7V0qLehBH9LoYULFKKWacEWlfqyJudGoLDBQe1XnUKyxBxCEe10t5x2KUoAow5f+j35bQjywY3@vger.kernel.org
X-Gm-Message-State: AOJu0YzJM+Qd6HpAl4cCXOgyEBQV6+vejjCZsHYptSYf86+ONy6Dz6vN
	ToUCXky1S/acAY1Pm8hh5wySltDdBVt165hNCRHvdjC7IuAGGRiYuB9cWSC74qChVktMCF1AD7R
	/vv1b1W1BRyK0sfTDyfkvaQ2QuBYXZ7rzEGIPyExcC8YeuoKjkI8tX9OKBSSXNGpJ
X-Gm-Gg: ASbGnct92efVPpJejpZT+eCpz/su6dqFRs5SnSSIk1Ywa7ngeimjwa26CRsZIbB13SZ
	b9JoBEdWuYyYvsTLelNxtUtJ/Bmqdv5xM3j8DPTrc7jjJJ2gYdoRp4lnR9DxiTDSpVE30Yct5q1
	MF8BbPB37aD1rzDzHXvTTgJWUpvQmZoYC5Xo2OgFseYccH15zJ8lQwob1wRIFCHpagW43XQQLuW
	sSP0tIHJUxqX6EWZXbwZJ9kNN7Jwv5K/qbyAzKnMfRHODRFRNSI85Vo7USs9LesGJ9LxtdZIO0s
	YySGc7237qhOfC6PvVXFCYlIM3AwsZM8PKGQNs/yrlBj/BJkNmXzbWWq6KrXWrmza5TVRgOLvh2
	YApd07gFypOYrj/Z8nLuW/HkgX8DUH9yzZNE=
X-Received: by 2002:a05:620a:318c:b0:7cd:31ca:d76 with SMTP id af79cd13be357-7d3c6cd9c7fmr2475200785a.33.1750268999023;
        Wed, 18 Jun 2025 10:49:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3z8OAvTpTGWACRNkJcs/dFQGqJGMmD6eV6BI5+VFC1nQtz2t9LiZEWhZ47C60omEChiyMrQ==
X-Received: by 2002:a05:620a:318c:b0:7cd:31ca:d76 with SMTP id af79cd13be357-7d3c6cd9c7fmr2475197485a.33.1750268998586;
        Wed, 18 Jun 2025 10:49:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b7b43a98esm2911131fa.65.2025.06.18.10.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 10:49:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 20:49:53 +0300
Subject: [PATCH 3/3] arm64: dts: qcom: sar2130p: use defines for DSI PHY
 clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-sar2130p-fix-mdss-v1-3-78c2fb9e9fba@oss.qualcomm.com>
References: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
In-Reply-To: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2199;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=tpBKnIAuCP3hHpY88s21IGk6s0xzFRbXOi1xBoSjdpk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoUvxAb1xg1MLy4xeqhbG8IzCQeBAQUS94HvioB
 lMpZuNCkHaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFL8QAAKCRCLPIo+Aiko
 1fiICACHTS3u8xNy6tTR4ll9c5Ltiexdon9rwTZjFzyy/1j8Z9OG+JYf3WQ3x8nFbFvdbLaqTCQ
 gDgCACHVz71SqAdyr7ZLdbRZkw1uoHZ6gpaeDtbFdz2PgyZkj4VohgEWB4AHTIYHTDkS06grl7p
 7vqthgqZZQgj7ETswoQGrFXZ3TCdlpP0oZWPzkGGFNljbELoBnPZiIDjUxAt7nN//GyWpyyN5M2
 Jq7Tegj5RENRN12xeu2EhEYTFwxSFfHeuS6qPdDUZxCt6+NqM7rhV9xFoQlQLZDHttf+2uMz/b0
 iCfhXycf+xREWSEuPp1e4ocVUbcn1XqOq31QZb57041IIR3k
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=QbBmvtbv c=1 sm=1 tr=0 ts=6852fc5a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=sW9EZDGZIsf-NLb0FcQA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: Hl8vsmyM8H7vAEDPcMIEL3PrjDEdmCiX
X-Proofpoint-GUID: Hl8vsmyM8H7vAEDPcMIEL3PrjDEdmCiX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE1MiBTYWx0ZWRfX3DIQoe6vhy9h
 I0xaSHZ2odWcj8fcY8uW9eREKOZDz2xSt9FQzvVHO7pgtmIkUJvs2HbmRSRmUQHyoQJID4EWP3t
 Ti3Wn4RenGVfuCTW+vAOgmoDWwcA/5+tYmapiO3mCAm4WWlxMGajUuDzLv23iL0SbmMucoTjQe+
 8oEeD/GOJHYNEbpN1nUS+PzmRj1Gm4myzbLe3nn07Q+VWWqKSKTOx878imdSCb3dE9qn9coRMqt
 oIIxjPgn8NjUnlDP0niViYlt8GDUW6ag+WegxcPxFAl6sNlP2tXNaA2gIFkr4Tf8C9GYKZSQ6LL
 tIZa2imX9QKSiz9FZTgHpnKYXYgOIVMTCJZTA7MNpkVjdaQuQZFCKy1ywSGmquLJ4peMgMzMZCo
 i+WSmZzEycN6Q786BBcw0FYVINB8vp/bQ+5PVWCvGDHxkg9JnFKJcaEIq4tXm7t+p1KEXJRt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 mlxlogscore=730 bulkscore=0
 adultscore=0 phishscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 mlxscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506180152

Use defined IDs to reference DSI PHY clocks instead of using raw
numbers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
index d9948360cc0198a768598f60302097e1143cf1fc..38f7869616ff01ece3799ced15c39375d629e364 100644
--- a/arch/arm64/boot/dts/qcom/sar2130p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2024, Linaro Limited
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sar2130p-gcc.h>
 #include <dt-bindings/clock/qcom,sar2130p-gpucc.h>
@@ -2237,8 +2238,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -2333,8 +2334,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -2392,10 +2393,10 @@ dispcc: clock-controller@af00000 {
 				 <&rpmhcc RPMH_CXO_CLK_A>,
 				 <&gcc GCC_DISP_AHB_CLK>,
 				 <&sleep_clk>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 				 <0>, /* dp1 */

-- 
2.39.5


