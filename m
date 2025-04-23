Return-Path: <devicetree+bounces-169875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A608A98849
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:16:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7C9A3A567B
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37AA26D4EF;
	Wed, 23 Apr 2025 11:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R+UBqWbK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0A6FC08
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745406959; cv=none; b=eytmyaAbl9Ur70rg4wNswTkL9DCkneKuMpUvB/bx8FnvnExpKA6cmZpft2AD9tQRpdQ2SvSrmmi+M/VycK8UM1UXbkmJFwst64ga/+CLg/PrsBImIELXuK4WHCKWKkpYF+M2wrvDxInXy+2ZlJvA3D8s0YH/oIkZM7mp4ost83g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745406959; c=relaxed/simple;
	bh=sbKZVCvGtdkZrIpTI8pX2iJJV/WIKTlKhFkyI8Uectk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NTdT3t62b16NEfmLueylu0hzK7Q9qbbmTPTIxPvyUmiX9R15SRV9/l7zDhFhHL9FJUT+f98fLDSjIz+xXcL6S+eWQPeS51Cm+wESVVDTKtwGwCCs8rbg9dJ/teh12JCiHKfGgFveS+j7B5cpWcyKk9wasOgxjXc5Yy/2OcRpzho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R+UBqWbK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAqAvd013399
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:15:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NSUx02OYFI6C5J50Uj+1S8
	PyJZEpqQkJpG/qCn++FQQ=; b=R+UBqWbKFK2BTYPHRosXyf5xBSDtzNndIBr43Q
	LrbKZVeRdMwVEahvrmQyTPRM6nSQarJbN3+CBg7rolwe0KbtCHGOv5m3rwSIoG/Z
	zCvBuW0i7Ql68CA6lv4+hj9C7fLoVaI7H/bMYHL7M4hKwJjYwoyg2FNZR9Ks5wo5
	TehfOSL2hmskg5gZ1HILz9Kh+98Nq7Cg3DHM6DyDzwvyGdBnL5BgCqd/51qf4kpv
	A1hmJ6huTN/fDR5mTp8OIOH/FYaaLyzibyGFK2BbfFnrjQ7yxtjYWAofWDaGCFzD
	o2Fi8HtPOI+vTDTKCek+40LSQJ/YDG++u5iviOHZrgYyNcUA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh39w2a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:15:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-896c1845cb9so846094a12.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 04:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745406955; x=1746011755;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NSUx02OYFI6C5J50Uj+1S8PyJZEpqQkJpG/qCn++FQQ=;
        b=KxORG6+GGjRKQiw9few113XKyCfa3ZLx8o1xr8vT96E79dIbI8w4momaRo/z8caEN0
         gCLp3BfgQHAVczrLQJSU7w4sftYFWC020Bzd0Bh/CTGy0WvIJHuXH+QCEERNmQCPCSrT
         OhvZWanVbMXf18Ktx2VI2G4VlDsP9UR9HdlvEGRjsF/XbHa1jjxDrfmT3pg3e3Efkqma
         kvQ+W7NIxCV+LsNIJOrArzucbKC5Y1N0CsGWiS9mqVYsltubfBFcbHXIN+YTUbG3r4dm
         o1cktpo+XWP/7+Oghmk2zrr9BVwB1aMkonOwDecaan7Bbx0dMXUbtTZtxnKeAdpNy+dF
         xQjw==
X-Forwarded-Encrypted: i=1; AJvYcCUuXGJoURm0ht6uC3b5LszjinZujF5JwSqLdHhV1Y5CIm7vWp9zVijJBTP0Rx78WWGK8LAaIXA2Mm1Z@vger.kernel.org
X-Gm-Message-State: AOJu0YybKndXXnWkZMMQ0bOkmLfH570IaOa2CUVhLdU09YPAGBBk6Los
	fHtKfm9fWkMfHEN/JjRCR+HfmJjmbDRxp4CkXPGkIYiGw2lZ6BcIKALjaufup45xh5IDleq4wfP
	YYhYVrwPmzuEcaSQ5j462VFcrwB1MzzPm+wv+G40AZ0nRvzoGfqm0uiu8ECEE
X-Gm-Gg: ASbGncs43O9rRCo6cMOv/xaIqk6vv3hT/QLd3gq6ZSR++C4pAJXgzIsTeCORVWh5DfI
	ocisweHMC0ioH83pG834UarBOVTbaDa0MAnpEBIzn0Jt0yQU5q08ffHfROyN/l0BhFKP87/MPks
	lem/i+nOzflj25wINHpPz8Ivn4koMXw5DrjUAUvwvRyEAs5HdGl49ZPaT8P7yK9RnChKIj6NIsu
	kjnhOKxoEOWloojN3w8Z4ibcLtvRojD+/qGKForaORxmJAPGkWDqGCdKXH8GqhowmebehcVdTZx
	9plxp9Qvoc22/v2mv2dpslDPjPMt841ErVUpSQqW3K5kkg==
X-Received: by 2002:a05:6a20:c709:b0:1f3:3547:f21b with SMTP id adf61e73a8af0-2042e5a7f04mr4616924637.5.1745406955425;
        Wed, 23 Apr 2025 04:15:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1oF0s6obzV3U4IlKnfQWtWH5A8XquDAih6ItXry12b4Upr3sQSi2punkUoDTdQ1EXTQzwNA==
X-Received: by 2002:a05:6a20:c709:b0:1f3:3547:f21b with SMTP id adf61e73a8af0-2042e5a7f04mr4616885637.5.1745406955045;
        Wed, 23 Apr 2025 04:15:55 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db13c5f8bsm8787322a12.35.2025.04.23.04.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 04:15:54 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Subject: [PATCH 0/2] Update PCIe PHY settings for SA8775P
Date: Wed, 23 Apr 2025 16:45:42 +0530
Message-Id: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN7LCGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEyNj3dKClMSS1PiCjEpdgzSjtNQ0o8REA3NTJaCGgqLUtMwKsGHRsbW
 1AJYLAmlcAAAA
X-Change-ID: 20250423-update_phy-0f2fef2aa075
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745406947; l=983;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=sbKZVCvGtdkZrIpTI8pX2iJJV/WIKTlKhFkyI8Uectk=;
 b=tbbxUT2NStAw36vwNZbHcB/OftIz+gc7eZ+AG3e4twO62qUi0kC4fopP3Opuj4FQemtV9iCAz
 pqsRHi3A4IzDKCq37LEwttq1MOI/cRwcggX0UYu1IiSaWOVwUi+YTqx
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OCBTYWx0ZWRfX42icP8Moh711 aVxnHlSq17oifJ76CcBidbLx8nsokQoUWKGNCqMLxRu4qoybMPWNVz93UT/gZ2tCSMbWWWd8Z0Q k8qctyv2uVatI8Cbt+ZTnOI6WgNjJ9GbBgM1SlR8fveXHwtaU3/TNtex0cacJWBHKJ0uu5CVBcB
 /i3RjVduxIYE5ZDc2kxLkoXSJAQXmCdsW46NEK90cQbYAbzBOYHJIkaulGrx43tExHfAj2Q3+aq QgUAgrK6IsTaxdS7by0k2ZHG0ICvbWKgPKkAas7tMmsZFhq+1fAAFBsu/1rPAxV5QpmYz+qiMSw bCkOtoS5mhBwrgXSBaGw2vnqN8cbEOxcLA6oXxZIUeDu2arDN2ni+F5floSVvSOF66uUmN7GrCO
 KI99PhhRTyvbUEypElmcWivOz84m42lFQ7LF/at9RWqva9kfDihZrNAd7+BH8M4ioAsAMAWh
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808cbec cx=c_pps a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=LgVGyxlFbL_aAx061p8A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: osT7Qbz8pogbFzMJZiJlzaBK0cpPT13o
X-Proofpoint-GUID: osT7Qbz8pogbFzMJZiJlzaBK0cpPT13o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=612 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1011 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230078

This Series is to update PCIe PHY settings as per latest
hardware programming guide and update max link speed to
gen4 for SA8775P PCIe EP

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
Mrinmay Sarkar (2):
      phy: qcom: qmp-pcie: Update PHY settings for SA8775P
      arm64: dts: qcom: sa8775p: Set max link speed to Gen4 for PCIe EP

 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 6 files changed, 68 insertions(+), 43 deletions(-)
---
base-commit: 2c9c612abeb38aab0e87d48496de6fd6daafb00b
change-id: 20250423-update_phy-0f2fef2aa075

Best regards,
-- 
Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>


