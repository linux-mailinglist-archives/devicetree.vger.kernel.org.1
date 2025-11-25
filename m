Return-Path: <devicetree+bounces-241906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA297C842F1
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:17:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B52654E8D19
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2E72EBB93;
	Tue, 25 Nov 2025 09:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BXudTuhf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Egh1Wq8w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F7A263F54
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764062210; cv=none; b=jEzbxKWalkKCsNBISU8F5RWVs7yXnKkGcWGRgqR8DAF05DhJ02r1v0hHuNwbucAb2U93kWvXYNrMNmOOOBQPjmbmEgp0uj6qQRPAqwRtKSlYhDRInU0XldukeaSEQYShvIhE9hiWi6g4L59Qrcl6S2RY3vlnrxXWJoj3QmIKrxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764062210; c=relaxed/simple;
	bh=lhDCbIcoXm8l0+EHHUOegAZG7EHOFvzMTONdMXqjRvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RzL4PBbS7WJjgOmKH5wilbA1+2YI0syDwaVZ3xM6ArYoeQzVLKDcsaX378o+GAR+skOT4ZLavHXue8p8qcqIatdvKZrczrWU6RlWJZklKLNUdKpvEttu3Z7sTIfXOuYiCnGaDzX5Cu8is5YEWf7c7SyWYLGDAWSrgy2cIZCwXg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BXudTuhf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Egh1Wq8w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP2gdu71232185
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xJ9D1s/yri3IgF3ATpCR8TpSZJj0ewqTKeESOhEzQPI=; b=BXudTuhfhKNp9h7M
	nNaizSS8bnI75ge7yy08jCICnADA+bvkjIsM42M6ykm2eFfKo9so8npWnLvbThvA
	inGPmoFsot/0Uxfv3U3axPYBwXgnl/Pub6qUnLJYlBLCPCrk4iBkE1hQSTwM8A9A
	knhZ1NncOHWU7Nfaf+/HGP/1+44bFPhYOB34O6Y5MnfkszCBM9xJ59NoOJSC57al
	38fedbuZERqZJkKpP3GP5DoXUIJxU7x2i/rFgyu8z1Nr7OzuFsiPr7OkY/Dai5CA
	bBboV6ZptpIcGbyzlnnFHK4bgcGs/2cauZkLQUj7vf2qEINJ4xjkeSfEf0dO6f6y
	j1UUTw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4an0xyhj36-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:47 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340c07119bfso11051849a91.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 01:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764062207; x=1764667007; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJ9D1s/yri3IgF3ATpCR8TpSZJj0ewqTKeESOhEzQPI=;
        b=Egh1Wq8wbeFtLpLLC1TrivEJmZp3cVoVgibukHM6QNsnkyBQ9DpQ9JjNab4mY8AHk7
         WuRhsE9Ou9iZrfgW8qAxrsmM8gSbk23ZjjAnGEJH4yb5P5zX/5a+cutPfDdJzOmAwEeL
         2c/aLmNacBevbKOhR4r0N0AdYheTiHjCbwF6H4PvaYzgJhUuyBmeoN2ceUQUQwI9GN49
         M9y9fgGFnfHUFJ5dcSlsSNjg1a+Y6P9Tx+WAWcpbPbcmDaGvDSa2fFkivVt6T0/eZg1J
         Y64oWtUdkZkX0Ay+S4w0dBdTzlShWS9/SKbqLbgcZWGYokzQtgFE9w2GHLMx8bsSk/2i
         SuGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764062207; x=1764667007;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xJ9D1s/yri3IgF3ATpCR8TpSZJj0ewqTKeESOhEzQPI=;
        b=cALm6NpyhReuHZ8ObrcOmRsPCH57rp1ff+vi1897kums2MevdcYX9IpeXjlqTo9vAl
         jGfZa5UGn4bwzrGnyf+wPKm1Tx8NlRwxtYn3pzM5dGtUdlALSM4u1Gc/wUp6N2z8xTne
         XGYhy1ZbJ7AQGRAHOKvFoIoE3h2PC2qrgFZ+m6PQ4mWS13baW6AYw1jLhMcE7xT+PoZT
         IczC9uaaYIgUBPoftOELxySJM1p/hzPGPQs2GhwFKXi+kRpaBiJ5dpqQCJP9eOGca9w0
         oRsb8tst7tSWG8ba1CULgWbE4egxHtXJC1567kLpG8YRRmbbYjkDrRRmm/yat3YIdoci
         a/Ug==
X-Forwarded-Encrypted: i=1; AJvYcCWEXQsukaXFUPv/z58NUr2S2KJkxH1muZqrE/6U9wbBxXdhY8VecL91r9NnU5gvfEcLw5an4UuUln/3@vger.kernel.org
X-Gm-Message-State: AOJu0YxIyD/pwiz5Gx5vLM8dSnWCHg04D8mOYHeFjnVnCxPRAdCrZntk
	yrxLWFCxxVDnZwIhbOoaXDHY5lctkgAOWlzQ3QHfN7HrVIBTglXjej3Dt3PvmkMGzeVLjdcS9nU
	i5ZYhX5k4GaGr6QY70W6eQVCYWHvGdShetBen9Zy1WrHSr5pdyLBRx7Bgs19045TsiA8SpkzC
X-Gm-Gg: ASbGncvWFooYL2ZsGotQUfUsg+ZfxlsZ5WwRN9ACwWv+ouQP4UHlfQ+LYhfkdIER2gL
	ixztvJ/PBvytPTnqG/s6ccUHRTf/ORwbSngBuL1UM39qIyDsYR+K5ebJ/vzEM3RqfMD20Z6oAzu
	IFbfUBCuYEZmSVtiU+yhXlcaSpKQ8W/ZKs42O2HFzxc9oBJnKtWpuj2OIs9VXqP7C9uSwIoKnUI
	StiHUQY6YmKiHwhDAsQTA/ERUtcGUVDEXdh2Sv7hMJ0d3qvvvEjFskR0GXi7LmMrETY1+VnFZuB
	OaU523Lwc8vivuSaQRHRf0gStEdt8FYmR2KYCV0AQwGUBGl53rHG+3V9q3ymG7Dckf7orp0eFXG
	x5VdYkQ7OBJKfWhAEhkrqRiwpH0bHyVrfAPm/m9AKmW2ZiRCTit3iO7oj+Ne9XkwU+Hud3606/g
	oykUnSNUWMR4+p9ayyrmmlR+TfDHZFQA==
X-Received: by 2002:a17:90b:4f45:b0:340:b908:9665 with SMTP id 98e67ed59e1d1-34733f50e52mr16030608a91.37.1764062206793;
        Tue, 25 Nov 2025 01:16:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+4EwYC3543/amZeHdio3x2ddnK+yRFqyKCsXJN4ibOjYvrUWeKH+4wKNy6brHbXTtpTC25Q==
X-Received: by 2002:a17:90b:4f45:b0:340:b908:9665 with SMTP id 98e67ed59e1d1-34733f50e52mr16030580a91.37.1764062206305;
        Tue, 25 Nov 2025 01:16:46 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ecf7c29asm17288851b3a.9.2025.11.25.01.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 01:16:45 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 14:46:24 +0530
Subject: [PATCH v2 3/3] soc: qcom: llcc-qcom: Add support for Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-glymur_llcc_enablement-v2-3-75a10be51d74@oss.qualcomm.com>
References: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
In-Reply-To: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764062193; l=6806;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=lhDCbIcoXm8l0+EHHUOegAZG7EHOFvzMTONdMXqjRvU=;
 b=p6DeUpgxEMpERKP0D9/hY8LX4cssazrUj3mk0ot1Sf0jFfUOKXr0fSrRxlITuA/UBsRUtpP4b
 HefOWhF4EwyB4u84e1ZK4N9v51CzG+5PVoM+LLUIxrszw2UYHTT9uUJ
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Authority-Analysis: v=2.4 cv=S+bUAYsP c=1 sm=1 tr=0 ts=692573ff cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=4LaLCKXmak5nUjv6dOcA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA3NSBTYWx0ZWRfX3ffqRTIuXIxZ
 ahEOLl/PG+d2Jfm/vcPN1+tgR047jGLuh4iCQsdRV+hio9wkpQsczrBZzZ+HvyrA1jmMOiHHBsJ
 ABNrdhhbbpKemzVH5fJEE7kf/ioJWo1cyEzBN0O5XniK2ctifA6i4ZD5V2RAhXC7hfzb6o8+4J9
 Bh4ykoBUgMnk32ouDRKJ2QMjRmDF2nxwvr4Xo5mBrP6fgn6WNF5Iq0TKwnnsCfTcYsOrtBc+y3C
 lTHY+6JE2/I9pF9S5qVY9jx4L6RKnAjOV24u8AKdW38TvvI1htjnlaMqQtDTkWX0QOjYwr6O4qU
 bnh6k/k676HfBoHE/q9cqQz1kpPWWp0El0j5udiOKYpcfS83ua6v+h5i0RGpu0mSJayHFhh/0HB
 wfp/3FPkkTmrtMlvNyWTZqz9XplXYg==
X-Proofpoint-ORIG-GUID: cE0vGJcAWShlNbmjsP01VJB3VvvQU0hR
X-Proofpoint-GUID: cE0vGJcAWShlNbmjsP01VJB3VvvQU0hR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250075

Add system cache table(SCT) and configs for Glymur SoC
Updated the list of usecase id's to enable additional clients for Glymur

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 drivers/soc/qcom/llcc-qcom.c       | 207 +++++++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h |   4 +
 2 files changed, 211 insertions(+)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index 13e174267294..1abfda7a58f2 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -182,6 +182,197 @@ enum llcc_reg_offset {
 	LLCC_TRP_WRS_CACHEABLE_EN,
 };
 
+static const struct llcc_slice_config glymur_data[] = {
+	{
+		.usecase_id = LLCC_CPUSS,
+		.slice_id = 1,
+		.max_cap = 7680,
+		.priority = 1,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_VIDSC0,
+		.slice_id = 2,
+		.max_cap = 512,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_AUDIO,
+		.slice_id = 6,
+		.max_cap = 1024,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_VIDSC1,
+		.slice_id = 4,
+		.max_cap = 512,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CMPT,
+		.slice_id = 10,
+		.max_cap = 7680,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_GPUHTW,
+		.slice_id = 11,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_GPU,
+		.slice_id = 9,
+		.max_cap = 7680,
+		.priority = 1,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.write_scid_en = true,
+		.write_scid_cacheable_en = true,
+		.stale_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_MMUHWT,
+		.slice_id = 18,
+		.max_cap = 768,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_AUDHW,
+		.slice_id = 22,
+		.max_cap = 1024,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CVP,
+		.slice_id = 8,
+		.max_cap = 64,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_WRCACHE,
+		.slice_id = 31,
+		.max_cap = 1536,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_CMPTHCP,
+		.slice_id = 17,
+		.max_cap = 256,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_LCPDARE,
+		.slice_id = 30,
+		.max_cap = 768,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.alloc_oneway_en = true,
+		.vict_prio = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_AENPU,
+		.slice_id = 3,
+		.max_cap = 3072,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.cache_mode = 2,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_ISLAND1,
+		.slice_id = 12,
+		.max_cap = 5632,
+		.priority = 7,
+		.fixed_size = true,
+		.bonus_ways = 0x0,
+		.res_ways = 0x7FF,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_VIDVSP,
+		.slice_id = 28,
+		.max_cap = 256,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_OOBM_NS,
+		.slice_id = 5,
+		.max_cap = 512,
+		.priority = 1,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CPUSS_OPP,
+		.slice_id = 32,
+		.max_cap = 0,
+		.fixed_size = true,
+		.bonus_ways = 0x0,
+		.res_ways = 0x0,
+		.vict_prio = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_PCIE_TCU,
+		.slice_id = 19,
+		.max_cap = 256,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_VIDSC_VSP1,
+		.slice_id = 29,
+		.max_cap = 256,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xFFF,
+		.res_ways = 0x0,
+		.vict_prio = true,
+	}
+};
+
 static const struct llcc_slice_config ipq5424_data[] =  {
 	{
 		.usecase_id = LLCC_CPUSS,
@@ -3872,6 +4063,16 @@ static const struct qcom_llcc_config kaanapali_cfg[] = {
 	},
 };
 
+static const struct qcom_llcc_config glymur_cfg[] = {
+	{
+		.sct_data	= glymur_data,
+		.size		= ARRAY_SIZE(glymur_data),
+		.reg_offset	= llcc_v6_reg_offset,
+		.edac_reg_offset = &llcc_v2_1_edac_reg_offset,
+		.no_edac	= true,
+	},
+};
+
 static const struct qcom_llcc_config qcs615_cfg[] = {
 	{
 		.sct_data	= qcs615_data,
@@ -4103,6 +4304,11 @@ static const struct qcom_sct_config kaanapali_cfgs = {
 	.num_config	= ARRAY_SIZE(kaanapali_cfg),
 };
 
+static const struct qcom_sct_config glymur_cfgs = {
+	.llcc_config	= glymur_cfg,
+	.num_config	= ARRAY_SIZE(glymur_cfg),
+};
+
 static const struct qcom_sct_config qcs615_cfgs = {
 	.llcc_config	= qcs615_cfg,
 	.num_config	= ARRAY_SIZE(qcs615_cfg),
@@ -4941,6 +5147,7 @@ static int qcom_llcc_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_llcc_of_match[] = {
+	{ .compatible = "qcom,glymur-llcc", .data = &glymur_cfgs },
 	{ .compatible = "qcom,ipq5424-llcc", .data = &ipq5424_cfgs},
 	{ .compatible = "qcom,kaanapali-llcc", .data = &kaanapali_cfgs},
 	{ .compatible = "qcom,qcs615-llcc", .data = &qcs615_cfgs},
diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
index c52464262ab3..30b436d0140a 100644
--- a/include/linux/soc/qcom/llcc-qcom.h
+++ b/include/linux/soc/qcom/llcc-qcom.h
@@ -74,13 +74,17 @@
 #define LLCC_CAMSRTIP      73
 #define LLCC_CAMRTRF       74
 #define LLCC_CAMSRTRF      75
+#define LLCC_OOBM_NS       81
+#define LLCC_OOBM_S        82
 #define LLCC_VIDEO_APV     83
 #define LLCC_COMPUTE1      87
 #define LLCC_CPUSS_OPP     88
 #define LLCC_CPUSSMPAM     89
+#define LLCC_VIDSC_VSP1    91
 #define LLCC_CAM_IPE_STROV 92
 #define LLCC_CAM_OFE_STROV 93
 #define LLCC_CPUSS_HEU     94
+#define LLCC_PCIE_TCU      97
 #define LLCC_MDM_PNG_FIXED 100
 
 /**

-- 
2.34.1


