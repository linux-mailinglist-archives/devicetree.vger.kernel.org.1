Return-Path: <devicetree+bounces-220976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6099B9CA84
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 852FA327079
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C422BE630;
	Wed, 24 Sep 2025 23:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EKlGrUgs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38EB2C21F7
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757119; cv=none; b=p+imoRMHez1/GKZMJWDPzCo1L06aAQgFVhUtN5qwPGGWFSGkEUCl4uBfCXlvkCNZEVC1rcP4DDMemtkoVQdD3I+Cj9Vahe3O7Fs05qa+levFJ3ZG0qJtcxLJXLmZYCRZwmhqLFVZKYZu0pt+9QsCJMq60VqhtpxZa3waR2ptN4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757119; c=relaxed/simple;
	bh=F4znCHDFQQeryr3RxZUYIcYiRyQiALWXHxg8m2aMkAg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CIpJOYOAMUR11mFTwsi11JDKQe9LkFS/8OfBNZOSo6JhQAVnmz4v+dvv7QNSe0Df6lv5rtAzj3xvlmt8TM8Ee3J8vIUo0BG0Tmnq/pLiV5aST6cy1s6jJ5mZOAcAD8BKucNnzSpyYZGdhXy4RH8G6IF9FEUm0XzuQrQbuw8rJ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EKlGrUgs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OClqI7025248
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s1aAF5rSae6ugXFLKlzHjE8diZkKaXKz4SQv2iuHKzA=; b=EKlGrUgsuL2NYpqh
	SvYmz6GzHcrZ1hZUFZyooBpPwX+qabuwHGLHk7BD201WmuCHgGszrxYAs/aRkTij
	vXxVYgd97fG9dBPpwrBdJxyufWeCd0Ql2C391gOHUm5QjX/SyCExiz+zmgLey5EL
	wqJegkq6TZqLDVCEl2uz3beCuDOlz6xi2CLP0dmiFN4UQUjhH/i3kxG7hp2M/9wU
	4doL5vu7Uik8DpeN++LhSVMJOkj2zmx+R0ZCQp/xyfN0xeR9ias71GQvNVpd+N/A
	PADkNnqvOvD5mfBBpmQScsFZsyNSbAB69RiPzOAMLHJ9VE0OE88SRerbkDZxQK51
	Zy5WFA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv1630j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77df7f0d7a3so324335b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:38:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757115; x=1759361915;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s1aAF5rSae6ugXFLKlzHjE8diZkKaXKz4SQv2iuHKzA=;
        b=Pg9o+WYAGQCqd/WcxZRJZo8l/dKgfGUckWbsqZIRcGlKL3cjlvQNILrOicS2uHV/UB
         y4MA1ESyHHhXwY9XSi5RmOUYxLaObmZr1/bizjpljoydEGBC8Ksj9dVEgLSviBb5QbgX
         wu6HssZ+Zj3beqEBvMpH5kxl2slEh3sbhtAqpQMm0mf7+WAagzwZczq0s5oy4TtOMo/m
         2KNYFGUle5pnRzLyt4MWuC+waqun+kAfGmvYX1/+OCCL1oBUGEZjN9C5LaG8J5uaXnAz
         hKxAlVrH3f/5hcYn02pMYMyUmxgqUmX5wwG0t6xzdncplfS83fLlI/cC8FzgSavT9lWL
         Py2w==
X-Forwarded-Encrypted: i=1; AJvYcCUHOAmuXoo3kr/x1OzNMwHuCqjyhRqnkYr0cVHrIn7ZsMhANmGhNPCFWmQsZH9oenvh0TOW9yHRzkh5@vger.kernel.org
X-Gm-Message-State: AOJu0YzNOrmDQbF9eybGPVciIDalA1hsSPVxwRa2dlBsWABRW7B7dtYx
	C3e4Br4A6FRuprZiaVeVHfkN8Pp7c2Wgew1KNeGJy1PYySwTYolUQ5LySpt9bPbQS+atxe1EEBq
	6xfYvD1zE4Aq4nmNztccH8bdxvtCHOsDGN9kz/TME5AOd9UfWEDmpZLCPuBVXAm4c
X-Gm-Gg: ASbGnctLYhY/IPjmw8M6JDp8KXx101ihnGDn+nLtT8pOE19TM1nURLxl0V6mn2jRhXN
	MePeioJsrbI63Cvg2Ts8XlM+1SJLmwkELivpzFiPozPbXinjjdedr4TNg0W6CqE1cAIpfWo2E+8
	LjnVhs2NjQgFHB8wYP3rUMd+9LRHfopJ6npR6wOnxMYeOrhwGBtxWwcyrbZ3rv5TFIUfxrKWq3H
	dBEqYMs6Ejq1uMXTOkpcVKwrY/0ngNHrJT3JXp7d9HwJ5CK1+/6ly9bYC/3c3W6QMG12Am0PmbS
	ypd3pRHB/h0HuD7NZcksH2dioR002+inJ7zWNOrjw/KJy7RHmffdWwqxGpf/id2d7An3oU0XU2Z
	rA7ZtM8OkshMFowY=
X-Received: by 2002:a05:6a00:189a:b0:774:1be4:dced with SMTP id d2e1a72fcca58-780fce3b007mr1898895b3a.9.1758757115274;
        Wed, 24 Sep 2025 16:38:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnsto4a+iHjLgM5EoL764lndboVFQuG4IWUK0ulnCQHO170g5R+E0rOP+YBHKKmKYAzn5PBQ==
X-Received: by 2002:a05:6a00:189a:b0:774:1be4:dced with SMTP id d2e1a72fcca58-780fce3b007mr1898871b3a.9.1758757114853;
        Wed, 24 Sep 2025 16:38:34 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c0709csm177056b3a.81.2025.09.24.16.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:38:34 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:38:28 -0700
Subject: [PATCH 2/3] dt-bindings: crypto: qcom-qce: Document the kaanapli
 crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-crypto-v1-2-49af17a231b7@oss.qualcomm.com>
References: <20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com>
In-Reply-To: <20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757110; l=802;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Hs3MTutgTJMawPo10U1qCQaD7MHAVehm01p62n0kfL8=;
 b=1gRerEIHxFVQS8l19SgcIoNEiqA21x8U0jVM6V4Io83OoBFbdquBSV9NqGkCzEXQSZeAoF6Rc
 zJY2EBu2MVeBvIT9IUqQDrFZuvdNtqq22VoIwgQi+q7PZP5lueXI401
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: KnLBLKbICOGAtNdBHzK_6BzFJT727zdZ
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d480fc cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=UTvf6Pk5Os8-KCCN1KUA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX4Xyb+Wvs7d7R
 TcMxK/0EfBFRNjMkydnMCsRlw+1VGFRwjsHVAfU8awF/iRDa8bFZ/pUu0sqG2nIh8693DyQCUJP
 pNuXMOZ0NX5oFYLRmGVmqW4zEz5/+Pyt24I/tuPusMfqr0WlHuKcsG8alSQXNmVh8jOECCrvWRs
 eZUSqRzmgzNar5FqWGWm6FkDALRz9+N/Ox53tTAk9vga1GPzfmbPZlFRT9X18wDMIEFwG4Ynfxd
 m1Ocr2j4u0qXu0w+daNsE4C++hoYi3LIRf1y8PQddzaLeb2N9GnSCknu4RvlVDnr2YOsBMqt6wU
 ZCG7NF5/z6VohaRJYSfuMDf8GA0Ha+DqdZrsO4Bg6U6aEZKSRvJ2OrplJq8jrjXc1nuFyOykqdW
 vNA4iyqD
X-Proofpoint-ORIG-GUID: KnLBLKbICOGAtNdBHzK_6BzFJT727zdZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>

Document the crypto engine on the kaanapali platform.

Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index e009cb712fb8..79d5be2548bc 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -45,6 +45,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,kaanapali-qce
               - qcom,qcs615-qce
               - qcom,qcs8300-qce
               - qcom,sa8775p-qce

-- 
2.25.1


