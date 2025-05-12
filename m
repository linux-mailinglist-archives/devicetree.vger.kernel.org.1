Return-Path: <devicetree+bounces-176507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FE7AB45C0
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 22:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9936A8C4005
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 20:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB79299937;
	Mon, 12 May 2025 20:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bGdKma3G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5809E29995C
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747083296; cv=none; b=C5L9Kl6BTZGQwCg8N7cOp48yv8FDAMae9Y90ntM2m/d/49ZDswemgtI5OhlfzbHQe0VzpN7mpXNxFS7qODtHB8UMRweip8D6+512AyHSDkWZwZIhin0rx6Uedf1Q+58Omb3mEKPaxISv7Oa4NBYaYEgjTNQ2n4kTwpBiOZOjuY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747083296; c=relaxed/simple;
	bh=+qxkYO6LWLqJqAQ+Xj/QIDTu2Terv0LqWENxCicP7PU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eBlLnwC2nptH3Gw/43T8qtgewxUgnYxUWdAzYfqichuHy5WIcihcFDBA0BrUVQ2Ms3SVb+yUIuUPKSQKkD+Dt2nFBK8gimFkddc8dk27kJGPPgdCLR0OjEa5njz9/odqxYNjsvAZwprdb7sPAKZAFkdwDtOzqCSNfVbdS0oxc38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bGdKma3G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54CJ61L3031462
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fYdMnfSshX04WFneEQP6h3ato83zH/7J1BPEJ0aRSSE=; b=bGdKma3G6NWXDjrb
	xuDOiBd8I8uAgFaZUAgPMMHGzIad5ML8sD4p4WGLvHtxU6P6wt1SRDV7dQ7ZN+pO
	UM7cnApJMR/5mgRNMlaPvdN4XNPb0mL3gNzrHeNDU1qRT4xb+Hv6oBFmIvhEm+Jz
	wCi2ImLRni92LYScPF4k37Jm010nZL7qJNiTxVtzLHUE/WJFhuZneHcessYX/yhn
	ZBHejfc8qvm3PzIJVcZGNCP/mO4fTNuSMYMCIMq66xLvvxGAjJWaCCkCxXyUWVzP
	LXMsWrEvt2uPkK7gfvIq4w4DXb9r4XskQMGY4KxdwJoO682OhnPUuVPbhw2sKux0
	SOiUVA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hvghdtv4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-30a59538b17so4700988a91.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 13:54:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747083292; x=1747688092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fYdMnfSshX04WFneEQP6h3ato83zH/7J1BPEJ0aRSSE=;
        b=Bvbitsbwt8YvMDPxYXwonis7a8NjZSE7jAhQIaUzGLpacBkEPbQ58JHU2C5QXqzWDd
         OiaFjUYKyS+17bd7waQ4OfZj5zfUyvj2aFVg+rKNorlhMNCwYICGekA6BCzNntc4F3cg
         PS6P4XWVDtNpowg5IJ2rZ+4gNdw+t1trinNzQ9neZibh70/HV14A9oIBKd3ZZp9Bek7t
         oSN9A5/NCtzaMIqvtX+CgZWyecy4cDLJPwZBSsb6W/0mStCexHAJhKn4u0KGb9CskZPU
         hJ7zISAiUoxb1rU+Mbc6wloZATs+mKPU4r9LEESPD+BfhWqbCEWSyg3h2ZR8xIeEqXaE
         523g==
X-Forwarded-Encrypted: i=1; AJvYcCVqgTWQskVOGy7t7IxkmN/qwRpNmifTizoBEnsBdmPdfANUDaRQidY0v+JRf5LA+GlSu6pHHNeRnjVb@vger.kernel.org
X-Gm-Message-State: AOJu0YzFoSZ6MnWiYk/+x/FdV/2NfRJsUIOxqnR0yeBIy4+pfYc8eEFL
	+eTNl8lwGpD1i/I3KQgzZ/GmW/0JJRln8Pgeo31dgfAj/hAxM54gqPVdfd7fRGTsvDtw2jwO9b7
	xoq2NxnR4aSLM87+PgT4Dbo39J5y2cQzY5aksGLkEfmI8N4WcbIZnq7zcC+C9
X-Gm-Gg: ASbGncuf+X9/yQ/XE0TGUZR/MDPS7H8ATFpPtOasxeV3l0VWGK4xxfDBZiR2bNMNFXl
	XhTe/mzQwSIA8S3DhlaAuVDQuZKY+0Il7v4uu4bzpX0PKS2CcGf7/rnAziMoZLu12wDSE8YUmxv
	UzezNBEaGYdqkHMBZc2bpE/MuXc+gNtYaSqxtPEVeP4EYy+8UsAkFfAnSa4ZK0d6OtuSUWO82gQ
	jhoMFBF9ODvBYWWG2PUhOG2CZ7ihV4Oidttl7OnOHh4RS03mGeFHVIHEDyyJRQWsBRSK1SrWMMU
	Ks5baKdlMnTVJCz8eDRlzh7rVC91hQUE8lf/OuemThTNhgQPA5jcOgqcIRsrVyyHLg0=
X-Received: by 2002:a17:90b:3b4a:b0:30a:a034:bb0c with SMTP id 98e67ed59e1d1-30c3d62ec5dmr22519069a91.28.1747083292361;
        Mon, 12 May 2025 13:54:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF99n1ktaYUUe5cOGGVmNYMnRk7urOfqhv/NeSIl0dAg6V+QWRlqKKmTw8Q/cz+pz6mBiH0ng==
X-Received: by 2002:a17:90b:3b4a:b0:30a:a034:bb0c with SMTP id 98e67ed59e1d1-30c3d62ec5dmr22519046a91.28.1747083291996;
        Mon, 12 May 2025 13:54:51 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30c39df09dbsm7084867a91.26.2025.05.12.13.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 13:54:51 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 12 May 2025 13:54:43 -0700
Subject: [PATCH v5 3/4] soc: qcom: llcc-qcom: Add support for SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-sm8750_llcc_master-v5-3-d78dca6282a5@oss.qualcomm.com>
References: <20250512-sm8750_llcc_master-v5-0-d78dca6282a5@oss.qualcomm.com>
In-Reply-To: <20250512-sm8750_llcc_master-v5-0-d78dca6282a5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747083286; l=8593;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=+qxkYO6LWLqJqAQ+Xj/QIDTu2Terv0LqWENxCicP7PU=;
 b=uC+QnQOhdzzuxBIyotDLUvhV9PKqEt245loelGlQ9O2xnLrnve3uan16Ac2gPsKrrUWVTU4sK
 EGLKPnojTWBD0n/envEMDTUpty5Gd3j++p+KbPk/NAa6areV7SNVdOy
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-GUID: MoqFrPSxz7WRaHNmy2WLNHvBFtu8Ogpt
X-Proofpoint-ORIG-GUID: MoqFrPSxz7WRaHNmy2WLNHvBFtu8Ogpt
X-Authority-Analysis: v=2.4 cv=AMDybF65 c=1 sm=1 tr=0 ts=6822601d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=zHNgQWnGFwCULUzyGxAA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDIxNSBTYWx0ZWRfXxIOeuPQWI7yU
 GPvxRVwwosps2xwmRm+VAiADe4u9azw4EkJfGXXb95zmylq6i3QkRIssUXDxTK98Za3+MdFNulV
 Gg9M6bxrLSlVqYI/JOsdMOSiFN4hLcN3puTFbFV4bTi0vubZXOwFcP+PpoJ7wUslSS0xG9wJ1s9
 4cx+zZY467A6sSqr/JRFcXJdawEiXJvJyil7OIFQOqWmCazi4HQmV7eQR72tFg5/DHK0MNe2Srh
 s13xCS3KqGmv7fuwcceoGE/oudDkLneGsENubUMnfc57T852mDkgw75GWRC65BQUqB6zXex86ja
 jjWENyH2SXjMioyl0gJtdJEjETAqEMz9G7SUca5PYFNg2RV+SrtrPcppzvdfN9TmJ/OcB0h5u7J
 OJUUdTuhf06XxRtkq4OeaY/huL1nd6ex4ei+ZqXy3xj9kkjzrTOwPmGFwAhdTNlJsqpnDDxq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_07,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505120215

Add system cache table and configs for SM8750 SoCs.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/soc/qcom/llcc-qcom.c       | 273 +++++++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h |   8 ++
 2 files changed, 281 insertions(+)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index 958f9e03f1d5e4946ca7ed340f05b8e01929794e..192edc3f64dc3eee12ab5ebdb9034cd0e2010891 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -2689,6 +2689,263 @@ static const struct llcc_slice_config sm8650_data[] = {
 	},
 };
 
+static const struct llcc_slice_config sm8750_data[] = {
+	{
+		.usecase_id = LLCC_CPUSS,
+		.slice_id = 1,
+		.max_cap = 5120,
+		.priority = 1,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.write_scid_en = true,
+	}, {
+		.usecase_id = LLCC_MDMHPFX,
+		.slice_id = 24,
+		.max_cap = 1024,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_VIDSC0,
+		.slice_id = 2,
+		.max_cap = 512,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_AUDIO,
+		.slice_id = 35,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_MDMHPGRW,
+		.slice_id = 25,
+		.max_cap = 1024,
+		.priority = 5,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_MODHW,
+		.slice_id = 26,
+		.max_cap = 1024,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_CMPT,
+		.slice_id = 34,
+		.max_cap = 4096,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_GPUHTW,
+		.slice_id = 11,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_GPU,
+		.slice_id = 9,
+		.max_cap = 5632,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.write_scid_en = true,
+		.write_scid_cacheable_en = true
+	}, {
+		.usecase_id = LLCC_MMUHWT,
+		.slice_id = 18,
+		.max_cap = 768,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_DISP,
+		.slice_id = 16,
+		.max_cap = 7168,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.cache_mode = 2,
+		.stale_en = true,
+	}, {
+		.usecase_id = LLCC_VIDFW,
+		.slice_id = 17,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_CAMFW,
+		.slice_id = 20,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_MDMPNG,
+		.slice_id = 27,
+		.max_cap = 256,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xf0000000,
+	}, {
+		.usecase_id = LLCC_AUDHW,
+		.slice_id = 22,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_CVP,
+		.slice_id = 8,
+		.max_cap = 800,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_MODPE,
+		.slice_id = 29,
+		.max_cap = 256,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xf0000000,
+		.alloc_oneway_en = true,
+	}, {
+		.usecase_id = LLCC_WRCACHE,
+		.slice_id = 31,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_CVPFW,
+		.slice_id = 19,
+		.max_cap = 64,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_CMPTHCP,
+		.slice_id = 15,
+		.max_cap = 256,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_LCPDARE,
+		.slice_id = 30,
+		.max_cap = 128,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.alloc_oneway_en = true,
+	}, {
+		.usecase_id = LLCC_AENPU,
+		.slice_id = 3,
+		.max_cap = 3072,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.cache_mode = 2,
+	}, {
+		.usecase_id = LLCC_ISLAND1,
+		.slice_id = 12,
+		.max_cap = 7936,
+		.priority = 7,
+		.fixed_size = true,
+		.bonus_ways = 0x7fffffff,
+	}, {
+		.usecase_id = LLCC_DISP_WB,
+		.slice_id = 23,
+		.max_cap = 512,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_VIDVSP,
+		.slice_id = 4,
+		.max_cap = 256,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+	}, {
+		.usecase_id = LLCC_VIDDEC,
+		.slice_id = 5,
+		.max_cap = 6144,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.cache_mode = 2,
+		.ovcap_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMOFE,
+		.slice_id = 33,
+		.max_cap = 6144,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.ovcap_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMRTIP,
+		.slice_id = 13,
+		.max_cap = 1024,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.ovcap_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMSRTIP,
+		.slice_id = 14,
+		.max_cap = 6144,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.ovcap_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMRTRF,
+		.slice_id = 7,
+		.max_cap = 3584,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.ovcap_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMSRTRF,
+		.slice_id = 21,
+		.max_cap = 6144,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.ovcap_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CPUSSMPAM,
+		.slice_id = 6,
+		.max_cap = 2048,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.write_scid_en = true,
+	},
+};
+
 static const struct llcc_slice_config qcs615_data[] = {
 	{
 		.usecase_id = LLCC_CPUSS,
@@ -3454,6 +3711,16 @@ static const struct qcom_llcc_config sm8650_cfg[] = {
 	},
 };
 
+static const struct qcom_llcc_config sm8750_cfg[] = {
+	{
+		.sct_data		= sm8750_data,
+		.size			= ARRAY_SIZE(sm8750_data),
+		.skip_llcc_cfg	= false,
+		.reg_offset		= llcc_v6_reg_offset,
+		.edac_reg_offset = &llcc_v6_edac_reg_offset,
+	},
+};
+
 static const struct qcom_llcc_config x1e80100_cfg[] = {
 	{
 		.sct_data	= x1e80100_data,
@@ -3564,6 +3831,11 @@ static const struct qcom_sct_config sm8650_cfgs = {
 	.num_config	= ARRAY_SIZE(sm8650_cfg),
 };
 
+static const struct qcom_sct_config sm8750_cfgs = {
+	.llcc_config	= sm8750_cfg,
+	.num_config	= ARRAY_SIZE(sm8750_cfg),
+};
+
 static const struct qcom_sct_config x1e80100_cfgs = {
 	.llcc_config	= x1e80100_cfg,
 	.num_config	= ARRAY_SIZE(x1e80100_cfg),
@@ -4318,6 +4590,7 @@ static const struct of_device_id qcom_llcc_of_match[] = {
 	{ .compatible = "qcom,sm8450-llcc", .data = &sm8450_cfgs },
 	{ .compatible = "qcom,sm8550-llcc", .data = &sm8550_cfgs },
 	{ .compatible = "qcom,sm8650-llcc", .data = &sm8650_cfgs },
+	{ .compatible = "qcom,sm8750-llcc", .data = &sm8750_cfgs },
 	{ .compatible = "qcom,x1e80100-llcc", .data = &x1e80100_cfgs },
 	{ }
 };
diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
index 8e5d78fb4847a232ab17a66c2775552dcb287752..7a69210a250c4646b7fd6cf400995e35d3f00493 100644
--- a/include/linux/soc/qcom/llcc-qcom.h
+++ b/include/linux/soc/qcom/llcc-qcom.h
@@ -24,6 +24,7 @@
 #define LLCC_CMPTDMA     15
 #define LLCC_DISP        16
 #define LLCC_VIDFW       17
+#define LLCC_CAMFW       18
 #define LLCC_MDMHPFX     20
 #define LLCC_MDMPNG      21
 #define LLCC_AUDHW       22
@@ -67,6 +68,13 @@
 #define LLCC_EVCS_LEFT	 67
 #define LLCC_EVCS_RIGHT	 68
 #define LLCC_SPAD	 69
+#define LLCC_VIDDEC	 70
+#define LLCC_CAMOFE	 71
+#define LLCC_CAMRTIP	 72
+#define LLCC_CAMSRTIP	 73
+#define LLCC_CAMRTRF	 74
+#define LLCC_CAMSRTRF	 75
+#define LLCC_CPUSSMPAM	 89
 
 /**
  * struct llcc_slice_desc - Cache slice descriptor

-- 
2.48.1


