Return-Path: <devicetree+bounces-217806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7D7B59431
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F727483C41
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0813054F3;
	Tue, 16 Sep 2025 10:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DP2PJ8G4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C3B3054EE
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019664; cv=none; b=DxdOOWT7mjvHHBJXH1oNNHJeRnwdd5/Eu/pGHB9uq2yJEyX5sobysiXwIHQjIJ1yNRPXLQU+KDKlhDghwQ6VIafhOck3KVlHgrDbZKTxR38w2ETmoSWDsZwRkclGnhJdnJ7Ea512DZZ7si6EEM//wFMvLATiAA4NHtpMxvQAXBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019664; c=relaxed/simple;
	bh=49TLFfWXO9zzGLOBCx2a3dZ/ivoyefy2RSU0Yi2uKbg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CLU20oRR59s2s8oxOjP2g//+hf7XpRA+mEBYDuwOkzgaJZNm0Ec7eeyxBOjcriJLMfLPSqJ1G8Ohpip+tSAH4zl1eyATZaK+xivtSU40bevED6EMRvW+OVV+oZlJsfqCcep0pLnB/Ym9GpymCwLHOxRHD7/Epr1Q78BWqELeFOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DP2PJ8G4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9vlM3020041
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G13l+nuJj9x8TNLqCD3MuqoqSxgxI9iEO1u8WoNLkxo=; b=DP2PJ8G40tTR+CQz
	2OQUl4KQYxdbG3XJJOVZQCPkAadQwWyAO+8IY/PfQ0AFolXBSUJSniB/CnP5+KZk
	0f0eOU7vQSJxNJ5NJSszRwBf1yhhyqcTMNvpl2q9+WlvnTETyjMdKD0kq25/9yEt
	ZfgCvRzmLDdQyHqcQShOUO5UG5hm6RLWW7LDpCR4JLeTKCKlzYuexYAffmQK/ehF
	maYMb7cTVTiT9WK865as39K5l8B2AKEdF1qp8U7JKfu/1+AHiiFjOQ1SihKs0+9+
	Zz3PN7Qb6CykGbbVxo+Ny87L+1lB4Xq3LA2Ytxhg+qGMhhWhhsXvS6TyaxFtKTYA
	iKh7PA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1sm2sw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2641084fb5aso26209095ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019661; x=1758624461;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G13l+nuJj9x8TNLqCD3MuqoqSxgxI9iEO1u8WoNLkxo=;
        b=fdPlXQNoFQPvbdrwDAaFgS3FT6Glwv4t59XkG4FUPCJaUdFaHeHtsV85wjvD3QOuqB
         UwWZ2I9RLLVXfPezFnaJWAVSIg9SP7jFqcmk7Y8pKy1AyUL9gm52FeaHYPNPdRHvrpS4
         WEw1Dyr65kVtu7pQb590gQp7b2Y91W7ZYBZR7aT+gYoTAlofzcoVHI6pQgmo9e8bWJNC
         nVzhmVMuBX4bqUlDZEh6+gRw+HY2Z/jJezonMSbWeqKpYh2jLz2VL+Nq6GhWiwyG7r87
         6sqyWOBjklfywvGdKRrV7dKtuj0HmUAAkdhFmY3RNKLSoaZYcRgRLoJhPMyJ4lt4wikv
         dmrg==
X-Forwarded-Encrypted: i=1; AJvYcCXKp+IKw+bTPbr24W0i7Ko+1SBoVIoCsuHoF1gaCwCCdFWL7ejGM9gGn8jkI4JY85xQIRUtmngX0Jp/@vger.kernel.org
X-Gm-Message-State: AOJu0YzPQ3/3f8eEG4Zad9i1LqKlnUVjUzWZEe1Sf/sqkSPc063zIamD
	fM4kS2te1hEUljZ50MIVP4gTnaXghSu8/esteVoufTTLIYfprLTsLP1GAONaZK/N2uzWqXlrihk
	rysq+u+mwFmOeAS8xYwmbQgMThVLKWRblG19I+8gXZmqRVP5Wv25hJ5RWdyjgmqtq8/gNQfPA
X-Gm-Gg: ASbGncucucdnlVlyhR1IzrAiyreFMqWgfcFH6OZInWqPTaORzpYy1cBMdUQRN41aj2H
	ZfsyqUkCGN3ainN1iUAKtDbRko4reBamtM5K1KzKE7THTnsavs2q8K6EvYpHcUzgR77Hxd4GZJJ
	80yGP8dW7IhpHnRAHhsiAXmrk8xUoOOGUDaaQYzTEiDd9xvdKp+EKI6BIuwVMIfSZW7T/LAPgOx
	aHusMLwPG1aZw6a5E5r/YnwOV1tsj0LB0PKxU7gFaYt0EL2piyQcuAJtSRMDdPZv2qJSdYg+dbF
	S9h0slax+xAYVFOJ1TZfM+EIx7UqSaS1nS5fS+P81otcNZXzsluEWYy5BVoQVbMMXJcG
X-Received: by 2002:a17:902:fc85:b0:263:3e96:8c1b with SMTP id d9443c01a7336-2633e968f82mr115750735ad.33.1758019660591;
        Tue, 16 Sep 2025 03:47:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFO3NuF3KqjR3XEQ1Z2CToVDA8lnbswTSpPZ/ztELlc6EY7DU9PurAmW1/JhH3cSPT9XpLphw==
X-Received: by 2002:a17:902:fc85:b0:263:3e96:8c1b with SMTP id d9443c01a7336-2633e968f82mr115750285ad.33.1758019659837;
        Tue, 16 Sep 2025 03:47:39 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:39 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:55 +0530
Subject: [PATCH v5 07/10] arm64: dts: qcom: lemans-evk: Enable Iris video
 codec support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-7-53d7d206669d@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=926;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=yr92tEMIiqPdFP7MdBqOVOL3VtzELm4OVIK6CnjuCvM=;
 b=f4fd/y62zrkNfFAYTioACy6y0dLtMr/GJ/SxBY/NOqm8yZoX+663iHBh6KTLbiupWETbwY5HU
 bzsfxqOX2KQAmHl3uO3IkqVu5PnTL4yxXfgPXtFB0umKqEE5BP/R8rH
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-ORIG-GUID: aVf6h95sDrgMqOH8C8QyJvyEdJ86uAWN
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c9404e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=9guL5b7EFFMc6jyTlUkA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: aVf6h95sDrgMqOH8C8QyJvyEdJ86uAWN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfX38XBaN73DPGc
 4cXzq+NSMpZ8fTYc/0Tw+R8it8LNTHqXRNZc3sAd+2SR4ZLl3rSRh3Y4L179ZcGSDpAHA9gXbfe
 XF5jmwINBH8NOeLdWxmE/E4CeZ8vCLwo08EC8DXYLqrrw5pme62tnMzr8WeUN2EoD/9dXHn85ti
 LXzyDoIbO7Mkf5TxcnG8fNtKEX3Zd1t3SBWlu1cxLIUIHvl98VzjjgEOlGbJG+/WjT/zIg5UMlB
 4VcmimMieoGSYDyPnziXYbp8yMjjgVwh0pnUCFGiVEceHNN09QVTxFgwkc1bLtdhq9WA/KMY7f5
 zpD0YZSTu4jGtJu4LdJHLZD5IDKrOxo+W3KqlrtlTLqLMSmEx/hLbLJsEF27wEzd2wPQwCFaRzb
 BYPXbJx5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

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
index d92c089eff39..5e720074d48f 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -385,6 +385,12 @@ nvmem-layout {
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


