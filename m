Return-Path: <devicetree+bounces-188629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D351AE464C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01A1E1898284
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 317E5259CA0;
	Mon, 23 Jun 2025 14:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P5YqHr6M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947C9258CE7
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750688069; cv=none; b=dLG0Kh2sLT3519QHGntDXTyH9csYHp1ThLsK/7M3r5CYPIY0/5lAfZm8IOsfMoLV4TuSyqUXcWwS2TP+hfTc1S7/iQSzF+Sj/v/03tU2gxquDAmIC3uErPgscPEaFuWyyxf2dMIX8xpUZcQnv/NKGFIJYNOB5wCeVxSgfjeoLS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750688069; c=relaxed/simple;
	bh=CXzUmqLlLPgJV9fUhlYdmN7WEdQrsY5odxja3TUwO60=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UZBSmYw2B/W6EuRd7B/qHAFfJ0RL0VC0TH+Rfn5MzAx5J41lJ+nJSOMCoHZ0rsZMmYu+ipECsjGNPOcmjbkNDqb15a7Rm4X9tUS11zdmSFeabW2DXgldAYMSBZVnfiySIw+vLLQ/gTM7opK4LUFdAi/PgUSlJ/1NyKPEpkc+IM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P5YqHr6M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NBr3hu029879
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wZMlnY8BYR2NJHtTMgElKXRX8o21D4nyviqYLbRcalE=; b=P5YqHr6MEH8Mx9NB
	/WYUbki4mLK2IqtMi4oqNA8F76ApbOVt9fG/gMv39Td96PfzaXZHfVdcbyi9d8lY
	LgSt97mPI5rvnDUC7a2kyvPIwvkbtm7hbut8Rpji80JQ/IICE4+Zx/aRB2JgzaQC
	WFgZkhvtNq8K18mTI/bW7USM9s+KoGbZ/4x6QHLhyplCc/xdgqAFmUaWckdYAhRz
	+x3u2b/YE9Ub9h8d7p2XmFqR8cstAcXXzZ+mfSVL8FPQZI765U5b8pVaBRSeSjNi
	bYB6XNwbvBfgC2ZUEYGhScDIrDB5K+ko5x85KNIRvJC8zP5XILZTDDp2koJ5PzVM
	sOXn6w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ey7k1p2w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:26 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-235e1d70d67so43015055ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750688065; x=1751292865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wZMlnY8BYR2NJHtTMgElKXRX8o21D4nyviqYLbRcalE=;
        b=nejV+YVfrxrQxNgZT7OX8qFEGWQSn5wKKcZPHGadGQruUR7OQ3XNaQ4tCcdwThuaRm
         dCcDw5jLM1tJrTg2ET1JSEmEnmyxJdgs7vdiNRne/p45Wm6CndoY75qhjrcPHPveHwRA
         fWxDBixjKj9izh1PjNgX7zozug+dmVpkpw4Uoothyu+KRPI/jjR/JRqGElmbrfhjwZh7
         aXSBntDcd26WQPkethXZ5MfuJA/WQdrtqzw4D0G+FVSQKG9Ej4wmNLjg3xPJzqdceVNR
         RPBtfuMEkNaaS4TOwd6Turhr7+onJ70KC3faocReOG0z+feX1jgSYlLYCYj/BgwWc/OG
         ZJyA==
X-Forwarded-Encrypted: i=1; AJvYcCVun2FHxAkJas9VmgrwEjoQbk1AQla7f2E4IknlrV+FxqkklnLIXoGbigKdC+MPt7FL0YWCN438wDZe@vger.kernel.org
X-Gm-Message-State: AOJu0YzKzTdxHCWwRoBx3lucaon6J6zywFa02LNXzmA0NUkwn47t+y/X
	11CWQLsEGo6BZZihF97oUpZLoLVUrx8ql5/tRyg0NOjMNQxURoocosIC4Xfy4J4Xzm2MR7gC9by
	BIKuiEN5CplvyA4E+u+bBiiQh0R0tEsT5l/5XXD6DM0ohFTfsaF4lO2LQ1/k6VPKlYj1KCFOR
X-Gm-Gg: ASbGncuX1tHOzIVvO1WRLpPhO3gjPnVb1xrWcOxLH5hogAJoRy+1mWxB4K1h8NV7Tt0
	VrnR6cJx3i30mONk49n+9Pvqpw5fQrFywEEZPksJYCHfOHRKqwmKO41lQ9FGA8TJDj+Iv9Ks9iA
	oanGYf7hcnV0l1OMfm1RFiu/uVWa8Ac6UF4/wKgNC/DPRHsJQbsBdgz7xNsxBLSeLqhavov34v7
	JsOp/IPPzMpKW1Ape/d6TxGAG2U9W1km/Teqo2jOjvzJPEzI/MzLvmvvmvL6ZorKHQj6IBbt2Zr
	MOqJ+sTjrEBljEuJrZv2E889Cv5T7sqa
X-Received: by 2002:a17:903:2381:b0:235:779:edfd with SMTP id d9443c01a7336-237d9aa9e27mr198761145ad.39.1750688065069;
        Mon, 23 Jun 2025 07:14:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJYwVOtji4ivszfg3dCwr+wwwtTLGvgE3mvwgNUp3nkK1wJ0Yg7CyP113mzC0FYbbRpk6BeA==
X-Received: by 2002:a17:903:2381:b0:235:779:edfd with SMTP id d9443c01a7336-237d9aa9e27mr198760425ad.39.1750688064536;
        Mon, 23 Jun 2025 07:14:24 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159df71c4bsm8112049a91.2.2025.06.23.07.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 07:14:24 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 19:42:07 +0530
Subject: [PATCH v4 2/4] arm64: defconfig: Enable X1P42100 GPUCC driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-x1p-adreno-v4-2-d2575c839cbb@oss.qualcomm.com>
References: <20250623-x1p-adreno-v4-0-d2575c839cbb@oss.qualcomm.com>
In-Reply-To: <20250623-x1p-adreno-v4-0-d2575c839cbb@oss.qualcomm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750688040; l=799;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=CXzUmqLlLPgJV9fUhlYdmN7WEdQrsY5odxja3TUwO60=;
 b=4uyHJkQisGznH0LxP67gAcDDVSB8DRWaZ/k7WS/BKOKxwSHsZEn2+ComoaYVBYm9FmzCZNeKG
 czEusA45p6KAGXSG+1Cj3wlPTXnM/Xmw3CDRQojl9WKtXxK9jjDoCMb
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=YoEPR5YX c=1 sm=1 tr=0 ts=68596142 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=GAw9eemyJ_aXAIuB88AA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: SzmadK5Fks1yeXR5RLj2Re2ei8NtE0oJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4NCBTYWx0ZWRfX7FuRp9lKmRlC
 Ei+VQhWEbBt5TTKOIPrmidSqh/c95ytdb/CEukYqFAYHaDxPyxEyBAOkNM379/5tgi3DAgfmQvG
 wqo+bYGE/zlq5Tr+uFf3VruiOfW8aYqzWQJI3k066x8rX6yvLhSjQzUKixesC8TEnjN/rr040HQ
 /f7sNfzRJ9dL4+k85bMX79ZnLFykF6O+wZ6IM1CkigwF1nR4MNt72Do1Mak+2JkCM7/QXwSpU98
 JCHuJEmNCGVv5uNlSrOQQz6BG7rcImAHtv8S8CcSo1YQVv1pZ9nOlUK+Bx393RjTOo7yGcob8wS
 +Q6oAUSQ4xvUTbRb12SYDHRVb09SV9bRha/HJHL5NaLsWtnXA7XhT8Knzigp4LBRq43aWhWz4DM
 VWjXAxOq93UBjHc0Gw4Uqrh8veB1aeMeuc6uQpFZjkG2ALf4nRNHKKv3B0bB93EMeXT6kuWi
X-Proofpoint-GUID: SzmadK5Fks1yeXR5RLj2Re2ei8NtE0oJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=477 spamscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230084

In order to enable GPU support in X1P42100-CRD and other similar
laptops with Snapdragon X1P42100 SoC, enable X1P42100 GPUCC driver
as a module.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 897fc686e6a91b79770639d3eb15beb3ee48ef77..c381ec0f2b73233cb3b4a19a214b69f534b3f519 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1348,6 +1348,7 @@ CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
 CONFIG_CLK_X1E80100_GPUCC=m
 CONFIG_CLK_X1E80100_TCSRCC=y
+CONFIG_CLK_X1P42100_GPUCC=m
 CONFIG_CLK_QCM2290_GPUCC=m
 CONFIG_QCOM_A53PLL=y
 CONFIG_QCOM_CLK_APCS_MSM8916=y

-- 
2.48.1


