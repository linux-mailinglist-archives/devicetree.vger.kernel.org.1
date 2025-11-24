Return-Path: <devicetree+bounces-241549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4F7C7FB10
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BF7504E260C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6792F6577;
	Mon, 24 Nov 2025 09:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IRopIsat";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ETrAJ7U2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C66264A74
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763977536; cv=none; b=VTsyRg6RmWvaBxtkagvR2/dIgwl6oNdi3zJWgj68lxeSsp1jAu1ZwLcRYAHuaYbgcQaXeTfXl8QRcWtiY+Vy9mKfXE5wz/7B0NhvtSwM7zG3cD4S3mSbSXgBZMAEBy4eXxb4o0SIQ+AySDuyvCTJwvs67bOhXYnLsNy0+uxn43w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763977536; c=relaxed/simple;
	bh=DBfqRAqXKMUSzdYStAkNam3VSfsHB3Mc9yXhM1SxT4s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=upihxgjm7yKyrYwvoLPFYPoo81FxGz0UhRa3uBDxCETiFutHiwCq6oF5ZjSv4ielCjIA+jz9vjiPkOp7+2jgVyAR1fERDT64CgCCmgMwAhVl1N2Zv3TvxkgGKyL0YLwLo11bMr/UhO5eGMAza+U6d1S0WYiHXfcihlg5l5Sii0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IRopIsat; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ETrAJ7U2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO89OeN3821487
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:45:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dw3k8txBXeUsj5vSE8wOlc
	Pq5C0txa9kd2GvuA+trbM=; b=IRopIsat3TKfQAfV0qA8SNRn/PKZhXJIyLG62C
	0iAQzA2c+A/IK5ZJIPKFEhkDd3R9gbdjWz25FLAM9rCakBXmW6zMNa2IOzCKfubO
	JgV3Hy2EgzecFegIk1ibpjVNcw9LTcWpyV0XrnQy9M3ao1S/Jx0iR1WUSu1uH9Lx
	gj6fLschGdm3ilhNHvs9G6NsfvCzlHfK2KS4L7Kcw4/HGeoHSYxKWdpRU+oY9q16
	GWgluY/dv0McQuQpJVFnOgu5sxWEk1VDtsv2gu0Cyj4EYV60zehCYWPyhFMRPllM
	u28SrIt3SD5/lDi17ozur3OAClsJgWAdx8drJ6mJp0m5rQ5A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amkknr9u4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:45:33 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7c7957d978aso1009436b3a.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763977532; x=1764582332; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dw3k8txBXeUsj5vSE8wOlcPq5C0txa9kd2GvuA+trbM=;
        b=ETrAJ7U2+9m6iKCoPiTG1kC+oHJ2anHEvsrBFsDQ8g940yaK8uFfQwdls1hrPVUTcd
         /ADRz4fGaFhYPjg7ExOIEoNanFFvyszycm0oxV/0Ls88tG0JRtuwqDkFB5W+4LmJIb16
         tiFx0BIJRKclzBgmXV2Irlxk+GriMvLDsfZWBH8Iwn3ZkjimMLwSZntfTUh+Yr7nLTSR
         HsOjVm3/DgipAojyStu5PVZclA5lOLQYSoswwR/fslczFzTNNNlgOQaIy0bX89bCciJI
         DnFjLIxkdtq+Rzc726VIO+rGNENZl1MRG5375Ua75u0lTZbqhlqut9B/oVqAdY/o7N4m
         paKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763977532; x=1764582332;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dw3k8txBXeUsj5vSE8wOlcPq5C0txa9kd2GvuA+trbM=;
        b=ttHzBfRBwSd0dHDX4KW+cReJupUiPrChNvqTkNoW537JXuODmG8hNo9NzjyCq7lOix
         4EnTGE1K5zzrbQpVsBFgN6Qb24PsUfM+fIjhvpWgxyb0GZggUDCgyVuGE+2enmshn4sH
         2csh7FHb8oJFd3NAPVdSHh4euUeyP/1H3DY45Vn882LzzyKKkInyGC0mPrXbW2gA/XjJ
         6eZ3j9Z9AY5W5SUiFlsOIbtp61/8O0RsT+NatZ+KuET+gdnb8Jk7H0FEmqxtAuJF9rh1
         ZvNGZl4MEc4VxGF2JyGLI4/0V1AD47M62kkbJK7332Hj9Ci6NKWl8Idl1RLBYDWOZwDZ
         sfgw==
X-Forwarded-Encrypted: i=1; AJvYcCWo1oXzt+cu+UbTD10xs3iFkvYh+7HL9ZZPIE++OiPIZcxxpVsX7ukFYUxHseIe/r9AvYlTJhO6990C@vger.kernel.org
X-Gm-Message-State: AOJu0Yw48Pys/myDCwXaeI6UMOx/xoXnChmlQ7l1V6TTXukM/CP4Lnre
	CZpS/LgORVBIDRFvumNI3Whfz8BIafvYAIZ3uajjDtYnylB2qqBvZibzLBGRCrKOLLnRpFIJRdY
	ZTCTRIGAgKy+CGMmXJ8h0qxHL4mp9S8H9K8tFSlclc6G7d0joFhigeKS2qOAsLmgC
X-Gm-Gg: ASbGncsezjjKM9+PcZMWNOSR+odnWr4Sh3Y/DaOI270BHwzMpTCdZmUsJHJ+8WeQ1cy
	K00AvEAcF9cbaEuEuQkSapIbawUoHQ3glAI8juLAYnvCvm2y/H4owLfMF5tFT2tlQ/4egvxJROU
	vsNyM1J17YmdJzGtItQz1v5kVw2Ih/QLyBkvjz09UpYdz5D1o8lt9wKED3t4fCmNhPJWWFdwAxc
	u6wKcBuyc/5kfHNJXwlXZhMQkHNETWRfpHYT63wISJ+t/bCPrc4NrSWCRO9yaI4tV2vtAfHkyvq
	LGBJO/j5MZ42Pngy6OMj4iJGQOaat/7yiWijteRyWQn4OKjpCHtbgakPiTv5/sn7mCe7YvVqZZQ
	n7XsIJJpiRCVvTviLDokL0yI5CUcuI9rPAj6otgkGRjwT
X-Received: by 2002:a05:6a20:7d9d:b0:34e:4352:6c65 with SMTP id adf61e73a8af0-36150efa2f1mr11452443637.38.1763977532384;
        Mon, 24 Nov 2025 01:45:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHydF8yK65KpEqG74MQ8inowM3+9+4a9hPb2OgvyUdCJXxjZo+DVPelrOMPA5VAxjEAA8Vk9A==
X-Received: by 2002:a05:6a20:7d9d:b0:34e:4352:6c65 with SMTP id adf61e73a8af0-36150efa2f1mr11452419637.38.1763977531855;
        Mon, 24 Nov 2025 01:45:31 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75dfed99esm12668291a12.1.2025.11.24.01.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:45:31 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: [PATCH v4 0/3] spmi-pmic-arb: Add support for PMIC arbiter v8 for
 Glymur and Kaanapali
Date: Mon, 24 Nov 2025 15:15:09 +0530
Message-Id: <20251124-pmic_arb_v8-v4-0-d91dcbf097c7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACUpJGkC/1XMTQ6CMBCG4auQWVvSHwrIynsYQkpbZRKh2GqjI
 b27FVduJnkn+Z4NgvVoA3TFBt5GDOiWHNWhAD2p5WoJmtzAKZeMcUHWGfWg/DjEltT10TQNk0Y
 oCXmxenvB166d+9wThofz7x2P7Pv9OZRXf04UhBKtTGtqxfWo6cmFUN6f6qbdPJf5QJ9S+gD6A
 rlZrQAAAA==
X-Change-ID: 20251123-pmic_arb_v8-669d7715d3a5
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Collins <david.collins@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        kamal.wadhwa@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763977527; l=3364;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=DBfqRAqXKMUSzdYStAkNam3VSfsHB3Mc9yXhM1SxT4s=;
 b=PaHhBt3CLZ2JN9xsC36QHFOkJgbyJoIfmn+N5JBIL3ih/3++OSlk0SWL7vH/3PPbrzYo5HHYy
 JNSNvcNIQA4CHDSbHB8EYRVVKhhUxIGMnaM2Ljq3o1kL6pFxgfhlwyO
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-ORIG-GUID: HmrSWFVA6PcsQDVcLZGBdkjVuX7Qg_l4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4NiBTYWx0ZWRfXzV7iLsJ622wx
 AkLCydEFOQenrfFFZNGBWm17d7K0SZ8fiAcpukeN5d96zRRzvatFsjuHAk6A6OEfBsyDELmOndR
 WHScb/f1zu5kGvk8lGDnIGf/x3Vt7ieI55P5yNXclZIFtJUPF4/hwxL9r2DupqoQJbst3aM5pQ7
 1dmaibDGpu9r4uZyvuNmO8UMtX2tUxMHB1nwBa+Kq3s/Lh2qUV5gkXVanxQfYWpwVpCFlpSvgb2
 K0hFiT+ctUpOmA8qnWIBaK9hg9E5rRIVAao2Ga/Z/zDpd6jBuqaljTqjwBAnE6sY8aqFjv+ynJr
 cs/H2tJfVMfcLcFNtiFV7YRNAyrdUi+Jz4YLNxRwABvts2J4EySFF0O1Q0qkH8R49TeFVrz9mzS
 Nh1xd/DL+2hbaVRZ57mT4J36y0dYPg==
X-Proofpoint-GUID: HmrSWFVA6PcsQDVcLZGBdkjVuX7Qg_l4
X-Authority-Analysis: v=2.4 cv=B8S0EetM c=1 sm=1 tr=0 ts=6924293d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=OUK7M_EUaPGKAuIlalkA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240086

This patch series updates the SPMI dt-bindings and driver to add
support for PMIC arbiter v8, targeting Qualcomm SoCs Glymur and
Kaanapali.

SPMI PMIC Arbiter version 8 builds upon version 7 with support for
up to four SPMI buses.  To achieve this, the register map was
slightly rearranged.

Device tree changes are not included in this series and will be
posted separately.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes in v4:
- Collected Reviewed-by tags from Rob Herring on patches 1 and 2.
- Made following changes to address Konrad's comments on patch 3:
  - Moved bitfield.h inclusion for alphabetical order.
  - Added mask macros for use in spec_to_hwirq and hwirq_to_* macro
    definitions and updated their definitions.
  - Updated if() check in qpnpint_irq_domain_translate() to use FIELD_MAX().
  - Added helper functions _pmic_arb_read_apid_map() and 
    _pmic_arb_init_apid_v7() for common use between versions 7 and 8
    in .init_apid callbacks, to reduce code duplication.
- Removed pmic_arb_dump_apid_map() as logic for dumping mapping table is
  now kept in a single place, in helper function _pmic_arb_read_apid_map().
- Link to v3: https://lore.kernel.org/all/20251024-pmic_arb_v8-v3-0-cad8d6a2cbc0@oss.qualcomm.com/

Changes in v3:
- Split out some common DT properties into separate binding file and updated
  existing files to reference the common file for properties moved out.
- Also updated Glymur binding file to reference above common properties.
- Kept David Collins alone as maintainer for new binding files added.
- Squashed kaanapali compatible change shared as separate patch earlier:
  (https://lore.kernel.org/all/20250924-knp-spmi-binding-v1-1-b4ace3f7a838@oss.qualcomm.com/)
  into Glymur binding patch.
- Corrected comment formatting in drivers/spmi/spmi-pmic-arb.c to fix a
  kernel bot warning.
- Updated definitions of spec_to_hwirq() and hwirq_to_*() macros in same file
  to fix other build errors reported by kernel test bot and removed a comment
  made irrelevant by this change.
- Link to v2: https://lore.kernel.org/all/20250924-glymur-spmi-v8-v2-0-202fc7a66a97@oss.qualcomm.com/

Changes in v2:
- Split into two series: SPMI (this series) and PINCTRL.
- Included the DT bindings in this series, previously posted separately.
- Fixed kernel robot reported issue by including bitfields.h.
- Link to v1: https://lore.kernel.org/all/20250920-glymur-spmi-v8-gpio-driver-v1-0-23df93b7818a@oss.qualcomm.com/

---
David Collins (1):
      spmi: spmi-pmic-arb: add support for PMIC arbiter v8

Jishnu Prakash (2):
      dt-bindings: spmi: split out common QCOM SPMI PMIC arbiter properties
      dt-bindings: spmi: add support for glymur-spmi-pmic-arb (arbiter v8)

 .../bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml   | 150 ++++++++++
 .../bindings/spmi/qcom,spmi-pmic-arb-common.yaml   |  35 +++
 .../bindings/spmi/qcom,spmi-pmic-arb.yaml          |  17 +-
 .../bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml |  21 +-
 drivers/spmi/spmi-pmic-arb.c                       | 304 +++++++++++++++++----
 5 files changed, 445 insertions(+), 82 deletions(-)
---
base-commit: 6a23ae0a96a600d1d12557add110e0bb6e32730c
change-id: 20251123-pmic_arb_v8-669d7715d3a5

Best regards,
-- 
Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>


