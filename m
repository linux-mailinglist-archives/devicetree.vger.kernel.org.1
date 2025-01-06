Return-Path: <devicetree+bounces-135779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC501A021EB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 10:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD2B8160FE5
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 09:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C861D90A7;
	Mon,  6 Jan 2025 09:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IJpz3M34"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F391D89FD
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 09:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736156015; cv=none; b=T3pRnvQxyARjQG91dVDNsfM3mG4PLsRg8NkopXsP5Ipy7BcwZOkAAEG8jKyL2FFmCSwkrQd9OkUXzWinqI/cMzBSI2AQoxmYG2GXwbMu8T/ISNtGWa6x0TEOzThSFBWndfD9z5eYudTUPIfTBxf1AKezVF/BPhz7HGDKhLY3TpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736156015; c=relaxed/simple;
	bh=u6ITWZK6Pnui8R/rp+fW3eZGVRboaltac30M06+tTJY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YM93gRTyfH5IULZ4/q/dtO4+dfhSCGVLh41QgFmTnwFApFWbT6T5Mcc8XCnqu4V/5LZSU74hZsuuZikNTECrvFkp5SX7pCPAwJHJq/GEMmX1+2UQfBSlmMUSQ92RZp3lRowHrVHyJsVIXYK/9tAOpGCxIylTcbMUabmGjV9pcFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IJpz3M34; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5068gapq017242
	for <devicetree@vger.kernel.org>; Mon, 6 Jan 2025 09:33:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Ooc8CaBX+hRHDY5DeK/hHvsWjudmqQEAdI9
	cWCPXiSU=; b=IJpz3M34yCiwp5zx/LTp3uU6muWxlExxrA73fpDOmFtdnnfKxZH
	ujwFw4wA7tbbuN/HcU9KO/j0Bian2erDSOh7uHcqa/FexMvDzTcnfPWQmwVj1YQG
	egmpeGb2kwhuhUdt0t12tQzxh1CGJPOl4qwfhLK9DPq2wxyYaNTY5lVUCGmpP2h2
	DekO4nXZrtWXQWYkWzu+DDOa5IIgf/X8MPPQ+04D8UFbCiwGBcL0j+hpBiDWgMED
	FJYlGTluvt+/4Sa9LIfuZ4wN4WgGX8rvIoLE/C9OHlnmNZOdK5BnQZ6A/tSFdvGV
	ppcEFvhwCeci6TkfD7z1qDy4SE+nzI6paWQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 440bwc83nx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 09:33:33 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2163dc0f5dbso177142305ad.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 01:33:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736156012; x=1736760812;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ooc8CaBX+hRHDY5DeK/hHvsWjudmqQEAdI9cWCPXiSU=;
        b=sb+CQsQTOrklF7n01NgQqcxFlS3hFru7h94cZv1phRYyVUe/x5eSWWLQVDl2QcGcd2
         4sCJ062jex8Z0EFxx8AUx8IKvARDtd+eWJ7c93TJ1VxvsH8c+qL5GmCEj79wWotcCJhj
         NxL/ha4KNPXXwvaeGruqGXd8SM7OEG6bBaihFjW0T65WVOghpQTdVvhSiC+okEapVrmS
         y4rQF5WOUZE8P0Iz7VL4HH5Zw/kbIOwyIY8EVVOIGeg6xSWBmp8Yp4k6CbjMBdgKiEAR
         0sONcGPwYcpK3OpiR0FdNqcG6gqGlnlgcVoiHH7YyXBVLUwZW2q7sx8AEiW2Q0i2aFET
         Oz6g==
X-Forwarded-Encrypted: i=1; AJvYcCVmx/Z16kvsK/v654BZHiK4WZ1VU+FJSQZTA6o1sd4lI3W+qXS1WTQQDAguFApe66ue7k4okv3v/CaM@vger.kernel.org
X-Gm-Message-State: AOJu0YyOZnhJVk1qor+rusFq2kUffqjP1fW6nan7LF8XJYV+bqW0DHCu
	xKWFhQBxE5o7SwQKNwUSWDCD/KBZGtvVDetqGdzuxIOIbA2jdddc/CeSwdvFZ5yFrpWhM4x/RIc
	KaB/JTOs8iZ1k4G4SFb46Y3n/GYLPOcc0/amz+iQi3sCgPh2bj4SCId7O1X7S
X-Gm-Gg: ASbGnctDg2q1s48dJAOeGQWw2eFaHxqjdJCFeUFoB8gz8clR/SXovYf6jK8lIsXw0ba
	gZuXw8Ge/Ja9ka3fFcNVGkhrYexG30ytONOe0tvc+46y8Qt/jAbzqFuneQZyikRWS1MuWwnANOg
	75RK92W6qSg7N1lW1pbpEvg1DujE7FIpUVr29qhkl+001sCiTI0BjaJj10Z2aa6nl0jFYMB06ks
	5Uk/+KM486zA7Ch5S6z8Fv39lqX1UupAml/RyPUu2pIx3+vyK9en8aO23/6VSs1uz9NZ4l2wlX7
	h7iqer1ZTOmU40Qf
X-Received: by 2002:a17:902:f685:b0:219:e4b0:4286 with SMTP id d9443c01a7336-219e6ebcabdmr705471535ad.29.1736156012420;
        Mon, 06 Jan 2025 01:33:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgBkTe3UZfkvpcZzMY3x0JbZEG0gq0kNqGGbjEBJ5gyLmgAR+ikmyKbTEvWQACPEWxprKFPw==
X-Received: by 2002:a17:902:f685:b0:219:e4b0:4286 with SMTP id d9443c01a7336-219e6ebcabdmr705471305ad.29.1736156012068;
        Mon, 06 Jan 2025 01:33:32 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f625csm281079085ad.208.2025.01.06.01.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 01:33:31 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, krzk@kernel.org, helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, quic_vbadigan@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH V1] schemas: pci: bridge: Document PCI L0s & L1 entry delay and nfts
Date: Mon,  6 Jan 2025 15:03:04 +0530
Message-Id: <20250106093304.604829-1-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: G3ubrPNDW9bqr72BOhBI_NY2xOXooE9X
X-Proofpoint-ORIG-GUID: G3ubrPNDW9bqr72BOhBI_NY2xOXooE9X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 mlxscore=0
 spamscore=0 impostorscore=0 mlxlogscore=999 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501060084

Some controllers and endpoints provide provision to program the entry
delays of L0s & L1 which will allow the link to enter L0s & L1 more
aggressively to save power.

As per PCIe spec 6 sec 4.2.5.6, the number of Fast Training Sequence (FTS)
can be programmed by the controllers or endpoints that is used for bit and
Symbol lock when transitioning from L0s to L0 based upon the PCIe data rate
FTS value can vary. So define a array for each data rate for nfts.

These values needs to be programmed before link training.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
- This change was suggested in this patch: https://lore.kernel.org/all/20241211060000.3vn3iumouggjcbva@thinkpad/
---
 dtschema/schemas/pci/pci-bus-common.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/dtschema/schemas/pci/pci-bus-common.yaml b/dtschema/schemas/pci/pci-bus-common.yaml
index 94b648f..f0655ba 100644
--- a/dtschema/schemas/pci/pci-bus-common.yaml
+++ b/dtschema/schemas/pci/pci-bus-common.yaml
@@ -128,6 +128,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [ 1, 2, 4, 8, 16, 32 ]
 
+  nfts:
+    description:
+      Number of Fast Training Sequence (FTS) used during L0s to L0 exit for bit
+      and Symbol lock.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 5
+    items:
+      maximum: 255
+
   reset-gpios:
     description: GPIO controlled connection to PERST# signal
     maxItems: 1
@@ -150,6 +160,12 @@ properties:
     description: Disables ASPM L0s capability
     type: boolean
 
+  aspm-l0s-entry-delay-ns:
+    description: Aspm l0s entry delay.
+
+  aspm-l1-entry-delay-ns:
+    description: Aspm l1 entry delay.
+
   vpcie12v-supply:
     description: 12v regulator phandle for the slot
 
-- 
2.34.1


