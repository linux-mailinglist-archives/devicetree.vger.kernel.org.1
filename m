Return-Path: <devicetree+bounces-167191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2D4A89A1C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:30:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBCBF189C4A4
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA092951CA;
	Tue, 15 Apr 2025 10:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kkSLToHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4592E2951B0
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712823; cv=none; b=lmyWiRBhV78fQFbzKmvDYOnnEa2dme9g0v3KLbGKzGxdShBIcxI3PwaKhL3EV6E50xgfmdF6qDulYcvHLuFjUpamC1JRdVOSu7l01/mpWTTNl20Cq8yzcVdRk3xPmB1XWfY0mXArrI1bIvY/RvtpXhV0RqYuS5eWZWWXjowbyCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712823; c=relaxed/simple;
	bh=jW/DDpfOxjsJnp2CFh2GLQmySmPD6CszwncVhPIR75Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XvGh6TJL1Yu6dAjb0PmQhOjvKmc3ALUx9bJSVjxgH9zEWO2Bt2Y0/ipFcCbZjhCzZl869lI4RBKdJmw3yY/7YqvLmWwkfPUx2B3asULVihgL4jnlf5+QAHfYPRCrIOpPSgeU/jUpQJ47Z9qmsxWi0nSewyg06kEVJmpgE2iVYYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kkSLToHD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tXIw002516
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DbMB4xwlSMn6GaWkSDGzSmbicpF6unMBuX3zyKKQblo=; b=kkSLToHDt87CPwNm
	cR4lWtQINK3tag22geb8hOqqxBgcp1zMOWaLjXNHmmniwRee/5ijazyHOMajLecn
	ywhJOgrfIPMKB7MSvYhHPXaFT3dp9banvhtaLMEo3aPHMbierjqghw7xwfTe5Pef
	h/WbdFOz94o1/biL+QZ8/AzJQcNTHpwfMMXAyrCoc1+DrtQgZmjpALqt5d+M+XB6
	52GUiqkAzgLumeN26I2V5TXEOIAeDhIIhPU0kMr4c7p3tJ1tfRcZ5dqhp10aZgTi
	2gqi7HJ59GoCyhj5PCECjjsFxCSxUdYFazVB+u1VJd4Qk+q9+SdphPf0Ed8z8oij
	L+FGmg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjygx1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5f876bfe0so858584585a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:27:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712820; x=1745317620;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DbMB4xwlSMn6GaWkSDGzSmbicpF6unMBuX3zyKKQblo=;
        b=dbRdSRo9G9bdEmUribbCkUSEuN37HLvSbvwJCclW6mnqpUpUyuWodzb1l1rAFvjbD4
         mMtxJyqDhstbfiW36BYN8UBsHdATqWAr/8Ah0UOXSU0xiS6BKwkTfR+wwDW4qN2uAJDV
         VNue82LfR6Yyiw69vGGKctBBJYcfZhrPfEIvWTyWq3DyciQ+3o/vGdAC6VMOGu9xVAWP
         e7l+mfIx7Fl7ACRasp63JCh6cYqcDZFFDCNXh48ArFhJFfV7QvX9gZpqLTwq2mol3pE3
         NOZ2fMQsyZKazq0F0WiRfVBIX33hlVdnxlE9UR3EER3Omcf2HAjTYJpdS42l7OQRhyi6
         P6Yg==
X-Forwarded-Encrypted: i=1; AJvYcCU6x2It07xWbPEwe/CKx53T4faDgUPbeqZ5kr80epToE1k+b1ZaDV6uE2HGDZkBBW2TJGGFmeLgptwp@vger.kernel.org
X-Gm-Message-State: AOJu0YwcCXLCvkLphJVnUVTPA3DWaxVOCt5syHzidjYA4jN3j4N2Yc/Q
	cj/jP+y6BYHMmTZfgl07P18qUNNUM5LkGwagHyNooRGumSlmrtqKP3zsBl71vh2ZXdRM03YvWud
	3lsYkI1FMUfK7ulp/Ld8cSnZMqE7NE5n2QwZizySmYcqU5sqM6pkIhmMmA2Tl
X-Gm-Gg: ASbGncts5iUnT/0L+VRsMOjrPNA5vZdGUoQog6vsDiaKDmAcBPIId2RntxcZKSgP5j/
	pdUoOLFC2EJ9AtzShhMQWFB1mEHhSPm+hyQ9KJfWNAL6yCRVla9ioTFCmuREUQuey4X3a4mv3OE
	CjcDvyJQ9OHZ6VvI+6ScrNdYA0N9Gp7NOoFuP0+NHijMbiYjQUQT5y7xMHzNRwgfSUZiItLoDuO
	bAFCRhPgkfB8GPVPZ0htPqGN4FPt60twNBgY7Q/BAlsvP6DpQi3D8oqFYgFtApZGWOoxj/75r7n
	cEliytQkw86hXCNPu958lUzwYHE+0A+3XdQGLGVSCnDWutqWs24WMjUv7bBFkwDFziWBQgO4DCt
	QtuIcVrkkwp9nlUwSL3+lIHo5
X-Received: by 2002:a05:620a:440d:b0:7c7:747f:89d0 with SMTP id af79cd13be357-7c7af12e230mr2393073285a.18.1744712820287;
        Tue, 15 Apr 2025 03:27:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXgp2tV9C9icQBARoz5VnKdtwUEBJXMFFT7aIvfhUyyz4l1xh0g5ipC6d5BCkp59mSJBlwEA==
X-Received: by 2002:a05:620a:440d:b0:7c7:747f:89d0 with SMTP id af79cd13be357-7c7af12e230mr2393071685a.18.1744712819998;
        Tue, 15 Apr 2025 03:26:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:26:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:09 +0300
Subject: [PATCH 11/20] arm64: dts: qcom: sdm845: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-11-90cd91bdd138@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=977;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=jW/DDpfOxjsJnp2CFh2GLQmySmPD6CszwncVhPIR75Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRdFtoC5UHoCMgTqYOZmYPTop+yLUYlXp7SF
 pnzXuUbdjuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40XQAKCRCLPIo+Aiko
 1Qk5CACg7Hb1/rQe+idlJJW5Ua678cr+23/zAsWmB6gkpud3h/ZTmgLmTGbgKMGoS3Bg2XBRNis
 B2drGwMYxaX8VZ+oyHsvd13r9aRdnnNG3eXOXdcwf5o7iQbXcsPK/w4LOids4JMxCIxZhIJmC3B
 8v0tMoPTRWVvpIRNCqW4Y1lKZUF3Di3RtWnfI+pb/Wm3mJZ6bnsxgGaEBE9VjozFBNI1sLSR9ac
 jUeJGQ7Pk1ZUv93/DBzaOVRChWAf6wjM1Pd21Q8Un+QhMUqdk98ZrIExpcDyUreob8slIn+jDy6
 7fVuFBNuih6dDsWHQ1TBfM/vE2K5CGx9qtY+RU6kD3CP3Udi
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fe3475 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=9SZ4-cSOyNR5Keopn1gA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: NVOgi1u7iUx6R9Y9RMS1xzFd4dEpNFSA
X-Proofpoint-ORIG-GUID: NVOgi1u7iUx6R9Y9RMS1xzFd4dEpNFSA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=789 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 5808129e2dde061dbc79d63cce9f5254de2d7d96..19ece2daedbcf4019683e041766a8c4e816565c3 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4546,7 +4546,7 @@ mdss: display-subsystem@ae00000 {
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sdm845-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&gcc GCC_DISP_AXI_CLK>,

-- 
2.39.5


