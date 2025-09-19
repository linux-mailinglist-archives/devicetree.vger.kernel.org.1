Return-Path: <devicetree+bounces-219276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AC7B89B1E
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96CE41B2419B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 13:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5722DCF6B;
	Fri, 19 Sep 2025 13:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cflv8X1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFC71E0DFE
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 13:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758288901; cv=none; b=asQ5xbm/i9JbYaFM/cw/oSiaS6DkGmFgpwO1z9Cuw8XpEhc5cq0Tndf4EagJQrMZ5/DXfiprXj70G2eebXqVAx2iMghK4YsWmHBdbCLccIiLoq9jhtzhgz5BZV2trKrNPHjhBLa+vowlGc/eQzVrT6eIVYHnOxE25lGXhuZGGsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758288901; c=relaxed/simple;
	bh=v1yecXK0KbtNUMyqkZ4phjSC/lp23KqCyTR3rxB5ioE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=E8XpjB3Qj9xmanl1lOeIevjInVRHxy1VDVxFpyCwYj43uJOuzdE4T/kAC5sukrL5mIYtQQuYN/Z1lzKQd04wrPcJ4DAbjEul+d4Tw4mLyKTzAM9jWTUYKhWP6kYtrIYim6aWVuJBHnPgQBCPV8MP9Hs9nxyck6mNqCxScovvcTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cflv8X1X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J8k40l028290
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 13:34:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=LsohKq/Rcry2lOpzgsvKWq/Zyk6Dbf/1HfO
	9XNIHJ/U=; b=Cflv8X1XBA878cmFDyF8jMcedeFgezI4IJyz0GSsHrNhRxpzuq/
	XHBzVq9AyotS7Jp2Pw2PNjCwUS6C/1kB8O3zUXNelc/pCwK4Ak2rH5KhrFNIqTji
	204TOCgdXJOzJp6Azb9Txd6V0oXhejzRKENVT/A/71Mqzn4aRI7X2Hbz2+ZyIdGf
	D8TTOx27O/gN/sQ1LSLDRBaH7voMd/ILyisBmFsjegY6Bq37zmUUOgxBsaNwSJbh
	ZIR3HIYObO3oPpmT8cIdPh7PeZ2M+0zpIvY//Lc9EpVHyjt3L1jip3CV1OgsEItE
	1cx3f4qsSsRRkaHim8Q3zG5w0Je/S6OwI0w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jgju8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 13:34:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-777d7c52cc3so3336122b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 06:34:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758288897; x=1758893697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LsohKq/Rcry2lOpzgsvKWq/Zyk6Dbf/1HfO9XNIHJ/U=;
        b=POLmrPpYw5IdY9uDp5JEx4gMWLQwy/+OsZnDyOugXzjBgAH55Kb0Nly5Do1Bxc0eKc
         mnkT9LY+9w6AICYH0y5QAFnDhdSOi+ivX+Riomi0wYZ/nC+KJT1Lhdv6EoDIjKS96DPe
         C00LA0sRmtyogG3yJRmC6cXOQm8iEk7/DmoPOHUkk8DdXkHaXT9JyOe5qTd7cyj4xMgv
         CWXy+8euH5JknYgWGfMhCyErHeZTSAdAtoEctLusVEvVMmGMZQUYTnzOZbZpOwLLYyg5
         mE1KJexycz5Bsk2etGc4wY/Nq4KjCIPFxhmMB6PRI8Seve3SeCV+0k45Gs6YTqmuUGo2
         19+w==
X-Forwarded-Encrypted: i=1; AJvYcCV1RAVUf/nZBuCCz3ZXAz+8vsR0QiPGWm9A59vOhu5fezBBcdm4Mqg/KZP/dTGxuhsmYsJRu4gedGpq@vger.kernel.org
X-Gm-Message-State: AOJu0YxSfMvHNpfUlCZ2+xNrf+yJ30mIMGFtvaeNXjlDd/tMwJGAKvdi
	ndeZmobcu7Pbho1WBF3A/WoWUr3/5KofpfCleHE3B1UUITxyU0IHvJJWG8Cp4Di5Ph5EVN+LS2i
	04vzIWBw2Q0KRnDJ7XD9gYGq+OnFmBjuWWt0o+buCfnReCBT9wKsyeD5MXCWqfDXHH7nj14yQ
X-Gm-Gg: ASbGnct1s/Dej7JxttZ1Ab4JiwDdFoYdzjf7HQvhEBVyPLjidD6Ml2hlQg84JHv+l7+
	SKJN+5qpmtKhfzag4sinNqlYgHj+ntRkQWzfnSK+8/tKfbluXyaotkB4x12jG41cLuo7v0kouX0
	R71IsKgPfaeuF8rZqhiWFpGkuhINKoouwUgSAxieg1DjtTJjTHrsUr8gOfsLDW4guzIQEJS8vBF
	FJCJPt46Axd1pdK1ZZ9ti6q1SA8QpqThtwrhonrC+ADLcS13WU73xf6kIeAyeyG9t9J6Xf3MSAx
	S5AfYbwDq0+tO88U0f877g/0Ux6Vq5Riupn/YqlmpRis0x/HAqfbt0ub6/6e68gfdMHzbkyzvzk
	NrF5tfhH5jdc2BMhPRqhBS+ntm/bOJ6AIBxzndjcIpSWGd449JdEEpr0Hdtjo
X-Received: by 2002:a05:6a21:6d9e:b0:283:8139:b613 with SMTP id adf61e73a8af0-2926d9da17emr4653049637.35.1758288897379;
        Fri, 19 Sep 2025 06:34:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO2w6MVcEvV+deoS3kv/zg7PSgK+W96l5OJ7rnwVpM9/jXjSZoCX9M+C/TvZkhd7xzo1aF5w==
X-Received: by 2002:a05:6a21:6d9e:b0:283:8139:b613 with SMTP id adf61e73a8af0-2926d9da17emr4653017637.35.1758288896951;
        Fri, 19 Sep 2025 06:34:56 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b55219e34d5sm1558940a12.7.2025.09.19.06.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 06:34:56 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: will@kernel.org, robin.murphy@arm.com, joro@8bytes.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm-smmu: Document Glymur SMMU
Date: Fri, 19 Sep 2025 19:04:39 +0530
Message-Id: <20250919133439.965595-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 12Qk1CCZQ2k_Hs_4taUy4_up3ti4iQfJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX6ZIW3IRmWA9e
 m5ADu0KzN1VPFyEdpn1oMhHRn72fi/nLKOuBJt3/CBWx0K99lp/zRSvc+HVUZis6M3LF+xaLeFi
 1LY673oIyt6eHfs3F5bt32lemz3gOWkJH5oVkAb9nQwOuKrYaZfi/0tmP9tviOI57yZvWxRFsOV
 /zsSRARSRC0F8osH1FHoC99+7LqvzsfVU6aLnUIluN4vDuWKfi1vS+9lvarPCmGag0WyEJblb+o
 9QulIK3bl0xK/VE79EhpQrbmRE4W1eMdGpnk/FAmALfNWCwGh6pRs7Lmc9WxBALu76nz8lIrqQB
 Y8plf/FRIb0Ad6/H6/lhcFA9Pj7EQdF1V+Qh8ShS6p2vbUy3R9lNPdLbsrI9a9lv1OzBz0OQDgi
 Kr0FJBOm
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cd5c03 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8Rycb7W9lGZI8AMxJXgA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 12Qk1CCZQ2k_Hs_4taUy4_up3ti4iQfJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110

Document the compatible for Qualcomm Glymur APPS smmu

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 89495f094d52..6543fe68a819 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -35,6 +35,7 @@ properties:
       - description: Qcom SoCs implementing "qcom,smmu-500" and "arm,mmu-500"
         items:
           - enum:
+              - qcom,glymur-smmu-500
               - qcom,milos-smmu-500
               - qcom,qcm2290-smmu-500
               - qcom,qcs615-smmu-500
-- 
2.34.1


