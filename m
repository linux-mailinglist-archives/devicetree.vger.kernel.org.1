Return-Path: <devicetree+bounces-224254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E40E4BC2291
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:50:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25C663E3077
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8CAB2E92A3;
	Tue,  7 Oct 2025 16:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GELZehE2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E0E2E8B94
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759855770; cv=none; b=D0XgrXiscnizt8F7zbvDl3iRu5tQEyJ69j61Fu+R3BggPFG3W4Z+nu/uRI3/kREUCtuZ3JCicDlgVGYk7fHzOjW+XTg9V6522KxyiUehp60SwyHDn2bCMcFIilTJ3VgeOu+M1cFHOSCLf7sflrXYyK5ydKjPMBI2IbP7CApTv4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759855770; c=relaxed/simple;
	bh=yQcmBzzoF9DWalLjee8gEifniSD8YVltfiDi807djjI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sWXEEOJVehCWPIYajOf98iOuj5OoA61dtfBa5JFbAgAv0am5Ay2dwFVnOSMudDRqMNNaTlKlV59GXzA1vhCz+HSaBXu4X08zWn0uz9zCZK9+/Aw9U60OJ5CuQm/npAEp7Wps5c5uEOEOH6zPxvntYSk71R54PjlI00aMFskKIh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GELZehE2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597ET73t026597
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 16:49:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	64fVTnFFfZEl5jGpLIwHf1DYoSU0yN7CegjL03AoTgI=; b=GELZehE2ShGlnKQv
	C22iyDTQdnd++qArj5K4i/pJNOxfiMc72Funw1edh3X/rboFvFCRmroeZUwe2+y/
	ARfiuKqDiLb7ZaKtRFZPScvf62cov5SZc5hMzuR0blXfJ+HFtNsIL8iYnhzr7nEb
	pYGkycI4v3H2u65ojadcQwnt0ILKyX+HQ7uEnTKs4RrJckIwnmMQZOSu82nKj5Vw
	wNWnDWU1Lpf4e6rUB1fDLxbjkaXvadsP/KNI0vGG7EecblolS1Cndr1FP8eGZ2MI
	UURa5c+PEIbZQUhvbTv4qza+jK0XAjz6tko/b9iGsXlf1mQtFYxXY1+W1FB+zWdH
	EKqCbA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0kq37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 16:49:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-269a2b255aaso127602325ad.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759855759; x=1760460559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=64fVTnFFfZEl5jGpLIwHf1DYoSU0yN7CegjL03AoTgI=;
        b=sasX2TRz9S/budrOg54YAjznN2hZvCwiwkfjZazwR8WhnxU+iTR40MqfM+4lqcFF6s
         c/4vn8QrMqjAHsa/ARf9zfvHBMMR5tJEDE3XizQdwcr2JMx8b/Dkyi3ArwO0TbUIia8g
         ab2YdE+URiado1ewpBV2Mg2qMj9FFBRM5uGZKUFxCxAXGiK1VM3rP+FGpQS0JYCzZqAz
         mAMvf04XX9iLhNvjDIv8PLRVxOn5xbV7w6DWgVK7OfpK8HOFLlgGuU6LM3i6fqNsa5z7
         tkGtv/5Vbn74uh9mfQUCKbtNGwy7sM3vOv92jBbVhiLXdl1hyTI8dXEM2K/H5xrZvh0+
         zHDg==
X-Forwarded-Encrypted: i=1; AJvYcCVZvHm4b1uuIdwPB/ZAHNvBH7xC0xQ1dG8Ewtd2oyVJJtEfUUDRjfQoYS8o5KZUySalIoHLK90ZUn9X@vger.kernel.org
X-Gm-Message-State: AOJu0YzQOu/Xgzq0DLz+zUBc1S8ctgcVgo7WwIckC+tLx7J3qlH7HQjv
	tAnbU0OAru1DO1CAbkaL+beXMT6UwTgPiJ+hKw9WvnFPN3zswUNYU9pqf4U5kNy/B1lmOZt/KAr
	WILJBq6YvcafXQpZrK2YOE/w+LAA+JTin8nYBM7aUYILr3e/1DzfMr9efmAa08bwtQPa9iNhA
X-Gm-Gg: ASbGncsDl8UYUnRSuy5bz4+B0Xerbn+WuKxEtMsOhdT6fpz2VT4DJo0ys7LbU8ec8qm
	mW1QnNLfczR0zjRtgnqtEWimUr/6VjT70XMu7ZT7giWx26ITkC7Z3e/HfnS+4E2byxLZlfl90i7
	0gpUNf5qBN1mYaBaEjj7OmDAfFQqAdSuMlFr9HyrdsQZInPv+PMTuonf//t+UZeZjmSKCvF8o3a
	p4r5t71o9VmPf1C5rV2dNP2iENmjwCjcbUYu8QAOIScJkHZ2+kWfsxJXoX45o9467Fk9SE571CR
	JTBB94Own/Rb4o1qnP+YZdj3geO4FLXa3LeI3f+agkPvYXRP8FfuK6X9y6w7QWtO5ctDIgwj
X-Received: by 2002:a17:903:910:b0:258:9d26:1860 with SMTP id d9443c01a7336-290273ffeb7mr5078975ad.40.1759855759224;
        Tue, 07 Oct 2025 09:49:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFjslecCe61NM3LsrZB6iTB6HGCtdzDllatkqmlEEptEDY1li5Q+TFUuNY5rlkX2+LZYBPuQ==
X-Received: by 2002:a17:903:910:b0:258:9d26:1860 with SMTP id d9443c01a7336-290273ffeb7mr5078675ad.40.1759855758625;
        Tue, 07 Oct 2025 09:49:18 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1261e2sm171990825ad.38.2025.10.07.09.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:49:18 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 07 Oct 2025 22:18:46 +0530
Subject: [PATCH v4 01/12] dt-bindings: remoteproc: qcom,pas: Add iommus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-kvm_rprocv4_next-20251007-v4-1-de841623af3c@oss.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
In-Reply-To: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759855750; l=1163;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=yQcmBzzoF9DWalLjee8gEifniSD8YVltfiDi807djjI=;
 b=eNgm6wLt3+Ue42wnQTOpuEaYPRaxtNeiY9CgLvnlGlttjle8kCO0E3SwUGk/4jsz5Fiv9CZK7
 VwQO+7gcziBDRo+DfyiJUIH54HwiUkn2h+mLfm2LqOxBPEflbGLup0V
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: Zj2MvDnhue-HeVUiPbqWV_pI4l-7rP7_
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e54491 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=yGyP_gyn_XtU8QVV77EA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Zj2MvDnhue-HeVUiPbqWV_pI4l-7rP7_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX9y69vtgubZds
 mnnl/7ZvHyVU/jeUhmapJZoD7xWY52PacYbKafMhCpY/u5P0fMjo6KfDlLXpsLMzimdE/1ptH04
 8mJFR4V19Dkyyv8hQFRcG/xFH9XD3WCiH+LrAWN3aTxRqPIFKHnV/EL6y72ny+JFyDIzkNd2lNS
 NuQwdyMyGRJvVCbwNuGwFNQOLG4oIGav+3nDnMFj+h/zhWoIiGqgiIgArpBuN/vLGKPNyWISRtS
 py8VfAyfBoyVYMmLVI/jFrqOeWPcb778y1nm9XpAdWjzFMk1oL0uv+XUZkBak6IZAFbbntkSspa
 7GDPVxOxflR5keXJu4eRaMZNABLTrcyGnWAVkdF2C1cpdKqI/s4LBh4AKjW2QXsCKhoO+Ani59g
 SOmtODsdXdJ7OELCGTUjQxN+J3F3mQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

Most Qualcomm platforms feature Gunyah hypervisor which handles IOMMU
configuration for remote processor and when it is not present, the
operating system must perform these configurations instead and for that
firmware stream should be presented to the operating system. Hence, add
iommus property as optional property for PAS supported devices.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index 63a82e7a8bf8..8bd7d718be57 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -44,6 +44,9 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  iommus:
+    minItems: 1
+
   power-domains:
     minItems: 1
     maxItems: 3

-- 
2.50.1


