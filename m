Return-Path: <devicetree+bounces-188932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC290AE61A6
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2F881B61C15
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EC2277C8D;
	Tue, 24 Jun 2025 09:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MnYkF6Is"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90F527FD71
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750759160; cv=none; b=mS6gege9LDU5IMZ4l065vi2y3Gjz3XFDnIHVwVnqdL/LeMZD25WiktyltcOoC022obpJhGrjvnincAxiIj2Ca4KfF/ARzaNRQoZpHxir/beEcUwML4QcgIN6idq99Fqywn6tr1DM3aT/EihjZpot7k/WhNu2LBGEDCBM6iwsWB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750759160; c=relaxed/simple;
	bh=Del9Mg8qKsONs5GSrURtb1V+qrL6nqQjIupUZ5ualHs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mhlqAw5G3eW2TqfNIxIUyo4TE4oSDsDy0SICoBvsFXXT9Q9RlHRd/TbtQeR41c2XlPaPAnVWYe+gDlnV7Ug2qWWs9Eu/mhiAtNp8MgZJT03E8R2wA2RRvXprRyElPjgldsxXkddiAqt5wIw/tRZqBztKBLRDjuHYWmwlAL1H03U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MnYkF6Is; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O8qAAh014612
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:59:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jp0sIwX7E2E
	Ahi05BS45TpvyiGPx7g9xheU+qhe+MUs=; b=MnYkF6IsBN1ogjUE2DwiLZi0W9T
	RDqnLBoUN8cMX6Gszw5g7XjNWHH1HcyFAn46vAjaHPGRTnmQPJeyoYTGe7lvXp9N
	b+m2mX5rsTdwUPF/wJC3erh6rjuMOogVSuHhFoGCtg1AhgjDrNnXV5lsyr75xCs6
	MbtY/9+XD0uZUn9Ytaa/nMgjPsn1GWiLrCsd9xxngAck7SH7dKkBBudl7mJeBpqN
	VyMrof+Pmz/o5pPpZPIrCshq+dZWeSYMshvxKeqHeghf8L/spne0mCb8AatZqMIb
	u9Nmi0rVah+ee1NJAIURZJyrljL6R7ThUhri9jL9XGUvFQD1NXyfgY/0Orw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpuu3u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:59:17 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7494999de28so480414b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750759156; x=1751363956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jp0sIwX7E2EAhi05BS45TpvyiGPx7g9xheU+qhe+MUs=;
        b=OL0n5NQkFIv9MRC9POiP4FAqnObahfRJciHbKQjq0EqZLVGIUcDufqN5POul7APqI7
         NePy7KXFenHVyHLpCVm9JO+L68rfx2IKNs6of6tOVf16haMD+M6MLj2gYo7/aEGNg5Ea
         NdEzIWIJzkvyrxf7G/ujNk4onqAaXUTpXIvnBVZYFq9KB5Zp73OEEo7ly7NKSNT1B2K5
         1KB2CTXpupejc+IhL7iDL4ZnEl1buad3GJaUGy+9jvIvnwGnAAXOfPt7z+cI0cHLOK06
         WlYXednopHA2m3Gh2DvTF39x7VhIMmLeDOjL4RCE+98EmVFd+kdqa0tHkF8kIk5DrKi0
         A17g==
X-Forwarded-Encrypted: i=1; AJvYcCVBeUrv0tgPZdLe7STBaHHavIqxJXpQSHxdRRddWHM3oEKvOCnUNpJ/PpvWpaYnRifAkAESwjLSqqFr@vger.kernel.org
X-Gm-Message-State: AOJu0YwyZHlHMUA+oQKBdjsg38vYPe7/X8LMhmpN0oQmlZl6q6zkwcaB
	S8twdfgkUe8ZhlTq5CyA84eFNSKRnTMR0U3g1mhI91RFK7HdjNUUhukCIUJxsTMJtKFfzYfIF5q
	ntUSw8jHkotScgotR8yBCRyyzL+l94N53nfuypGfOy+D9NMh0+N9oqDrUKtw+BZQj
X-Gm-Gg: ASbGncvZK87dA2qQAOop+xTawfAV1eshngxwaSM3a1IsCIpBgc0l989ojSXRolWDk9T
	HEt9/x8wbLLzx5lVkkw0s70mONoWkupfRcBieGV27RYOvCYCQ0wULAme6KxhbsEPHrwJMO1Kkts
	wnZS9LYTbTKpfEpvF7MG0lnT4FFDYGSHZOKYCACZvUtbjRYMFrdUavHj4JdSOOdt1c6g38D5oaj
	mSHp8V6DkSf3g13ixyLEVKKHZGOkKJ1Q0vJU5/NiCfFjIRc0KXgsvhTs0WFODEt9TIvaWXA4UEr
	n+sta6I/jeUMedhZqgnVGLVt6IJC4Kad35JOuIZ3UN2O2e4mgpNc+Yp79J9BN01mNQj82eERyQQ
	44A==
X-Received: by 2002:a05:6a00:2789:b0:742:a91d:b2f5 with SMTP id d2e1a72fcca58-7490d6089e3mr21503569b3a.13.1750759156376;
        Tue, 24 Jun 2025 02:59:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBdcW94g6W6ZO1JsBLmEcLZoxaG/MEDeLrVmYb/zbIdyWpPel//mQz4saWpm6SU1788XX+XA==
X-Received: by 2002:a05:6a00:2789:b0:742:a91d:b2f5 with SMTP id d2e1a72fcca58-7490d6089e3mr21503538b3a.13.1750759155985;
        Tue, 24 Jun 2025 02:59:15 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749b5e08ccfsm1456443b3a.6.2025.06.24.02.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 02:59:15 -0700 (PDT)
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
        linux-kernel@vger.kernel.org, jie.gan@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: add CTCU device for QCS8300
Date: Tue, 24 Jun 2025 17:59:04 +0800
Message-Id: <20250624095905.7609-2-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
References: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685a76f5 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=T1NhNMajUKWQjJ4YovQA:9
 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA4NCBTYWx0ZWRfX0JFv6dqVhXbq
 tGHxkA9YaiesPbqRhnn7GFJhUmB9sDc2yIR/6zr0LcF1aLiQGhjyQ3RtPOwFP0CZMvWYE0Sz6Ph
 KOaeFVo/G+4eGl58gblSClxW5NhfviNL1Pp5I4KoWDdZhIoDugW2LEfVbrM/EJuPNSQGerleVRI
 qT16PvFMdL9uZMmxEMxqcsKaIXkzPlrJc+0j+iAxO1DTc6zZoqs5bTikUX6roxQ5hM1efT14e9M
 +FzOnG9OCovPBDPVtWa02Jn2G6HTjnXS11h2HMNys7c/fm8rtpgG5/xNKmgVVtPC3lkpdY+anD9
 VGzU3ILXdUKnQJWak42OjD7ulVEZUXFSVtoLHMetrOEZN+ALlViEFlCLkhXC32HFP6f6oF8Jida
 /sX5IaQJtBadjk4lmpLzRmAr3s0o2rBx1EMBXvws+EsUxDFbs4qQ/BCDb50O+dy0a3GTkTqr
X-Proofpoint-ORIG-GUID: _pRJyf9q0sd86_7QgViGBWmQwMTYmtmh
X-Proofpoint-GUID: _pRJyf9q0sd86_7QgViGBWmQwMTYmtmh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_03,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240084

The CTCU device for QCS8300 shares the same configurations as SA8775p. Add
a fallback to enable the CTCU for QCS8300 to utilize the compitable of the
SA8775p.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml     | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index 843b52eaf872..7f3aa503da53 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -26,8 +26,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-ctcu
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-ctcu
+          - const: qcom,sa8775p-ctcu
+      - enum:
+          - qcom,sa8775p-ctcu
 
   reg:
     maxItems: 1
-- 
2.34.1


