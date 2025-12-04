Return-Path: <devicetree+bounces-244189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA091CA254D
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F362B3022818
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D0F2FFDE8;
	Thu,  4 Dec 2025 04:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BfmkRvPc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SBoXuF/J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F5B2EB860
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764823394; cv=none; b=DOAM2dix5dZfZ3gR6ulzcUJhx3RJq69BA3dAiU/CSOFMvhzX8YSUSEwaQqn9je49vQ0GmwoanTKlwjKeZs2AoLvAEnrAi4RjQJCQOEnkclhkcJPUgrGFNeMHSYPR99lvQILm+tc66atgvdLdsDYphL7oUiBpBiCV2TGMQQeMZNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764823394; c=relaxed/simple;
	bh=tBet7xd9Ix+7i7/6lFaf25DY48b+0wTDWRETSg/THcQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CrcZ494GbvQ7tdK28pZfG45v2mjzdPCVEEmfxMDExXepMcO4f+blOfsWVuFYIBJHE2CGEUbmPDbKpW4eY7whgmFs5k1TFlV9pDrhLcK0qEOfYZuIQtFMv3XuFSgykkzuV6FIu8y4ECihzzfVFcLn/KDxJp5Cd9K/4qPB+Mehi34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BfmkRvPc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SBoXuF/J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3H74Oa2844562
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 04:43:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I0tZsr+X9rb2BkuKPKohL8
	wWGapUv709og7lMSnyxu8=; b=BfmkRvPc8agafeCKP/GA3XZ7lToaQn3EvMek90
	5J1SqUfA+2dZKX+6dGWQ4cmfuxdFiAhAj97RG2Z2UEgZ9MhotKk/49bAksbRuHcC
	nUi2ZypI5evAicniL7Xn98mndzzKLJ8ASAsBodggqJ1FRYf/uZnl+5B95uVlSg3M
	sSSKDFYtZczFQuBF/qpR2qiJUc/IN/7lfaihzRZWREqRBprAKnzv3paJIg0bokZr
	nnnwqcfA9lbp6gZv3WpD1L9V8AeWsNB8bQYSFshxKlwOBKuFVxj+R4FoYt9RAd9h
	JtNslej7vhakGhcStnbKTgng1kLSyPRJHv1I3oiqeilblcJw==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atsar1t9d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:43:11 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7c75b4d04acso1031904a34.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823391; x=1765428191; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I0tZsr+X9rb2BkuKPKohL8wWGapUv709og7lMSnyxu8=;
        b=SBoXuF/JqXiNYpXuYnQP6T/Dtiz50XZE2EGWhdQbutkLyWv4fjVndYvWbQKSQI+0e7
         eHtwh3Orz5mGIp3EW/FjXDkV1CEB2hf1JRajWhL7o5CwbS5XysHHao2JjgvpKGjTlNpM
         tlIhXpS/vXqB5ys5eXAXGjwGA3X+LguhgfrC4rECL8Uk8VE17+Vy1y04EDBqUzq+QUxF
         XiXbMYP1YGXwBwerrFfKk8+bHNYteQXwDMDXNDFMjTsRlS5rIfZKCy37329NCE4MpZl+
         WPjEBAwdXnzDHo2qiZp4c2VPs9TLju1LRvN2Gqeu4mF5ZUcxJLLFK1ZPKSiSjeshbOCT
         NN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823391; x=1765428191;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I0tZsr+X9rb2BkuKPKohL8wWGapUv709og7lMSnyxu8=;
        b=P2zXiA0GrEMgY0QC1QNkeS3gK4Yb070Lews+XrxLDt/h+7cziwgqq0hRyhMGi7maKK
         nzLs1I2NjmdabN/A5ZjzVSSbjKIJJse8KJGgD3S47ftFyNff54jb5YtJdS4xRtXaoZxU
         xV22pvzwSWgfGDphzdpNCofL4zc9UO4WKDXaYtOTuhplQ98XxQc36AitoeQKVFVqEJxn
         a5gyyf7x/0Sftx1s+2B2e3Z2eWLsalhyLidF0HZ3kcexIDGHeLzawIN1KMhFV8VOQveD
         Js09xEAUeVXVPQ6m9HqQSiFmTOPqWbvqs6rVUtqfwvkAumggMENH+JFSaWiCkz1TCSkz
         UmJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5hMFzZWZIkT695ufAuRNoAoPaEZs5to2gOR2lOmzMEKc5vBIJ55Suys7L0yddQo+Jy4cizxjsTPqH@vger.kernel.org
X-Gm-Message-State: AOJu0YwcI+E++3xaI/k39/lk7B50qQ0xdn/HOscUFrYuMu2v6hmU7eDE
	rTJwbBZfhg/a3LCTe0OwyvuinlSW+vjgG4HUGWykg7+qnU/g8avfPyXbqaRJ9td00cdHbe114Hw
	naQcCHvufvyXXhcsvWavxersg3TDaEpvV6b+qyL6fjsiv9m6LtVrdcsk3r+H+QJsU
X-Gm-Gg: ASbGncs4QSiBS/7O1L2+JvgE2RtrGVw6LvMMFLQ7Y0CDmlUgqHYqrlDfpuX6uhsFAwF
	mQNuj3nW0t6qM+fzzLd+vzOZl+DN4R+UIS7a7YJtmEY7OWEsAAJK4Qx4hHUz+bL+jzVOm54KCKB
	Vv4PtiLjhcXM0g13vKje93yRgDTV1Dv9jgA7yWbEdUYXjyCdd1vZ7l+QTwJu/J4PlYAH/zLVJ89
	o9mHcYW+5wLJcOKKX4/vTXTeAcNgc2RkP+eTu2aIrmdy8iBWQFl9OcX/aOtWV84ootqb4vL/Ip5
	w1NG2bYJapsdOO/ARHpjYElwPQs9UBJVR3PgIfLxzwsgStirSq4bGDRyOePR8Ii6iCLHZLBaFfy
	YIzuE5skvF62vaQPkxMXDESRLrWgXTQyfMOZo+iQpaSHUearTOW6bBU2ovrg45o1V6BI=
X-Received: by 2002:a05:6830:82a8:b0:7c6:8bfe:f5e with SMTP id 46e09a7af769-7c94db3f05emr3514926a34.32.1764823390819;
        Wed, 03 Dec 2025 20:43:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFW8gU9SGAOFqdeOOxiZRb+i9FiBVHJbuzeoo5KLUW+sLNoIN5YvCzAMAGiYHOOjWH5MA/qIQ==
X-Received: by 2002:a05:6830:82a8:b0:7c6:8bfe:f5e with SMTP id 46e09a7af769-7c94db3f05emr3514904a34.32.1764823390412;
        Wed, 03 Dec 2025 20:43:10 -0800 (PST)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6597ec5b35csm213766eaf.7.2025.12.03.20.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:43:09 -0800 (PST)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Subject: [PATCH RESEND v5 0/3] coresight-tnoc: Add support for Interconnect
 TNOC
Date: Wed, 03 Dec 2025 20:43:06 -0800
Message-Id: <20251203-itnoc-v5-0-5b97c63f2268@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Leo Yan <leo.yan@arm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764823388; l=2209;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=tBet7xd9Ix+7i7/6lFaf25DY48b+0wTDWRETSg/THcQ=;
 b=liS7F1EO49CTHomciNgURMU6I8L0j5wX8w9pGISUp+pHU8zh9jliKXP1i3Q/dIVu+LzYg63qF
 fdsWJBaSSrTD9NJGIcf5f+naKhU3A72xiiuBMk9u1fhha9pKips0SdB
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: Ipgqx1_Lvp_KXnn7GmXwkE8MJjxf90ws
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNSBTYWx0ZWRfX5t5R9fKdLtqi
 Wt2YxyVqfPfKiirDTSOu+4inVtRJ7svEDoe3S0U7tDWTTsedmKe39duBxJ+xZ/lAb0kDsWehK6S
 vPkV6K9C3Q4VBXKpdfxz1indBqq90SzW9ajADOH1/Cm99fALiacFuef5dHxRYMzynBXPXm3KUjV
 TALwtQZCxKoF0/mbJo2PTpEw6yCfTh9ZadZCIjCnwGlifWFLqLLUbqyocMpKZ5/bZiQEnN0xkop
 8UR7yr+jhSBF4EIhlBo95TiQuNM51gt0clw45hw4HPcrzDH70cuq8vbJ0KlrFq0EIBkEHutujDg
 IjnvWcameyvCg4EcXWS17+3UyT3n0ZuCvclJxAG9xAo2k6sbz4XF9Z9TpmyZ9ZCAsTAwD2+K3Gp
 dbHMJxEacWxmZTZA3G0vZrDioEKFpg==
X-Authority-Analysis: v=2.4 cv=dfONHHXe c=1 sm=1 tr=0 ts=6931115f cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=G-CQVniXWX8y_UMPSkYA:9 a=QEXdDO2ut3YA:10 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-GUID: Ipgqx1_Lvp_KXnn7GmXwkE8MJjxf90ws
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040035

This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
(Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
this block does not support aggregation or ATID assignment.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
Changes in v5:
- Add the missing review-by tag for patch 3.
- Link to v4: https://lore.kernel.org/r/20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com

Changes in v4:
- Fix unintended blank line removals in trace_noc_enable_hw.
- Link to v3: https://lore.kernel.org/r/20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com

Changes in v3:
- Add detail for changes in V2.
- Remove '#address-cells' and '#size-cells' properties from in-ports field.
- Fix comment indentation for packet description.
- Link to v2: https://lore.kernel.org/r/20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com

Changes in v2:
- Removed the trailing '|' after the description in qcom,coresight-itnoc.yaml.
- Dropped the 'select' section from the YAML file.
- Updated node name to use a more generic naming convention.
- Removed the 'items' property from the compatible field.
- Deleted the description for the reg property.
- Dropped clock-names and adjusted the order of clock-names and clocks.
- Moved additionalProperties to follow the $ref of out-ports.
- Change "atid" type from u32 to int, set it as "-EOPNOTSUPP" for non-AMBA device.
- Link to v1: https://lore.kernel.org/r/20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com

---
Yuanfang Zhang (3):
      dt-bindings: arm: qcom: Add Coresight Interconnect TNOC
      coresight-tnoc: add platform driver to support Interconnect TNOC
      coresight-tnoc: Add runtime PM support for Interconnect TNOC

 .../bindings/arm/qcom,coresight-itnoc.yaml         |  90 ++++++++++++++
 drivers/hwtracing/coresight/coresight-tnoc.c       | 136 +++++++++++++++++++--
 2 files changed, 215 insertions(+), 11 deletions(-)
---
base-commit: 2b52cf338d39d684a1c6af298e8204902c026aca
change-id: 20250815-itnoc-460273d1b80c

Best regards,
-- 
Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>


