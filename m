Return-Path: <devicetree+bounces-226909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F13BDCAB1
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 08:17:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88B5D3C7E25
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 06:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12146280025;
	Wed, 15 Oct 2025 06:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kdYpHCC8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF2123236D
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760509027; cv=none; b=rITx5b7L4YddxKZ5kCCADY1BiBKSJfyRuVJvita8nYkx1USbCXx+h2jpJGXSILmfTlHvigdGn3jdI/DNjDgOhBLBzfMsUTIah2s2c5ylL250AtT7wRtr4QKCApbohSVlMBuGUo8kk1n67bl4OohnUJ6rowBVkxvImUIx6g1acZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760509027; c=relaxed/simple;
	bh=8o2ilcr55Fg90dhJPraKKyivyb/o3FWk4iedWPgUcpY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YJhShyF9tI8lWPo6hQkUchoj6YSOqG+CdqcGOpmG7+/YovWLUEo85W+uzdPX0ApRymhMhcF3jg1Uu/cz7IQBDLdk7XOPzJ0q74wvlvR7nh1sk/+No49zjcBJsBAYcd/T9D0ggazZODgqEd61e6HqVzMSjwj0xBd1f7OlCXAoqlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kdYpHCC8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sNRj024947
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:17:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3aaVM+bk/LWG9/WNX++Lnv
	M79HuhHY2u/sY0DQEOZAY=; b=kdYpHCC80vFKpk4shYjLb/ai+gmfWL0GvdWT6o
	s2qQXlcklQpe4wX5WLWAzEjWNlpd9MzlSRce0yeM9JQK/YJxAzcR7UJHaazwijfb
	W4pJcOKWZ57t2mGRVYox5Ynl9kvvZyg5pLAmAz36FNyG/KzvzyvbLFOYH1BWC3bc
	xkZNOTKxFFqJE7On9L59U0gmwWOUJLCJtwT8iLPIkvjaj5cLDjlmjMYQ+mUlEFk0
	QhJSfBftFi7D897bRHrGhNTqbnV4ePlo4pzHt4yaWsX/P8nz4n92GHo5OKwxO6so
	cfkAc/YZJpk6yBUh504Nqf+NCgwLB7+95g+Al283bDuiYa4g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0u8xy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:17:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2908b2ecc19so2236715ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 23:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760509024; x=1761113824;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3aaVM+bk/LWG9/WNX++LnvM79HuhHY2u/sY0DQEOZAY=;
        b=Sm9rVS0oDHTLyA0r+reD31FRgvhzTNPYj7zxsS2VbWUXdZpddvJMIDJ0vCwvIrRXUl
         5oTOYNq9G+yJbGvBXg4o7KjoVr6wwpDTsXGNl/cdT2j3ccGN1kWoxvVKNsz0M7hofP5b
         wL0UhCpNcwOtxsljHxOFCYLUXTnJnIWRaG7Uz+kwiKE8DlveCmv8re3PYj96Yv3TpMo+
         PY5DlvJOixHr7clniTpJvqO2YP+JM+cPu/s/aZK2fZKyoKE35uHLaNeLoUpal3JfrjrR
         /OA/Y/2U52p2gYHa8dKDEJHY+FwiIZ6VRjSWDIYM5jgWZ9zYdAck+ddHJpfRI7JJd/BW
         T22Q==
X-Forwarded-Encrypted: i=1; AJvYcCVt+c0BkpDkQZt+NSkixQy+rsVlDJpHnyBk9zs0qgSa5vxzV5QYfyu3/RwrRjwJrd9WEjzm8swJx9k5@vger.kernel.org
X-Gm-Message-State: AOJu0YxXdh5a+dK1GiGTyz1+ykP/uFl/jEMvQaSRbbSOi2I8QV+0U1oL
	ZL3bdVyymocUI1lMY8kqS0UVVpAS8Of0l+asvqZK4n6Ta2HdSokxIFqgEK7JE6+vEbZlKPL5l3P
	rH0Ip7GYQqnBt0sRwqAzhyQSubjaOUTwcG6lgFFqqgbLljjSmPvqUJPJrDH/4RmYj
X-Gm-Gg: ASbGncv1ZYj+lZvfZbz1SnTVq6rKCuu9bDS7AxT+3p1RbV7SXH8BZARk2gYdjVyWRkB
	ryLVUek6RAElVMBBlrVLcKT5E7VLct2AEN1tLLDHH8QZk3GxtKkF/cNv09R9a9b839SeVal9ZGO
	dzIcGSbh2UfS80WKE6xhNMy4XDdtLxrTQldUdFmsoiCBeQbjx3MWxL2Hbl20mRdnlQ8oP3+FHOs
	Nx5h05ECjOreaCSeyXlQ/MhM99Zw/70CUaiRZ3X3DAVo3KZZLopZo32dUVp5lGeUXattXhC/cWZ
	zwdWK7NMAkHeYq+91exubtARUch8zs3K+DJc73hXznCFQxYsZFTN/uY/Z09zVSrg1Cfb4yXUSKb
	Lyec8BzKFZT+T5lXF0x0F+x9EloZvTMxC1bdnSvmLEPVsAH5LRgyCoEUHT09lKTaX4S0JX4TLUP
	s=
X-Received: by 2002:a17:902:ebc5:b0:24c:d322:d587 with SMTP id d9443c01a7336-2902739ad8cmr393579905ad.26.1760509023641;
        Tue, 14 Oct 2025 23:17:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhDcrB3xuKE0zzJAh7RmWViAUMrq8EO27WhzhgDZ7ywcjhYtelAQhCDDoRQPJQseFA9I0umA==
X-Received: by 2002:a17:902:ebc5:b0:24c:d322:d587 with SMTP id d9443c01a7336-2902739ad8cmr393579625ad.26.1760509023178;
        Tue, 14 Oct 2025 23:17:03 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2904f61a1desm125785985ad.82.2025.10.14.23.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 23:17:02 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 11:46:58 +0530
Subject: [PATCH] dt-bindings: sram: qcom,imem: drop the IPQ5424 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-ipq5424-imem-v1-1-ee1c1476c1b6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFk872gC/3WMQQ6CMBBFr0JmbUmnUAFX3sOwIO0gk1gKrTYaw
 t2t7N385P3kvQ0iBaYIl2KDQIkj+zkDngow0zDfSbDNDEoqLTtsBC+rrlUt2JETlZat0oO1FSF
 kZQk08vvI3frME8enD5+jnvD3/gklFCjOzYhaGtnaqrv6GMv1NTyMd67MA/2+71/7GbgarwAAA
 A==
X-Change-ID: 20250917-ipq5424-imem-350825add3e1
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760509020; l=1492;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=8o2ilcr55Fg90dhJPraKKyivyb/o3FWk4iedWPgUcpY=;
 b=FAmgSZB/x157W3MAG2SKsRFZVJFvQFVhYaXakEZ7YvXSuhrq0orH9yVIrnj/8MpP7UWpxtKgF
 m4DBpwl5NO+BYPOSPtDA8sRnQhJbfAjMq1ktZ9ROPRmq9MRU7aFNkfv
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX9qj+b+DSUeIF
 LUXAxmxpEDSqrUxzPKw9+owdNEcte9Wprv/jXJdET5T7W7pRpexa2PKlKffSwQQdCpluDZewSy9
 5AtIczrVr7VsCBdC0u0PS4i6oBKsWpWdGN4DKBkbsemGopDz2Jn13OO9URvA0XB06etU82/mX3E
 agXQp5rVWthgzjqNfIFIklJrsp83hD6d44fpC1cvouKgM3lL87aAyYD2An39mOPE3XWI6QPk2Ss
 NtpfCUXf6Hozae0eSCjIT9HI5JtwIteS+6BXIec42YUt5R9SjVHeeb24n4tJoVYSyRJoJfXyeSl
 ReF9951G3Gt4gIDaQcqL27i+X9hoUrWsa/qcaeKtw==
X-Proofpoint-GUID: G0_z0CCOd02z3v4ygAbyXzDF2oteqzEk
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ef3c60 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Qr2viKChbx9OD4LU12sA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: G0_z0CCOd02z3v4ygAbyXzDF2oteqzEk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Based on the recent discussion in the linux-arm-msm list[1], it is not
appropriate to define the IMEM (On-Chip SRAM) as syscon or MFD. Since
there are no consumers of this compatible, drop it and move to
mmio-sram.

While at it, add a comment to not to extend the list and move towards
mmio-sram.

[1] https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 6a627c57ae2fecdbb81cae710f6fb5e48156b1f5..3147f3634a531514a670e714f3878e5375db7285 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -14,11 +14,10 @@ description:
   transactions.
 
 properties:
-  compatible:
+  compatible: # Don't grow this list. Please use mmio-sram if possible
     items:
       - enum:
           - qcom,apq8064-imem
-          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

---
base-commit: 52ba76324a9d7c39830c850999210a36ef023cde
change-id: 20250917-ipq5424-imem-350825add3e1

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


