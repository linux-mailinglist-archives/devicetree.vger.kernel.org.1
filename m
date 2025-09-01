Return-Path: <devicetree+bounces-211139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE57CB3DA67
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:58:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68DC83A75F4
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 06:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4914C25333F;
	Mon,  1 Sep 2025 06:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RnYaqLU9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E791E9B3F
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 06:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756709902; cv=none; b=e6AeOG6NKSRr+stoz9q2/MCDO9lXLadu26hgJavCgSXOE6SBuBFRBw1AISOGV7f4etXv6/KGpQYoYfJXrbpqHXKWfL52PrnjLBbjaCVZWxbDlHUqgQxXfJp4U+SAajHGZy8StzkBqaFiA8y1Iaxwa3uZEGZnbjo52HkdKlblibg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756709902; c=relaxed/simple;
	bh=Bohuu2nXAiF4O2/AKaeromzfaJnb02aZ3+OBrSc4vGY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dFDx7hNmMY2FZaJ2GDsD3Me8GRIiPf8ktiASm9HIwfrO2LkxblJJKJT8PUGei73tfIW3JRGIDmwNtP+jIGlPUlZk3SeXy8uj3GIOBojeEVlu69mI/no1uQeq97ry59u/vfbUXuFHeup8Tb//IQqt4v2PGSdotR84dqfFnjRT+fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RnYaqLU9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57VLv298006149
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 06:58:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=SFxB4b5152ACgHv5hL26zS
	RXW9kcmLQr3SA9+ZzOJSU=; b=RnYaqLU9QZOLMDiXx25IYxD1RD7AFdIdoGz3oe
	ziKNbMudY/P/UPHIoEqXJ/eLZeUOLmn6OdsLFU3YzD4yDYsWT4K2Am2OKzIJwK5U
	1eNBIlcpaGsxDEIAfMxweIA/3X6+7hA1inRDqm2T78PbMpY2vhIOO4OWjWqtAmx2
	MIj9HqfP6Od3Y84g3YyvKJzfSHTviMNyvb/75H2O3MvxeSpdbwtKSWk++sgqROea
	cPgwkzTxN9BNscJXe14jYLlcYAE6D0wQPvWszeRZ/PUJHl0TyOZRSyBa7hut6Mlr
	HRGhNu97+Kn4ltjL+GiPrT55E16XtJb9sxaBXdLEvb3zAOWg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0ebsrf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 06:58:19 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b47174b3427so3445417a12.2
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 23:58:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756709899; x=1757314699;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SFxB4b5152ACgHv5hL26zSRXW9kcmLQr3SA9+ZzOJSU=;
        b=u+3Gu/P9GRelcPPob0p8D/U80bMmR8smlD3J9Cx4Me9/99bZe+KS1rkM9YBB5aRBP5
         FtgGhEz5HDceTI1cyt76k2+ppYaueYNXMmJ3aekOA3uMMVM2S4OL9QyPm3omSoPNsYYa
         KaircxZA59a+wg6xVq9R1NBUs/tHeL0PqBiE6DRh3y0+Si4YFizW94+/UdD21bBBu6Cr
         sspqonDjKqG6U1dZ85mGFqzknNmFtEQyH0zxdZuXKu3BZHElNg7DsbLeKlNsr2s3Sntc
         0A3Qg3CSY6SxELMXZAyONht2j131aTgaixpHAG0nWTY3rfowE4INgL9d/h9VG1+nvTJ3
         DNdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsfNte8MPbhL4WIGnDkl8+6UFWWE0VoQsqmiCV9WlKIn0g/DPdtip0IzYnifIYP11xJ4l+QTvtAViE@vger.kernel.org
X-Gm-Message-State: AOJu0YyaITym1QGjAelbeRF8EZ1FzU3+KPdqfjwjpnZcPtMHkjIjicIy
	YeyeyuWUK+TrMOaLIo+ytBccoZElLd9md3pEvL13Li64xtRWfJWPAo8kjbT85ahzs1r6pGEiXlA
	6dkdflNw9mE87UVK0JI3AmVFHdtA7ZZ/kBPQcG8h4QyNLTRv48nEzJOGthprfuxac
X-Gm-Gg: ASbGncsNu53RlXCP97eJU8NUkiud/bmtjL/QFImh23RLLnj2AGJYneuS+Kiqjp3qHpf
	8E6aTflpT4Vgqb3VlWsla5POuQBzvWPgLu362hO5rcVIm/Xl3K0U6aNIv7ATwFGeLaSWPbdyACH
	Tkmdph2wZDwo2Ei+CHZyRzy0X1IiEPDgAnVRRNKVcBRMi2LVj+seNhdRKj9TOrOwYQnV0DV913l
	Wf5GYqtE0pOyNhGE4TYha46wU+/JwpmdcEKrPAgIyjvlahi5nyEVm93vVT4Uf2ZT3LY1E0qW3YR
	G21U09zrLCxCLZbEgJptz3Dmg2kJ/2ku8QihKuaMqlYS/MHvTd61bb2JMubT5HXpek1azRcFaj0
	txHgzM3qe6byIk40vOG7DLg==
X-Received: by 2002:a05:6a20:244c:b0:243:c23c:85cc with SMTP id adf61e73a8af0-243d6ddb139mr9824696637.7.1756709898885;
        Sun, 31 Aug 2025 23:58:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/MJTK2LkXJkAjtOOHujdhhNAOwInpfVcCHf55Vp9xMFEF/nOrcg5TLoWZNE8rzo27oCxGzg==
X-Received: by 2002:a05:6a20:244c:b0:243:c23c:85cc with SMTP id adf61e73a8af0-243d6ddb139mr9824668637.7.1756709898378;
        Sun, 31 Aug 2025 23:58:18 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd366f95asm8559358a12.51.2025.08.31.23.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 23:58:18 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Subject: [PATCH v4 0/3] coresight-tnoc: Add support for Interconnect TNOC
Date: Sun, 31 Aug 2025 23:58:12 -0700
Message-Id: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAREtWgC/3XM0QrCIBTG8VcZXufQM52rq94junB61oSapWsUY
 ++eGwxG1I3wyfn9RxIxOIzkkI0k4OCi810aYpcR0+rugtTZtAkwkKzikrq+84aKkoEqLK8rZki
 6vQds3GvpnM5pty72PryX7MDn3+/CwCmjJZgKRaO0LeDoY8wfT301/nbL00Pm0ABbvF8xJAyWY
 VmjEAjNH1xsMFQrLhJueC2lRa00qB94mqYPNWPh9BsBAAA=
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
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Leo Yan <leo.yan@arm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756709897; l=2054;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=Bohuu2nXAiF4O2/AKaeromzfaJnb02aZ3+OBrSc4vGY=;
 b=ET8jnq7cEfnTAI4blvxKkZzx0y6DFwRxd0mxO2N8ainzsfhuOU2lmKrzM8nqL0Fn00ZjlSEsG
 fJFPEVbeEInDZaAU6ivgNEnSv4eMiGVXzWaZcXvRkS1FXVTv8VXkW7c
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-GUID: QE_gBTevgXlyzpKnajQRqz07qjEJNNik
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX7dNRCe6xe1fk
 JsDsM0Xf071OczYzQ2BswBYg+cUqpGxuI2yE7TOcU+JQDyTwWOvHCGUxJvsklQVcEE2o6c3E8+o
 vtoCuG9xgcHP7XtSePYimmt7izav4kZsOmEYkDswVEM5UWpPbVg8wvPEEba/4DTIiwNkTFrBMzI
 Yq/vLUOg1pYTTXQgbyfQN1rL00n2wBZ41xtZveTQxOOhk7ZPhX79JIhApc2v5XjQuph1nwc8ApA
 tnOo8rxey2HjVpPVOgcpQM9wjm7U9oNoJfJOyCG2F6OpojNiWW1bNczBBqdd4oLwo1ywQNjUtn5
 G2oJzIZc9wDFfHQuyGDw9OBe87+Lw8HsR51hWN5+vfcYFHzDlZalJ+BNQVsvi8d7lpiI3rGjzwK
 H0ilFtjB
X-Proofpoint-ORIG-GUID: QE_gBTevgXlyzpKnajQRqz07qjEJNNik
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b5440b cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=G-CQVniXWX8y_UMPSkYA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
(Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
this block does not support aggregation or ATID assignment.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
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


