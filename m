Return-Path: <devicetree+bounces-236661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B11C46433
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:30:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD5FC3A1606
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46070309EE0;
	Mon, 10 Nov 2025 11:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ixtN1FZQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q5ucjBIy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA99307AE8
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762774198; cv=none; b=FipLFgtCpsSa1d5Vp5z30goffx8d2emC8GQ/tBAyQE2anb09sVMAeptxXeGZP2i49a36j1S5qCE1Z0Z/qTyV6hTmsiHq4hHVCVf+vEa9Y71EoHxYgtNIC4gOFTXzb1IUq/9YmsrgoT3mcWG4t/GrcSDKrKRWUOA3lffY3DtO/pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762774198; c=relaxed/simple;
	bh=8xKXl25wfM0C8tmYM1yA2iBxK4BxYLRIBEfMfi+Dy30=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HRPErFUXBjKns4zR8f0cvcEMUFzDSPGndHE/8l6AIhwNLSIglje2fJOBJ3sPQyv5uTkTXUHMbQk1R1leiBwBpnxyLOLIzeKDMsHwVvm4sEYdZcooIDyaqDkOi/PrMJA5FqzRlkYJDIiBiB2bI2PUHjPnAZtPWWL+uL6KTU0gLKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ixtN1FZQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q5ucjBIy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8UKj51809202
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RK0d/o3bcwg5PXWQDXV02fF9ZPl8toqvLuR
	sMtlyQo4=; b=ixtN1FZQAJHMPwAc01uqs4wXs0H2NPrIvY8jgwBT1IC/MI42zrS
	EySPF4VfV6VvnuppZoDvn8SYj/CLHOQEHdGikP3LILH2YVd+iGwH5jBdi1LNbJa4
	R8qSDGVn2gJGEXIZvHmXl7YEjOhi91C/kLbR07mbURjADZ4oHZE6GJJgGBlb5RAP
	40nEj/HtdFo5eAHLMACGAd2m57BZAX4wL84mOMRWSSPq68NRFJBL0RjC4SM01kAp
	a03rlmhiFwDjjuYesreFBdKMKEmRHIhivLkW7roFtS5Ia2SaDevJbmvjrK+FQwG7
	HPKm/dbu023TDPNthfwZJCeFADyt8Hr0Cdg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ab5m1hp5d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:55 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29555415c09so37223205ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762774195; x=1763378995; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RK0d/o3bcwg5PXWQDXV02fF9ZPl8toqvLuRsMtlyQo4=;
        b=Q5ucjBIyfj9KTXNZDDKgUS3eYU6eQSG9pRJLHfqr+24K4TgsUXxPbxsXa/xst69zcA
         AuI7QSFOYYpuDixTtA+RCNsCy3U/Cr7M6jl1nIrsSpW2k0btNnS18TsFv2WP99aR4hxV
         uReC/7v5hmRvsFuNulkWbJmQgEuNUsdTJEaejZGqbS4ERe2GpF4IOVBFeWmi30rjk0rV
         q9JCAl9zYsDQmISLn2JatCkjizpvaDMx1OfAwYyIiwA7bPeWifGldOpBQTGkCwOrm0dq
         DmDQQHcj4gRrZ5HmxqNXBpDxPEOdFVhsTfaN0w02T+lBf03Rnyt+n20mCy/UrzH2QaqZ
         iYtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762774195; x=1763378995;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RK0d/o3bcwg5PXWQDXV02fF9ZPl8toqvLuRsMtlyQo4=;
        b=AnVc55kC5k7pP2Ved3m2Pl8e7IT3W2FENdO1c3KeQpWf9pmAgeVegH2z2h17imiysd
         y7pWfwSYa4zCvozaVhC3yFb1I8G/32sOmj0mR4BuuBbd8eUKCrru4EsP1h5CJFjQe8St
         xeOJ3SJ7xIav/ciGzuWizmo2vxd8luuSO6QmQETAXYmkMKlcMqpgsADRLlxiisLXKG7T
         W50Tkp5cw/bJgfqnA8ZWS6oTa0MrFuUEI/T/Et/mV4+4NGnGFlPiymDxmShhDfdlb7Wb
         rS/ZRYPVR+prLKq3tkZqt3FluKSuzn6v8haD2vqWMpt+8MqsprL6Pxoo/hM+7ghZRNCY
         AOKw==
X-Forwarded-Encrypted: i=1; AJvYcCXJFN4XTeX6adVu+yieDWEU6eN9JuDKRoYQ++5Me8kZVB24icJKynpgg8LZD1Jrfn9CXYSnW+MfUlA0@vger.kernel.org
X-Gm-Message-State: AOJu0YyrxtMyK9g0TKfv4/PyXE0v25AZjqWK6TysBjdvbiivCZfvcy3H
	JQUx1FiFEsqSfH8MgG55DujzzObA1r20d2uPzfmPx4HmQJa6NZY6jIfcSCy+3pup7ixyIy3MD/X
	BGm31ZNc52S4MIAcIUpRN3K6fPy4TLuHHfkwjk96WDUo74Zp+Juofg+YZFxoYIc5H
X-Gm-Gg: ASbGncsbyzE2kgZc/iSOBH3eqZNHHWE4NAKYSjYOIwndBLyK8ebVIsTb701FtdAXeDD
	XsLFfMzOHRpRuFijdfpHPY7bq6uHB/AVM6dLJZ08SUHb/tVaSCl+fPzBAJr+knIbGpZ7hxMlqrZ
	poSQlTcXnmYk+t2JSljDgtL2LPGYd5+ub347KbQ45RLuSpM9tpE8NT2Kz0qnlIzwLHvx+URjPdz
	+L6F/0FzakVFaUi2TpHBy41lGfg2ThQq+ChPAWUJUDo6vzfjoXpC5ibrDAUyZMWuYjLCKMmj+2g
	orUpE3D78sSag7qikVFZju5maBmU3R2l4phT4cFTslYVd4eJ7XfgduiAtNpgnf+PmzHbXOewo1x
	uZsangUefiFmZgaGyirPA3iESV/YYX6Pa/w==
X-Received: by 2002:a17:903:3d0f:b0:297:e575:cc5d with SMTP id d9443c01a7336-297e575cd10mr97124395ad.35.1762774195069;
        Mon, 10 Nov 2025 03:29:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMG6ovmdfjX+JC8Me1fTeukl5fm1TgWV8TPUNLWMYD42ZI2p8Y10hF6Q+EdEn8pCXJX3XaOw==
X-Received: by 2002:a17:903:3d0f:b0:297:e575:cc5d with SMTP id d9443c01a7336-297e575cd10mr97124085ad.35.1762774194529;
        Mon, 10 Nov 2025 03:29:54 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651cd0ee9sm144165495ad.112.2025.11.10.03.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 03:29:54 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, manivannan.sadhasivam@linaro.org,
        krzk@kernel.org, helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, quic_vbadigan@quicinc.com,
        krishna.chundru@oss.qualcomm.com
Subject: [PATCH v2] schemas: pci: Document PCIe T_POWER_ON
Date: Mon, 10 Nov 2025 16:59:47 +0530
Message-Id: <20251110112947.2071036-1-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEwMCBTYWx0ZWRfXxH0GV14pQtZa
 JKtCXhUKzh6z2dmYQJ/ufJYHYCocCyfQxzigHMnbxBeYTG62vcIiy9rW6LYp2QeTJ50jFG54hyE
 UXAa8KR/J8X3/B/d/gUbefvAeSAYrAtYFkSFkJpnZrTl5r8PkpWs812t/LZ9rxehRe2ToRtbvK9
 aTO1Q6B+DtfDs6dg1ewqifsyE2lKKpPn5O4hrP+79ViUD4DUa+iB/K0XqPRjezeT8aIHl2KTJS9
 syfYCmXo0m7qPuK6xIp1Xdqd10uonPJxMEz3zz80WagYvvAqKqbWTnkqqqfmuaJIEq3qUEWqU0m
 nukLdJV4ryFUoctvfUxFsG05XUJ6dKl29VmUVTResWraZrfExAOBVJo+PXx6Q7PXY5ytxJ2srPD
 m9CQ1C+gjUet9sc3n0SKN06kvj8rWQ==
X-Authority-Analysis: v=2.4 cv=TsXrRTXh c=1 sm=1 tr=0 ts=6911ccb3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=5_BQsOELN8wEIR4Ca7QA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: YA5Wj_U6Bq41ncFd2SKNnn0rbBHgGA6-
X-Proofpoint-GUID: YA5Wj_U6Bq41ncFd2SKNnn0rbBHgGA6-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100100

From PCIe r6, sec 5.5.4 & Table 5-11 in sec 5.5.5 T_POWER_ON is the
minimum amount of time(in us) that each component must wait in L1.2.Exit
after sampling CLKREQ# asserted before actively driving the interface to
ensure no device is ever actively driving into an unpowered component and
these values are based on the components and AC coupling capacitors used
in the connection linking the two components.

This property should be used to indicate the T_POWER_ON for each Root Port.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v1:
- Updated the commiit text (Mani).
- Link to v1: https://lore.kernel.org/all/20251110112550.2070659-1-krishna.chundru@oss.qualcomm.com/#t

 dtschema/schemas/pci/pci-bus-common.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/dtschema/schemas/pci/pci-bus-common.yaml b/dtschema/schemas/pci/pci-bus-common.yaml
index 5257339..bbe5510 100644
--- a/dtschema/schemas/pci/pci-bus-common.yaml
+++ b/dtschema/schemas/pci/pci-bus-common.yaml
@@ -152,6 +152,15 @@ properties:
       This property is invalid in host bridge nodes.
     maxItems: 1
 
+  t-power-on-us:
+    description:
+      The minimum amount of time that each component must wait in
+      L1.2.Exit after sampling CLKREQ# asserted before actively driving
+      the interface to ensure no device is ever actively driving into an
+      unpowered component. This value is based on the components and AC
+      coupling capacitors used in the connection linking the two
+      components(PCIe r6.0, sec 5.5.4).
+
   supports-clkreq:
     description:
       If present this property specifies that CLKREQ signal routing exists from
-- 
2.34.1


