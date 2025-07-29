Return-Path: <devicetree+bounces-200369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 105DAB147B7
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 07:43:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D8D71AA1A00
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 05:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B0423A997;
	Tue, 29 Jul 2025 05:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JGXYWVk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CD02367A9
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753767771; cv=none; b=TGWhNPKDrgdP7Pzx3YZ7gdtW8sPPMGqVJoXT6bWA1BfqLqc+5g5iB0p7TAcAPNMvoxHopHrp2bo3W7nXLFSiM1CvZdqAJN4CkLAm8sFPechAP1/fVfy5EEEUjYztpSP6wjNVJTJFRHTlatv93lTafPhV6VKhWwO2WUb1GRoFVlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753767771; c=relaxed/simple;
	bh=esSyQi0W7TyT2YkgO1r6tVX3e2HQHpTIX/6q2Ao/a/Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t23icn6qRVO3TuYLg7oohklwYh/QkD0y8sK9BviXn5hfz2eo9J6vK6sh6VB/uAcF00CrFxO0G467jnpEIImpaXqfPO97Gq3bDf6F3CaCugJAcTV0yLEp+eUv9+AcUemct+4r8/cQ9Wipd7LS2FLO+/xcaag3RVUWZruFMTW/Z3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JGXYWVk7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SMg8XD023477
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6rnpiLU3hM22/JhSpmUfTbNPUyp22pzKiCZFvxt0pVU=; b=JGXYWVk79w1UQ9DB
	uWHR6uuD0pKY1y1X8F2Wq8hchuvhf51pE3Hw5W2wrIowEHPBt7aooHWbNWn8dWeU
	DdYTXzHK7Fh45ZpoMDGkfHv18VzoeZbPiq098AGb/GLC+w6zIXOFfrurNOdgxQNT
	aKLn88nakO4R2egjQNeZh3eLDsFkEm0doT+KroWoBr+s6yxK67qPaD5nOfhZ1abu
	14sWGf00hUaIhtWQbYKmQgF5lBwsLVh5/9JS5Oz7ucnWrNMVE3S+SEMFAQrN5KSC
	DS4HjUvmTlbiVFLhXm4YdUyqZp/1LYPkaTmhzYbbfbl7ZxxSDFwDiN9S+u6K83Iz
	RsKE2g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qpux4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:49 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2369dd58602so53956775ad.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 22:42:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753767768; x=1754372568;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6rnpiLU3hM22/JhSpmUfTbNPUyp22pzKiCZFvxt0pVU=;
        b=QPXASZOc/ihSxla2mFVpSNQLHPEFkpLRsxVHRsCWOlSFpJoDnnD2CuJXSEejyLIsCM
         RtYB3brKxrC1sClvtCwVAfXM4mSQ0AQAgEyqhamA5raYW5ehm2pzI3JRl/WNjwlvANGJ
         +OoriG3iOfLABIDbDfq6QBr0l6iBvklndECu+jvyuyNu08Bl7Bcf3yBJe+FvF2EDMST1
         3PZnQCQ6Ga5LbGLeFhc18ZC7lKVC4RWcDRlU+hdN+HKMxcDjHSUB+43rDl3siFHnVcmp
         m15hqv2dvcJhTSLxgwqxC6gxy3gF+GJL8/qGniZUEAcp3mjUMe5rTLMbr4peeMtqzvT3
         AO4A==
X-Forwarded-Encrypted: i=1; AJvYcCVZlRKcNyy3j+caLLnyrHMsog6zqRPGbV+eW27vwO3afZHd98T250FxVDLiHnWCwxAPkk33858ON2yv@vger.kernel.org
X-Gm-Message-State: AOJu0YxPkg4P9eRAG23AVgsrRFTy03lkRTx2CYkNRYbaFxWc91RlxZuQ
	jAaS2hsNCpO90LYITpalVj9wTudVGo9TzIn9d5J+fvQYMmexniTrtqB9PV4r2teRZjY2yenxQME
	+Dk7jqVn7juokdeTc0ZfeQsOAY8MsJL8vSA68WOCmhj4j0VOGQlgHA2nUHALWKJEx
X-Gm-Gg: ASbGncuJRwwLqv+xpD7JcBtEykan687miu8CUUUyV7aZTmP3qP1oOLgUCcOe4CYjqgS
	KHHzz23hLfjL/HZAMCKNWNNuhQwwV/CLrXTxHf9u6GH2y0kyDxkPSdp9yBWqnl8Ss9q+e7aTOTz
	GbRG5nDuvj8XYGByUuvKaxc6ipuhPvqOjmQpfAI8ol0UacfHkV2lw2OBi/AW37UE1mSm4vM1vNy
	0VPb0U2MvjsTgVDsQ9Nez1x5Vj5qw7/8f1ob+pxOvELygrnhM6xZmUo5l9/+A+RBlPw577LcqwG
	8eL/hAPAn8ImZnJy0/qUXO7V3PnhtLoki9sM0sKL/R0r3AdQApyZifB1poMt3CZa
X-Received: by 2002:a17:903:228c:b0:23f:d47a:c9d3 with SMTP id d9443c01a7336-23fd47ad8e2mr144843105ad.15.1753767768575;
        Mon, 28 Jul 2025 22:42:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiYKbGhzM8cnhDQGbr6CQb4riSZZBU6sRu8Iv3TLyFtGnM8iE/iHelWGK4PqkoRYkCzceoMw==
X-Received: by 2002:a17:903:228c:b0:23f:d47a:c9d3 with SMTP id d9443c01a7336-23fd47ad8e2mr144842865ad.15.1753767768169;
        Mon, 28 Jul 2025 22:42:48 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fe9b67485sm54505235ad.47.2025.07.28.22.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 22:42:47 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 11:12:35 +0530
Subject: [PATCH v3 1/7] dt-bindings: clock: qcom-rpmhcc: Add support for
 Glymur SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-1-227cfe5c8ef4@oss.qualcomm.com>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
To: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA0MSBTYWx0ZWRfX4fjACFsHKFk9
 V0kF6nKn8UrNJczk854teaoDyWx4oLKsXYES/k/ut/nGOZcedr5jtRqzlQCSjLnrLljv1fCT0rO
 7lVeThFFBEjK1FwCzvIVJ7lTWHx7ROhhT1YRLYf+Cd1Y6dFHfpCgbi/5JMN/D4papdhADxuyNO7
 Y9DPMPnrYGImHMnU/Ykqxk2fw5OFpaWixmfDMFha+GdrjXUip/SO237QdR4BXUY2p7JtNgY/cGE
 oytqDI5Tu9rn0jBblTUstjt3OHM+bbDIp0CjajT2Xblaf8OUq+/9wEqWZsvIsJb/hsYI7RfWx6K
 TRcophmkpvAHYvhiuuTNsKo5RE59YszQVKKB9R5AvIVTBAMuo8KYrKXiVe52UMQyBuF1JG5mjpM
 LR9FnWGlAbnVcDEBLO+xHtz8iqa2CPJqzaEHlRuu1yuGMvOcKbuzGhwutm08ESsOGPBwfxLu
X-Proofpoint-ORIG-GUID: utRt5Q3VroS-N9RSlW55ErNjM6WZTbvg
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=68885f59 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Fi3-m60RFDWPkiaf7JwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: utRt5Q3VroS-N9RSlW55ErNjM6WZTbvg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_01,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=964 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290041

Document compatible for RPMh clock controller on Glymur platform.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index dcb872b9cf3e01f87d4fc546311eb758ee63af9a..27307e7bcfbc67853b91de5408b009cf6ca75ba5 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk
       - qcom,sa8775p-rpmh-clk

-- 
2.34.1


