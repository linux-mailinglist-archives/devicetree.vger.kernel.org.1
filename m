Return-Path: <devicetree+bounces-266808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGhBOl73l2ks+wIAu9opvQ
	(envelope-from <devicetree+bounces-266808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:55:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A051164DA5
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5EB1302A2DA
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 05:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EE832D0D3;
	Fri, 20 Feb 2026 05:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p4Jdk/Rs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C7aqkyAm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5212E2AD25
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771566886; cv=none; b=odIBNKHdUz9qLFlxajQJbK9Cajiq59BW3OYLgBuI6bBJ7fuGcasllw0vjYMGMZLu5/qx9hSU/N+kGTcX+wTHmr1ghvcMVeMWoo+gVmpqp74BNFUMvmaRQVGwz58YS1Brg9ZVfO1FRANynvw5Sp8OJft0sSMkJcfPlutt2TYFTgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771566886; c=relaxed/simple;
	bh=YJTFGMEepF3OlAHZP8f2rwHLxWqlT+Xu+VLIoE2sCe4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eOOvxcB9+DwIkq8MzyiGPZsEDELSGBOhe3OLMPag6lcSoaMgIvam+OMuUio77UeNoWzuVVhysss7/vbWn1bUwhXaDregXuGEbJToxfJaxDOnhuZI3IOb1Gxu+cpnrjc+OmIYHN1BjdEgl//hENTtmj/5A05hgeQGY5iYvIEp8KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p4Jdk/Rs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C7aqkyAm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RuYY1805717
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:54:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AjonDUMUOPD0sBh3EsKMWNmFtBDTuVGTl0/oR15Yd1s=; b=p4Jdk/Rs7dUJlMhZ
	oV5+XMPM9WavYwL7edqsuIxFb9511c5RVXbx9WjEi0pyJRcRMGwNwF2GXT0TcqJl
	RFeJF2Mk/gW5QQfYAGhmjdSt2Sr6xBJfV2If3lVdeU1cw/nrJNR3leUC1YHmfGyG
	9mEVyC1DbgDdEuDGg0a8Z3OO85vY4NS6JGTCetinq2rGKTQuhBnwcEzHVNOz8mcG
	glVXDv6ksEAQ4v+uzaUipeDaE/c/I80wM4Y3BIPeCMVB3Ou7j7w+4K2Q4gUvaU1W
	YcGLri+C8FxpHNspmMEHyB9vokJ0IcdF/MgaSORM1GguWWgxMsbnZ047WEA5Usy0
	B0F7iA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedsnrms4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:54:44 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ab0b2e804cso20997415ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771566884; x=1772171684; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AjonDUMUOPD0sBh3EsKMWNmFtBDTuVGTl0/oR15Yd1s=;
        b=C7aqkyAmqCIbRZQOXsqanssBa1DEZYNiTfHbMumVWNGgKraTI/OsC2D1JT4CHMjfXG
         Qb7PA+2nFGAia9dE2YFMy7DK9Ew1ufprMreOPmH/wtfkKf9JGerF3nY5z1tWlBV0Obju
         WhDjP1kAmVIZfwgT4CXGdJeEtd010Td5yMgMsKdZUzVSJpIppl2TXXdRojc3kbPg42P+
         tMVbGwUSqri3HQcaLOaW+AtEUjn1spnDGpRjldw+9j80jO5JdcYfy/DFd0IX33ZKuP6g
         ngnR4oljAjdtIkpMh2Xl8udv1vamfVRdsICMZjk4VNGgGDw8vLnVn/eFC/Q23Nt29MRa
         DhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771566884; x=1772171684;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AjonDUMUOPD0sBh3EsKMWNmFtBDTuVGTl0/oR15Yd1s=;
        b=wrpckleOI/QXsQbepuJrBRw0C1QE26eTZ/Zwe3jo8AVKKraQYUOWEXpJAWP7xbMYXU
         oIb3o63icFMP7gU9VQH8BU4v+WdwRL+Kvr0a0wfBg07NV97ouEmcDSxUYvj6OcS3Td6e
         qxv+zWipZRMgqK18eManEmOMZ6QWLMFM1Qj/3d2XhbTfgeBlAhTSNyr7096JVr6YDb+Y
         R0p6aGhfrv1Jqlnlo4UM8Bt2qB0fB4TaQa8gT7nnjlFQbCjF/KGYehEK2uzzaG946ifw
         APlXR4besG81TYU3Yf1XL18x2VJkoSgRK5lIbq/omS//yGUT1enmB5A0NZBtGGb3RgpJ
         f6OA==
X-Forwarded-Encrypted: i=1; AJvYcCWZnFl6LOYd8VU10P26GFvo1NSSZD7m2AbO8NOqjyrv2T19MUHorZgnxx56W6195jo4oyEjU8UwYnE/@vger.kernel.org
X-Gm-Message-State: AOJu0YyHwBYLNI0JydKcKuomgzxVVZLmgKCQBt621IwQx6/R7v0CTy6o
	IPCD/7p/fnTmHorQFtPkJKuCQrkIqWqXzpBULbSD+Ya5He5YFwAdRUzjTM3WdKWRiwb1dgp0t3t
	ejOhDK8YzGu0Hihenuig6H5f7qyLwqpYcqafgX8/R2nBPVwgmReAbQinIlTXUg3Vq
X-Gm-Gg: AZuq6aIhkQa0sniAgQARsEV69Uk2+kcUClj5ByI9l0Xqxdimyzro474Y8I5skSuQoYn
	EL0wwAMwfhFxzWbNIw2n6Zng3CVyH97v9OBO+HJsV4YPcBLeSffHfP34dAsMPZXOEifUBjOQrJg
	HTMUfbYYlgHspma5fubgY1yv/2UuKj06jGdo2UYNkLdpIwShpnIlXEeMo+UOh29VuJnUghFWDpm
	xN+/RqHkIGo/zHgzCyqjho9KG92diOio1BRwK0Xxu0R1ikd6U6MWaXR9KaD7+nC9OyYiGBQh7mJ
	X5p0P31gJiyyZZ9XSjy/7+yumY6ts9WqVuMF/VGUZ0z7KqnIpLWGRsXJmlKoZ7/XRvBd27V0qC4
	9Be+GT4EzcsV/zNNOaFAL51gLrzBFSSgYl5Wos4Ksket9YA==
X-Received: by 2002:a17:902:ef52:b0:2aa:e6fa:2f67 with SMTP id d9443c01a7336-2ad5b0e1346mr58078425ad.29.1771566883771;
        Thu, 19 Feb 2026 21:54:43 -0800 (PST)
X-Received: by 2002:a17:902:ef52:b0:2aa:e6fa:2f67 with SMTP id d9443c01a7336-2ad5b0e1346mr58078275ad.29.1771566883313;
        Thu, 19 Feb 2026 21:54:43 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a6fa326sm197949665ad.1.2026.02.19.21.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 21:54:43 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 11:24:22 +0530
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-gpucc_sm8750_v2-v3-3-6c5408564c3c@oss.qualcomm.com>
References: <20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com>
In-Reply-To: <20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA0OCBTYWx0ZWRfXwpVC8Xw1+WHk
 o/pflQwaCRRgyrJdKm6ppTCl1X9S9XG8sAN8kMH2WjwRbtNwm3Uf6X9F15p6ByIIxv24cNyp6W/
 ZvwNOON2ULLekI0aCOCC5yNaBCxW+c2rrpAhrlHzehwB+0Rc8NcQ5U0ueq+wrSuKgbHLBEKLNc8
 E0OkPxNyvYbVZpL2nLsrLLNVgwdVN5sXepZZdsWM9EcSO+Cpcehm/QNHzsf34zCCO5TYUZTAhF3
 O59DFqyS7ZVUpeMGknT/Y0a+WgYGwZm3Dvu2MjAQOCaMwIak9vHNJCz+3GySoZ9K9Q0g2FD646B
 aq42/+SZqBCRoiECWQhyZtjm6HqfsPMPySbnPnzbCMjI3VGsN/6uPpVepCXZfvu7D/jsGPhY024
 RdrPSe052q74De1/LrpQhELwL8mUkbOEHtrEnIvncDzfi2bIuLbRvc4HnMwsKHB1IW9m1ZL1jzI
 JwAFEKjRR0Z8cYJ+J9g==
X-Proofpoint-ORIG-GUID: _cJrZB54Y4GIxPhAJvDXmfTG22ZM7WZJ
X-Authority-Analysis: v=2.4 cv=JsD8bc4C c=1 sm=1 tr=0 ts=6997f724 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=-JMICv5YTLeUKPlIpiEA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: _cJrZB54Y4GIxPhAJvDXmfTG22ZM7WZJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200048
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266808-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3d64000:email,3da0000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,b220000:email,aaf0000:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.228.225.192:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4A051164DA5
X-Rspamd-Action: no action

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
is simply a separate block housing the GX GDSC) nodes, required to
power up the graphics-related hardware.

Make use of it by enabling the associated IOMMU as well. The GPU itself
needs some more work and will be enabled later.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 64 ++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index f56b1f889b857a28859910f5c4465c8ce3473b00..0cc931d0bc96e9563ce4e7989ecd4ba50bd424f8 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -4,7 +4,9 @@
  */
 
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
+#include <dt-bindings/clock/qcom,sm8750-gpucc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/clock/qcom,sm8750-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -3001,6 +3003,30 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		gxclkctl: clock-controller@3d64000 {
+			compatible = "qcom,sm8750-gxclkctl";
+			reg = <0x0 0x03d64000 0x0 0x6000>;
+
+			power-domains = <&rpmhpd RPMHPD_GFX>,
+					<&rpmhpd RPMHPD_GMXC>,
+					<&gpucc GPU_CC_CX_GDSC>;
+
+			#power-domain-cells = <1>;
+		};
+
+		gpucc: clock-controller@3d90000 {
+			compatible = "qcom,sm8750-gpucc";
+			reg = <0x0 0x03d90000 0x0 0x9800>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
@@ -4515,6 +4541,44 @@ tpdm_swao_out: endpoint {
 			};
 		};
 
+		adreno_smmu: iommu@3da0000 {
+			compatible = "qcom,sm8750-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x03da0000 0x0 0x40000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+			interrupts = <GIC_SPI 674 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 688 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 574 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 575 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 660 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 662 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 665 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 666 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 667 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 669 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 670 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 700 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
+			clock-names = "hlos";
+			power-domains = <&gpucc GPU_CC_CX_GDSC>;
+			dma-coherent;
+		};
+
 		apps_smmu: iommu@15000000 {
 			compatible = "qcom,sm8750-smmu-500", "qcom,smmu-500", "arm,mmu-500";
 			reg = <0x0 0x15000000 0x0 0x100000>;

-- 
2.34.1


