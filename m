Return-Path: <devicetree+bounces-256277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB8FD388C2
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 73917300C342
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072022F1FDA;
	Fri, 16 Jan 2026 21:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FWsrBD2h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IeIRiUCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9D4298CBE
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768599846; cv=none; b=WGh1foas7XhwTZZBhkDqaNrGyKT9MN0XgmRni0gBRVnvX2KTOF61LvIstaHmzNWBomhlFw1ArL4c7Xh3RaaVQ/3Q8GD/UlwgvTfo/4hZ2FQzPQF54dSvs7RyWf0Ub9EMJCkT0hRiU40HxbOUQmBMKRidlFioe2+QJQuhAiNc+Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768599846; c=relaxed/simple;
	bh=YlgyObBJVxND2wwXv1arITL+J/3vwTygGPNmB70oVkY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tZRsA7hbFNlWYVfAeHlTO231SK94BzjYfIlmnQIUpdzYRhwGwYP+JELDmxX0fX7u+UyHFVGl+FKxle8T740bxyFAWUMggu/CZyV1FQwXIjapcXi7f8jvRytKlvBETj37dc0kB50L4eTpmYx0K2rhSEeL54uXeUB8TiTiGNnJzjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FWsrBD2h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IeIRiUCJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GKZtLB1856109
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3c91yUqoVpi
	6MpMUgdFeEIvx66w0O3RMzMIWcObrohY=; b=FWsrBD2hJj5VAJcU9cZrOxD6LhG
	qD66SfcAtc5hfwPBIji7JEAVIgvTkV+25Xsc1R3kP3dWcimKVs0P++LAR/PpZYqq
	Cq6DTWCa2RnI/nlVmPq8lq9oDFH0mVb4dvPzz+zWK/+3dPfJxGdLGDNPjTRa9ej6
	HmROyT/atjUGylZUCJwB7NruWFz2JWRyRAl/aigQLZePiwrjOm7ERlAnwkJwvByF
	lsiHKmUavxS4PLdU8hMNFqM9rt5OLP5Y2QBvXqkbZ+VBHDgD9B3HHFRQyvRN4GVX
	opE4F8wkOmFAa4INjXFJCudUTRAY+bb9m9Wc62ALHSjX6UbumGJs0YBcD6A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvga04st-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6ad709d8fso140723485a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768599844; x=1769204644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3c91yUqoVpi6MpMUgdFeEIvx66w0O3RMzMIWcObrohY=;
        b=IeIRiUCJrQxVZQx1rAsnkVNbLiPZmZYpklJaYwQXuFn8eVuOlXqzSSLtneixEU9Dx7
         K+vAgJdrga0z+m3TwPcosky/nGwdXnChQ/o7ZCA1yXqQJx/T/odGVMXIkXRSyY6kpRWQ
         GAN0hHq4SzAZ/RwAwmTSCrsgw0Keo4OJ5PB210VJi64cJYOjbk86wbNpOjhiHxYrRqlA
         bhoD33IEVMsJ0vcAyXJzV8Blgu8Fq7XfplsFFjEGJ0nXUrmjHPB2UdcjvODFAePWhPtv
         fXbKecdTo5f54sRGvpfz5UXXmSh87UFsGYP/CsdPWotihTcSwL8Bi++tP68Vp7wNS0Ha
         fq0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768599844; x=1769204644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3c91yUqoVpi6MpMUgdFeEIvx66w0O3RMzMIWcObrohY=;
        b=qPNf2gawfHC55RP7tUzVMyk4xIRDIKeyekxQ9ka8ARkmufTO05N9NkCTM0t6kdDxLb
         7yFcLuNRP9PZFR4dyLaql7KuniKA6Y8KWp37KmRVoJ6pu6UtTIfbBD/SsEaqZnMVPKLt
         P/mH0TBSO/zB7qVAvMZdSgryE6ctJUNk0st1We4EOdFlwB7JwuqXZ3x5lnFGdGYCuu5t
         KYVZ3l8ALIdooZpLtuLOmQQMCgZedi+lo4+BlA8X6CpcBWPXFup1sutruc//4gkmgLV+
         pemajJG0bwFSeabNwgrNc0w+6H5wWHTfYDX1rHgsrArhJ6ixAHgY5CqJkSksJLvkEQr8
         zklA==
X-Forwarded-Encrypted: i=1; AJvYcCWpyqENASAw+gXn/O/VHQMsFGN1tG+iIlOhSfiYzGGO9riYAzWLoAIQKwSzlrPph6X/bstayRHnf9bA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3arKxqWv+Jx1mKCMNucX9fQzyUg29Rxjn43QuvHuS1G8cPn7m
	awgxRAE+87WJ4lDwvizrOhyp5aP/Z3pgB6+wgm32ja4q7r1Bx+AZT1d26WVImPcuGhI1e26n1J+
	trZKA816Zpft7Srinw31JaOZg5Zxr0Edfb6zX1nEeM+pqjlZhj1SFo78gBemd4Vzh
X-Gm-Gg: AY/fxX71Z+wYeU6Cdsx94v1Lgx6qetJ5rwrft5wL7Gva9voUMTT8FxyofrczRAMLwl6
	8NQpFmQf9lcICoaIEi+FHoa+KxBjo3SOCkJz5NjLI6grL4THuch70fhN3RJhvJdVVj3o1u7EBfD
	pZFvYNymBFcqDEVORCGsGCswti1t2AuqVXMV42X3ytqoxrJss5zqS59dSxSm/Ul/rQucpJd2YVu
	2tfh4qjUQT1IbqkWqKKVIkRy3o8Sngmh5rXxnRxw/KSDcMFjq0IjmD8/s3t7dwDWDC473em/x/j
	/GSUpIT6GjoRgDTFDbUmscQrzCV9Y0fEKjk2ICRsTM6NsiVqcVxueQfNROgzygjnzXxvMjrQ/TR
	UAteCVgFjbroXuOgz8sLGn9AMAVYopw6tWBLCELZlll+jQSlPKWLFXgWFcc/Leg+X18lbLD6cVX
	7c
X-Received: by 2002:a05:620a:1a23:b0:8c6:a522:14a2 with SMTP id af79cd13be357-8c6a5221655mr748711485a.35.1768599844038;
        Fri, 16 Jan 2026 13:44:04 -0800 (PST)
X-Received: by 2002:a05:620a:1a23:b0:8c6:a522:14a2 with SMTP id af79cd13be357-8c6a5221655mr748709385a.35.1768599843613;
        Fri, 16 Jan 2026 13:44:03 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:910f:b77e:d7fd:93ac])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452bce433sm3479743a12.3.2026.01.16.13.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 13:44:02 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: monaco: Complete SDHC definition
Date: Fri, 16 Jan 2026 22:43:53 +0100
Message-Id: <20260116214354.256878-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
References: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE2MiBTYWx0ZWRfX0mCGdtapx52A
 YCITXTGrV82OQ78KNvnmWD6PcoK7QkOXLhjgbNmu0FN9yOFNgJvINvojWTOFKwUKBGuDxzOPdoe
 oIur4jqnp5BaEc658boV1FmlWKjEnrrausvAgHOlY/Mru7MzWQKTZDBobJByaZex4X+Mx9orYqC
 y/NdF0DVxo4K3ne++VsYe2n3VCLXCINRCr2+FGoEtL47mUH+BVLeOfGylziLMroHgDeESFfSEmI
 8scW/BHDdiWDZiTfEM+AQY1jAkBvNAQ2yoeYuySUqGhfNEE8hgWi24PpP3NNkT0pKnHvpDm1XZZ
 txutAJvJpg+WMbobjaCJSMGAPLUMZijAnMeAr+DvQPaJa8RLMxpVL8JGvZe/MORv+zYJo4tgl7f
 In7MYNPwEom2vJhPOvN0nSuZWRo63bz4cAn/q4/1GK44Nrx9MS3UGBGLkRrrrXLEhwPFIOEaUJ1
 dzkRQ0koBjq7/OlphQQ==
X-Proofpoint-GUID: wrC5xNEWWPBnd98dirgsUSPnN2xuHHMc
X-Authority-Analysis: v=2.4 cv=Kf3fcAYD c=1 sm=1 tr=0 ts=696ab124 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=gjCkitBQ8UzLeNF7HDgA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: wrC5xNEWWPBnd98dirgsUSPnN2xuHHMc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160162

Add the missing SDHC properties required to enable HS200, HS400,
and HS400 Enhanced Strobe modes, as supported by this controller.

Select the proper default pinctrls.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a..5086e1dc9b90 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -4197,11 +4197,21 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			interconnect-names = "sdhc-ddr",
 					     "cpu-sdhc";
 
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&sdc1_state_on>;
+			pinctrl-1 = <&sdc1_state_off>;
+
 			qcom,dll-config = <0x000f64ee>;
 			qcom,ddr-config = <0x80040868>;
+			bus-width = <8>;
 			supports-cqe;
 			dma-coherent;
 
+			mmc-ddr-1_8v;
+			mmc-hs200-1_8v;
+			mmc-hs400-1_8v;
+			mmc-hs400-enhanced-strobe;
+
 			status = "disabled";
 
 			sdhc1_opp_table: opp-table {
-- 
2.34.1


