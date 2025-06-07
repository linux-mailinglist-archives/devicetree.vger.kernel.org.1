Return-Path: <devicetree+bounces-183501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D90AD0DDA
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 16:16:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2FD63A3DC1
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 14:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A359E1D86C6;
	Sat,  7 Jun 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jZGHI5nL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3069915539A
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 14:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749305753; cv=none; b=lRO6C+bcTsJchy8RUJApmWXwndruWF117Xx8tN7rfCcLxYtVzoNhx841rKfKlJ9E146JA+MgGqQ9IDxnewpu21DQCGAJ+9VViF4ySq835UcLlCgtKlsflNvzuYiBn2W4YRahwGxMT5Ck40AoBQYMdFXPGg7JsOtBp92x1+H5jHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749305753; c=relaxed/simple;
	bh=IqnVoqmB8d59JEJdsGY4n78aKgioKIUNfsYGLkBpCCY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dYj2vPhyCeOn8XHPm0Zp/BiEkZgKFG0GNWRwBABWsDfnZvwEeoPqXR1L+IyoK12F+2q8FyVrQw+w+lhRjO9v2eWDOPKZy5GJEFqbtP5Ed/J+wMxHkaD69ro+KhY6pGkjshx0iKW0Ci4pm0432c+Y5A3GTz+9j8TXsJbUttQXRwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jZGHI5nL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55743x7W008955
	for <devicetree@vger.kernel.org>; Sat, 7 Jun 2025 14:15:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e2nJaAzmCmJpQHSs08XFmrbpQ14EhvsPNPiNTSQUelY=; b=jZGHI5nLZI5hGMaR
	gCxGHxaLP5Y1D1HwZx4aiDNjMae6QwfLi6XgAto57v8VLKsrSKKy9SoH8h5Oktao
	fp6lEIqMepF7jpd7hthOuLbX/BdQsJPvrWBsIfuoAFj9K8TfmuS9jqL8QGNBqqXK
	l0EPCW59iAYf0tYwu5HUujjbGDVLK1dS70Dq2Abw8lArFp2/kfQbYsLX4x94tOmx
	a5u+RAeupT5VKJ4c8/aYfvTMJI6sK3bhWoukt91F2ncPswKdDCYdptPU4Bx2aa+T
	VW3W1AeJsWzU6e6CgZv211VygoZ1F5EzRbb8yQOlW6qfvfvIfJtY1tZYej1dZU0U
	pkg75w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dgxgnx5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 14:15:50 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2355651d204so28049635ad.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 07:15:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749305749; x=1749910549;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e2nJaAzmCmJpQHSs08XFmrbpQ14EhvsPNPiNTSQUelY=;
        b=kw5vCycdQB45gxI4ldty7QUCwz3PDSt770Jo04lBeXZjWWfgzVLg9T1sjq69Cv9PRt
         zrgo795swSV2Iu3YMyW3vz6bcguuRWnP3awAr9+rdteBaQk0p1ShMfrY/tpPYdzxeabV
         lnf/rnf/Iq2fuOVlH19D2UVDaERygzOWaMl6glWqDg95+EmlBbVndP+/zeobUZIO6Fbo
         YRt5FKwULv4bC9EX0mNxD095N9WedZfLGU8dXDftjU5lqfZXy8wXncnH8DZ5j+jgJlQ5
         nLUt5ibvdShk7tIpjTZy/j219mghtlV4ud1ZGKt8p39M4G8bu4D0gXdXmU7ChWBloP4E
         HAWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKtcMi2poJRcw0CdWAPfzWTTTKmiHcWTUdLcY6ONF70hkKbHBqxsranqaN0GaQPGDtgbeu99s0PWk3@vger.kernel.org
X-Gm-Message-State: AOJu0YxQce2IndqPTN3GwD7MIa/BeIKo48/RhjYwtQfzt/mwWTKk1ek5
	pUuGvrS93d303nrfStEWb1WPnyhgBGyWZqWz76qPRdvymsmCfLxVxpWxBt+4JxVEuYsM3pf1rbt
	Y7bOlI0u2kKAo89JR2sbF1KcTtIkjm0nOrgPDYPKKlTX4vVV3OoBWjMVw7cfsyNsE
X-Gm-Gg: ASbGncu2ZHRI5Ls86Zv2kX7qjK9LdCiTuaK7ku/LIIPEmGxPNzlpW0SIMfSQdTAOvPD
	2ZCfdy7Xs+MwkrCbSzImU2EXuqFRMdsv3pxkdjqY789tDy8n6bVmgRZ+MK1D9DqxbzB+zk/P8ov
	UBqNC7WZSPiLibU8VfF7ZDJrVXefUs7neATwkG7VKZlj5iT8nIdMrf7Sc8o8v0Ra8paWz+nfjmQ
	r26IOikxk3zzmeti1ZD6NnElDKY9Nk/UHqoHg/nJGBeGTTiQFUbcj8h5BEyIMK9RofL8tsekn2e
	ISJASOg29TIQjku2HGDt4w==
X-Received: by 2002:a17:902:da8c:b0:234:d7b2:2aa9 with SMTP id d9443c01a7336-23601e7f4eamr98882175ad.29.1749305748837;
        Sat, 07 Jun 2025 07:15:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHd4AhO0+uyFenbxz5BoU1UkltM+5rAvhX1ayslAlVrN/dKMNnxfksMZHw0Th/YAjYimUSGQ==
X-Received: by 2002:a17:902:da8c:b0:234:d7b2:2aa9 with SMTP id d9443c01a7336-23601e7f4eamr98881805ad.29.1749305748452;
        Sat, 07 Jun 2025 07:15:48 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603405732sm27500435ad.155.2025.06.07.07.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 07:15:48 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Sat, 07 Jun 2025 19:44:59 +0530
Subject: [PATCH 1/3] arm64: defconfig: Enable X1P42100_GPUCC driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250607-x1p-adreno-v1-1-a8ea80f3b18b@oss.qualcomm.com>
References: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
In-Reply-To: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
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
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749305735; l=768;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=IqnVoqmB8d59JEJdsGY4n78aKgioKIUNfsYGLkBpCCY=;
 b=orMoZgj6M4ufoVDkueL+fO7/LhI5JIhY3qZdqVDmIqEE50/Kj3kw5xT+6x+14Co9K5qyeq0t5
 mqNkL9pGnTGCbInzyOTHDsuUrJiX9j4N5pxuICrEcKGcCO12weAfn8F
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: 63eKd7MONGMSYpKGKvbNtK_RqrNXOLov
X-Authority-Analysis: v=2.4 cv=HMbDFptv c=1 sm=1 tr=0 ts=68444996 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=1cELwbfB7FenbO21xW0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 63eKd7MONGMSYpKGKvbNtK_RqrNXOLov
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA3MDEwMCBTYWx0ZWRfXzOz1BHZR4hdu
 gSEqsuiVvzEljJy0smYq/jCbRmEloBiZ4ONKHIhVYwn85uhvim/P5h18wuVkFoqMLpIYmEDIHKJ
 IWJj7aUFYkKGMclaYKHZgQZ3+uRhEsDZs0kF8K3tzLkpNX2xmgLFWIJHqSBRaa85f7R1jdNhhTC
 xm+iV9Gpbco7JKpHw4luILMi0eikLvu7piyBoq/WEJ/KGSbV0ANXRQXXHC9A1OZzbWfxn9qkPhh
 IiIJWZLrXNAPh0iugKMLnJYf7fvVmhhnHTFw+exyVs4eYqffCRztDaYGsdoA1C7VCZvAjMZm09c
 EYcSUfOV4UEl87clgLmlNOUAscEa5e+quthgoVAouVzh+WjdZIKHtmvewTEJIPaeju9HXxUqpZ2
 Zv8dEPQGPv4oaCA4S9tLd5vpPkuxRlnYV3VHpYWYJdQ/FjXRjmlFWunKM4mzKcEOXGcglN51
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-07_05,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxlogscore=571 priorityscore=1501 impostorscore=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506070100

In order to enable GPU support in Snapdragon X1P42100
(8 CPU core version), enable X1P42100 GPUCC driver as a module.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 62d3c87858e1817bac291780dff3823dacd72510..9cc473fd0d3308f7869d00425e17b114c87093b2 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1350,6 +1350,7 @@ CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
 CONFIG_CLK_X1E80100_GPUCC=m
+CONFIG_CLK_X1P42100_GPUCC=m
 CONFIG_CLK_X1E80100_TCSRCC=y
 CONFIG_CLK_QCM2290_GPUCC=m
 CONFIG_QCOM_A53PLL=y

-- 
2.48.1


