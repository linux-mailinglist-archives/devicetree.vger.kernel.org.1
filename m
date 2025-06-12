Return-Path: <devicetree+bounces-185071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31768AD65CE
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 04:40:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D64B817EEE4
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 02:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B0F41EA7CB;
	Thu, 12 Jun 2025 02:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BuE3CMUZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CA61C84BA
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749695996; cv=none; b=ca2RO1rehOwe2v2Y68fEh2lvaDjfgIvSjBX4CJLR7ZrMJE01x2hC4621/GBwMV4Nhn5UDzg3KbCd0l5fEhqWbc9TZTu86HGBVvcjYyO1fH3Vv9d76PnZuDPCnRJVaeaRH0P9ZVbCr10CJyk4Bmj8tmrk/re8mdQY5a0iqRYRPhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749695996; c=relaxed/simple;
	bh=Z5wSDmQoCBD3WcBmNgudpYHLdgNfVwXXM2z01IliBJM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kptHOdlGvVhl5adzxwWCosqRJuvIH+/EzGeCqmJQWHjx/+HK3fTQxGkwzU/XQX2DkrSa4Vn0FS6kR7ZFllnAyhSH/RwHjHOkM69Y+k6dvLOQTc3mk78YQqU2R/c5UPhO9mtopTUXjjYB+hewfkHQjGbLd5KTkQCRMkO/SZGrQ54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BuE3CMUZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55BMEu4v031511
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rYh63pIwgN1Qe38nJQ4bBDn6pEshNWErTOkiIb/hpC4=; b=BuE3CMUZZbvG+IGz
	CNI7zggivktsgmtC/SWQFLskruIpNXtTozS/RHxnBtI7iUB7n0G8OxgoBQ7H+ypp
	kYR29MuwUgAuNKvf4zs4w68+yd9jkAOXdig01IqnSFcybfY+HLqMKZv/eoPoHYDu
	JcwJEXOORtsjXmAAGXTLV0/KhHL3lv8KmBe1SihC8ln57UC0G4xZj73NqRey//GB
	wUQOsW8P7nLMafjYi/v4kZxARYFWJ2bl4CohCcXFRgwfpqktdO0heW0GSqU+rF6i
	jDXz7KPKKZthrTeOq48dJxu+7CP/SmgeaEJVZWj8e+Ac7vLh3fe9NLn9fGhK6lIK
	mPf5QQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 477jdwrgbf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:39:53 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-6c8f99fef10so444852a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 19:39:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749695991; x=1750300791;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rYh63pIwgN1Qe38nJQ4bBDn6pEshNWErTOkiIb/hpC4=;
        b=vDJwq1gG7TcsQVNoY3g7B4fT1zppJHOM9GazbgazHBeaPjvlhNf5S+mMbsw4EmA9Iq
         l2NjrWgzLd3Sr9r9HYksZIy57koLGgAGnxSzcrCOAOv4E6cAGZZ/IxG02OKUtJv595W6
         W5wMRugDxhjnJRUEEGnOhJvtrDrqkbTj26Cz6zOY29N8wbXWnGH93JqIj7Oj8hXkXj83
         2lokxqNCubmjmqfzLx0uxxar96yhPAdYuZlDQlAZIxhyVJBowYhyklS1XWXhl9PYr1nR
         Qp4lei+QfXugkgL5lXzUfz9X5BUIx//X/XEIcHuhlTdql8Ibj866qdyl0ZNvIanbvQgZ
         U0Lg==
X-Forwarded-Encrypted: i=1; AJvYcCXsVJ923566rtZxCBTxOWLHbdHNqhhFN0yO8ErFl/yuC6BuFWq14LF1gd387xiPYFHHFzB3aY+pSmuI@vger.kernel.org
X-Gm-Message-State: AOJu0YxNmUtCSTbH1gUKgSFwp/FzJBeqj2L62f9phSd3roAEHWEtL8zF
	deWIxGPLR+9AwGjusKHzpyAzJqqZLMy4Ou/vne/LGbdLfQ5MRgOCUmarSudtfxOuXUoiClTuZXN
	8u1vjULfQQVmhWKqmvdIlvtktMbE1KPlCatFzki/g2N1FP9BvGF4z6nVNuQB0roEa
X-Gm-Gg: ASbGncs3ri1fWrwA4Yy4U91ABCGRq0ZJ8U3dKPpeo1z0yWA+5oRQJjT1iwaxgS2a1ZJ
	EMCt3ETiTUht66345WsXjF05ANRbNY4p2XJIeIfLUHfZnCOH47U9cXMtcIiId6MIJfiWEW1+IKE
	NcFNAJIquTxVUxzdIVaSRkeSfQIIfCaBbZvKjdYb0CXMWIWnudVPQAdtWVNtxXuGAnk8a71jkpa
	iSyRJl/cHBdpVmONWEcXW4bvvVT+9/BwBQKalgh3Ux3zk9IxQyYyJVwNGqfAyTGXNz4Ha5Dd/8L
	9Q041yaj42bvS5DfP0uT4P8ayGsBjS+9B0wLUXGglhZI+x5qcIFFdNhL7u6D8OsHyUKXeTmDwKq
	G2uCMO57daCXg+ONt
X-Received: by 2002:a05:6a21:3944:b0:21a:de8e:5cbb with SMTP id adf61e73a8af0-21f9786f977mr3588399637.25.1749695990900;
        Wed, 11 Jun 2025 19:39:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXNaEP9bL3w2Ql6gpal9btVWdSF//oT5Sp3FvCTFrPrXXBjxhVGcRIf4j3FXfRSu/1/fs/tQ==
X-Received: by 2002:a05:6a21:3944:b0:21a:de8e:5cbb with SMTP id adf61e73a8af0-21f9786f977mr3588364637.25.1749695990450;
        Wed, 11 Jun 2025 19:39:50 -0700 (PDT)
Received: from lijuang3-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7488087e640sm315835b3a.4.2025.06.11.19.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 19:39:50 -0700 (PDT)
From: Lijuan Gao <lijuan.gao@oss.qualcomm.com>
Date: Thu, 12 Jun 2025 10:39:33 +0800
Subject: [PATCH 2/2] arm64: dts: qcom: sa8775p: Correct the interrupt for
 remoteproc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250612-correct_interrupt_for_remoteproc-v1-2-490ee6d92a1b@oss.qualcomm.com>
References: <20250612-correct_interrupt_for_remoteproc-v1-0-490ee6d92a1b@oss.qualcomm.com>
In-Reply-To: <20250612-correct_interrupt_for_remoteproc-v1-0-490ee6d92a1b@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ling Xu <quic_lxu5@quicinc.com>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lijuan Gao <lijuan.gao@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749695977; l=3017;
 i=lijuan.gao@oss.qualcomm.com; s=20240827; h=from:subject:message-id;
 bh=Z5wSDmQoCBD3WcBmNgudpYHLdgNfVwXXM2z01IliBJM=;
 b=szuvl+dx2J1Lnz4k7Ejj/lmOzre/XMgBjEQVK8QXryFdI2Bw9GQjvtroIRV2v6gmzbkLzMrMZ
 MY64GcEmla2Az5LTlmhCFY7Aap0J4Nu56dEnjDPkZPphjcM00RqeJHY
X-Developer-Key: i=lijuan.gao@oss.qualcomm.com; a=ed25519;
 pk=1zeM8FpQK/J1jSFHn8iXHeb3xt7F/3GvHv7ET2RNJxE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEyMDAyMCBTYWx0ZWRfX6txNufHRFlYY
 gcZ8AJaoJcApmHOXj6kuKmMZlYcb2JkuLXQsaKUmx6caVaA7Ip65vgIwiBxWcdVemhYSnlk6nrN
 +sSH3ItNKqi1O0SNvL9dIUiWOs7Z0XqIt+cUotYUTrEvrLVIgqk42Jin6KLG9UJGuYR9jac4oRb
 P0+6Fmlk5irgzSDCVPT6kk67WJGLSjfC69p/kTpBbAlHLyl+jTFia/rx/pz3D82VydwKo4RR6LS
 OQB0mwIT90v5B18a8N0jMPKqG3s0f0arD0GEOefSHAIw2vPKyzH35ZIBSD+a6BDhZIEqazBx5Zs
 UKkz2TZPm60usL20jshz+Qw8PANZQIJ15cWE8TNpRN2hf6jbwGUyv3oA55TQMsVFnkp4mQswiVf
 V8PfMk5fUAW/SukUG2OmnGZN6HPXH+PLWBE7Wlpzo3+triYbi/Jw2Gs8/BQA2CNC6yEJ+b6Q
X-Proofpoint-ORIG-GUID: XtQNSishUFOMsuzluR2Vu-Pi13Ye99Ur
X-Proofpoint-GUID: XtQNSishUFOMsuzluR2Vu-Pi13Ye99Ur
X-Authority-Analysis: v=2.4 cv=Jce8rVKV c=1 sm=1 tr=0 ts=684a3df9 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=4RsagAfGKZGQ4IWNqzAA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_02,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1011 bulkscore=0 lowpriorityscore=0
 mlxlogscore=666 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506120020

Fix the incorrect IRQ numbers for ready and handover on sa8775p.
The correct values are as follows:

Fatal interrupt - 0
Ready interrupt - 1
Handover interrupt - 2
Stop acknowledge interrupt - 3

Fixes: df54dcb34ff2e ("arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes")
Signed-off-by: Lijuan Gao <lijuan.gao@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 45f536633f6449e6ce6bb0109b5446968921f684..f682a53e83e5be2899922f177837c21ea09096f8 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -5571,8 +5571,8 @@ remoteproc_gpdsp0: remoteproc@20c00000 {
 
 			interrupts-extended = <&intc GIC_SPI 768 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_gpdsp0_in 0 0>,
-					      <&smp2p_gpdsp0_in 2 0>,
 					      <&smp2p_gpdsp0_in 1 0>,
+					      <&smp2p_gpdsp0_in 2 0>,
 					      <&smp2p_gpdsp0_in 3 0>;
 			interrupt-names = "wdog", "fatal", "ready",
 					  "handover", "stop-ack";
@@ -5614,8 +5614,8 @@ remoteproc_gpdsp1: remoteproc@21c00000 {
 
 			interrupts-extended = <&intc GIC_SPI 624 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_gpdsp1_in 0 0>,
-					      <&smp2p_gpdsp1_in 2 0>,
 					      <&smp2p_gpdsp1_in 1 0>,
+					      <&smp2p_gpdsp1_in 2 0>,
 					      <&smp2p_gpdsp1_in 3 0>;
 			interrupt-names = "wdog", "fatal", "ready",
 					  "handover", "stop-ack";
@@ -5755,8 +5755,8 @@ remoteproc_cdsp0: remoteproc@26300000 {
 
 			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp0_in 0 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_cdsp0_in 2 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp0_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp0_in 2 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp0_in 3 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "wdog", "fatal", "ready",
 					  "handover", "stop-ack";
@@ -5887,8 +5887,8 @@ remoteproc_cdsp1: remoteproc@2a300000 {
 
 			interrupts-extended = <&intc GIC_SPI 798 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp1_in 0 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_cdsp1_in 2 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp1_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp1_in 2 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp1_in 3 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "wdog", "fatal", "ready",
 					  "handover", "stop-ack";
@@ -6043,8 +6043,8 @@ remoteproc_adsp: remoteproc@30000000 {
 
 			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "wdog", "fatal", "ready", "handover",
 					  "stop-ack";

-- 
2.34.1


