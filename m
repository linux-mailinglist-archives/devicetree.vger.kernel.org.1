Return-Path: <devicetree+bounces-180962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D73DAC5BFA
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16BD51BA22AF
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4EC21ADC6;
	Tue, 27 May 2025 21:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eFOUBIeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBA021A428
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379913; cv=none; b=BaUQsWI2vXhIdie5noNEypo+dyt3chHS/dqoaJsmvkz1ndTNEd6W2Ww4vRr+WGreSxuJzy2ccXoQXW78t3ztcHM7GqF/xdq2TMAjZt7Z62/inQiAFuuVp0j1pFHZ7VOaxzTsY6E/WUfAWhEK1JQi9Mvfc5fdIyYmjp0vBQse8Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379913; c=relaxed/simple;
	bh=wCdzpXsKw8zqQyaRyA8EfWIj8Ra4i9wLlBGWl4/WARQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uIzXboFIZXvU0qqrT0Gd6zyrCMpXfSQ0ge4pXbpPfOGdW0YN6FHDp8QLpbw2DsjPyNT2uRtKtg1h5Kv2QHwX47Y5kLkNISCkDiOYoFq59TC0xfWjAFon9v7zgDDdb0uSPoaxKxnNsq7wY0rRu0cGROu4zVbEhgP5dkEVHtY0HVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eFOUBIeA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RG6AwS029201
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LPkqIIVJzTbHReDF6liD2MG4ODSDIeHW603+18LbzM4=; b=eFOUBIeAvN/dWFCq
	xOi2G013rlZ7UNJ9SVpmPsTDwPGAB0oEuAjvAfGdvYksbrdY0symWV4SsdCUOsvr
	H5m77PaAXjMPVVVdCT9P3/+YHl8oK9cv1yc7qN690fZPZXzsLObszn5SD3YFxVpb
	nsJ6boRRZavZhS8IKbberwTGTRdwJqN0P9P2MJiWDKgdSIlh4kro4o67+Cydu+Cl
	YA4eIzQHP/iwFdzCEDtfnZHghqC0g1ri76po2htmvubU5wzX8UV4jdokohDGlsNs
	M4HGeox6sJpySVWdUqXm3ocOEI96B+VrtD5xDV0fycJ/NciETksjai7aCIAzwQIq
	v0TNbw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992j8ne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:10 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-742a969a4d0so3016857b3a.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:05:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379910; x=1748984710;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LPkqIIVJzTbHReDF6liD2MG4ODSDIeHW603+18LbzM4=;
        b=UUaEM26rkWL8K9j078Dl0+4CVdjFmJA9GLl5GzpLNEvBTNPuMTcuEghlVjfeuVwE2/
         dVNAlDolZdKnT1pq6nr8Yg3q9o1eO9Qn4Gp8qqSB0COtnddA4Wz82XJh4WfLjm54l7io
         b2WS7/DD4zP1FThB5ENYrs2Xse+NciuIkGI+pOINN+lGT0VqUQ09+IOKFkV9X49Of8+b
         wZFnsIxVCQyU8ybhmeEjETq9xeb9iylw0seBlUl9BQh1gC7W3KzSXJBA1G/iXUaOw3ly
         adXNtwWR1/ABjilbprSjEuvQXrlAjIILYMBZWN/lsA3GCZA66aaCeV3MbN9fndWvXvy4
         YEqg==
X-Forwarded-Encrypted: i=1; AJvYcCUrvP8ecWXVxwmc4oyT0Ws4F9VQDAZphw9nwY76/soGRhZrlaJH+W+2rWNEwzMfV7SWXPIjNxLdJRdn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5oh14JLyGCpcJz3S198z3lQusjX1kd/ovcV9XIhB21yFtMA7N
	ep924QnU0kA+hTHNBG7SxQMp1q2wQ2mN1Ul+H8VBwbB1YJB43tu0/Wg2J7Sv0GIibz+eYNR8rCr
	En1hKan6XY/ygC+IAw7wR8f67NLDdt1XxHdvjYjS2IyG9vxOOYmBNKjCUYT3c3/Gi
X-Gm-Gg: ASbGnctUFs/F1PL/j/bP8n0Anz370fnSS1LUMhaH3EzsoWkeWhfKMbG3CmHIW2V9lQu
	lONnsF5EV1z4KZ9KxKnTpZiHZJfHPU5mIQ57mw7CE/kUwi+vnJMk7CHRFjGkxISys4OGVXIrjrL
	xvEWNbZkitZgzj4xYIdOH2aYl9ydG49k8jVB//H7pLAiVIxuqz9jwbjhqR4t8N3+KPX6pLZ+Jsc
	PfSG6Vy/ZfqGCOpMEE6MvWLXGHszOsrbbT8OSe0xjW3Qenbm7rrUVpJSWB8LOcjBvJrfJZ6tb3V
	jegrLq1QwRGo0wf/+TzJWM5NqvYUUP3ULElgdf6dgh3rI2ZmI0USvGlwrnaGNOSiHOY=
X-Received: by 2002:a05:6a00:a96:b0:740:6f69:f52a with SMTP id d2e1a72fcca58-745fdac80demr20724865b3a.0.1748379909730;
        Tue, 27 May 2025 14:05:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE89XO/JDVl6rd3hud7F4tMJEpNAb1237KFGDPWMLXu7CEJYly3v5ShxkxUVfmWpgn+xSWY/Q==
X-Received: by 2002:a05:6a00:a96:b0:740:6f69:f52a with SMTP id d2e1a72fcca58-745fdac80demr20724807b3a.0.1748379909299;
        Tue, 27 May 2025 14:05:09 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:05:08 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:46 -0700
Subject: [PATCH v6 10/10] arm64: defconfig: Add M31 eUSB2 PHY config
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=926;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=wCdzpXsKw8zqQyaRyA8EfWIj8Ra4i9wLlBGWl4/WARQ=;
 b=JUlbr6mF6I6cr5T9ZHdAGEijiVb5Mu+5V1BZNQUxXDHvq3yjKg+SamgDa52qed7t8bmWdrkdW
 42TjvtABTDkAncpbXnX/wXXb06bSMRhHbxRyyU16AIFkDNCwCzClSUq
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX9UnP/UktuHoE
 0ZYMN42Zq/kXpyzcm5oLZDc1iP3RIzcR3LKdISQEKeVQ94q9aQICHTwPMZwadgWzMI0e6rdvqRK
 1C256IEKXoqd3ZJERPt9UBRbU6Mf4HtZFK70vDXFTnDC/ILl5jBKRSba/ufPO26JsGr2wse72j5
 jDohOSJHV0w7ROMi4bGF+L5LRBpo+gEGlH3rMFY9ISQkbmerCVhAgi3i20oPGwwI28FWwC1RWJ2
 HVmqkGDRk8BGeoPcvbcdprLJ/0ta/TcRPQrmZ0VzojNNftylvN0F95mIT2rm/qzHQiLo2Joz//p
 FcIZFgZaTnDh4m13szjoo2F3JZ3ZJN59/hzqex/i4bnGIxk39wI7V8ip+LIb3AKBHlBIJ4H9g8T
 Y12wiAV16ZgrGrAH6CV5q565UEfXRy6N52+4FphxS+1Q8EeUJgJpA+A2FklT9gZ2HTZFuTTx
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=68362906 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=yCBuECYR7Rf6QDnvud8A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: 9jvUQXcSGQElYSPsdl9JrZBN21Zj4sC-
X-Proofpoint-ORIG-GUID: 9jvUQXcSGQElYSPsdl9JrZBN21Zj4sC-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=511 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178

The Qualcomm SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
the Qualcomm SM8750 SoCs, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 897fc686e6a91b79770639d3eb15beb3ee48ef77..f4de2473b3078543b68b01387ac7e3ab6951e4a4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1600,6 +1600,7 @@ CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_SNPS_EUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.48.1


