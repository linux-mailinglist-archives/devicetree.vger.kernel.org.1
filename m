Return-Path: <devicetree+bounces-221053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 755A9B9CF1D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:54:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81F021BC406E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B2382DCF6F;
	Thu, 25 Sep 2025 00:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jG0gFhdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F252DAFBB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761563; cv=none; b=pc8XKEm8qSYw7Dwo0sgPz/3aoc1y2fpy5xhOZwAv4Tm4olc2MeTdpyPIukni1SKnUAS4BVcXyw7I3kc0WmxiyJIIIbj/8TrACSVhE0gTUyEx0F/KaibTu1s4rMCJtVyz2Ht1gqPECImMKThnp+M43zOmJPp8r5PCT7YXYHzVUgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761563; c=relaxed/simple;
	bh=hda2Xd4Mz5OnSn10548Jx0ge0zF0dKZ+ZJ+uSDZXASE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QT67K/+OorDvKODipLp2y36X+DjpQgDCyhb5PE4zaciGcz8Fs/o0uxJd3SLnI2FQjT/WZ8MBwUNjfy5zmTC6vkK2bGZOKvE9Emk8CmPZKMUJcqN/cMwNyweno0kFOOWXsJJS0/I6Vok++oTVsPNEEjLBARr/2w6xSARJCaxJQ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jG0gFhdT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0R19E023773
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=jG0gFhdT1ZR4yFW1qAdyqzM5cwE
	23kn9L+vW4x5gSgFe4Y7tl1FAvNV2bIZFbJ9qDbY4VSLxRhdeVzCMTrscGjVqWGH
	d68AcVYKAFRltB4xOeSokbcpZ9mduO4i0PDQLFfDcl1ooXjQrN2edb7uuLnhtStP
	zFLeOY6g0GLT5NH0CgjaUOXXTCjUzIkzDFOUczUcE2lXkRfj8a1ys0S6qRimOQEY
	sfn9lQUEjuTqSxIAqbf6mu1BMSj1Jz8wH8GbMqyrb1tkqnHA8P2GF0DtS0cWhiBY
	HEpCx1stZyN7QZEKULDZaDVW9ztT7APV2tq0/W9DTpP1/mf3fIuJm79M09w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d81s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:40 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-268141f759aso3419355ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761559; x=1759366359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=XB8s1Vh5mAuznJctOmyahkUizbXJiPE8491yoar0qbhLvxzhmIGe05kizcr5QwK8Hi
         wM2AYq5hACtAbAAxGMFDSZsD3PFSbDSFC8cauxWenTjK19YWPSpEMZxsBk8NdqQGo9a5
         YqrKmMyhuYcwS330+IJjSZXz+Ro2404BXCUu1tNgiWHY2QW2QI7mu9K7GHHGCu3Xl7Fq
         r4fa+DcynL02xPkZqpnqwadyACy+4x1JuATvgRgO/KLLXG1ptwsqCJLngYXfGy9Y/VAP
         CgS82oKcq5TwIG7KCnkc8EuNx53U+1bUAehxLrA8zP5Qr2juvIOD2D9rUJRGi5T+SWko
         9hCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW75u6HTdTRf3hSNMwIp3PdpDINHTOyeimPOANw1TN2PZgcxd/wJ55SCdwYL9isAdv5xqNVDVIJBhgQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyMrfXgTGGMWoqdmr8EUKCYnrcSFJUluxx+fbF8R+SJdZzVMfhv
	/v8MJSVO/T1JZiJj5fwURFSVqktwd5gHe+mzr/cTl8Yq8s55ZIjpI2c9voh8L9i02dx/Op5GKbF
	F7eoa5pbqoj/IXGGWV1JMPKqRgLaOyHswrIxQICBxe2U2MtPVCAVgVtur8M8SQ6TDxzNNFMBW
X-Gm-Gg: ASbGnctl5QlfFIHPAxARPNquiRqN904Qrb/NVj18PWNHig1Q5EC93aW5AdvHzjmbivp
	zpTfzQqFdyHiUvFZuWX9fmPn17h9hf9uGoscLcFAx/pUcHOXB67jhjyykk+8vg5UWPGeNsbADDS
	qvqdE4nDScDYnbQKf0tT38KOexiB/voKsONvhku6OPsFWk43ff5dxrn1rWlQgMz54QSmrrMtyuk
	W/8GHkCcTU4qwdbeLIeQfMIdD3SSY+wi2J8vOTpYnWUxboByVxCSqjTmU6wvyBygOeFxqao9lAG
	kPVER/Ri7E3r695TDSxNmEn6QhMfm5n8SeKdEyknZVCQ96UBKS46YLZOh2k61uRPheQvnRIo/nV
	CKhYIJvgKHwWkv/BY
X-Received: by 2002:a17:903:234f:b0:276:76e1:2e87 with SMTP id d9443c01a7336-27ed4a4979amr14745675ad.44.1758761559478;
        Wed, 24 Sep 2025 17:52:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0jZvBnlaKAnoEHEDtefVGK6gSjoyOxioVO1pqTLEeDQPqNMOS8vsAsk+dAfSSAhP0dvVSfg==
X-Received: by 2002:a17:903:234f:b0:276:76e1:2e87 with SMTP id d9443c01a7336-27ed4a4979amr14745545ad.44.1758761559093;
        Wed, 24 Sep 2025 17:52:39 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:38 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Wed, 24 Sep 2025 17:52:23 -0700
Message-Id: <20250925005228.4035927-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d49258 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: Tw_JFmJ9zTsn3XhKLBnU3MYusQnKzNwg
X-Proofpoint-ORIG-GUID: Tw_JFmJ9zTsn3XhKLBnU3MYusQnKzNwg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfXwU4OwLBABBms
 eOHC4Gcm8vGsVH3Jc/SoU9PqyXqpBZDr7kO294VdpOsQito/gW8w6hUylkbZe7xzq6Y7RwSYhYH
 GRXY9jOfRTUNn87tnQ/S9xwM+mS81XLbn03lwMpM6dXqrkV+jRsw/0AQ/nbmnsaPqMuZAej7288
 k9UuSH8gK79GhSEAe7kMLAtCIzU5kSOUvyQsTqw8KoxP/b93vD9x+Vs1Ra/AVQv5eIoosm59Aeo
 l5N8plyO6UY5g6AcOr3nTxVtwE8jxCfvJubMiuCCQzcn0cqc1k2shUBvXhvx16vTnshSWx6D0ev
 I4hS+cFdRvRKkCOgyw7Toxy6P1rqrIyC4gKqiz5lEyUDA2gjXXDgVnP0fkd5qLQvReAoYzTzQQM
 r9UdkXVW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

Add the compatible string for identifying a SMB2370 USB repeater device.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

