Return-Path: <devicetree+bounces-188931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF0AAE61A5
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:59:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88FBE3AB9E6
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848D127E1C5;
	Tue, 24 Jun 2025 09:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GqT359pf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090552571A2
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750759156; cv=none; b=nQ9wrGJ2pLa5iQlbEe6dL/gaFOua3ef830QD+Acieqbze0aMEk/LIgfAFj10omYDtIyJHtr/8pnhgHx3AUKXvePEBHAX7U5W38f7DqdvE3I12x3K474tqyv1nFpbia+m7jLN7F2R/6OE+0BnbJ8siRv8YFd7CdPX7n7kNIhDNM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750759156; c=relaxed/simple;
	bh=GOGOmrv07Qnn+0/ASPIoh6ungfDggmWYrZEZV92PrI0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fVxjngukS2uesYiZnEoT3tvIrXz4xI8UW2w/TfvO9i7piShHx3RdD3GzW4ElSHJnE/g5eXoMMh9lFUjTfNhE5zYDI8HQyXq7lKtVK7RsGyxN//UOIc10IfwM+RlAYh4yE2nqazjpwMQHkKkc7L42f9tIuTLQRoCTxaP75acjwec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GqT359pf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O8mpJB007072
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:59:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=eE22PGjBKFzGyDFVc/1k5HN/ro/sK3VY71p
	EjKRjj5g=; b=GqT359pfX7b7whMgZwF/L9obKTwK7y6qBY/6WkZPNHrSGrFZe/9
	E0F82c5Ljd48IO1e4VtYF9yJjo5jRO7JHetqXehhNh2+HhjWKXkMSNBcMDqc5Qch
	QSl7XBppGg8Zpn5g4RA6srb2eqaYloDhxeO8UWd9HSC5pXC/jDvoTz9XyFE44jiO
	JXVI94LWRGtdFPKuhwBtYlf3UXL7TpolOL/+BRwkzQVuS1ea7TZZc/GrZ4bGs9mT
	OH6tYrKbaXT2KbZbgzDEqe4MX0jowFkKVKzhdGCKy2jMJt5/5pIb6fPHR+D4Kfjd
	vl9NeCCSeib3X3fW+cyc1c6R0m6TtcHPfHQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f7ttttkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:59:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7491423658cso2960418b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:59:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750759151; x=1751363951;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eE22PGjBKFzGyDFVc/1k5HN/ro/sK3VY71pEjKRjj5g=;
        b=GvT3qqMwcqrv3Hy6OdbGsF/0VOyuF9L/SSQkQAQYKsAaBY1tvcCIvTgIxq2lvwTfx8
         K2RjPIiRJV9npochjzfD1Mq/2D9AUwAAYeBJfS2iVaQoj2jR0iNlFBL8KVV4+oSRAwAs
         qfDzEjfAeeb8hvXlOsXAk1uFP/vrtYGPCADR25p5xAYuwgtcUhD8mBfqcpLTQF9qUp4I
         XaSf58/nOsjeQjpEKfMy+ZwPMZMeXToqE97GNBFqj2jhg700ip6MVpJ2kiJBJvGpGmGh
         E05yrxfKIyJ81l4SsaasjVxbExJU0h9dTTShr/bKb7Hq9NIw+rw74KbgYzz4Ckz2zsWq
         O4DA==
X-Forwarded-Encrypted: i=1; AJvYcCVWV8mLL2VJYSgfxgmqFyGLAj4QDXAkgiBX+ITB2peCPbfFmyxJzQojt+JGXRXsy3eTpsvptS/HVikk@vger.kernel.org
X-Gm-Message-State: AOJu0YxHUkoGQzB9f8Qy5nGc2nPdVIwt38BTfp3fZm8tS1B7aO+FdqBV
	WcbV4YSx+AG65Sb0T1s7pHAq4g5eCy3pJiINhjHlfOgz7J00WK/AOsQO8E8QFEwbgXZ9CoYQB5a
	uI6wrxHhAdfcNLSwlluGjIGUg4tp5MB2Wkds8d2SkNTcECPsPXjdpj4rGogMe1Po4
X-Gm-Gg: ASbGnctUj6LIVKjKVEYxYpBDayonQFmL/Xv9flWq7PfQNgNx//sWFOBrEp86X4xaTsA
	qEGzoqic5daYeQVFfqFoLCUagXvFx7+8225IigXVerRWSRZ5VsASQ+mHf5mH7E/hWC7cwNYxtQt
	W60SHHvfrG59dvIlXrEwGLHJuMkbvCk+VXuZFdTb8URZeAMMlEPR/kkAszx+nV/il7ojK95GMC0
	5aX1d6a07gYJ7opPzBMO38I9pa01u7cUCybrdBNV6K5KdAQbczKNUT7f0FqMeKHFZf6IXpKYYWF
	gy78Mp6jUDzDjOwIBdRtzEu9blddKxe8rClP4ZFfZzID2Ksbvrov9l06nGvTW4m9xfjt3Fg0Oj1
	wOA==
X-Received: by 2002:a05:6a00:1804:b0:73c:b86:b47f with SMTP id d2e1a72fcca58-7490d6636a8mr25041534b3a.4.1750759151619;
        Tue, 24 Jun 2025 02:59:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOm9pE/XE0KCyZahincUuLaxeNo/FZ4J8obLA+YEkBc1thYs8fF2DXtsxLOS2iwxdoEPqTmw==
X-Received: by 2002:a05:6a00:1804:b0:73c:b86:b47f with SMTP id d2e1a72fcca58-7490d6636a8mr25041505b3a.4.1750759151248;
        Tue, 24 Jun 2025 02:59:11 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749b5e08ccfsm1456443b3a.6.2025.06.24.02.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 02:59:10 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, jie.gan@oss.qualcomm.com
Subject: [PATCH v2 0/2] Enable CTCU device for QCS8300
Date: Tue, 24 Jun 2025 17:59:03 +0800
Message-Id: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=QINoRhLL c=1 sm=1 tr=0 ts=685a76f0 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pe-aGEEqWberZWJlMgsA:9
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 72VUmsy9Ul98WW1IwRGb9q8F9UK94xPG
X-Proofpoint-GUID: 72VUmsy9Ul98WW1IwRGb9q8F9UK94xPG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA4NCBTYWx0ZWRfXxvV9vBPCGHzH
 1qBxs0gk1JrdbxpMheXkKgwHWFRbQ9RHJw3L1JuPy2sIpguSnSE9JZlnOd5ZmEm3P0gW/pt7nLT
 iACgNg6c5ABTM5YXSciCai/uVRcm1A6FQbEdWJ6zcQcm09AfMLmNzltdZmGzHkdbef/tphnegMJ
 fC3xHQkLMkfID9tSoubq4WYrO5XkCsigfqEja9DkYY8x04EzTz02rtJ7Yy4H455spdVRbyEWRmA
 wN6R4vHDpWOg9FIz7RZlUhz05ttQS16EvjerMqXBXMVlXbSO3i3wjl9+1+5dgRC8ivinLgQ8yxu
 mY57gIPLk+Ml5Nky7kASxi5za3heuu4FPa535lLRyDbRsl62nNp+T7uOYQry+aSGWlisRDaFygl
 c4oAoeEBOPQLVHSMrqvv5KlGc56l27xC5gnMwljNf57j5iv4cQYAAYpx+R9+w8FPDwKKgWlS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_03,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 adultscore=0 mlxscore=0
 clxscore=1015 mlxlogscore=819 bulkscore=0 suspectscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240084

Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in binding to utilize
the compitable of the SA8775p platform becuase the CTCU for QCS8300 shares same
configurations as SA8775p platform.

Changes in V2:
1. Add Krzysztof's R-B tag for dt-binding patch.
2. Add Konrad's Acked-by tag for dt patch.
3. Rebased on tag next-20250623.
4. Missed email addresses for coresight's maintainers in V1, loop them.
Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-jie.gan@oss.qualcomm.com/

Jie Gan (2):
  dt-bindings: arm: add CTCU device for QCS8300
  arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes

 .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
 arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 ++++++++++++++++++
 2 files changed, 160 insertions(+), 2 deletions(-)

-- 
2.34.1


