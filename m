Return-Path: <devicetree+bounces-230232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A27C00BD3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:31:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43E5119C837A
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F39D30BF64;
	Thu, 23 Oct 2025 11:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GeDdOsXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57F530F812
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219009; cv=none; b=hHXw8DRlZzlbBvqOut3IU/TT6e4mtX49SxgDBpY+dIvonHbHPv1aT4uS1NI65qhYczFsbuBhqI8kigTrqsdAIILgAmly0S469401K6lVcMgXuARlcBS85OxLp4daXZa6V+cGrC/AHmhvWprqqT/d/1vmip3Bk6hCA64UuX+y4Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219009; c=relaxed/simple;
	bh=Z3ZKjce1eNa7cruDaoLFpBeJDrv3LxfBcxi/KFd0kkY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=J3PhkxFBMfiL5S3gfUP23C/TA8kaPYxlH/FYeU5VQnz+VnahXy0H2x9L/USVhGcXi4c0uC6e3OzmlqePwc5ym/kTKcv/+oitIEJk49uiA0Z+0Mwd+brqxHYt211QJ01zy3ZmjhFFLtvw5wO2XxT89s5lxsyV8ESsLMRdZLORGvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GeDdOsXZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6tSjh022437
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:30:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=b8+bYrK48YE
	QxTGw52Zzv2+zkKybAeDpreZ+tSe6PU8=; b=GeDdOsXZ0bWN6rptcPdawZeuklj
	/d4Us3XQAZWF6toxbu7X2EV+U4avFCqt7Q9shrvi7UtvABjqoMdrLtY0t45koKdW
	FAWyZDtJujBd751D0evAXHLXwiuESAaWIlNd0hsttPoYK4GbztFYSFt7RtrHCoyL
	gCGb5CkS1zdNBLngdO1mUSE3DZpO6EBMnbEz5ANYP2IJEmPXO39wI6idTaYx35ec
	DMDej3wAVUMhejyLd+5ISe+1Lvq4bK4EpTrDStMtgbcdu5dSaPYh8roK4eQ2EAFP
	w3YdL4AdymWkR0NQsTLba6bwNdnM/t+f57iD392LSbPP6XFpRUAmJkjZkdQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w886pu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:30:06 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33ba96c9573so197422a91.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219005; x=1761823805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b8+bYrK48YEQxTGw52Zzv2+zkKybAeDpreZ+tSe6PU8=;
        b=MsdA0h3UZ57sCg45Zmt7Sfxusr8lOmN79RJdd36VoMV85QXKxdludvfdE6E+n4Whac
         57HMMRsVd9L27Id3S6kUfk1rJnRkQWiWjp96evDHQV9a0lSPTLzCPztFs1ut1FwlO7/k
         GEUlZcPsRz065lMSoXz1YdXwhYR3G9T2yB7uOKsneJyhn+DzFJ+RLHNl245rXek0MJfd
         GbDD3Pm+pu2s+XWJni6objUBsYYAzAyuYR6dbDcTDltTrrEWvNtJcp/dJsERxEZdFFwU
         4B5dC9taz3PJj8lKXLRRpFTCpGuDLd09HgeJVP5GT3/qkDXEfrM4Ue4DaCdrqS28DCGV
         2vzA==
X-Forwarded-Encrypted: i=1; AJvYcCUfFaLmH2K/Fb5wrBj+o4npRT+ZLCbQBx45iK+uDtHhDYWxIVb8oEARc56eQBsY4Vhgg6TD/pCbn7E4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4pmKjTQv8txC8SgDOxJNRwDd8npllmhG6TIxow7LUEP2dp886
	wUuQNXDqGO/Blne3mQmj4mEufT5LcPg358F5pLyCAcG/P2W3p0FT8hODiETY7E0bBJIhyPrkkE0
	No1v7vd06NzIFwjeKQyxzc8GHHo8EqEH53FN1/E2FaFxkNM63Vgwif3C4XS5mdFs=
X-Gm-Gg: ASbGncuuIZ+opNAt2FgM6haNXFPnOkxzkLZ/H4liBfQdAPYnB1bSK5lqdYlTxI/1D9C
	qXsOT8+JDSv9mwuqG16JRiJOllCD5fVVktMB45oU7kV/veOrQBSmSiNHdq1h9SzsC+0M6ajqknR
	Co139aR+3iuBw4toVOINMRp7yN63COawz2qJB1eCaY4LlPQVFSS7RK5vYmUndGH4sZo1sjTRFHj
	NAYCDTQg6v/XYTVug8AK5oPQdMQ+6SbmEayulwE9zUVpPz+NEuSZDIQVD+FwEufoGiHnDVcNIQY
	Xy1/6pbyjWFGUqDOdtvm9aUT1IMREHklfx5YvCg43BUzel72vTZ2N4C3YacE91a8U4BzNqtGpty
	YYjGYDwtL+y9Vku+GQixrzyXQAzi1xw==
X-Received: by 2002:a17:903:46c4:b0:290:ad79:c617 with SMTP id d9443c01a7336-292d3e50ee5mr68938355ad.1.1761219005532;
        Thu, 23 Oct 2025 04:30:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMBrkCvTO1nWUE4UYg/s8tYpYtZ7BQ/m0qwKJKLmXmKfeqgrsKE3F73O+O9t1ICmCNO90HOg==
X-Received: by 2002:a17:903:46c4:b0:290:ad79:c617 with SMTP id d9443c01a7336-292d3e50ee5mr68938145ad.1.1761219005069;
        Thu, 23 Oct 2025 04:30:05 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm20438815ad.97.2025.10.23.04.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:30:04 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V2 4/4] arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board
Date: Thu, 23 Oct 2025 16:59:24 +0530
Message-Id: <20251023112924.1073811-5-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
References: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX/TWdorA1g068
 4trXz+YJMYS+plihY7w6DWwCji4lzMcW/4926yM8akKke7HiUSgKeS3Q12HKz5IlkI8a9YF2Dwx
 /nyT9DVU+5VsH1jBuY5X+pXbgrYGOTUwcFJZepW4/4DB6evm72woZ2w19FiPwCQl8loGkf72ULG
 HGJV9W2+8xnJtTXgSA01z8YW8Q7bVgHDosADUqAW36PG7Z0+eIoeZlH2LT97F6KhftXhokyntw9
 /4jrejnfUnNmM3Hw3yH+DevcXg77jHg59jNRbgbbQguHXfr9jMGuifYhsYrvXvcsiPpGPwvfGUh
 Yo4xpfccwzemgIG2MVCFq+Jr7Be6pxnt9J6PP8oVzzdsF4DU62JsdIJfXMG1TU9DDDB6+Nk3N4S
 Hk7vRFD12S183w0C6N4WEYhws55UPg==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fa11be cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=53gy1XDxZ6suxgqcjVYA:9 a=zgiPjhLxNE0A:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 9ba8y1UR-wJPDbodoZLFcB0tzXs0OuKY
X-Proofpoint-ORIG-GUID: 9ba8y1UR-wJPDbodoZLFcB0tzXs0OuKY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

Enable SD Card host controller for sm8750 qrd board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 13c7b9664c89..8d018eef44da 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -916,6 +916,22 @@ &remoteproc_mpss {
 	status = "okay";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l8b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default>;
+	pinctrl-1 = <&sdc2_sleep>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &swr0 {
 	status = "okay";
 
-- 
2.34.1


