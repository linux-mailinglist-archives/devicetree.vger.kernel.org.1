Return-Path: <devicetree+bounces-220966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 00350B9CA18
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:37:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B49EA3250D4
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2B22BE7B6;
	Wed, 24 Sep 2025 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jTsOALnP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C401DB95E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757052; cv=none; b=C+vkJ25o7JROsysmUqM8zIydOL/botFbc2Rmto67ejAetheX6QTcgr8Um29DZljHLNI8u2plJ90XwpqYmH0VfW6L1AbMBcH3OqAFCtGgD+NUglcjmGczHaeuh3ejk2b7owv7chtiUCKhFT1PefphEvON7ydO1HXqI6ABPW4P/OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757052; c=relaxed/simple;
	bh=VhAgW/dnywD+u4kxqj28b77/K159FY5Soeolgkg1/Zg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IShdgKDd436NUlF9vdsBDwSPTVJn0HfFiSSLfiHvlpmXxlY21jw9tCOHHIo7VcYrIXGTineOO16ft9i93pVdBSeNq/lN/VV6WcVTmF01/KnKXoBkoUgxMlLoyezLLG7kwh63bAbY48XDyI3lfPoDqFqqzROa+CEa5XHTkhFZF3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jTsOALnP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD2k3H017420
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sr3bmZYIkPrHlHUer4SaFc+7DYW/FxpmFC/DXNrVSFU=; b=jTsOALnPBC0oL3Nb
	KL00NmMG3fnK+VT2jz/WTlg2uIWALSHalOy9P0t87pwb1tg+X8aaEsMKdz6L6pJz
	PZ6bXWp/lKHemIoC77ZzdTJ3WrRU2BUdQ90NzSwZo1YtXZ6h0i5fwl8zS/LkaIbb
	LeOHGva3BMpNAXZ5s8jlT5v2xqyadSYDstl1wc0n7pFrLrqZJ0PHnZEA2moswBAx
	aO6kUpvWZGU2lCRoYAqYFEbPW2coIHanDhvnoKz2bbt5y52XqrPclgV7JprkzLzY
	qxC24dLzNm3EJ2HzUu5kN6sqBf/2UVUZNKN+wvWeiM9ElbeOKlIC5BDNzu4l966v
	FZlstQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjycs9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:30 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33428befc08so630787a91.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:37:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757050; x=1759361850;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sr3bmZYIkPrHlHUer4SaFc+7DYW/FxpmFC/DXNrVSFU=;
        b=bi1YIz5IzY6g755071OqZt0sLzOELZNbK4UCktjLl0CfxXZ0Io8b44nLZAFKFN/Fm+
         i+uzzVn2GbdgJ3nS33+INLoL8362+elRvqY8H5yUzLTkKknheO9C2rUMaboAJEcClEF1
         t6m9+/gx61B1uKUcUx5tLoyWE1vzOBGGfFetsQrTm0TK2p/WzFiXkZbFuR8RFVQvaTKR
         2xIXyfZD9ot3QT8FyxtJqZFkgy8rCYT1cx5k5fX/TjJsMT9EplvEsS+Fzh8PHXNmdpnT
         MrsiRDc3DWQBStzINbVDsBas5Ts04tChkJE1bxryKlwxLTpo1C6Z7CdVBiV9LIGCLMcA
         MJGA==
X-Forwarded-Encrypted: i=1; AJvYcCURcBIt6Kag2nY1ClAGBO6HlJqb6WsQb5jg6hnHSXG/G1EPFC1ydBOdcoGtvpAbVwYNJwMhz9iE5U/Q@vger.kernel.org
X-Gm-Message-State: AOJu0YwL6+R2gC36LblOt3QSXAnjxHKMcSnVrQa/BLGnYmUX2EAb8W0i
	UMS7HdLZ+Uvntx6Twhr6mgdP2hloqRyZ4+yI9cDAXhDoUVYiqMRFNUA54D7bzofMzRiqIuI+9yb
	0EzZaXjWmQBWICHzDjm0O7G7HgLfBrAkeX0v6gQRbB6shcZEpZVtHyQwK2drIbDqd5XDYVz78AA
	Y=
X-Gm-Gg: ASbGncvDzx6+nOyxpgOoaHYIaObq/aYAVTqJvmbBXeck+2FXeV5+C6AFRtq6FhBQGr5
	GtVzkYmvPvzjVyq1xgCJLlPfAGMvLNYK35Cne7DWQJ9KNO0th/XbX4HekV6ATkXK0Ar8VdFnmlD
	p0dfe0NQD0BCgxrSytz54OHjuyP+YKDvDNlslRCP0ZZf4BSLddRIpczL10948g8J3NRrr76qH1N
	QNEiIl38mqaU5g+/R6TPCHS8j5dBeag/Gp6GaPyROoJJom+x6ixmaiIW2jJJtWT72uDlhomMTG1
	jlvh3Y30N2jRncXKkT9dbqFgYXshGk5Q7TWyKRaTCeOZ3+mrkVLow0L2FIDA9h52NlGTQ7fbrZc
	SpasAZBrHk/dIv28=
X-Received: by 2002:a17:90b:4d8a:b0:330:6f16:c4d8 with SMTP id 98e67ed59e1d1-3344ae0aee3mr651555a91.7.1758757049641;
        Wed, 24 Sep 2025 16:37:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb1d2hwh+kDjpa297ZpIISZ+RbiXSGQA/VaPwnHBRNX4G95Xh4r8MGW01I7uk6O6hT2XCc2w==
X-Received: by 2002:a17:90b:4d8a:b0:330:6f16:c4d8 with SMTP id 98e67ed59e1d1-3344ae0aee3mr651541a91.7.1758757049237;
        Wed, 24 Sep 2025 16:37:29 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d73550sm227187a91.3.2025.09.24.16.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:37:28 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:37:22 -0700
Subject: [PATCH 1/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-remoteproc-v1-1-611bf7be8329@oss.qualcomm.com>
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
In-Reply-To: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757046; l=1544;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=VhAgW/dnywD+u4kxqj28b77/K159FY5Soeolgkg1/Zg=;
 b=SIPKgm1bGvoRtqAyH8aI/di/jCkXLR6jj6oSX+WKhVqi9+qcf/Ea2nRMH7lxKNmTxccmPNQXn
 K/ABy/COHVLC16Buao0XIWaerMxGjMPg6nwaLJGFsCTmdoCdTfcg06s
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: WLADHaPZ0tSJZbQmlg4B5ByVKkM7goVa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX6+TYj/x0knLX
 tC3WC1b7MUO/f7wfphPPERfUBfsLV+WKRLMFfi/rAJOsTZdcmN2GooMWwVFj9ZHSegIf/r45XTT
 S6OXnr8df9pPMxWysZoHruFNUgfA11OSn9SUtSpydOxaEOYKcqqqzI64bb5hh/jls1NRWEmFnD1
 9GgyvxP/Gt+8RFgh896QEPIzAqBP5Ey+AODdxH+6ZkhiLCiXiM8CoqpGkiEQ/jNQWZnWffUAf3T
 TxYCNVXG97V/EKwUoe5yR3y00fBozmEtUoGWdZKfmfm1/aPIL9zR10c+y73co/mVueramTMnqS3
 GMm78GedKwivyauzUVaX+H4egn59myqJMIZ3nakVp3yyxk2PZ14wj2YQjC8FKzI/RxNj6RacoWk
 MunSLzB+
X-Proofpoint-GUID: WLADHaPZ0tSJZbQmlg4B5ByVKkM7goVa
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d480ba cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7zWBZCs1gTFKjwm3VpwA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
compatible with SM8750, which can fallback to SM8550 except for one more
interrupt ("shutdown-ack").

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 2dd479cf4821..be9e2a0bc060 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -28,7 +28,9 @@ properties:
           - qcom,x1e80100-adsp-pas
           - qcom,x1e80100-cdsp-pas
       - items:
-          - const: qcom,sm8750-adsp-pas
+          - enum:
+              - qcom,kaanapali-adsp-pas
+              - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
       - items:
           - const: qcom,sm8750-cdsp-pas
@@ -95,6 +97,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-adsp-pas
               - qcom,sm8750-adsp-pas
     then:
       properties:
@@ -185,6 +188,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-adsp-pas
               - qcom,sm8550-adsp-pas
               - qcom,sm8650-adsp-pas
               - qcom,sm8750-adsp-pas

-- 
2.25.1


