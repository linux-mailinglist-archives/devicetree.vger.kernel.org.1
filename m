Return-Path: <devicetree+bounces-220928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB3B9C813
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDD72162589
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E08A29CB4D;
	Wed, 24 Sep 2025 23:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pliUjvMV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE60C29D26E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755887; cv=none; b=Ij045iuCOH+l4qIfPzhbJ3SuvthNZca2syuYYanh6dpI6OO3eRl20LtvYGqCKLWiz1KcfqXizpsJ/OVcHUY38r82OF5j7dnI8gPkW5PJPhJMlf7H+jM2sQhQEctL4NtICUf2hMn8U9ifCSGZN5XJcML+Sgi4AVP/Hs3Z/qYX/So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755887; c=relaxed/simple;
	bh=P6AXEUovjelcMpdRLAsDPVjZOskIoYD55lWsBJZnkA0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dBFkyYVPEBlO1WmS503Df9DkB1RFJQO9W36DpUJzVec05t+jjOIK76E78G7vz94j0k2+mIzWFsuKVwoukxZo60Xwe/q0pPTTFtoD6bIBkJAQmryMK4rabyrZ2cX+g6hrNe0wr3Ft+JcD9Aa+Z3DaXAa7pGrfK3YzUSXhXjONXgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pliUjvMV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCnkNL018615
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=kOzDHRFaT0midnTDgk3Xix
	Iv1b2jJlohJ2hcb2gOtjI=; b=pliUjvMVKkr+cc/LurJEFUiPp7rOUvGgeGwfmZ
	iTWl7xN8VOskQwEH/7sVWqEz/O/y45xT3zZzH1Bpgm5wFLZnwYc/rlwi5O7i218D
	vKHA89rbscJApiy/Sp+2OFpBuEycvJczGBzN93nEE8UrxHzqACNB+afMc/P5kmvF
	U8NjXvIcFRENrppC3iYeMvIfzwaYgozm10TrOJtoncNtZHpyWwyW2bhOwHhMi5pM
	FDq8I+hoc0cQ6dvWOa+XJ1UaHnANpu1WGVgf0RK2hkoe+dENUYZWRJ2kkxfLXmZ3
	HigFn69H3AvdCvHs5V8WGH8vV52V6cn9gOfuXFa4s5xGWrMA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjybcr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:05 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-252afdfafe1so3384395ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:18:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755884; x=1759360684;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kOzDHRFaT0midnTDgk3XixIv1b2jJlohJ2hcb2gOtjI=;
        b=tC5ccVWqcco8269Dc2pKw5Usd6E4/hlqUs940IwofbzaDOJjpA/jk6PDr5E3GChaHE
         UhpZUQO87kT1FsyK46mQsooXXO6VYLy8vgklRIqdEkrmp5C3Y1+OHcjDp/F8qGvZXSMo
         ecF3BIOkKSdhClhLfKRPJ6UePl0SEfxLj3jkpYA+dR0Tz8jAy1+ab6sjv6G+jcMv6dOo
         O1R5WiM6P8SbT1irt0IcGDA7+1cUeTddk6UN53i9Z1B57+VTA9ZSQtbwl+kPjMZLSY3C
         xLjsYbNA6ZXXSdmBvLbXU3LPldjmBl3vnnoP9wstpzf/JxVzVN8V3i7IPq6OHWxITtIL
         OqMQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+txl0LQhFmDGlpc83UO7PIlpvNiAMd9smuC2RQL+oeZ0gO/pUU+++4zJfF0YjKce/CxwD6eI0+eQm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy49c0Hd3ADGIPjx2v9wtCRAjO1gC1oiHnXl3ADwU/PEaZa+2Jb
	MdmhCySrsUgggq1BRYjFrSBEqVMHufl52eyatYMUuB+cD/QRqL3+GtP3+lZU3BYK6KCddn5lMTL
	uLhjQP/ufHZL9uJWyL4v9ydWneJei6OKptNZNDNyDxLSjhrOSvAAKMNNqQMSQOC0X
X-Gm-Gg: ASbGnct5JIIasSh93+Segb3n/vfUF7ByvzEE0bdf3Uk/z4dRVpsSZ329MKIjY4IMCEo
	Aakv8NUF4u5mRIcPdlkWo+U+/ISd5TkA449sUYN5QYVysG6R3on/6GTCxEQ+bLorYFhw2vA8STe
	zLHIHsQnLYaZSlpPoPxFdRrjvzYkkng0bfRNP/wGxlkK12dTCkY81MDy4Jv+tBEFHecXy1Yjfls
	yfEoe6DLrBrm8S5y26u/94BxqdDebVIyHDReInPrlepbJ8DXfAKD9EUFvmKvISi9DDhn2cntkZG
	4Ae5oOKR/O9RoMz3Q8Ll78WS7+IRhfK5AiZmYCM7LUSYMUP5rhQE6ZrqW8rdFSFoE6ib5fqWTtD
	puJyzmxSiiHgn1Jg=
X-Received: by 2002:a17:902:e5cf:b0:24b:164d:4e61 with SMTP id d9443c01a7336-27ed49d0775mr13252785ad.13.1758755884140;
        Wed, 24 Sep 2025 16:18:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG69RWSfsU8xQba5OXZo1Jgnzy7tY9QZgxSf523NT/+wl9+n2c15dD6eIcX76OrUzuJIJoeHg==
X-Received: by 2002:a17:902:e5cf:b0:24b:164d:4e61 with SMTP id d9443c01a7336-27ed49d0775mr13252585ad.13.1758755883648;
        Wed, 24 Sep 2025 16:18:03 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cda43sm4321385ad.25.2025.09.24.16.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:18:03 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] Add Qualcomm SM8850 socinfo
Date: Wed, 24 Sep 2025 16:17:45 -0700
Message-Id: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABl81GgC/x3M0QqDMAxA0V+RPC/QinN0vzL2ENt0BrFKIiKI/
 75ujwcu9wRjFTZ4Nico72KylAp/ayCOVD6Mkqqhde3dBf/AqaxoS5SEOfTZdxT6ziWo/aqc5fi
 /Xu/qgYxxUCpx/B1mso0VrusLZ4eoWHQAAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755882; l=517;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=P6AXEUovjelcMpdRLAsDPVjZOskIoYD55lWsBJZnkA0=;
 b=IMtStwtT6lWe09AN9ji6KK8Q6jx3xg9YIdQU5ADGt0w/2nYTotYNyFKoV+qkS/cbuqeAQgqWV
 dMoiCY5oa1OBFU/8Alu8Asfnc6qzRfBkG8eU8wjesJ3W7xtUf3/W9Su
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: HlHZ4aG672Tgyl2dDie2arJWWkGb8hfV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX4ctAy592PZ19
 o/83I6bMkBB4aAvURWyuJ05cYtC2jWolJ73mz9Fxe2AXjk8VAp+VkFdkeTrOT4LzyN2TirQ7ZaL
 8lKSqLIqmfavFBvYH8fm24BfuxXh1aG2BT2Ue6mECljECF2rX+p70Zq6Swmsi1fMbJ6PAQykE/O
 gaTi+WXIBJklenrXHzDSV4yNFUDILhdvBQwKof7cmRZl5ywr5r1ob+iIg6Jj4gQMpNsm16KUE+g
 nlhGADzVfcYGpNlnlD85idnZZ+ph1GDNUMz1kVENrpTlucAdfhN7RVbvSoHH0BNiBM2ukWlVGnS
 kAm78ox/RZKvRjl3p3+7j6iRp0HoILhSFhsfg3sSk/QcytGUEYADyBhhrOnBRmvEbpxdAifhh05
 xUDR4umJ
X-Proofpoint-GUID: HlHZ4aG672Tgyl2dDie2arJWWkGb8hfV
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d47c2d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=18LhJySMsoz4s2Uj1UYA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Add socinfo for Qualcomm SM8850 SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jingyi Wang (2):
      dt-bindings: arm: qcom,ids: add SoC ID for SM8850
      soc: qcom: socinfo: add SM8850 SoC ID

 drivers/soc/qcom/socinfo.c         | 1 +
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-socid-f96f14a9640d

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


