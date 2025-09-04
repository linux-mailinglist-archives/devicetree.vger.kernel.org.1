Return-Path: <devicetree+bounces-212945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9A5B4432C
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FC371CC369D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B8F30E0DB;
	Thu,  4 Sep 2025 16:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Omn7tnLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808CF30F537
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003984; cv=none; b=esYEGky4ikFfzATcqc6Deg2RtVYX/TqyfyhhGbdPd3SAyvWMZu3NeG6zSyr20gkH0qerSMgmCnJT8EjwrvVPDrdBU1jbZ7XDX77tJIoWXzP0p8vPELGLaWuqRSdoNpkNfbw6tixbjgpAL1nl5nIZV+GHpvZssipekkmzHMra9v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003984; c=relaxed/simple;
	bh=E1O6rOzv0lZ191I1uujSCw4U/Q2xdbO4Vs5JwqnUhcc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AMltsRj+zlMejIFafqkfSWXvQW41GCA2vz3XR5KLwmQGEFpawpKvtjk2kkcwcu8ZYKjILEERohbqERBPtj2HD6naXv+/eENd+uOE00Ifjmi8roUspEAfDHPEJm7I9B8xshxfQw/4I7psRYjqrbiWcRBE8xLx2MHu7cLYEBCaH30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Omn7tnLf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X8AL003821
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:39:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CDpMGCSL5nkDXYqAdlOX/gM6pgktfLiD45yNmYWQxcg=; b=Omn7tnLf2fBYQ4qE
	OKmXW1LUnidhR3J+UQ25TvaidI8FZfGn4L4VeoUpxFcJJx0Gj+jLKm6SOleCHj7+
	TuL/7owoEtaVqFMuHssLoF+mrlNQmsQ/gszgSkqaFzjf4N0t7lPSeiIA6AtbZz1U
	fsbLPRd7tqymq1KyKD5pIPGwXU9Es773o+tjgacJqpRxodSMJhM/fYCSnYIgyobk
	EQWQofV8a5fqqiHRaUpNs7/9M4VAH2jssGfQNVRr3wG+mRXpNX573gICmxBqNRlV
	0vXqH0QC1LBkpq8yspe4M83Mm8b+IaTpHjLGchiHe6Jn0k7SlTwBiS53jwqQh9P7
	vTukVQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s88gq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:39:41 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4c2c09a760so906593a12.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757003981; x=1757608781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CDpMGCSL5nkDXYqAdlOX/gM6pgktfLiD45yNmYWQxcg=;
        b=iJVdGZjezGWEqAnGrxml1l+2Hvi3q2JwMxQdTmS+/tLGxYmqRSIodNWqwBWTFE9dnV
         cfg/J1GcUEeGzN0mxsvTm92i43ElvbnLL4TSJ19zmyWNWjieUK8wi8+7pDSQ7FFhwqR+
         kKzYCcQ68YXeNca/HMR3734xBKC3c28BdhxKcngh1is9kiNEju8EVlJpnyxvGCkUK/eH
         AjT4cSOKd+vKhBOPcunfz7v7rxrPsuhArK6xEcJoQP0RWqt5cZN7kNouKNxIcTouOERT
         jKaQbFcQ575KD70m322zJowfOhg0L4kZmrbZHraamaQZBG6yDhG+BCHJ5GDoPceN3ycA
         gdQA==
X-Forwarded-Encrypted: i=1; AJvYcCW5E8YSTk9PhUF07QmZEBBXW6SSajw/LyINVEDmzbWYcJ4dCt99524qnd3BCSSH+u890k9SgYHdJxas@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ6vFPRz4/62vhfuyH+ZqPoILyNMb4sw8qY9lqE3DljJ4Ct/lh
	fg1iRQ/TeKZA/fbIsAzU3w56t9z/AurYgLcF+4KEyAu4PqSYZhY7XGe3DhTXsxUFIWQXySLwEWY
	oyD2haPPoVjQnOs0Kz+SwYFwlvMGx36Gd9kMCJkiNyX42Rawxi84fw0sli3IphZ+f
X-Gm-Gg: ASbGnctOyFYsWx9CyTFjyy2jRKKODlbJYlO8Q2L/+hErDbnN+8luWU6++72FrnzyMHW
	zStLH+/98b/tzkdFMJKHbopXqJgnnYsHnLvznwMf9/KMAI5rdlj4wHy/30THcLvQVAMdhETuFxb
	4D2SFpxQNhUYRJ7jV/dodeTnPpUhDbEQaARexBSVrW0G7A6txCJqmFQQ2q7tvba++VB4HBzHE1X
	BgErSlb4P8kFNrqC8WeQRVk66fjZMdHHrEpQ4RzmUKOOvCVHJHJfCR52v5M601yRJktmezYX2lG
	oywxFpMTED+A98j/n9kw3MjNXRkFcAKNuDQIvkhkBDM7BuQLDH9hyr20XXrQjw9PvdTg
X-Received: by 2002:a05:6a21:9990:b0:24c:a32b:3235 with SMTP id adf61e73a8af0-24ca32b3545mr2764099637.47.1757003980497;
        Thu, 04 Sep 2025 09:39:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPha85n2iNFgSPsnAlm8leQ1tQQ/9MzM1wGVWoNdLxC6N6B3n1oZzAjUru6wb3vf1yNeqJTQ==
X-Received: by 2002:a05:6a21:9990:b0:24c:a32b:3235 with SMTP id adf61e73a8af0-24ca32b3545mr2764060637.47.1757003979995;
        Thu, 04 Sep 2025 09:39:39 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006e2c6sm17346371a12.2.2025.09.04.09.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:39:39 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 22:09:00 +0530
Subject: [PATCH v3 04/14] arm64: dts: qcom: lemans-evk: Add TCA9534 I/O
 expander
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-lemans-evk-bu-v3-4-8bbaac1f25e8@oss.qualcomm.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757003953; l=1246;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=KCMCr6yvyYTCxPTT039B/teImKPmXb9UNZkMYvy7EJk=;
 b=JpY4zDHyUFQo5X8IN54NMq0eLmnWrs5hwlmxAS3hLkb6nKOEniF9NgXSufodHaO0Qsu2vQrG6
 OqsYrSskXMHCf/9/DYP8Ug30KwWOixpZfJwIzxOa2WJHEDtTgg2vwUx
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX/DnwIQL8eFFX
 fy+PNYBIzhGrHjmtb3Pz4s/B3J/xrpPdGKpCN5QLENMiv9ew8mV2KL3Uu0tDsca+H4F72u+9gBZ
 zeZqoBtXj57B9eJBO8QhvyFvX/RH0A9z/vMum8a/sgmkmVp+IVPofPiy+xS3niee+GOUfzX9Uci
 MqxAWxanLYTRwxz6vV2GgRY5f6u8nmTFpI3LYqfM69OYKQqJewJ8pfWgzp4+/PvBBmarY7zdefW
 X3u4uVaouJOoCc0YvmjeV8/POolYfOZaU4sx55KU+szPg/FsYJSNN3SYsrk1jtkU2fl9Zw1VUzJ
 DaL2/lqongLYECB6LbMuLpfzBqswatI1Wvwd0tjBib1kbzBrw5zb0Gzc72ap2Ueea87S5bDXSi4
 xNS0yTOx
X-Proofpoint-GUID: it3QUAxL5Ee8-Uk31yFvQxbgWtZhwuyY
X-Proofpoint-ORIG-GUID: it3QUAxL5Ee8-Uk31yFvQxbgWtZhwuyY
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b9c0cd cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=itmwO_cg3X_j9a1xKB8A:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

From: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>

Integrate the TCA9534 I/O expander via I2C to provide 8 additional
GPIO lines for extended I/O functionality.

Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 56aaad39bb59..c48cb4267b72 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -289,6 +289,38 @@ &gpi_dma2 {
 	status = "okay";
 };
 
+&i2c18 {
+	status = "okay";
+
+	expander0: gpio@38 {
+		compatible = "ti,tca9538";
+		reg = <0x38>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander1: gpio@39 {
+		compatible = "ti,tca9538";
+		reg = <0x39>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander2: gpio@3a {
+		compatible = "ti,tca9538";
+		reg = <0x3a>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander3: gpio@3b {
+		compatible = "ti,tca9538";
+		reg = <0x3b>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
 &mdss0 {
 	status = "okay";
 };

-- 
2.51.0


