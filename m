Return-Path: <devicetree+bounces-212302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD4EB424C8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15F5A5427A8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECE532ED20;
	Wed,  3 Sep 2025 15:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P2q96UPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741C02FB617
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912464; cv=none; b=So1YP2BWv4XNyS4Bw+cTo4+XyzF4C4j8vLJ7HaIyMShgUyYromcjHr9Y4z8HhO7dHJwNw6DCP8vWLTEmXMYCKhPIMidfM4ql48a1Kz6gP5yzrP6yg/K7RMQN3QrkLXOzQ+T4DzM9p+nRP8OAia3KelPdqKto1taWrBz77zrAmhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912464; c=relaxed/simple;
	bh=RabZyP1MYauqdvXLphTShP4sWVBSim1FNftYv5x7w4I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KYu7GiiFvucfDkaVJzZNPAqmtlgX3asQphGNGDrMnzXqk1cQAKACkNH62UZJeJq+pBtrWM2PEd/iEUnNoMQkkz0zhkOywCBkJkpK4ctaxKsRh+a2C3TVKO9aY0dxDMDW+GvxROQX0hQtTQo0glJSvxZSbG88F03hPOPUKGSauTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P2q96UPF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dx3vV029306
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:14:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zrzVp/Rhi+s
	JKmcSPdWp/qY7dG+tv5mT9DlcBZ2BsY4=; b=P2q96UPFiKiiFh0Rj/IGpgoXzUg
	r4wRG6YFZu2J40tsdgbpx1Geda0qi4s0VsRk48TOCas1TKzHAth4tuwxc7gOkwZV
	bwlpK2MTuFAWsKtJGQNZoYtkFKJXWrJgJxrLxfwKd96lqt2tzqhsUM1/eeEJTcrU
	vYHvo9FgR0aRF/YxpZvl71dce5SoEFSpFDyXhXR6V3UItZJX7ZSlo5NDYeNdLkiD
	T2vyO6cpN6ZyLrnSzfCVe3itKWlpSU32ny+hoVNsB5tlA+ilxzfO1NiKiO039Bby
	HN4B3/aR88JV+SwV2nnhFPIajAWB4mBDnGfbVYk6n1jb4S0c7Rw9EuY78Mg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw046xk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:14:22 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b471737e673so9195733a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:14:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756912461; x=1757517261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zrzVp/Rhi+sJKmcSPdWp/qY7dG+tv5mT9DlcBZ2BsY4=;
        b=XklfSI1bBKPC5d02Lf+gsvxwWj6odfAHViO1ixq1SMUUzU0VTYmrI7vuArdrjUN5Xd
         PvDSO1y+es4pcQafx5DJ3OcjVES83qkKeSzMyJR6eoDdpz4arYM7a8WH5gTliWVEl4zJ
         Zb5fjATbT4sfPRvPJEVj83j9e2Ellvc1Yuvv87oKF6F3gBtyF69KAUHoAz2fwiDX16s/
         7gMgFtAvyTE84ohEUUgzsH9N1GaJzml45MC4ifSGcjLzJ7zyyEPMYq8M/tawXS434gaH
         YxRH5Z2g+/YyxCFct6IsxHqMEujD/FdYGlmLZERKuFwG5EcDNKPqfp0eN0O3eDjwROOn
         XEuA==
X-Forwarded-Encrypted: i=1; AJvYcCXk0ExBjR6PtPGLOoCpvR+qS/dvVGB0yj0PqgaBa9t+gEdLkBbx80qAWAsfKRjfOC3NR6Ct05ECJSFz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpxui0PH2aXCAXUGNGRDoaSNci15EXlJ9wdgD5HfUNI3b1GhFb
	PjdqMbp8ajJbzkN5gMYoi0eAY7aRMjy9OL5cn1S3cTfIU400deNT+LBwXyNgWC4lbkeqMnL7bfv
	Ar51d4w4SijjCbKMVdOuxr64tX1vQxYifTPWmm9A81HieTX961dkqaZP0YfUNAsJ3
X-Gm-Gg: ASbGncsgbzBkUMXrqgvdIOqhpzrEDESICBxC6VX3wSKW1H1ANp8jFjX8OxT1RrITdSz
	FC6Ia5vKFz9bZthSbAmqGTIaveGQ+6Tw+PzAaN0w3Yivp/OJ5p4hHqRRISEw3AIZHX7XbMrF8yE
	gy5ALHtTCnMXI7K9aIv21uMJVdt8Vj7sCpKTx9f2A9Qs7K2PHyfh++THhvuonc6Mqcgz/kcFpa/
	RKIc3ICDqT+DfD99HYS9NVjENPzUnN1LYjVhkB5hyVboX2QHRjYuzI7HqUpAuqR5L782zC5eJ+P
	DhkWmS/+qiBrrU6a6oQ8KzqQ7rkKjjmXJcApWtEXSJkSqy5e16H223TkOQwv92ugsJFlGyCY9Y8
	0
X-Received: by 2002:a17:902:e783:b0:242:bba6:fc85 with SMTP id d9443c01a7336-24944b75a04mr220940825ad.56.1756912461188;
        Wed, 03 Sep 2025 08:14:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7blGezTwsbFKyXJPmJrF/cNsvF5Q4e8jj/x6gSiHAPOyOXA2iCqhiw4fdWaghrOg61aMaTg==
X-Received: by 2002:a17:902:e783:b0:242:bba6:fc85 with SMTP id d9443c01a7336-24944b75a04mr220940305ad.56.1756912460699;
        Wed, 03 Sep 2025 08:14:20 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24903758b89sm164818945ad.59.2025.09.03.08.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 08:14:20 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        prasad.kumpatla@oss.qualcomm.com,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v9 6/8] arm64: dts: qcom: qcs6490-rb3gen2: Add sound card
Date: Wed,  3 Sep 2025 20:43:35 +0530
Message-Id: <20250903151337.1037246-7-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: B0VugJDnkdkMo7t4UxF1zkBR-Txt3sZu
X-Proofpoint-ORIG-GUID: B0VugJDnkdkMo7t4UxF1zkBR-Txt3sZu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX3vFEv7fGarhY
 OuHz/FtQAvsgC+7FAnORtKixiM5JU3vai8fnjoIX2KXYMmGioGB1Oh1BwOqGnUkOFESM/2LFO2m
 idSw/TcPOXma97zQ8W8eXKmJxaEZG14CbVFaSgsLQQBOWm14nzt24W1GP7st0iG3wcvXfw+35V5
 T6e8uWgIWTSGCyk92A20bXjGNsXaGEaqawSG/vA+uU+TaZ+iLsQAdgeIF3ckPpmy7TDowZqhT2Q
 /TtG4OgDx3H7GsO5hmjnGa6sOhPwChAn5oM+5z63jWTs9k8qf9Op9G4mEcq5bxZchVxnhdwlTBa
 3nKcjPwO5VkhNcfoUwej7XPdTVnc9MZYQbOiYdQ4SN2q09HiJYDI6JXWtuuSxxcx8dNA69qtuch
 s/CKygCT
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b85b4e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=5gXoNHtsKICXUCjegB0A:9
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

Add the sound card node with tested playback over WSA8835 speakers
and digital on-board mics.

Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 45 ++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 09e2cb9053a6..18cea8812001 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -1048,6 +1048,51 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&sound {
+	compatible = "qcom,qcs6490-rb3gen2-sndcard";
+	model = "QCS6490-RB3Gen2";
+
+	audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
+			"SpkrRight IN", "WSA_SPK2 OUT",
+			"VA DMIC0", "vdd-micb",
+			"VA DMIC1", "vdd-micb",
+			"VA DMIC2", "vdd-micb",
+			"VA DMIC3", "vdd-micb";
+
+	wsa-dai-link {
+		link-name = "WSA Playback";
+
+		codec {
+			sound-dai = <&left_spkr>, <&right_spkr>,
+				    <&swr2 0>, <&lpass_wsa_macro 0>;
+		};
+
+		cpu {
+			sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
+		};
+
+		platform {
+			sound-dai = <&q6apm>;
+		};
+	};
+
+	va-dai-link {
+		link-name = "VA Capture";
+
+		codec {
+			sound-dai = <&lpass_va_macro 0>;
+		};
+
+		cpu {
+			sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
+		};
+
+		platform {
+			sound-dai = <&q6apm>;
+		};
+	};
+};
+
 &swr2 {
 	status = "okay";
 
-- 
2.34.1


