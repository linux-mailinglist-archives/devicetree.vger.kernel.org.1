Return-Path: <devicetree+bounces-198517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D95B0D45C
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 10:21:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 062831634E0
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 08:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8AAB2D12FF;
	Tue, 22 Jul 2025 08:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mQKnoDT2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FA228934D
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753172503; cv=none; b=MeUIfp0FymHzVFyaKuR67xsHurKdBhMJXKLGy2KfV6vXRaSyBkD9CB7/dcYaj4sZ24z/PMwCYY97guWNwiEAv9Yj4DWx6MZ2Ao0n7JcaoeikIN22i1AJtbjVveLEZz6Ikel6wqdqYGOI7BYmYnLrYJvovbN79qqgsLtM7vr6xdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753172503; c=relaxed/simple;
	bh=gbbHYhK65i3zf/8VX6rUyX/8c4K+RvLjAbOrGFQYRoA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JOzfCTi1OnVfCFvA5gDPC+fSScJr0S/q21qI+ffyWVHU9H5JzcJb7tbDwfESOOhGcimZvX8VMN2tWw7T2uK0f7NcQXYW+dmh6AURGMRNTzhfv4UM0fil6iClMcs70H9u7ko9O1L39YsfjM2puQ6e6aSJFaLllkIYjjUDlnZAMFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mQKnoDT2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7KkM6015650
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bVmcos7Xdrhf6+4zm7tb7S
	LejYPfh6VcqSOy4gUcvc0=; b=mQKnoDT2/hxp/kieg05kixeSppar4sdeJ+jp62
	ohYw+5OtFkAOHVFqheH01IxUhazMNJ7c96nvzufC+me9+BpApKx1fcabIDVKX6mS
	Rt0MwRVLYuwzc5lYBCbN7vvdO0AJofFeutyWhdc1ADN4TTD1n0Lfz7S89SkVQGI+
	GkxUp3JCxJygqWrWX+NDWEXM22XkRGW+jF4a5LjNF/TTPvO7D5rCnirWpyP76KWJ
	T7ZZStL9flU8dGJyld+w/FVmIvWJN3UBnkxw3zupRCHT7meZRvXb8T+6xZKm0gM+
	gEQ7IYm6cmV70upeRs9zHkEd4c18aEyXdM4Egj+6C35SEcPQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w1tm8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:21:40 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b115fb801bcso5909976a12.3
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 01:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753172499; x=1753777299;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bVmcos7Xdrhf6+4zm7tb7SLejYPfh6VcqSOy4gUcvc0=;
        b=Wi4Mau0x7pfOf5x2d8yiwLvem++8LQ0JN99/ViU1FKihgGvhSkzvZlrFaif67XwHKW
         iPXMyJetbclOTinAR9mLdAkoRxQCfNfzudKsdf4LBd14q9ikpxrNGaKTCuHLWUJvEyuf
         A37wQJuwpRHMXpudiR3ZP6Yqa2NxbrLYCChx5uYmCFk80GuxkGgk0ua2B/7BwWCF0B5q
         ZQlqoRYvPpSv7oszxX9I9L43ySxNJ7CqvYa//mSdmsh6+gcT8EBIqzLw3cuX8fYPyfE0
         JGvRfbfzBaM9YTysBlvzVfd24R2R44XVEQOtZ4jSnwgKlHCWdg9uTINfc7qlfynPftUE
         ve0A==
X-Forwarded-Encrypted: i=1; AJvYcCUZ5NbYnio7xI4iM6NQA8SSu1asE5g1qoTNU0iMZnmjKQsHaLLf4wTG3p1QOec0m4Ocq95EDSAFg6/r@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+bbdYiQ5Me8qrfy8o8o/IZsl3n5JNoogi4rQxuh7WqfFdFWHb
	+XYkYMtQTpoY5xn0vLhJenHmnN9EjG++XVyWwPKkWRNPsIEtz/WfcQ9104MdH12wB1PSMDkfQBz
	B60GE6Lp/AZS/KyTNPfGBhljBYWjCBqInhWEur+1LkCwJnVPMKybyPLWcoPWZo6+ioZEVPnI2z4
	E=
X-Gm-Gg: ASbGncvWXIAIYq/SgtJk9eb4Oa/SQtrWRC4YD2whERm3ofjTVXCo7Uekk7jVhjKO8Sb
	3OgEQgaxEi3bLwUZ5oSmAxmHZ149coeBX7+MPKlt+ZV1HCM+bcA81HKiVu2z1bX7/TSfEiJ1B/J
	6z3O4CTDNJG9JJXNDZNwNic8SPn5DtRDFhwh6sAmb9qZrxP3XefNUlGfZ/zGtAs+iHmvh5ODhxY
	qs2xsZ4u1WtIVswXilh3b4cz1K7Cz2SSfnIlIMuIvaden1kA7/wdDWnpsrJbr9Vc9+coXqgndQF
	soR7nVlhVy+VwRZZEXJmxzKAPoLM10XOV2CsJlId/sw3DKQWO8+56rPZ8oj9
X-Received: by 2002:a17:903:3d0f:b0:233:ab04:27a with SMTP id d9443c01a7336-23e303845ffmr287496795ad.53.1753172499130;
        Tue, 22 Jul 2025 01:21:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+8ujr/Hn52UKERa3Dr8P2y02BI0scRpHRswLWcXVb46RKMFx5fVOwI5aqhHBIpxu6C5PkBA==
X-Received: by 2002:a17:903:3d0f:b0:233:ab04:27a with SMTP id d9443c01a7336-23e303845ffmr287496465ad.53.1753172498713;
        Tue, 22 Jul 2025 01:21:38 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b60eb01sm70994255ad.57.2025.07.22.01.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 01:21:38 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Subject: [PATCH v5 0/2] Enable WiFi/BT node for qcs615 ride board
Date: Tue, 22 Jul 2025 16:21:26 +0800
Message-Id: <20250722-615-v5-0-4677e70e25ae@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAZKf2gC/3WQzWrDMBCEX8XoXBn9/5hS+h6lB1laNYI6TizbN
 Al+98p2Dy1NLoJZ9puZ1Q1lGBJk1FQ3NMCccuqPRcinCvmDO34ATqFoxAiTRBOBFZWYUc8kpQY
 stahsngaI6WtzeXvf9QDnqZiN+xB1kLPbzJrq+ceLEysVJ7VSlgiBKb6mywT1dY197XOuz5P79
 H3X1eV5WXNalwGvkzQ2lQnKS8M589qZ1hXP6KPTyhjTKs91aD1YxTlaGx1SHvvhsp05063Sn4t
 mWvK9tVRYISJo/q/AZjOzOygraPmMoBXx0jH6AOV3UI4JLl2NACI0iewBKn6jekdFQaljUYtAl
 Q76DrosyzfQTmNL4AEAAA==
X-Change-ID: 20250704-615-21c25118e919
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753172496; l=1741;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=gbbHYhK65i3zf/8VX6rUyX/8c4K+RvLjAbOrGFQYRoA=;
 b=YrhA0EIKKURO/scIDCj8//vrF7U7X/vEbzIkbgJQj7Mujz5fNDY15Ulm9DvqIBxfYowW07ddj
 Nf39JVCFuPpA6tKl4ft/iqJvK87+iUnlDnB74/3O9r88kiksvXBFqFt
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=687f4a14 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=TmzUbGvDyKMaPb01JRcA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA2OCBTYWx0ZWRfX5sRLUq3+XcQj
 0/GkUWIIWtcYue4+J5VeGYmvJKxszSDxgm8si6j8nOtznGS/I4QUDFqoGkupf8CtIpd/2dJd4tm
 5wp/ngDvR/UjN4FGQmhF827o+2PSW08Fm6RS2CVuGmTpqElae8LvVBlVBCTzkbvB8jMYnv8pmVB
 zwQ+TPmACvEoMtayoiO5yjDb0wipXcqhAbbOSXHvTRlUOXWCi4+jIqWVWbkSoli7Uyps8WsD8qQ
 qqDe8Gk19zZ5uk5OTBjEkH105XkqfHGqK5e13rBnWHjjzTIqskJtZ7j7m7Q2Wngj1l5W7D2cvbO
 sxY8sO6RwEe6YDr+4/DVDSRjhQUlePFJ/laaiBfuDDdFxNiesw+7zwAvueiB+ON8OOEH8zghWWq
 QyrsIRfV9WHkU2uD5vuahPVZeSHumP3+pW4IQg+Wrm2FAHxq3eeGdPvgt4tnF1s9uVVm9nfn
X-Proofpoint-ORIG-GUID: HKQEQkIE2rhveUMxI6mKVWbgEshpzuJd
X-Proofpoint-GUID: HKQEQkIE2rhveUMxI6mKVWbgEshpzuJd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220068

This patch series depends on:
- PCIe
https://lore.kernel.org/all/20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com/

Changes in v5:
- Fix DT format.
- Link to v4: https://lore.kernel.org/r/20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com

Changes in v4:
- Fix node placement issue.
- Link to v3: https://lore.kernel.org/r/20250704-615-v3-0-6c384e0470f2@oss.qualcomm.com

Changes in v3:
- Formatting: adjust layout based on reviewer feedback.
- Fix DT checking warnings.
- Link to v2:
  https://lore.kernel.org/r/20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com

Changes in V2:
- Correct the version metadata of the previous patch.
- Separate the modifications to the DTS and DTSI files into different
  commits.
- Formatting: adjust layout based on reviewer feedback.
- Updated the email address.
- Link to v1:
  https://lore.kernel.org/all/20241203060318.1750927-1-quic_yuzha@quicinc.com/

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
---
Yu Zhang(Yuriy) (2):
      arm64: dts: qcom: qcs615: add a PCIe port for WLAN
      arm64: dts: qcom: qcs615-ride: Enable WiFi/BT nodes

 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi     |   9 +++
 2 files changed, 144 insertions(+)
---
base-commit: 8d6c58332c7a8ba025fcfa76888b6c37dbce9633
change-id: 20250704-615-21c25118e919
prerequisite-message-id: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
prerequisite-patch-id: 37d5ab98a6918dba98ef8fd7e6c91ab98aace170
prerequisite-patch-id: 1693faa1e23bbb0a37d4fb9cbe13e5dd43148ce8
prerequisite-patch-id: efa688b2ddd5744df7aef40182787ee4ceb90c98

Best regards,
-- 
Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>


