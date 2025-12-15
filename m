Return-Path: <devicetree+bounces-246462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D6ACBD04A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A0D330249C7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EFA732A3C0;
	Mon, 15 Dec 2025 08:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ipzbHdt3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZqYoXEpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994C9329E69
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788057; cv=none; b=bgNcisEyl6DH5daX4hfi+UVJS1F1e9pUg8CbjpU835IlnBu+F7MVSCt7hQB+hXf+Yol8v64Xp6y9UdZHOJyucN7jGoVZAzM/dSdN2ccpSBvRtsQfsbHRMtmhCcU6oUih4J+/E2laO1tSwKxj/3q/LU6+P0noygp7pLRv8tkFyW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788057; c=relaxed/simple;
	bh=CWfkoJLjgIy2gUgRXCOUxurYebB6LVsEC7XgknJptQU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OsUL5N+HLGNnpk4QmCoF+qj1Ys5CR3AKeBFUxKPa02DfYlxNwNe5eg/jcx6gLv6EgYt2uvrPArQXpvzLJESUYBpNUBB428SEH1KsRfF7ZVa6OlRsvqHDF8A+NnMNy8Jd4zp8/ChAYpmPPMuMJyxe4IV14M7mRs8QhbKjK9WmJ/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ipzbHdt3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZqYoXEpS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BEMEDMg2742182
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZtV4X5cR6Ur
	U16OtyrxKymwqQ6A4WNFYALAmfpTs2C4=; b=ipzbHdt3Z5lcQmn0jzbJcgXpN8W
	UfprVbrjyX2o7v4dGazqeKJk+z5+z+uEbkqeUyfRq3tdTAqZZeBbAfaylR0r3/J+
	lM+oCBP9415T45FFHQCSYOZrKMNnEf4B8iITcmo41KaIUtgvLutINk1QzFUAciXR
	QURaJOUNHdf9E2q6yV0+vxJzc8IncDdukXeePj8U5oigDWQ6Ixv4TVya4DpuiAeL
	lQg6+g9/0Aa7vdp1rUxSH/xYKMWx1rBRwlwekvDjqrcGPjBjueYOLG6i/Vtboz/e
	VJdvnfzKirxhGtf7OWixKI78Hu/Tr9CPXfB+vVa092DLKnkWJSbqRgv1SXA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119t3sx0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:54 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1dea13d34so43461391cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765788054; x=1766392854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZtV4X5cR6UrU16OtyrxKymwqQ6A4WNFYALAmfpTs2C4=;
        b=ZqYoXEpSQOeTviWeDH19SYN8HBdoKXPUib39kOcETbrUluDIj4R2kMdIM8L+zfj5m3
         L8d8PE4kJI5DQtknKxgdnWLnAjijXwKAKYDD0tsz3Jrl0A/WgxpF3PM3jvnu7rF1aAzU
         nUiH01ieAzWyW/xF4ZgTSweLVtdZnH8u6g1bMpECIWEtluJmioIybknJ2dPWNpIaYHge
         ExMGABvK7RQN8HVCuSqB1yH+dgDl8/t0FDPYRJhRSNUgZ7PP5DNEc+yXUumhyl9C4yxd
         HXjYn4knP1rgEOW2tnj33EtL/S/YWNlU93TL2YXQAbRjFE84Pt3KyKFqpGbDckRsdiol
         LDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765788054; x=1766392854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZtV4X5cR6UrU16OtyrxKymwqQ6A4WNFYALAmfpTs2C4=;
        b=jQs47CMgzP8aCD1tQsnhstJNCO+D2Woy0xDtw4NYeMDdc5lt94lAlA1cKudSJpDEvb
         YxEK9twU5Wwh5T70rmj6lLxpmAkY9dySm+dyQxuYIy39KEX08h7PiQAhjQLTIkRzUc0X
         iMJe7YR+3wR+BV3EEEM4pveVeHq2mUjb7QmdZcUcvvUCrV6Td+9ywe/noiilDDVc8HJK
         OnVJa2o21536gZ5q7Ei3HweyL5WxhKFzJQu3NL58V9hsGUcqryhHIxlHsSwc4GXv/O3q
         9spk0fqmfMi0wTy7MknswveeT8jiKENGIql7+m2elq4j5RbmqO7e7X8Zsmp3dG7x1obq
         wazQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnTgy8dR/M1zeJLt0FTBKj09ad00sHI+CF1yVHregchI23bTIIY6tUEA6YAo2m3KOiMkM5etUAFRJk@vger.kernel.org
X-Gm-Message-State: AOJu0YyD8WidYodua3XxCN76HroPKrded6IV2kEBaN1YXA40axB0qQlZ
	IrdmXumYsErtJwOkw5ejETOHteCQ75IVfiDjQSOUScDOt9v2TEdOb77V7bguGcPZJEgz5oMt7Ft
	EaZkNrojysmwCSSBEo3UDw5SG/S0VETRljKP94HZqX7sMGS/02hiFDPnjkRLALvI+
X-Gm-Gg: AY/fxX4YWeofMWgtPNQNPZtTVXATliHtkfYSDNVA3uHifnRUBTafdiUClBSAZ7LXb0h
	2r/y//2sINYyuomROpT76iLciM+HelsmZHOWZRyuO5AwvaFdJ0lQhbifHBerR+GLszue5NXMugI
	OAXolvcLrYYnNPo+XLL1pRdHJSeZTIpNjc2ZHQSz/zp+MEKCEGsI2r8JG3uM7g9UOTuMXf2iMG3
	Vn7xcsCRZ23Y9DjQYjjmRIJ5fn0M+QK7IQt1bbqU4Pzc4mYyZ/e84fOyhpuuBVG3u/JIfQ8Pl26
	XoKGbOOioYaOjqp2dsJZYlgCdNQ/H+nQSyyX1f2fMXDceYqLDi3fzTWX+zvqHYsD06iuzrRnLyg
	EB84VRqQaltVGPl+Am87o0BCvHHMhAk0ewnEatZedrtj0TS9e7JBAcZNGCGtzxNceAew=
X-Received: by 2002:ac8:5794:0:b0:4f1:c6c4:dbcf with SMTP id d75a77b69052e-4f1d05e1994mr118120791cf.41.1765788053691;
        Mon, 15 Dec 2025 00:40:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/1noZeIOiPTqPNhvlgm4f0gFz0fAc6cRFHkHLSAhxls+TIUbS04EGECkvuqYtOB+uQYVx2A==
X-Received: by 2002:ac8:5794:0:b0:4f1:c6c4:dbcf with SMTP id d75a77b69052e-4f1d05e1994mr118120621cf.41.1765788053258;
        Mon, 15 Dec 2025 00:40:53 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm90557971cf.21.2025.12.15.00.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:40:52 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com
Subject: [PATCH v3 08/11] drm/msm/dpu: Add interrupt registers for DPU 13.0.0
Date: Mon, 15 Dec 2025 16:38:51 +0800
Message-Id: <20251215083854.577-9-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3MiBTYWx0ZWRfX5Zuoppf4erh/
 paj1tFY/YTg7AwMdzXDudmBb7W5H+KW155AacL14bzboTKe8Zqo6H6q6QDm9f2WjraBwUg16NVV
 FWUm/1ldAAgvvneTwIWK3TyyMdH5ae7bN/dyfMm0flcd6qeXBIkz1AmU5+ivyUSwkh0D6PfFeyZ
 dYQr0urcGWnZ3IHytVP1l51PRD9pxsTS5bFuWK2kDrX3UvgiQh5n+/oGOhPbUhNNqPV/VDJ/Y4g
 Lp3xVpx2q0/RPr6THk+r+7R9uXkkVlqfX1ME4blAqcKQ+Bn+SiagzMG5+u98c9YAS938leLvpp7
 bvXZxeKNgbXCpoRNqQGYJOf5s4B6rNV8QOdtjHOo3WsOmXr3Ra7IMh+xd3kyreaXb/xrs2zQ8BE
 Aihb6Oe5RvuTF7xS8Bh2jM0vGHvACQ==
X-Proofpoint-GUID: zlX_o6hiyyp4Lpwnk3Eb34ynGrWALz57
X-Authority-Analysis: v=2.4 cv=E6nAZKdl c=1 sm=1 tr=0 ts=693fc996 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=RfJNy9JZAWTFlj1jTG0A:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: zlX_o6hiyyp4Lpwnk3Eb34ynGrWALz57
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512150072

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

DPU version 13.0.0 introduces changes to the interrupt register
layout. Update the driver to support these modifications for
proper interrupt handling.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
 1 file changed, 88 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
index 49bd77a755aa..5b7cd5241f45 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
@@ -40,6 +40,15 @@
 #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
 #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
 
+#define MDP_INTF_REV_13xx_OFF(intf)			(0x18d000 + 0x1000 * (intf))
+#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
+#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
+#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
+#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18d800 + 0x1000 * (intf))
+#define MDP_INTF_REV_13xx_INTR_TEAR_EN(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x000)
+#define MDP_INTF_REV_13xx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x004)
+#define MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x008)
+
 /**
  * struct dpu_intr_reg - array of DPU register sets
  * @clr_off:	offset to CLEAR reg
@@ -199,6 +208,82 @@ static const struct dpu_intr_reg dpu_intr_set_7xxx[] = {
 	},
 };
 
+/*
+ * dpu_intr_set_13xx -  List of DPU interrupt registers for DPU >= 13.0
+ */
+static const struct dpu_intr_reg dpu_intr_set_13xx[] = {
+	[MDP_SSPP_TOP0_INTR] = {
+		INTR_CLEAR,
+		INTR_EN,
+		INTR_STATUS
+	},
+	[MDP_SSPP_TOP0_INTR2] = {
+		INTR2_CLEAR,
+		INTR2_EN,
+		INTR2_STATUS
+	},
+	[MDP_SSPP_TOP0_HIST_INTR] = {
+		HIST_INTR_CLEAR,
+		HIST_INTR_EN,
+		HIST_INTR_STATUS
+	},
+	[MDP_INTF0_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(0),
+		MDP_INTF_REV_13xx_INTR_EN(0),
+		MDP_INTF_REV_13xx_INTR_STATUS(0)
+	},
+	[MDP_INTF1_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(1),
+		MDP_INTF_REV_13xx_INTR_EN(1),
+		MDP_INTF_REV_13xx_INTR_STATUS(1)
+	},
+	[MDP_INTF1_TEAR_INTR] = {
+		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(1),
+		MDP_INTF_REV_13xx_INTR_TEAR_EN(1),
+		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(1)
+	},
+	[MDP_INTF2_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(2),
+		MDP_INTF_REV_13xx_INTR_EN(2),
+		MDP_INTF_REV_13xx_INTR_STATUS(2)
+	},
+	[MDP_INTF2_TEAR_INTR] = {
+		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(2),
+		MDP_INTF_REV_13xx_INTR_TEAR_EN(2),
+		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(2)
+	},
+	[MDP_INTF3_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(3),
+		MDP_INTF_REV_13xx_INTR_EN(3),
+		MDP_INTF_REV_13xx_INTR_STATUS(3)
+	},
+	[MDP_INTF4_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(4),
+		MDP_INTF_REV_13xx_INTR_EN(4),
+		MDP_INTF_REV_13xx_INTR_STATUS(4)
+	},
+	[MDP_INTF5_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(5),
+		MDP_INTF_REV_13xx_INTR_EN(5),
+		MDP_INTF_REV_13xx_INTR_STATUS(5)
+	},
+	[MDP_INTF6_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(6),
+		MDP_INTF_REV_13xx_INTR_EN(6),
+		MDP_INTF_REV_13xx_INTR_STATUS(6)
+	},
+	[MDP_INTF7_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(7),
+		MDP_INTF_REV_13xx_INTR_EN(7),
+		MDP_INTF_REV_13xx_INTR_STATUS(7)
+	},
+	[MDP_INTF8_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(8),
+		MDP_INTF_REV_13xx_INTR_EN(8),
+		MDP_INTF_REV_13xx_INTR_STATUS(8)
+	},
+};
+
 #define DPU_IRQ_MASK(irq_idx)	(BIT(DPU_IRQ_BIT(irq_idx)))
 
 static inline bool dpu_core_irq_is_valid(unsigned int irq_idx)
@@ -507,7 +592,9 @@ struct dpu_hw_intr *dpu_hw_intr_init(struct drm_device *dev,
 	if (!intr)
 		return ERR_PTR(-ENOMEM);
 
-	if (m->mdss_ver->core_major_ver >= 7)
+	if (m->mdss_ver->core_major_ver >= 13)
+		intr->intr_set = dpu_intr_set_13xx;
+	else if (m->mdss_ver->core_major_ver >= 7)
 		intr->intr_set = dpu_intr_set_7xxx;
 	else
 		intr->intr_set = dpu_intr_set_legacy;
-- 
2.34.1


