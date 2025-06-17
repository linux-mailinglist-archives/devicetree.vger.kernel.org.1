Return-Path: <devicetree+bounces-186619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD08ADC98E
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:38:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB6733B596C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6EF2DF3C9;
	Tue, 17 Jun 2025 11:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i68Q+jvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B07C2DBF7C
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750160311; cv=none; b=eR3KUZRLhbZaTifNSdvbskhyC6Hpa0YFtH1sZdRnx+TWRxtvDlx0cPtO9OejoWsXED0YQahOWN0vmpcAsAI8Ioi+e1QVt8ImfwNznGaImX3Qfy1Oh8dilpaHxERjDeyvJZ7NRezVoIKW/7QGeu0Yf2fH9NID0FSPyQO8gA18kcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750160311; c=relaxed/simple;
	bh=AoKaRIePSZxkPcYuE8HxMSWHLnp27kcoD7fgZtCZvYo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lou05ToVlcuIwi0Y4iQuvbIuYl3HRKtxT7Il12DN7oZu91/8EBefnS3JnT0NeeuLCgznVSS187zQeKvwZJtsLOcDNf5uCvezGOTy0MsXr/cubflqyUOhWTYeOxVDADjm5DhDxqQHiBKSFhtyVIgwed+rOXF1+dXsQXxssLiEUso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i68Q+jvS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6VKrx026338
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7NrIe6ld/xYMBbLACN69Ja
	xaxBEqU9wPH4VfOYfdgdM=; b=i68Q+jvSqe+evsGIoqS/2oQqADv/L8bjLr28FI
	jOVLjOPll83vCdBD/5nQ8aE7qmktiiWqYbA9EuyssrCDmSiAElCvEpOMRc6GLqWh
	o/IQNRPlWwfzsrn9Bz0H80ysvsRIWiXwEVL92w66m5DZs6/TzzeWOdXSc5zN2vM9
	OFGPDY1eTnOzTbvKhCvm7dc1DcociCQ4WTXJeDPXv/s0U3hxRXy1YmFPEWl02Oj5
	XEn22ST4hDaQgScOC5ki2TUclxOswkY7WU5oCoKWQa6mYkdyfoE+vwotZYOqQUig
	21aYHFRaPwh13ED+otzN50gJVMGvob1hZzhCgxEShOTk8lSA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hfg7u5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:28 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235f77f86f6so46933385ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 04:38:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750160307; x=1750765107;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7NrIe6ld/xYMBbLACN69JaxaxBEqU9wPH4VfOYfdgdM=;
        b=I3BgW2eoSBUPZe3bIiNzeKpwoTtH//mBATGv0JKhwcKvwSBcQT4k+cV15MuKuB8G+p
         tI7LEmtiQLRoxpE/LIGEGUvGtah63l7A9EtIw9dix2Nk2VHhVu276Gn/XB9j83FuwOmQ
         5AjpZMfTtJi7IikHe/o+rFaQoNIUlRJO1bDbFuF4mpcS21p6edaxmj4AuCIv0j/o6x+A
         O4lCjQEV8gKdv0YTWKZbtJTO/kQ9ER0I0o/uQ/wQ9/LsdkAvKiTLny0M/6ZZ8vkjUlWu
         UYlbD03IeuZgp3QzTbWmx6JmLv/Bea3KjsMRteoUJRdC1WyfQB5rVswsrtjm9uDE7s09
         PfMA==
X-Forwarded-Encrypted: i=1; AJvYcCWVXA74PoVbh+E94HrIAOIiOFTtwOxCkP16FGs5Or1mPp2TVdwhpUutk/xtAeE7mnR9CeZQl6odVndD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw45S164vzV1X2u1VfcAQgVJ78jE1b7ELpLYOVy/JNKGbNxHaQ9
	bDtclwksBcJvdDUTHGfvWqdw9on/k5APUm6HFtXfPTOCUKTzqM6TwI9uRIcFhRYtxeHSp7lUQkK
	dxhOBdr5f5T7l6UYqPZXhay8QimnvlPM0bZDbx7rUNd5m5It/A8eioSh5dXkmAosI
X-Gm-Gg: ASbGncusyWMyclCxW5Gck6rzsDuVjJRFpBKV8A7KSCfS2S5JTvu9owVdpVsGuyAhuCd
	6a6brcAL4MC+y/HTVpyCyC1V+8wxIvZV3kAVYNsEomLnHtz1XMfsgM77KxBephrU1GMznhIJqXo
	rTycuizQbXrEl5B1ioGIW39LFtFhN2liTk1SgYN004hCZXtSBEUXb74y8E1AcMtCyDdiosuC0b7
	WxdAkCWOu/elS6GmSDCPrLN0kMN3TZqx1b0VIv63eS61ZBrn35qulE0SMbv4at7YJ2DfVgYYxb9
	pSvVofoTQT5DHxqNSOAXvAqJSLf1DDxfmYPgvA7wdUI7hTE=
X-Received: by 2002:a17:902:d585:b0:235:f45f:ed4c with SMTP id d9443c01a7336-2366b13c99dmr218323505ad.24.1750160307383;
        Tue, 17 Jun 2025 04:38:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1NoTubG90HYcYq9U1zzEt7nR7yUJ1t9hJT2vkcR9u8+zt72VBXQPtx9/r3VZrB0ybU1dDpg==
X-Received: by 2002:a17:902:d585:b0:235:f45f:ed4c with SMTP id d9443c01a7336-2366b13c99dmr218323155ad.24.1750160306988;
        Tue, 17 Jun 2025 04:38:26 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a1919sm78246895ad.66.2025.06.17.04.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 04:38:26 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v5 0/2] Update PCIe PHY settings for QCS8300 and SA8775P
Date: Tue, 17 Jun 2025 17:08:18 +0530
Message-Id: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKpTUWgC/2XN0Q6CIBTG8VdpXEeDw6Gkq96jtaaAyUVqoCznf
 PfQraXr8jvb739GEqx3NpDzbiTeRhdcU6ch9zuiq7x+WOpM2gQYSCa5oH1r8s7e22qgoE3G0Bh
 AxkkCrbeley+x6y3tyoWu8cPSjjBfvxlcZyJQRg2WgisAjie8vHqnXa0PunmSORTFCoPcYJGwL
 ASX2gillPjH+MNHtv2M82eGBYeiyFQJWzxN0wc7TVRwIAEAAA==
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
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750160301; l=1584;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=AoKaRIePSZxkPcYuE8HxMSWHLnp27kcoD7fgZtCZvYo=;
 b=cilGk9gcJ508r33BUqBd6d2pfmj8yu2jxGV6L2W/kO/iu+QelWDRZ0xozeuMjjhiRFyKAKUJt
 tQdCy4x+8roDabUYn2kNt+syORol+a4pUSyQaoj6hIrepv+/jLVUzQ5
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA5MiBTYWx0ZWRfX8ko+i+O35KWs
 7peTKqa/T4jB+g05uvi9MUvEH0gFg7tcjnIl/xz2WAdmjASxOMCH7xDyUE3pe2M0h3goepoUcWc
 69RCbkNjwGRyqrDigHjp8fpQYRFaXVU9jioSC9ud56EZN5ITH4Rqsn+kQ3Ccr7icKKwq30OjXGp
 lHbpA1EYoAqWmYGShRTSlhToKnyXqwdRQNSsH7R084jxg3qdYluW5y6v7Qt1dh03HB7niqw1UX/
 gnv+C/ZBdbkKQbodsXHtxHYv1Zuj/yzYog1/UZ34+C3S5hcuAYMQF7tYb1GUJUad835GvwEUeBe
 owGVvrKcKH0bsmXhemVplwDXCKXsXJmOumCQHMz89bcFBykm466UFJ3Y/jWIdKrG4gIFEECOTSw
 /N63ed7ieEL019HB3j0VRGhymMIpYydFVtxCMUUPgQcjyWLkNAb6YT5xDq4CyCBuVFqq1DFZ
X-Authority-Analysis: v=2.4 cv=VvEjA/2n c=1 sm=1 tr=0 ts=685153b4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=dGWFimBq7PPEW5IeLiwA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: X1O5OIk3xxjaC3bSzGAdZHJ6stRDJQnp
X-Proofpoint-ORIG-GUID: X1O5OIk3xxjaC3bSzGAdZHJ6stRDJQnp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=552
 malwarescore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170092

This Series is to update PCIe PHY settings as per latest
hardware programming guide and remove max link speed dt 
property for SA8775P PCIe EP.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
V4 -> V5:
- update commit message and add reviewed-by tag in patch 1
- Link to v4: https://lore.kernel.org/r/20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com

V3 -> V4:
- update commit message in patch 2 as per review comment.
- Link to v3: https://lore.kernel.org/r/20250525-update_phy-v3-0-5b315cd39993@quicinc.com

V2 -> V3:
- update subject in patch 1 as per review comment
Link to v2: https://lore.kernel.org/r/20250514-update_phy-v2-0-d4f319221474@quicinc.com

v1 -> v2:
- Update commit message as per the review comments.
- Remove max-link-speed DT property.

---

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


