Return-Path: <devicetree+bounces-214221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6641CB486AB
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:23:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49C751B223C8
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:23:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409792F8BD2;
	Mon,  8 Sep 2025 08:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H2jwmYEW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A217F2EBB8B
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757319658; cv=none; b=QkBJt573TW/iwx1LA8nPI/RpLg86EPEyBrdycHL44TSpLCv38YJTMLvsdXD6xM0ugUe9U3LAHeAXJ2ojnRWKNwTsRhU8FYJ40tU9mlZobFDxUUXTG2jNkjwrg4eySWlqVXI3VkORfQpyAdR4kp/S7kBI5owqFswSQ7PZvwb6b08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757319658; c=relaxed/simple;
	bh=cotqZe/TypYCRpLbOPE/9IjMIc2Y2Wh9oNHbNZUjKPk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H/A6ybkLYX5AH5eTLtKTLKNXrFHcu12hJOPnT6+EjRGSp7/I7OKKMpCBiV3PJ1Iv4a5yRlokKhkML3U9V5xtWaUdiNPcQahWwswK7v7mMsFcHRuh7f+cPCRXmXNReBsNNQmmR16ZnMQdKqQRFXA9zGIYUW6sR3izUaGR16qXeZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H2jwmYEW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5883lOVt013554
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:20:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O4bmDMlAr83kjarbdQPNXRMSEkAQzuB9YOir31juD80=; b=H2jwmYEW+6r92U+c
	GmPIboeDPPjxrUppFgloJAfbhyVZPseVy8v4n1DCdAVUpIg9f/9DDA9+VPyns2Ze
	WEsBsvYViq4rE5Y94rdN0lcFaT7RDt532FaVds55186NQSRityBvQsMGsSofxxE7
	hb9yxAql7OsfAg/6AGeabhwUhS76weTuqVS6ibLA7xIC9HCsx7Vs2Jv3ANveh62+
	hMr+/MKHuko4Vhb8Ymw78JivIMkJe1AinqgiE1YyCDiXd4Coq2w0eU3r+Aj6Hojq
	zpyZhGTyr4tss9hLA+8zp9jBrR0cL9CYASrhTkHdXfPNLk4cBvLoeBdGICbV6xFR
	e+w6ww==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdrmmw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:20:55 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24ca417fb41so49302195ad.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:20:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757319655; x=1757924455;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O4bmDMlAr83kjarbdQPNXRMSEkAQzuB9YOir31juD80=;
        b=dTPVNllXl5ZQsjB4hHI7tagsC6db90zZmpmwKe+4NYE1XIesl/fzPiuaPcKvpP4x7E
         iA7b1hgqe3QpumsEiAfB5ECc7PY+57Oj9h63Gt8eSKeKu+cwpJ9dhH7jbfk8mJB7b0d+
         09nojFEgA98OO7LO/N4fUm5d3Ht/iJ6kU3K7a8rdJ4mYzap1Zcqa7NLTI+LWD/mj1b3P
         J0fC0X2bUiB4Asx+mu+fe0ZSQhA8hvrbYx8f277XwA0FdoaP3TISqcAdI4tdcUdr/sm+
         C8pvgZ6ESDFqnfc9z1sHlpqHyJyYv/vVAoqoUuMy2k+8GsP0thRXXkcKegDj6AvY3tZu
         6P7g==
X-Forwarded-Encrypted: i=1; AJvYcCUZwCmuAelnvvN1yZ72Wt1M1xWhL4gZ0WjCVXYF+pA0qllgsO7HmCw2da5Vss8JA7sQpX5AXhnUMjCs@vger.kernel.org
X-Gm-Message-State: AOJu0YzQb/SxqMd4MVXsvA8J77HgNL4GZtI9BkjP4BDing/2/iH+AIuR
	2mA+9jyXOX6NTYdpFx1DDxfzZbCigsS5/PAzqzeTACVQekFH6JeHEQonqbvT/REB9Tek6vC6gZh
	IZAkMuUKIEI049C2pQouCd9AjgugJf1heEKxqroH6S/alhxUDnJO0pagVYd9S9I8r
X-Gm-Gg: ASbGnctdZB2FPnhwTX3sMLglYYlSXqocy4aKm62kRZJvDSNeVFt2RC1uxNxWpt2q+rq
	QcAgx7y1bP6F91xMTBEBH5rCXXRQf27s1CwUGx7EBssBz3NMAK4pdoTOqfpdkx8idP2+KwPWkrl
	IEm3fUt+H7Tl8RwBODjippzDj1i8ECfynfy2yL21pRGb6Lz5RgDjmrgC+0852rjI0EQ17KKMeIq
	m2Ev7ftRANzwsMgi4E7lnDEMl3N6d3KpmlqIcNtomfnCGylfPCZS34NfkueRvkf3kmvFeViFw5l
	NQMnMwjufqUrrlV1zGx7kMrK6qWjvfR91xtcjBmalnDXLMu0clB+Xb1UM9Ls/QKDJ7a9
X-Received: by 2002:a17:902:ec8a:b0:24b:74da:627a with SMTP id d9443c01a7336-2516f050096mr115481745ad.11.1757319654851;
        Mon, 08 Sep 2025 01:20:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyKAv1bm1x/8ViIApnewyx6A0HUi/joPZbuM8m6VoLS1sL3/lRwAVXdrizwiz8S6y8u+V/jA==
X-Received: by 2002:a17:902:ec8a:b0:24b:74da:627a with SMTP id d9443c01a7336-2516f050096mr115481485ad.11.1757319654435;
        Mon, 08 Sep 2025 01:20:54 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ccfc7f988sm104852845ad.144.2025.09.08.01.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 01:20:54 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 13:49:59 +0530
Subject: [PATCH v4 09/14] arm64: dts: qcom: lemans-evk: Enable Iris video
 codec support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-lemans-evk-bu-v4-9-5c319c696a7d@oss.qualcomm.com>
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
In-Reply-To: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org, Vikash Garodia <quic_vgarodia@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757319602; l=926;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=enf8ibRVGnvRD27V5ouRqt4BCtLlEPGBzdF16+U0RIU=;
 b=siHIL7dGkdoLax4tSZ1agBwc5p8Bm6n1mgWA8Fz6wVawE1GVJ/QdPpLOpJ3pOZ8rv8wJrb+DV
 Dn0nCGS0NTQAO5Y3DF8sc22/5YO/7sMSWAgbZM8dKx2sO+6KSU1sPxV
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: Wbvs8EjKqlYTqg-Get2izxWA41ARStmk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX7YZ8QR1jdD3e
 1xQ+CJFJOebxT4aIiLla1yP4QZCLuAjqoXY9VM7IXdJP61peEhmFEgOrGfewOJKAdk658dZjBIG
 dfozkPkat11NEfw+Z935SNpqTYnOQFcULPou7RY6jl3bONR2hxJ1OO1c3aCy89KiISDfDmpcZCl
 M+4dE9pRDnwlcIOL2iT5rlYpJsvTzgSyGn/c/KldgRp1xTUcvYJq3lst8oYnQ4mQIU9FXFrC5a/
 YP2k/XZPJTGwww5uU0fcBlh83u138wrTQubJoxiDrqOcRbAFu/dgA92ZflPrB6ycIK3zHz3uE4A
 CT89KavnrYSovttqf/k0uGJIjBpUhx/Pkz1KXS4TpTPRuYOqnYrIJuk9+IfrDo4qx9VgpSi1L7V
 Px0YBsxn
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68be91e7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=9guL5b7EFFMc6jyTlUkA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Wbvs8EjKqlYTqg-Get2izxWA41ARStmk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

From: Vikash Garodia <quic_vgarodia@quicinc.com>

Enable the Iris video codec accelerator on the Lemans EVK board
and reference the appropriate firmware required for its operation.
This allows hardware-accelerated video encoding and decoding using
the Iris codec engine.

Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 1ae3a2a0f6d9..d065528404c0 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -333,6 +333,12 @@ nvmem-layout {
 	};
 };
 
+&iris {
+	firmware-name = "qcom/vpu/vpu30_p4_s6_16mb.mbn";
+
+	status = "okay";
+};
+
 &mdss0 {
 	status = "okay";
 };

-- 
2.51.0


