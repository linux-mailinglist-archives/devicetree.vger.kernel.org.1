Return-Path: <devicetree+bounces-256756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F578D3A3EA
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5C29302AADE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D723354AC1;
	Mon, 19 Jan 2026 09:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mGdKJD+T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O5ozdu5w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEB2352C27
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768816771; cv=none; b=k+raRvyFyr8StjRVZvEjV+0hv6zAMmO9OW2gBwAXxulNnyeJf3Alnxt02/NMSiqZCfhuY2bgZVoOwrjDIkBkQ6kc1D7aBmhtPvLqNDHNJ8HcWD1XxZJzrg2O4JB+kNMNBtK1c++LrZSVrwxoG2qLlEd8J8/+v+MmbECaxud+gb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768816771; c=relaxed/simple;
	bh=+YtUGgVsqKcXvbyEuEPo5co+TtAUwXQcP5xRrVWt7S0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LzG9ZOYcfLbnk5hm7BzlSK8thxYcX45KQiYT7RtMKv3gN4t7q5VKj5/Jhq0htkblp3RiWUu+jtgpBrbyq+ABexbl2d6boum3w3ou27MFPZps6i16gBBb4EPWiseKJg3DiRkVwwbByj/1pSBmxSIIreZEHEigc4KAMXzIbwzRNCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mGdKJD+T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O5ozdu5w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J90m6O1904955
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YDgRAPVFrpu
	7ekbHshESSQHT7siYQ+vYCGI5eQFiuqE=; b=mGdKJD+TNiX5gvIPOAQg8BbW71Y
	LESwISoroEaHMUfbY7BLoS/VS90UcIgGMnTk7Y+7D6XhxUJfZe5HPXubTfuFz8Ol
	7CMRZ+dV8bkm2jrDR/QMTsY8Z4dNiOBFyuKpaARNfSRVQiiq11dfKnKgTTGx/04/
	u5toigGBn1yYpDzEnuQxwFyzae8/siIApHAqqULL8wgzd2R5pkB7xK3dzAHS084r
	6auG+EE7YxPHsEobKiwLZU9YrhZ8oHsrJvN+iU34DaXXrFrgd3WwqM64r4fq8yUq
	m9j9EBIIhxSGQz95YfgY3jCPfdFaNB79Bc4V/sfhlWCCMLAHUFIJ/5On6yA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsgmu8eq2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:59:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52af6855fso556957285a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768816766; x=1769421566; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDgRAPVFrpu7ekbHshESSQHT7siYQ+vYCGI5eQFiuqE=;
        b=O5ozdu5wJc8c9mzN7aAE9R9gXkP5OlnWJTcv10gAwSQyHlwbzon7Qau1s79Z1tVTyY
         nokAiCX8yzvJAovcwqHMz2lVyL9n1484F05tIqF9qyQQCqJp4wK2pSe84JGD3haPSRQx
         GP+bre/fTLAzskybiOi2hJQZTGDruvTbbGXDD/nd1GWHAn4J0IUbnYXinz2YI4ROwr0Z
         T/8XrdKBFqOU5D8QUDvfogh5yYSDvwnCWdJyqfjeCRsIOmN6XMfvaYK2EWbw4Vf6GKBR
         3ATOlPjlxnwwCAh/iXsm1VGBOSTphd7ST7W4S0+W+gP7/zFSAdxeWiwX7KwLTInn6A9r
         4CIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768816766; x=1769421566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YDgRAPVFrpu7ekbHshESSQHT7siYQ+vYCGI5eQFiuqE=;
        b=JBXxlQVhfd+LxMJoyxCK6ivXLehSsOjQgCoLFcE554EdTKehq6yu/74xdLZ1yU7H5T
         LjlzAUu9o2yiYVwrYNFuXWqBq4KEdOW8cAvQgypQiEctoduQoN/1vsvbIm6Vfc6ayyEW
         Wy4GZGcvJjcjsKvS/4k7Q+ltoFP14nvbioPvQtde+9CvLIOY9Rk58SnLMIL3cyI4EAfx
         1gHbNEUyh9IcEtrDZDByt9akwGbAlBwstCqj/A1BptlD5RlM4rf0Pk158ambLwW8zIVZ
         U7EAdV62jo6VG8lz+/9Q1Qc/ETdKHnQlLxaDsk79KmE+SIc2k1ruB59r+WDY7J5Lr6Bp
         wRpg==
X-Forwarded-Encrypted: i=1; AJvYcCUDqMhLGjVKddLENrAwMDHuLOK9Ye3ZCcbirRXEeraeHPc18cqXacG2r4riXFEfZBVE0QIHVkdHr2VR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7SrwtWBV4oaUl/MOZp9y2bylnvueG1Gaz7JVzALiSjtqSK2fw
	UlWPRXGmKA4g3afI009lr7NNJrLzBbV+7N6XOQbCPj9rSrtV+6gz7JqLviv2t7MVA3Y95vyc9qT
	txSpKSn7MlRiF35PVBRmUArtxhxLIiRdaEfEYieeuS01jisVYKJoFIbmfL/9rK0iJ
X-Gm-Gg: AY/fxX6UhdSiLoqeLwOPbVLViqnaHFA/mYEQhSsafSxkuemws9vH7oJmqv42qm7bVqZ
	iTGmshiQgf7wdpRJMqWsYk7JxDWEQr/9UgddlBSy1bpWW0s3kJmfb76K+6fSe7qq0cnnV5+NGZO
	79w0kSsLONfREEUN42OTrvPd29tHTNlGyXhzL6bfOU95UnvprIr+91eqwv5+b1WqzGcVkNMiguQ
	gIFcIjNs7dy00hIHZto9rjG5u1e0UvDDo2kycoXcnomfGDMNxUxIZOUpoixkmbWhdz5SJ6Ip01Z
	DAlszWG5OjgQOiEDrAdcsIe0ecRjrRZhtMdVnpY67v2XTiw17gPgREULwyCXNnLZ/U4lLw/zFUk
	3CNuiobIv+vVKS9/PwiTSYyY8yw==
X-Received: by 2002:a05:620a:7088:b0:8c5:3881:da84 with SMTP id af79cd13be357-8c6a67bf470mr1473708585a.73.1768816766231;
        Mon, 19 Jan 2026 01:59:26 -0800 (PST)
X-Received: by 2002:a05:620a:7088:b0:8c5:3881:da84 with SMTP id af79cd13be357-8c6a67bf470mr1473706785a.73.1768816765812;
        Mon, 19 Jan 2026 01:59:25 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4289b789sm242530635e9.1.2026.01.19.01.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 01:59:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH 2/2] soc: qcom: socinfo: Add SoC ID for CQ7790S
Date: Mon, 19 Jan 2026 10:59:10 +0100
Message-ID: <20260119095907.172080-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=708; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=+YtUGgVsqKcXvbyEuEPo5co+TtAUwXQcP5xRrVWt7S0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbgBvVhQQpl8O/Yd3FdwWFsCx32cfpmLLcg3CT
 cE8vVcA/zWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW4AbwAKCRDBN2bmhouD
 1yiGEACFCbHjppWysdJZdU8NGenQyP4pTWjm4PGbVaORm3bL6jC2WYVcGaS4ji9FcWyqMqMtTC5
 AsOPSZpYxFZCPEAsRvPvJxDlmjdqZphNR4Hp9R51v7mj5WKRIob1LX4WhgZ+7Cdn7VWfh4Ve8Lj
 9bo8TUUEMrfFy3BM6Zs2BmiMLCpZa9k4TZZQVnb6DcwLGLBWrJCQy9v+socBNQYdeihz2g2yKj3
 0aCH+XoAoXm6sda7jVNgtE0qN2Hcp8gZG0Mggf0Rzdt7fFZLF1NJ0yuAP+0LSBaa+d36zFOp9Fi
 bEo+ZCHjiiQ5VUW92yMq+D8URP1AxF8QH3WQtWUk81ijNy1zyEZmgHwJqTPnqZ+DKJmCghMv06d
 6I4lrBlpM2/hTZRTkVL/w33nEWZkjpb8ZULB07K7V1LyBoVfp1dAorggi2Nmh5Da6T7CxOILILZ
 kyE4rK3CtxWJ6vHxn9t1JlA5px/WXv46MzyqTw+VLwHRdAa9taPjTvpX9T6BnkCEJYoojqhV/YG
 fHauFUhm+BaOPdi8BLNW+Aevr5D407yUZ6JWLdGCob3QxwTdDso4ZhEF2wgjqmQBWGk6RHHDQlX
 aV2dXXUv0nhJF6NPmeyaQQSsOcbKFZkVTpSBaC0v/sU38iXRl7GTkL/T7P8LlSl3MqEwA8Ka9sS 7fEwBbHUgWfPSsw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA3OSBTYWx0ZWRfXxYSD3L4PWARZ
 mlDQBNUb4b8Mvmk9mKnM2BhaLUyIFdoYcry7KdiM2C/AK7KxXrvTzrxj2poi36BARspvCJ/g6V7
 y7DudL+d2RCQZvOTZe9b9uc14SdwGLwIOfMIqdz9dMAGcEaK+06yupEUXqEFZxrURtb5My5G2nn
 GnWWh0y9SzPtxBo0T/fL2pvAD5L88tMxTDGpptvtvwGTjMSaOxNJm1xnoNqhaFHaE/Znb+OrW0O
 YnCwIPKytFvk+t50xazMkvEzbKJNaAoed2IWgPExgzkQ0OtADuLGFy/R3QTi2jHR3guJK0W6dRE
 0CM11y6h0/m6tHBF8CU0ygrXGD+BEaZp6ocSbIVtJzryKOnG0hEJZLXkc3x3NaLKd0ECU/RHTsC
 C6odOeSqmqrT9xGc42BWQdeXTK7m13m4y5rQNpUjtAIXpGdIqTOy/u1WVCX6PMcDXj53OMLCleV
 X8Y6RC+uPvoLhcKWP8g==
X-Authority-Analysis: v=2.4 cv=Is4Tsb/g c=1 sm=1 tr=0 ts=696e007e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=n2oYzaAKK71w7557y9QA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: c5n9XFJQwPXzxwgj6AXd7iJq_MYKSF80
X-Proofpoint-GUID: c5n9XFJQwPXzxwgj6AXd7iJq_MYKSF80
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190079

Recognize the CQ7790S SoC (Eliza SoC IoT variant).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>

 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 003a2304d535..9a5738d24c62 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -522,6 +522,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(QCS8275) },
 	{ qcom_board_id(QCS9075) },
 	{ qcom_board_id(QCS615) },
+	{ qcom_board_id(CQ7790S) },
 };
 
 static const char *socinfo_machine(struct device *dev, unsigned int id)
-- 
2.51.0


