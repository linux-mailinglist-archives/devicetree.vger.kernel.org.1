Return-Path: <devicetree+bounces-220940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D39DB9C8AC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:25:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0647F3B7B3B
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CCA22C0278;
	Wed, 24 Sep 2025 23:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZZhS43iU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C762BD031
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756306; cv=none; b=ISDiu+LLEj4XOIIcCi2SvMO+JOo/hzMeq0sjlB+hlVjX/UuHSVvdqbHBZMkM5+uAs4uWtZmZImOC8jirq249iNZacD6tyzaSXbs1MAFtUghYn36ELH/GawntsIxoRxXyBPcOgyEdmsM4aVHTadc9F9fwIrKz4pxG+UAp5AMjp+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756306; c=relaxed/simple;
	bh=ZWrW/qZXF4XA5G4JyV5NwzcuYt91qEG3rDlYCT+WJqU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JBftUuwSzQ5KFG65y3ZjhrtgXO5ud1vyCd5N7Zve6ca//cdouSCeLmQd2yRyhoxIjK1NyIFKYyYwVcT46ukb914hlg+Sa2tNK/5gbqqcppV7bcTVo7w1Wpqd28qWbA8gn9ZX6lk7CFjBkwrTJAbpUO3czqp1yd466yzg2cnaUBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZZhS43iU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD7Pab019934
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nIjgE9ICarsdPvLYuVUN4pKFKUoXSQF7ML7RBrZmKtM=; b=ZZhS43iU/ISOZ11O
	uiTm6HPOd3EaSTiQHoFxsGQWv7BI3/EXbeKZ68xGfGZF0IgPMQ/M6LPFuzBsWxAV
	RilI8/QvbQKzW31x/PFp0jcVnKHA5/EuY75BlOFzDF2b8b5GtClT7UprQdahdk80
	IrEQuVj9CetIsOMOS9jlaODpqr2+3A723eBF/+6QOfvrlZkdnVXuWMwH2Ll+1E+g
	AB6zd52PLCff9lWxg7Ofog4X7sBn2NPHEuBY4xGYF2VUnsTAfL+x8hXfFCT9Wlpf
	jYNhhPOwdTZjErtAyPxP9Gqxq/KePKNnzPyFilgYr4d/XHbGiRcyd6srt2wiDkOz
	eAhJxA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdy86u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581ce13aso5474175ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:25:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756303; x=1759361103;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nIjgE9ICarsdPvLYuVUN4pKFKUoXSQF7ML7RBrZmKtM=;
        b=w3gP7T08ZFsQGDqb0fpQRgfKhJhVsENaa+ZAFETrP0rDllm0Hl/aRZpsUnq6N27cSq
         pAr9dWYjZCOdHN2HxVnb386HOc6Z19p7Kn+S02gc0tP8A9lUCStbnhAwrYalFjWNyjaz
         kYNtd7RlxoMxs4QgJXokCNG6PKPQGN1d2FDVkbo0itaAETC09F/YWspcQsxRcGEVdVWT
         awZvabiNj9rxlsBDDdWspNMdwsjm0SwmOcDCeOiUVZgQgLBuB5EFQbgA5yt3VpgGe8w3
         EZRmWx1iEcji4++G7qnZtQpbSt52XimMVbaUZXBpLt9j7uK7bLwfHPDSL1T2lvjT5Zu3
         jZ6A==
X-Forwarded-Encrypted: i=1; AJvYcCXCR43NxUq8soYOH9SWO4/RWJ5dU5D1U6WXe/BdAkQFMYrtl4EW3IP3lbleukb+XRA+JPaeWCTaqxb5@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb34AN1Wa4+oFVmhm4YTdF2ick0LdGU4NRJXyk9sGgTzPGcMG8
	Kl76l6jpDUEEB+cyN187haSEPGIylfMMpUMJKdW7FFUJV8eGOHAbGgQja9jK/iJ2lIBQQA/lA57
	/q1bwTpRKFtZ4L+RPB0HIxk6ZGDBXZGN7xGgHL59E38p2hu10Wt9j4mTBUYHzs8fo
X-Gm-Gg: ASbGnctHT7KyafFyAA9J6uwVR48NR6NDMCrdYQU0tnywRbEYnNA4G6gQQpsxUR7+Z5G
	b9i/3wt+lNgG4MdkgzSrP1IhirYQ1JcpGFjO24sWUGOI9Iu8bXyFX1NwEcgtQrUA0wKwxDw32cv
	Sgoi64OTDU++8tucrWaxLnkbH1nFccAKIBjS+sOQGRbIZ040BbuqYPMrvtovgVcRuZKJkEHQoh4
	dS9kKACwDtT0Ydt5S/IIBtbzJ+OTZkqNMHwVFOiG5cACv6T3TQd7cgpV++3zDqU7TgBeHNTwEiH
	Ujx+q5e7g0A7eTTG7/N7knyjxPWhFxbG0xzGISmscKUnmTXd8/1LguL++k0nONMm1cSFbseKd7P
	jYN0dtpUbiv0eEhw=
X-Received: by 2002:a17:902:d052:b0:27d:69de:edd3 with SMTP id d9443c01a7336-27ed49d2c63mr11834915ad.20.1758756303120;
        Wed, 24 Sep 2025 16:25:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNvtwPqdeKCBoZMy6Nb+/kvVg2UJk3HPSCXAh+UElQ3D739MMHNZ7ASNjRtQkwMStN+ed54Q==
X-Received: by 2002:a17:902:d052:b0:27d:69de:edd3 with SMTP id d9443c01a7336-27ed49d2c63mr11834505ad.20.1758756302301;
        Wed, 24 Sep 2025 16:25:02 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed68821ebsm3981745ad.84.2025.09.24.16.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:25:01 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:24:55 -0700
Subject: [PATCH 2/2] soc: qcom: llcc-qcom: Add support for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-llcc-v1-2-ae6a016e5138@oss.qualcomm.com>
References: <20250924-knp-llcc-v1-0-ae6a016e5138@oss.qualcomm.com>
In-Reply-To: <20250924-knp-llcc-v1-0-ae6a016e5138@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756298; l=10692;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=ZWrW/qZXF4XA5G4JyV5NwzcuYt91qEG3rDlYCT+WJqU=;
 b=HH03j/CUgKPrWrpkK7ffc5hRgI9dP9TAYmqUYP2NXSSwiSHDu4gcaEMHzxSUBd//Yna3XdHuq
 UJfD7u7GMaDCa+DM/w+o//rT3M8Y0+MyRBQivbzNEgfIV9oEv1m4DLt
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: Kh7mO9Ujw9-6NyfYAphkE80b_iJ1YrQu
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d47dd0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Uq3U_uJNnBFfmU7Yy_wA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: Kh7mO9Ujw9-6NyfYAphkE80b_iJ1YrQu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfXwlbjHsnfMknk
 z6H4xcuzAZgUh6e3KOwTTFxv/YjDu3HHp5xk6kKt/S8M2KdM0LRNhpqh5h3564nXOsxzSlyzXdU
 YV/8ZpCfWzu5jKEfjUYZ2HCExn7Hgom7JePZTjIaAvJVPxaiNEFst2+Nlq6W3zaO3HjKDhVTCXo
 f7ejmNxPwCXj2BEfsvTeZiz2NCR7l3Z8ZnjsnsYxKeJTin1xahFIuob8gqna2H5B/5MYsoAqEh5
 EbRoZAHDTqF9h4OSnfmZZ1Cfo8W2cLXvNMuce72KpAWSxUPOREUkTM6odTxzYcrlRkbJFPtlvL2
 nr7OlimMn4dsrJmfGq8Woe/5ELexuRSGlO4DN63fZCnMnRe4JczL8iD0+JoaZGx+oYXJBgBFkHG
 diuUjDPS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

Add system cache table and configs for Kaanapali SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/soc/qcom/llcc-qcom.c       | 373 +++++++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h |   7 +
 2 files changed, 380 insertions(+)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index 857ead56b37d..13e174267294 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -214,6 +214,364 @@ static const struct llcc_slice_config ipq5424_data[] =  {
 	},
 };
 
+static const struct llcc_slice_config kaanapali_data[] = {
+	{
+		.usecase_id = LLCC_CPUSS,
+		.slice_id = 1,
+		.max_cap = 5120,
+		.priority = 1,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.write_scid_en = true,
+		.stale_en = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_VIDSC0,
+		.slice_id = 2,
+		.max_cap = 512,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_AUDIO,
+		.slice_id = 35,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_MDMHPGRW,
+		.slice_id = 25,
+		.max_cap = 1024,
+		.priority = 5,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CMPT,
+		.slice_id = 34,
+		.max_cap = 4096,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_GPUHTW,
+		.slice_id = 11,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_GPU,
+		.slice_id = 9,
+		.max_cap = 5632,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.write_scid_cacheable_en = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_MMUHWT,
+		.slice_id = 18,
+		.max_cap = 768,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_DISP,
+		.slice_id = 16,
+		.max_cap = 7168,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.cache_mode = 2,
+		.stale_en = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_MDMHPFX,
+		.slice_id = 24,
+		.max_cap = 1024,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_MDMPNG,
+		.slice_id = 27,
+		.max_cap = 256,
+		.priority = 5,
+		.bonus_ways = 0xfffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CVP,
+		.slice_id = 8,
+		.max_cap = 800,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_MODPE,
+		.slice_id = 29,
+		.max_cap = 256,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xf0000000,
+		.mru_uncap_en = true,
+		.alloc_oneway_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_WRCACHE,
+		.slice_id = 31,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CVPFW,
+		.slice_id = 19,
+		.max_cap = 512,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CPUMTE,
+		.slice_id = 7,
+		.max_cap = 256,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CMPTHCP,
+		.slice_id = 15,
+		.max_cap = 256,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_LCPDARE,
+		.slice_id = 30,
+		.max_cap = 128,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.mru_uncap_en = true,
+		.alloc_oneway_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_AENPU,
+		.slice_id = 3,
+		.max_cap = 3072,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.cache_mode = 2,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_ISLAND1,
+		.slice_id = 12,
+		.max_cap = 7936,
+		.priority = 7,
+		.fixed_size = true,
+		.bonus_ways = 0x7fffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_DISP_WB,
+		.slice_id = 23,
+		.max_cap = 512,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_VIDVSP,
+		.slice_id = 4,
+		.max_cap = 256,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_VIDDEC,
+		.slice_id = 5,
+		.max_cap = 512,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.cache_mode = 2,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMOFE,
+		.slice_id = 33,
+		.max_cap = 6144,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMRTIP,
+		.slice_id = 13,
+		.max_cap = 6144,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMRTRF,
+		.slice_id = 10,
+		.max_cap = 3584,
+		.priority = 3,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAMSRTRF,
+		.slice_id = 21,
+		.max_cap = 6144,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.stale_en = true,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_VIDEO_APV,
+		.slice_id = 6,
+		.max_cap = 768,
+		.priority = 4,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_COMPUTE1,
+		.slice_id = 22,
+		.max_cap = 4096,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CPUSS_OPP,
+		.slice_id = 32,
+		.max_cap = 0,
+		.priority = 0,
+		.fixed_size = true,
+		.bonus_ways = 0,
+		.activate_on_init = true,
+		.write_scid_en = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CPUSSMPAM,
+		.slice_id = 17,
+		.max_cap = 2048,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.activate_on_init = true,
+		.write_scid_en = true,
+		.stale_en = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_CAM_IPE_STROV,
+		.slice_id = 14,
+		.max_cap = 400,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CAM_OFE_STROV,
+		.slice_id = 20,
+		.max_cap = 400,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xffffffff,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+		.parent_slice_id = 33,
+	}, {
+		.usecase_id = LLCC_CPUSS_HEU,
+		.slice_id = 28,
+		.max_cap = 0,
+		.priority = 0,
+		.fixed_size = true,
+		.bonus_ways = 0,
+		.mru_uncap_en = true,
+		.ovcap_en = true,
+		.vict_prio = true,
+	}, {
+		.usecase_id = LLCC_MDM_PNG_FIXED,
+		.slice_id = 26,
+		.max_cap = 256,
+		.priority = 5,
+		.fixed_size = true,
+		.bonus_ways = 0xff000000,
+		.activate_on_init = true,
+		.write_scid_en = true,
+		.mru_uncap_en = true,
+		.vict_prio = true,
+	   },
+};
+
 static const struct llcc_slice_config sa8775p_data[] =  {
 	{
 		.usecase_id = LLCC_CPUSS,
@@ -3505,6 +3863,15 @@ static const u32 llcc_v6_reg_offset[] = {
 	[LLCC_TRP_WRS_CACHEABLE_EN]	= 0x00042088,
 };
 
+static const struct qcom_llcc_config kaanapali_cfg[] = {
+	{
+		.sct_data	= kaanapali_data,
+		.size		= ARRAY_SIZE(kaanapali_data),
+		.reg_offset	= llcc_v6_reg_offset,
+		.edac_reg_offset = &llcc_v6_edac_reg_offset,
+	},
+};
+
 static const struct qcom_llcc_config qcs615_cfg[] = {
 	{
 		.sct_data	= qcs615_data,
@@ -3731,6 +4098,11 @@ static const struct qcom_llcc_config x1e80100_cfg[] = {
 	},
 };
 
+static const struct qcom_sct_config kaanapali_cfgs = {
+	.llcc_config	= kaanapali_cfg,
+	.num_config	= ARRAY_SIZE(kaanapali_cfg),
+};
+
 static const struct qcom_sct_config qcs615_cfgs = {
 	.llcc_config	= qcs615_cfg,
 	.num_config	= ARRAY_SIZE(qcs615_cfg),
@@ -4570,6 +4942,7 @@ static int qcom_llcc_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_llcc_of_match[] = {
 	{ .compatible = "qcom,ipq5424-llcc", .data = &ipq5424_cfgs},
+	{ .compatible = "qcom,kaanapali-llcc", .data = &kaanapali_cfgs},
 	{ .compatible = "qcom,qcs615-llcc", .data = &qcs615_cfgs},
 	{ .compatible = "qcom,qcs8300-llcc", .data = &qcs8300_cfgs},
 	{ .compatible = "qcom,qdu1000-llcc", .data = &qdu1000_cfgs},
diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
index 7a69210a250c..0287f9182c4d 100644
--- a/include/linux/soc/qcom/llcc-qcom.h
+++ b/include/linux/soc/qcom/llcc-qcom.h
@@ -74,7 +74,14 @@
 #define LLCC_CAMSRTIP	 73
 #define LLCC_CAMRTRF	 74
 #define LLCC_CAMSRTRF	 75
+#define LLCC_VIDEO_APV	 83
+#define LLCC_COMPUTE1	 87
+#define LLCC_CPUSS_OPP	 88
 #define LLCC_CPUSSMPAM	 89
+#define LLCC_CAM_IPE_STROV	 92
+#define LLCC_CAM_OFE_STROV	 93
+#define LLCC_CPUSS_HEU	 94
+#define LLCC_MDM_PNG_FIXED	 100
 
 /**
  * struct llcc_slice_desc - Cache slice descriptor

-- 
2.25.1


