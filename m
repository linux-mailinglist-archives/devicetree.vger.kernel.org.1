Return-Path: <devicetree+bounces-179396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DC0AC01C0
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 03:35:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 024BBA24827
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 01:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAED578F44;
	Thu, 22 May 2025 01:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YmSZrNha"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F211758B
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747877715; cv=none; b=UjayhXOlwgD3XOIuR/vB82u/6XqsvjSdzhmkhQAgi8Q3UNH5bhX7U6T5Q0be9IYUMzfg0FVwz8C9JEW6u2QfsIs04cLvZQwz0xxtgfa+wo+DLaP3vJxTmqLQW4mTVhLQKvHK5KrRfy3O/cBR4plgfUV87fyU7zzWxX7U3ELYJ3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747877715; c=relaxed/simple;
	bh=SZhkIa3nHiSD2OwCgjn51cgXa6dp4u51++oRoR24ruA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Iy7tf2zej8bRK2AmRTA8wcUAMOzMcJmB69F4yRzU95RjOmQTunKMK7FCH7MuvDTsZbEQe2RAlZOdjCd7P5UkEKZRX6qR3Ijlxdsqcf/V9j3bbP5yjFD0CDQkVH7A1UdTPpLBswP5fG7rI8ewBE7PnQ5VCM/8fYf872ScYArVhAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YmSZrNha; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LJfjTx023439
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3zGBRTqAmBn
	vpxhEF2Dmcbo1fNVeSsL+RLE2tNu0FwQ=; b=YmSZrNhaKyrp5isvd/iCkUDyO4v
	b+LNo7foICPxlskIxA1UFovhLjB7ajYOcJ7Tts6YHkhiaOHNNqmfVl/tnM93/Coh
	aeBDS0w6wQjP++GbA4c2zOSxk4tx1WlalQ3Vd4wWw7nXiWC3EoinuKg6UZih0MLu
	TEn/2MTRON4rIg22kvZo/F4YBvYAF0iT0S8itmY05Re23XOLOvhZGk6lk0QBodRY
	n7BR6wLN4OrTgEU/CxUgVntbFWDl1bsL0LcA0vEgRNFGdWqNrGdmUFvcMjA+62HM
	CP9nXe+E9iQFcRNNvRwCMMNuVX+o452YZxKwIpzNd20/WPhAD7/DczHARyQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf6vm8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22e3b03cd64so58116065ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 18:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747877712; x=1748482512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3zGBRTqAmBnvpxhEF2Dmcbo1fNVeSsL+RLE2tNu0FwQ=;
        b=H6aElYq9BSTB47FWPa/b0LoBbHv/GghdnZV6YagW+wTX8pIDkV+AcErEky6jvhRLBn
         yOM0ZDMbetvm0YS1IrB7bkPBj7fXr9uF5KQe7Rga6BAW6d6ty0g9uGzwFdT3bqDFdTSu
         e5wlfmY+wG6qhNg26jqxDWMlkaYRZAeU+df4p3cLL62OCEWBSJmzfecciNv3n0ezaUml
         ARFLjjC8US6b54M7eZdAX4S5Ku8B32mD/aRvgwQXMYHEJ/ReitJVDOmxPCf0ME0/4Ixg
         THlFrRZeMf73Cl1Dhcf9LAaPJISNsk23SZIGwdJACAQU5Dwqw+jETF3FkdycrR0RJ/QU
         AiZA==
X-Forwarded-Encrypted: i=1; AJvYcCUET7/gfFBMQdAg2PucPdk4eS8hRHl3rR06bXRBcjpKSsx1rtH4x90sr+iP81qQwT9TaXvsA10HNTXx@vger.kernel.org
X-Gm-Message-State: AOJu0YzeAcGf1uGp3eDTfSqvt4/bezVL8lX7sxuxRUcOWkpVK/kImIlk
	43s+HcS6Tg28Is3L/StkblUYGWlFbj8Od53kmxJiRjBpl7Z6u12OSgIP9HXoFznoJd7JuK2E3xd
	JJ2mKDFU/CTI1PG11n6dOlebSYTkIQLnxbtcxDMmpt+/W8tyJwJFj1frlPGR4ipxd
X-Gm-Gg: ASbGncsGDyNQxR+NKM1OPYKAD4ojZ7ebRotLLKxS79Dazh19fDqT4YxQ+bTBjPWjl9T
	FYX+jKpNE5+rNpejH26zytoll++vi3AATYcfYdKSqL/jJCjh0IqCTfjqJAp9vuzivQgBHT+nlCW
	ESODKJngkr1soYJ2g+DyNTWmKIGrkuPhN0Sl/QNs9mvomxjOOdQo+qBcEPj1zKCYSHjT3qZpM4A
	RnP0GFhJzVbjVmTevnG30jC5zKEPMrgN2qVlXEo8+yTACcgk/C+90lGa6oLeBn9pY1h2W7jGwaI
	mSCw4ff22Q8+gwVauR0IiFoXjq35pQmc0vc4/kffUe3nWS4SLiuRGKev31wVBXSUZA33ToA=
X-Received: by 2002:a17:903:2f10:b0:233:ae8c:9a0a with SMTP id d9443c01a7336-233ae8c9a2emr77802635ad.30.1747877711664;
        Wed, 21 May 2025 18:35:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoxobwttIqNxEUDAXBpCLS6Mo7zWZ1W1Sk/YXCKQXES926y90bJCRSSYZBb9X03RqZdoqx6g==
X-Received: by 2002:a17:903:2f10:b0:233:ae8c:9a0a with SMTP id d9443c01a7336-233ae8c9a2emr77802255ad.30.1747877711212;
        Wed, 21 May 2025 18:35:11 -0700 (PDT)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f365d45b2sm4341488a91.26.2025.05.21.18.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 18:35:10 -0700 (PDT)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH ath-next 1/2] dt-bindings: net: wireless: ath11k-pci: describe firmware-name property
Date: Thu, 22 May 2025 09:34:43 +0800
Message-Id: <20250522013444.1301330-2-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250522013444.1301330-1-miaoqing.pan@oss.qualcomm.com>
References: <20250522013444.1301330-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LNdpPoymewpOAVW1ozHLKC19dXGtegxL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDAxMyBTYWx0ZWRfX4fkvd/KX5/ML
 3g7YsaUA6YB/A1yHtiIWZPkcsnq5SO/IyvDJ+1glJs1xl1j4uP7DJh4bT0bst9NI9ooxMCsJUco
 vVeY2PM2MzIYITCq+Ac7wKYTuFsJw56IYIrznJ7Fk0coJ48UqXGV9HX2K2+81e1Uwf1lFFwuPVv
 bKleY1JkgZve3MN76MWy+S7i0lPr2KzZEE26oxQ2XO+drA9BQX/whz32YYMwFbdqLhAMHWxJdCo
 4GzSpcvg6LfKKZxwRA69LS2jDUjJ7o3qOBhiQ0XgX06Wx6ed2VRP0cNrEmWUaN0CsfCJFII/sGy
 EO3iMlaidQr31SLh+cGk7YD1QqpgmylRCCBJutoGXFymK7uBeO3C/7hGoemBLNWJhbRbKBhm80L
 8n4abntjEGLeW3heB2EG2Lv8Ltk2Em/Z2bXSNSq+yB8QvNH2WVNlRdDyePY0I7BSJEtepBzC
X-Authority-Analysis: v=2.4 cv=fZOty1QF c=1 sm=1 tr=0 ts=682e7f50 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=Hda1I3ypr0uxOpTqMjQA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: LNdpPoymewpOAVW1ozHLKC19dXGtegxL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_01,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxscore=0 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220013

Introduce 'firmware-name' property to allow end-users and/or integrators
to decide which usecase-specific firmware to run on the WCN6855. This is
necessary due to resource limitations such as memory capacity and
CPU capability, or performance and power optimization for different
application scenarios.

Two firmwares are supported: 'WCN6855/hw2.0' and 'WCN6855/hw2.0/nfa765'.
The former is the default firmware, suitable for most WiFi 6 STA
functions. The latter adds support for commercial-quality SAP and
optimizes power consumption for IoT applications.

Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index 653b319fee88..e34d42a30192 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -35,6 +35,12 @@ properties:
       string to uniquely identify variant of the calibration data for designs
       with colliding bus and device ids
 
+  firmware-name:
+    maxItems: 1
+    description:
+      If present, a board or platform specific string used to lookup
+      usecase-specific firmware files for the device.
+
   vddrfacmn-supply:
     description: VDD_RFA_CMN supply regulator handle
 
-- 
2.34.1


