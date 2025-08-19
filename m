Return-Path: <devicetree+bounces-206277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77153B2BEE0
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:28:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2E1A1B62411
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E03D315767;
	Tue, 19 Aug 2025 10:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kYlZo1TZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9088F1F0E53
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755599275; cv=none; b=eQ/bN4S8EgW/r566NNeU7nrw1q/jNwl+yvsLId0F5XkUgoW+dzBVX/cKqn1PX24xvdJ6b4UbCUG2rvlJwpx3fjeXsjKH90YCt7qtQ13lJIX3hgCXX98CrtkWAvvBMELEABqQ0LW5eyVJTGPcnJAvstq0JQEJklghEoul/PNJJfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755599275; c=relaxed/simple;
	bh=XHlIDamfozF0NB3BJsqHQ2b+McMZm5vEA+kk0C9b6SM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kPmECPGOj6Vut74RfC9gaz9rJ2Ex89ChuHvrEwas6owsnU5tyRsV7Q+jYvDyn4Pg3rWCS0/2jCQuL/D/3bmJ77aqtFpvLLzlreKd5KqRmcEyOoKo+6lfYodY2Bo+tmIFXGB3zfj96twzU2BIo/DIwVjORS2FXQqCPx7cpwvtPck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kYlZo1TZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90Z9h029794
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:27:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=XUfhVRdQ6/3Ng5WhQWu0dh
	68glt2LJ/MwzF2hOh4lbU=; b=kYlZo1TZzLAka7bMxeRXPCD/1OktA4mIUDGxFl
	SFzBAP/Kgdd3sFXZQmOBIRoS1UDHaOmGU+yfszUmj6qyADgNgrwZJCLkRVC7vpf7
	KomcTlIzyhYTvRQjHcV3tEVe6saagNAOYUD1ZHhH807Q845sbasSzNXUV+8jmpeg
	NQJgS7pgmATZqocaGUfnG1mHqgoR4S1VOHJccydPzUJQwMGOMOX2ef4t5Hnj+yfG
	wnlaUfMk6ceTzL4cIWBGCnNw7XM+FVLORoO0ynB4v1k7CU419bGk12Sc5lJSWsZN
	HowRMOpjDOlskybuFDXfgHBHoT24UTA5VPyX+MzINnzoB87g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk5mg2j1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:27:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24457f4f3ecso61514215ad.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755599273; x=1756204073;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XUfhVRdQ6/3Ng5WhQWu0dh68glt2LJ/MwzF2hOh4lbU=;
        b=sMampK9sA/y5qvj+TN4RNUabSRwjPrI2JosSMe6PIztWirIrJ3VfZ45F3OKJbULPNI
         fITGV9VL5xtmitxuJZpgSIHQ2Oj9gDMTR3PwAj4Xwy47ei2eY3CYTXnyGPtrR23oc4mD
         GtDF2cSXyXWAXYO3+pmZ6ZvFhP24D9T6jZs28swqL+IGIiql5wZe9yi+5iS12R1MLlTO
         kchXtKep5M6rIRXKTB6HYBlgZLKaBVr6v1kmFLg1h0mVwe0cc2HH1RJMqDSbsv15E77Z
         Ugvay3YbPSGzo5TfkbR1f/IWaEU1Pd3R6H+3Ik0rbpgxok6vpgstfhDfwxEgCqgWUdiZ
         XBqg==
X-Forwarded-Encrypted: i=1; AJvYcCVBngb4R9XR6/Nlhoixxq3fhgtqSPF4JV8F3oLDWPDrVQ8iVGTJEK15ccZsYco2z+bfa9wD22W7BU2F@vger.kernel.org
X-Gm-Message-State: AOJu0YwpV7soA6hoq1AqB8HON19iwjtDoTld7TFmggDnTa9jXurHYN93
	ogWUEb/yPlZdDMLW68g51L77zZPTNj5xgRqiHoxqgsgr0mouqNmCG09plImtqqvjl6/6wMpWzHC
	egDuRBpxw/CUenAZjFg67xX3ANxkwfSbRROXnOrGntifioNM7JbL9FK6GwrejWQtk
X-Gm-Gg: ASbGncscgB4Isb1APkv4jowQkiYpZlVhmBZDS1qAY0q3PEQWBdxfp9AqbUd4WErBsjF
	VEijShZJSHJwe+nY2gOkPGjPwrQiNHnWFlI4ToprEko0wlqTei31IEmkMmWU5AXS0CGhkFP4Wt7
	RdoN0EVK94BtZzHqTq+beaPaZurqj2Ai37vpgrHFuC7zFA4GEcRGpFiQ2MKSUOTHD6pUAAyAGMd
	2ELYEhwZV4xYctWPirgNRKuyLTDddUYk+bN8BwmQ1lnglEfQzQqiN02Z0lmSykMKMGVCflYLXdj
	/D+RFHVs8AobMwL2JAcAsN4x5HsLwlS+Q9+7U1s+YDIH+7EGU+qkTcbx+hVnT1PHTwCwtDl/ht5
	+pLZ+bTL4fEyVzaiL9Uxg8Q==
X-Received: by 2002:a17:903:1b04:b0:240:84b:a11a with SMTP id d9443c01a7336-245e045d719mr27783405ad.17.1755599272905;
        Tue, 19 Aug 2025 03:27:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkkTrBxR/KyTC6Y/uomVmhYDGXtvfmzqkiXxTlXuSZLzj8nMvj3e+2tNVfCfiHbyyASg7A3w==
X-Received: by 2002:a17:903:1b04:b0:240:84b:a11a with SMTP id d9443c01a7336-245e045d719mr27783065ad.17.1755599272479;
        Tue, 19 Aug 2025 03:27:52 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3237e3eef8fsm2499643a91.18.2025.08.19.03.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 03:27:52 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Subject: [PATCH v2 0/3] coresight-tnoc: Add support for Interconnect TNOC
Date: Tue, 19 Aug 2025 03:27:42 -0700
Message-Id: <20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ9RpGgC/12Myw7CIBBFf6WZtTRAX8SV/2G6QKB2EguVqUTT8
 O9il25ucm5Ozg7kIjqCc7VDdAkJgy8gTxWYWfu7Y2gLg+Sy40p0DDcfDGt7LofGipviBoq7Rjf
 h++hcx8Iz0hbi58gm8Xv/C0kwznpplGunQdtGXgJR/XzphwnLUpeBMef8Be4yqRWhAAAA
X-Change-ID: 20250815-itnoc-460273d1b80c
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755599271; l=1208;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=XHlIDamfozF0NB3BJsqHQ2b+McMZm5vEA+kk0C9b6SM=;
 b=7C6M4/UOPx5g23jPQPBAf62HvnTMhZrJOK1dyo2JQfFc3IumuNoX1xYONxfzKsr/SIhyPRB+Y
 uzpmlgMQzCrDHokCxhGOakwF+xq32r0XeI8ruflGjYU3OPvVakR8Mqz
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Authority-Analysis: v=2.4 cv=Sdn3duRu c=1 sm=1 tr=0 ts=68a451a9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=s8j_kBg_6ddNrZYoh_kA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 0i_Pm3Ja4lpL8CLOjAuzHPlUCbKYnYQ3
X-Proofpoint-GUID: 0i_Pm3Ja4lpL8CLOjAuzHPlUCbKYnYQ3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0MiBTYWx0ZWRfXzxtPnzTsO/8M
 egP7KZzVthIYMHgZYGsNop/mlbz4RlaA11iifR+rE1LK3xXR3tMiAj52gl06Y+wm26A6P0kMxeB
 eHhjfMRsloTO3LAox4JLcOGcPNz6dlYWxsbOKWA+TsuHQ3U2uGcFdjF9Gs++LokDxWGzeDUjZQi
 WFhuL6ScX3wmsT3woWhx00hYtBwNhLefHiHk87C6OMiANDM1KoFfMos37Ml4z4gmHVgVflqUGxg
 MfqabPiks7qLehnMSQFDN8CN1zlahLCI6peEpZQByhTUsV9AtPVSvbGMK932BBLb8I8kurRHtcB
 vm+1fned4eh974dLmap2FTgGufyj+x7o4rotZCZ0Ku92lmKAxVHtb0rZ/cMxR77n/zQ40R6WpXa
 noD8ll0o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 adultscore=0 malwarescore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160042

This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
(Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
this block does not support aggregation or ATID assignment.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
Changes in v2:
- Refactor the dt-binding file.
- Change "atid" type from u32 to int, set it as "-EOPNOTSUPP" for non-AMBA device.
- Link to v1: https://lore.kernel.org/r/20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com

---
Yuanfang Zhang (3):
      dt-bindings: arm: qcom: Add Coresight Interconnect TNOC
      coresight-tnoc: add platform driver to support Interconnect TNOC
      coresight-tnoc: Add runtime PM support for Interconnect TNOC

 .../bindings/arm/qcom,coresight-itnoc.yaml         |  96 ++++++++++++++
 drivers/hwtracing/coresight/coresight-tnoc.c       | 147 ++++++++++++++++++---
 2 files changed, 226 insertions(+), 17 deletions(-)
---
base-commit: 2b52cf338d39d684a1c6af298e8204902c026aca
change-id: 20250815-itnoc-460273d1b80c

Best regards,
-- 
Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>


