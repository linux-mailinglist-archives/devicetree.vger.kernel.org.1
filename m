Return-Path: <devicetree+bounces-180278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7FDAC3284
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 07:57:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C9A7160C3B
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 05:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1641117A2FA;
	Sun, 25 May 2025 05:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="km1phmYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA6E15382E
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 05:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748152649; cv=none; b=DKBRm5VhBVD+1edCtZpuX/Bjw11E3Ru75WFuwsp0tKYIYJKp45exEmVhkqTSOYjMiE3PMQ1EmiCCva17x5Upz+Gz2Cnqp51eMvOfoMw+crf6SVwjihvRG0LEYQAG2LJ4uKsM0/NMMQfY345anVbZyn73rArNCnTB94yyLNu9YkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748152649; c=relaxed/simple;
	bh=M4yYzWy8gleVqtRXThXiboA/Q16IGeGQsaMz5AQCano=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fPI78uxwKhj49/tLpL6UdRG9JJIIcOUyimPf0QGlJrW9G4hi6hUDrzsw8JKKz+Ph0v9CZkGLbiQpoqQXLbHzdCjH28o/uoRUD8NQr5+HUbSFqq3jdjxoA8MqPjXYRox7RUVYKe1WUe7e8ZeNKJuYuY7jiMYZhZ3WNNlcpIxH8k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=km1phmYV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54P4euFm027552
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 05:57:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=llgi6kgFU2C/nK6AV/CCxl
	Fj3993bGoSBbWghxO+Y5k=; b=km1phmYVT70YeEwezZ8ZBkM/2ZJq6lwBA4Df8j
	fEAl0IQ911eCas95zuzq9ThAILcftaFQpGxmSkalB4ueFXe1z/k+tvCS+6MeJa47
	GdyMvlLA/OWZCcd1EU1Ovks73IU6ieQuIV8B2HLKDp4gHL30+wzuPNNCy9xsEEv6
	N+MDi89YFegm2P0b5QYJA8VcOQhVuXLQnZhSDNzIUxFCxdE7OsyvY5sOwhV+FVS2
	IM39qQG4nMLX9ZhQtztpe+k/RYSFr39SCLoptJ2W4VUPYlkyKzGIV7pTs+bhLkUQ
	vCPnbtNcF7fKtWPvKgDhB0MIsG/iFcKvNnjX05wfUfSChhVA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5q1sjdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 05:57:25 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-742c9c92bb1so815351b3a.3
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 22:57:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748152645; x=1748757445;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=llgi6kgFU2C/nK6AV/CCxlFj3993bGoSBbWghxO+Y5k=;
        b=PSDLtN1ggffJnSvINFslx7aHPKBuJAH1O0Si997+MMIM4kX32aK5AD97BwrnbMUryo
         z1XBCMtCc7YHE7mYqNNq4onjqIcyq3wa2kEgmJhT6pvSNL/1pNxZGBjDEwTAEJYpzPc/
         vDE+3WpyJt/sfPnLfjHA+oTxgYfYDsQB5uXTpOljvSsLX3EJWXX4ZiHUWLi1wMQSiPSx
         c3sCRpyyhFh9U57qdh7yDAS4iARitFLRXuIBnUyL1ABlN9mkUQCKqjgjrfjBRqyxkqVl
         ux3IQ/VDaRktB8O8rBsoK4e6GYsoj48hZ7OHgu5J1lqRqUQSelM6FRV51mocVG0cadE8
         3h8w==
X-Forwarded-Encrypted: i=1; AJvYcCXUpmnSey1vOI+58uN+Q1dze9dqTS6E3uTzaVKydnIPwfBhZgQ+rhqBmUV9tgcm8FkZ9dijQxQmMCAK@vger.kernel.org
X-Gm-Message-State: AOJu0YwRt5cRQOPCfVDxxRLfD5e+ElgtdpRuV4tkTCgvk8OFktszfoWp
	WNGRxHxsA7ze3LRIRp/fDb669AJl1fU9Ej9x+y65jtFMxfhqJzPsw75YzxeaA9J8PbKE3t9YCGC
	bPMGQ49mt5CE1jJJJp2Rz5k4MjV0M6DIVSVMKn4FnagxMROg4azZmQdAN2H7MnUNp
X-Gm-Gg: ASbGncvqlAK8uZLjfPIw0qPLJF1obJPQ7u3ZsqoKKFXsimQe0jHu51607LIciDnV7Xa
	zoI2S9iJiv7nbX+5uyqa7sTJvmG3aSscE2aYOPKeDSQtew1Qvgj2aG55t6SlVqMeb2YP5xw7C8f
	Hhg73f+k2Ti0NUYNO5agYPf12mazUxNOJY8vzudMGNHY5JdG48ZzReUoEjoqEAage9DBQQAJe3u
	QnkoocTeQNo3X/pS5fxlT54sgzIBOqogZmeFH5ju98LOqS2ED7R7lDPVwGhTibfrldjZHpN9Uk8
	nNnLKkEH8I9+9YtKEk1G7iQmallbaQh6ngHA
X-Received: by 2002:a05:6a00:ad1:b0:742:aecc:c46d with SMTP id d2e1a72fcca58-745fdf78750mr7117966b3a.5.1748152644671;
        Sat, 24 May 2025 22:57:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLpSjErEYIbtiJZOXi1g6uxrsq6h4bNZeZUpAlLUHKaxEaEEcB8ZeiBab9LJX1FXEhTl3WkA==
X-Received: by 2002:a05:6a00:ad1:b0:742:aecc:c46d with SMTP id d2e1a72fcca58-745fdf78750mr7117934b3a.5.1748152644258;
        Sat, 24 May 2025 22:57:24 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9829a4dsm15594030b3a.107.2025.05.24.22.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 22:57:23 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v3 0/2] Update PCIe PHY settings for QCS8300 and SA8775P
Date: Sun, 25 May 2025 11:27:16 +0530
Message-Id: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADyxMmgC/03MSwrDIBSF4a2EO65Fr4Y+Rt1HCSWoqXdQTTSRh
 uDeawOFDv8D59sg2Ug2wbXZINpMiYKvIQ8NaNf7p2VkagNybHkrJFtG08/2MbqVoTZnroxBxQX
 UwxjtQO8du3e1HaU5xHW3M37XH6P+mYyMM6MGKS6IQp3UbVpIk9dHHV7QlVI+D3G0h6YAAAA=
X-Change-ID: 20250513-update_phy-2cd804dd2401
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748152639; l=1250;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=M4yYzWy8gleVqtRXThXiboA/Q16IGeGQsaMz5AQCano=;
 b=EDONMZuY/6Dx2rOmU6s3wk8xSJLxpZ87KUnGMeNXgdFtMy8OvoVeIrdnCV/Ge1reaL6sgbNmv
 4bqv3uQfE9ODnrKdrQpkJvcutEAvb+GimzUyKSU2hsmLfP+adlcJP6e
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: 2Nv6Wq55qJ0xVkvHb1L8Iq3I3Z3g11XA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDA1MyBTYWx0ZWRfX1P015Af7JVf3
 KYuoc7+5m5ET2AF+SYkRx61AoPH6TeTKPwQUeA/gTC+8Nt47FCyjG5+VNG9EJ4UYXWrpx1HRwGA
 IHvFDUXs20B2VeijRzyXQ6uRQnHGjWgp1waJJu7UFio/C1smC5ZiJLA1bVySmoK0c4xwLH38KJO
 FJX4pQ+3fkSfrFOpQ27p//LkmH9TgQ0BPXEJYPbOSQfXdahzT4rHgjEUt7pixnPDfVjf5d8au8A
 abZndpDCP8s9sVK5mOuOjwC29jKFHhr4WNE3HJ99PvfCtF+bO0xW8B+smuh48Cp+bbpwj+smWZw
 b103BFdXMdgePqU2CJZFInuwYX3u1bQnLwx8yEvIWbnb5G/7SRr+9egn6XUAY9Q9jtnJScwjazM
 JpluORttYEnFO/6yU5SeFVMgxW1RRGUIdEb8DjJdbsXjBk6DBLl0bfaenovLn9y3dvE+mBIn
X-Proofpoint-ORIG-GUID: 2Nv6Wq55qJ0xVkvHb1L8Iq3I3Z3g11XA
X-Authority-Analysis: v=2.4 cv=FLcbx/os c=1 sm=1 tr=0 ts=6832b146 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=vWfPPh_LAE0cc4QMUwIA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_02,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=547 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250053

This Series is to update PCIe PHY settings as per latest
hardware programming guide and remove max link speed dt 
property for SA8775P PCIe EP.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
V2 -> V3:
- update subject in patch 1 as per review comment
Link to v2: https://lore.kernel.org/r/20250514-update_phy-v2-0-d4f319221474@quicinc.com

v1 -> v2:
- Update commit message as per the review comments.
- Remove max-link-speed DT property.

---
Mrinmay Sarkar (2):
      phy: qcom: qmp-pcie: Update PHY settings for QCS8300 & SA8775P
      arm64: dts: qcom: sa8775p: Remove max link speed property for PCIe EP

 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  2 -
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 6 files changed, 66 insertions(+), 43 deletions(-)
---
base-commit: edef457004774e598fc4c1b7d1d4f0bcd9d0bb30
change-id: 20250513-update_phy-2cd804dd2401

Best regards,
-- 
Mrinmay Sarkar <quic_msarkar@quicinc.com>


