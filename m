Return-Path: <devicetree+bounces-167187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F8BA89A08
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:28:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD09C179B00
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80126292910;
	Tue, 15 Apr 2025 10:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V6jacCxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14EE2918E0
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712815; cv=none; b=idooiN+oOfhbFLx7C85u4i70m5kvGRRt4HiM/GK7jnXBFHPAE32OTY2P8VG/ex7oD31SxAFEHCadQIglRdiORXwq8MMwt+mO22FuxQLz61xt598B55SUJ/ZXa9uqGhNd+sx9HeiJCQmmB5nEgYwhH3xgqW3FqabRwcN5VF5KsTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712815; c=relaxed/simple;
	bh=YrOzdVZZvQE6J29KYWyMEUemloQx2gIPecJbTpSbSYU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IrJLBLrV+DuSxD9HqdTSpSsLthtUbK38FLeoQkOvlp0+tK04pFKqeY6+mVAKDBvyy8gTqEdEhSVLQhl9+kIYN9DMcyfL09CLR6lU4Ap44c3pFr1/rN7VGaRj3JSQ7yxwJhg+bVPax/WSnP5FKzcJakzZ9n+eqCyvPPnlf3eKkPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V6jacCxb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tNGL002462
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kx7gPsNP4/QFDWhv5Hl9mnukIXjVdG5Xk9X9yBsAWg4=; b=V6jacCxbPrgDOrC/
	EsRSW1qBqxIRs/0SJ8HVHlMVZs6NQxZ4dM3NvcDjbnjIQdG85hzBJmI3tQSVVqNG
	4s25fSfeRQDpqPaGq3+qDKQZfE4NGJoGrnKm8RDwWoEcoeVLKnCB5ple3Jca0unk
	z7ccfvCYTa0wPEidAxXwi2CO47xXgkLmCwsfYVC57AYTAwVQXLyUsGB3InZr0g4g
	ebjfPKjQSBJM+HxBQWIT7oh1w/1PU2RgZPFS4XgBslBz1OubVNmFGpdGkD/wF9IB
	wP8URe+ZBntoLdnvlzUmJikqX3LRTlfWnFIiTlr0J5jIe+axCd0nnaUN27+oyrc9
	tpzg0w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjygw0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e2872e57so987779785a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:26:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712812; x=1745317612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kx7gPsNP4/QFDWhv5Hl9mnukIXjVdG5Xk9X9yBsAWg4=;
        b=ELI+XEQfWO9FQQQFYoj+ANaLb0fVtVtSChpmtHZJ/yTLnxKf1/s/QTlICXtL6H+qSX
         ujlRc3tuuz7p2af37rjSvYWIw1it+J58TyX8Z/TpSkx47K9/vwlVumjo+dtJ3E72Bafl
         fD0jzHe0JVVTiOIC8wx5sQSx1SJwafdJDHHccvpYYVAmG95fDdhzkhHI3JIhNat07K1t
         D/ueP4kOUOJmdbqMeO9uGdrnkrR43Ps5RB/C0KaLpOfulzDxanChDbZwTHPFp6TX/9r2
         50SxiYBC5tQ2Z2lps3km/4VwbUlz5R1m8RT0SNsTt0RCGTo/up2iaMI5Y3rHioGyt7uS
         YfGw==
X-Forwarded-Encrypted: i=1; AJvYcCVXpwErsZJyM0xQCEPTgef1grc6MhJgHrunntfdBRgVjJWby9yr1Ih+tjEfbTjI1rWWYGwrAuy8h5uZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/5XkAzbEy+rs2xw0AqEV/ItugaTv7XeonTj1gj1eO3R6qcEKq
	tGIOjYeLtianKKmcUdJjKAyasc0BEY09UZkyX08DR+ZvX5CTBUC1Nwo/386O5jizHSQwwFPpj3y
	KAnsKCLfCNOiGgUQjm75F5g8MzUYh6bADrOjMqyTOxtloVaxsWdMI2X75NRsa
X-Gm-Gg: ASbGncv8JkKUPSibh3nu76LOfgyxMnVlM2fR4FoLBwT+pqVZ743OV00im4Q3aoJBPO4
	RQvBLRUiz8XRkI8hQaZVebiK+mynU9uSoPYHmUQKYumLiq4toO6odaA8pE9ADQNivP8T33xl5n5
	3jDQ9Cf9XRuoiqmjYyRr3KBZ07nj25AqgtRDJyO8p6ad967ZgsAZXK//1DA2gC8ROvurQzkqwE/
	Xf0FFZDIBTmU1alsfr0uikypyTvWvnTmzbGnWj2c/3Fq+JQ79R5KOyLTW/mQYJ/R5pccFr3SGMG
	yzTRgAhwB+eNe8lQd646N/QN7s9eaai4lD2JDH75sgxLfmo8LNOX8tBD0tuegue8YTKTXRlx8LN
	2as0oLMDY5AmZs0Zzz4fG4nk4
X-Received: by 2002:a05:620a:468d:b0:7c5:5003:81b0 with SMTP id af79cd13be357-7c7af0d4f9dmr2051678785a.23.1744712811827;
        Tue, 15 Apr 2025 03:26:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzac0o+4tCtWWY+Twkzw9f91dcjIdr/FFbA/pKc2etrIj+JO/IqeDJix80bonJt7TmRkB07w==
X-Received: by 2002:a05:620a:468d:b0:7c5:5003:81b0 with SMTP id af79cd13be357-7c7af0d4f9dmr2051676885a.23.1744712811536;
        Tue, 15 Apr 2025 03:26:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:26:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:05 +0300
Subject: [PATCH 07/20] arm64: dts: qcom: sc7280: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-7-90cd91bdd138@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=978;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=YrOzdVZZvQE6J29KYWyMEUemloQx2gIPecJbTpSbSYU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRcS7NkJ6h2av0If3PTsEaJCG+bt9m8m4rEa
 vU74amw3fSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40XAAKCRCLPIo+Aiko
 1auIB/9M3qkzpJEsTGaa0nNaff4PJ5I8/N7AaUw38nXOPswt00vajo62qVVFAvkKyaUwg4e/cf6
 RAcK+14E62nHt+GpAR5cadaEFRnQKPcGxoRQ4Ohqg7MfpVSiRnwvR0sPpt52X1EffAY+k6iIyUt
 E6SB/NNnUT9WDTMV5RQl7GyELl6Bee/6FpS5vk/QzKhfG1ysF95xBA/Zpwu9QldTC2NFHwxm1Bw
 jBII6dfOlD+Jq/0tBDMpCZsB96hodSB4DZllc69wO49Gl85eyUgY/ZJey62aLHb5a0YP/BloskP
 WrxnOJki90osIrmk94WtLGfjv5XfrJh+CP7o+ETelsTv3fJh
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fe346d cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=QTc1DAzlHLIpBZH1LxwA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: DlU6xYk0Y9oKr1V8pmWNkrMk8wrMYRg8
X-Proofpoint-ORIG-GUID: DlU6xYk0Y9oKr1V8pmWNkrMk8wrMYRg8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=782 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index d780b5a18cf6472082a87bbbd1900b4ab907eda5..8e86d75cc6b4929f6cf9592a3f1ae591a19e6d78 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -4673,7 +4673,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sc7280-dpu";
 				reg = <0 0x0ae01000 0 0x8f030>,
-					<0 0x0aeb0000 0 0x2008>;
+					<0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,

-- 
2.39.5


