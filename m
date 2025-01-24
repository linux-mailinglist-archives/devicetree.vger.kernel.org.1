Return-Path: <devicetree+bounces-140734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2019A1B34E
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C16E0188E25E
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC2D821ADAC;
	Fri, 24 Jan 2025 10:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FVlqwrG8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7469021ADA2
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 10:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737713456; cv=none; b=KaBmv0W1y7ePHpOvIt4iHTv6IjIszKdt8ebtrnLpu96vkNcE59rXgQJasRnR5+cB8h17IAXjLo926lh+MVshGnSuLCImPAa1WAI1yRCXchxMyauIwVPzlFe4y0i2NpPYAeNHiBpF8+mbe8L+FtoiYCp4t0y2HpBVydMFYX9mdjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737713456; c=relaxed/simple;
	bh=Fk5tEvSGj966u5MNAJ6KeljaVlxKuCrisn/aqCxdhBw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GY5AluznhOH+J274c3DtGxV7ppGwEU7EaVD83ttEYT3cdjU1zcDsgDB80iUdvybpZd0dQ/ee71d9Tz+U6O3RCbi4UnioKsuxuL+m/HGDUeuO0XugDF3bGzkORBBAZAh2G9vYFaYJFID38BqypodPetdEPmcwbCYvsm2ZWoTLt9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FVlqwrG8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50O6AiTN005663
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 10:10:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uBFsWeSYOmq
	gaCuFxuf/xhhEESZ518ip0a8YRr+64yE=; b=FVlqwrG8kWkeOwjHm9xKD+PcQG9
	fw4csyL8n+BKPWeO3L9hkJxkGu1Id58THTwtWf7wt9eZvvRiDQt7Suq/HumcQXOE
	ULoVPw7DXNnxI7kT6jyb0IniKSdh3qp9NZvpu1ER/dM5uxYIqXjCqD1koLulzQIm
	gHLv+Fde3fjDbB1yHgTpqjCFrzMICjavnPUwCdIMdvTaZPNMeOcQ9ChVIJ3oZDbR
	CYxRfirfpo8I8YMKEntEXOYmgyn2ndtHboJetU0QgkdAcxW73NlxaAYjwcIKxzdN
	v7SRa0kcHeLTgZQaIg49ciozSc7OgGIBxzjm6hXhUkxfk26aEy9LfznZexg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44c5c50kd0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 10:10:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2163c2f32fdso62143085ad.2
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 02:10:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737713454; x=1738318254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uBFsWeSYOmqgaCuFxuf/xhhEESZ518ip0a8YRr+64yE=;
        b=KFuaWvR6QiQ0MKSJYDVpNAfS+j/K5ibIoBMukFW/jJozp1nY0ZQj6Cn/qErKFYHN8u
         ftDXKC32buRZUaNz2tMBahPtb3LK06wLmiIp30lBmYfAp/mKr9JTp/LfQk3wHWVPGNdR
         JXydaZyhKNbu8jJlkwc+5kGGmGPuFhg7T/eRjdf1cjL/Fgjs4oY033k+UfqBi/Xxwagp
         FpOk2m5wRrc+kw9gMWunTFlkjmAA4Furi2kcu2lyiWRlKOHxPZ0ua8u81ge/vsG9JHsN
         hHKgyqavrjN14vqOwqEJfMi4cCAEpisi0Mz4kDwpMoNFugwmOwwShSLF4wTRvkgvL1nu
         g42A==
X-Forwarded-Encrypted: i=1; AJvYcCUh214SVIAjSk75BDTITws2/19XWLT+pjY+CWQwrRqJtbWXaKEIU4Sy6bXaa7Vb8Q+rzv5IsyvBjS8h@vger.kernel.org
X-Gm-Message-State: AOJu0YyHcjGQar/CRJu0eDi0MY8P95OFTRefDmCvfhUOexEPCmtFUVYm
	3oxEY1QC2cWI7hiso2MAiizNNOvfxVCgb6rTnIjhsIBpHxXSgTv1D4cZu3ou8l29Nj5jsRRmr95
	ZWBNs2Ghwvf1+53A+fTIV+pu7SaWVaiI+d4ZuNRQb1aL12RyYkiTX9YV7bui1
X-Gm-Gg: ASbGncsED/qW45p0tWntOdke3FtHRhaTrbFsuj2jEA6psF3E5mYcU6dz4urYX6KEPa4
	b02O7z3k5ytu35j/dahocaheQoQ2htPpah7+5eIDC4nvkypuk6TWmyiGoeTWXJUWGgnASyWHk72
	TbF68NCKb6hY8NBw4pAW2JBCBxLcWursSBRoBYvAc3IhlD0B2WB+uADP8bxmwmrbc2ULgq6B94Y
	p0tC/lQyNn9DYoNy1giFQpjGkZ4mVOyZuMHnBe+VZNp5UTQOOFEM/NXlaF0B/AfFM8gbqxDSz/b
	xmD14LBWFC6otkSveGkkkxx+OuiOoA==
X-Received: by 2002:a17:902:da82:b0:215:f1c2:fcc4 with SMTP id d9443c01a7336-21c3560f672mr436882955ad.41.1737713453678;
        Fri, 24 Jan 2025 02:10:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/nEpZtyW54k6KlPky+UJchioawmSuyEs/SdUstEm5FKB1Ac0u4oF2S05Nb02C99nATcAMAQ==
X-Received: by 2002:a17:902:da82:b0:215:f1c2:fcc4 with SMTP id d9443c01a7336-21c3560f672mr436882485ad.41.1737713453326;
        Fri, 24 Jan 2025 02:10:53 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141dacsm12773825ad.133.2025.01.24.02.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 02:10:53 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, krzk@kernel.org, helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, quic_vbadigan@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH V2 1/2] schemas: pci: bridge: Document PCI L0s & L1 entry delay
Date: Fri, 24 Jan 2025 15:40:37 +0530
Message-Id: <20250124101038.3871768-2-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250124101038.3871768-1-krishna.chundru@oss.qualcomm.com>
References: <20250124101038.3871768-1-krishna.chundru@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2vThLMwKhpFSb5zWjl-TWViZ8QsPhV0j
X-Proofpoint-ORIG-GUID: 2vThLMwKhpFSb5zWjl-TWViZ8QsPhV0j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-24_04,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=999
 malwarescore=0 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 mlxscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501240073

Some controllers and endpoints provide provision to program the entry
delays of L0s & L1 which will allow the link to enter L0s & L1 more
aggressively to save power.

These values needs to be programmed before link training.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 dtschema/schemas/pci/pci-bus-common.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/dtschema/schemas/pci/pci-bus-common.yaml b/dtschema/schemas/pci/pci-bus-common.yaml
index 94b648f..a9309af 100644
--- a/dtschema/schemas/pci/pci-bus-common.yaml
+++ b/dtschema/schemas/pci/pci-bus-common.yaml
@@ -150,6 +150,12 @@ properties:
     description: Disables ASPM L0s capability
     type: boolean
 
+  aspm-l0s-entry-delay-ns:
+    description: ASPM L0s entry delay
+
+  aspm-l1-entry-delay-ns:
+    description: ASPM L1 entry delay
+
   vpcie12v-supply:
     description: 12v regulator phandle for the slot
 
-- 
2.34.1


