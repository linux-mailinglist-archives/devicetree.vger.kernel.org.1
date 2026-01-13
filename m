Return-Path: <devicetree+bounces-254316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D30D1725C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7C7E13034FBB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67243350D61;
	Tue, 13 Jan 2026 08:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dcZbl769";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RIbzLaoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB57536B064
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768291288; cv=none; b=AeDInozhvv4GWVFRXkpqGfsKv1w0vq5n7oJyGISfbFykPc6FF6fnpjhO41NmOeDUB73thOna43LoJClBcyrUX5jUjcNKf1t4twPulnx0GQMme9yLweB4U+DbhmR9B6wF6q2In8Yvy7BeCJecTNWe5w6ORG8hbSr6pGkA9+teeIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768291288; c=relaxed/simple;
	bh=8pPIKnJcI5Mf+HjhRpi0stuvWU4pMxlGix40vfOJ/gw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=axMLx4begQ+0uMd/3lWaHLTbvBEBg2zKdWFjTcUitTbkY6dNWKar5iP90/zXl+qbtHRqfjCQbGAdGKDrEtre/voRGN2+xYrAfD6yBk0b2kplIFCBXHcfgf+9e+Yv5QB7TJfg90UpcaG1DnGvW8GsvbCLAjqgUXZa6yUE6hmOy3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dcZbl769; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RIbzLaoT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D593i82835019
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Gc3rkkafnnxjPSIOAIrhhn
	X/jj1SiI4kU3VTMma0oWU=; b=dcZbl769RtsVbRO+Dbs+8B+bYcqfZA/sx11Z0c
	AaxpJ5qVxc59dTFWdm1H3E0aGWrCosGW3lm8L0VdxwSZEWkRRXXm/aXpLS9I9cJ9
	4JAmkx5VffXg8dqRXKtB/jko2jcivkaS/0y+gP01GsDhpX8oGfnw56txiMuraG7T
	MUNv5ZvIBGPLzpzWCyLe8Zf/3SfM0aMLhEqMwa2fnrOJNgVyYaea5S+CYIypK+IU
	5Bk/EWYnq/HX/Bx2ak9dGmlHgbWc8PnlphFBQTlpneXjkP9t2wssjpYPHEHIZM5D
	vJ8Tm8XbLMj3YeMjKuvrT+oGdT6WlYfjRS69tUKl8aHq+1PQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfn9rewy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:05 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0a8c465c1so36611625ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768291264; x=1768896064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gc3rkkafnnxjPSIOAIrhhnX/jj1SiI4kU3VTMma0oWU=;
        b=RIbzLaoT/cKOdsp7T5bvii49sARsbQZOMziAOuFsdaJjY392Qy2RfjGA0mR1gVEiZE
         CpSOTm1bDZKzgJ6Xj7X2GG7hpLzrvvQYBnMYVh7wDiRR8SxNm6Q62hoArvFyojJikJjV
         L6hPEIj72wPO0zd0FusovtBviKo1VmI9IHu1vb7G0AYvEDBlPSDoT6tY1mxvmY27oajn
         DV4xFG2237WkIpDMAoxZ8Tl5hhbKJIR/WJyVfg42XDIcbC15zBjcYioDB5av6klQ8AwP
         +WVl0kfL+YDA15Tn+FoD7cw3o0ya3FAeyRqiS3kuBguKPMpsBMIgFXa1TOyK00p5Got5
         tfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291264; x=1768896064;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gc3rkkafnnxjPSIOAIrhhnX/jj1SiI4kU3VTMma0oWU=;
        b=IktNRI1nJz4jVy4EF3j38MCr9gSRVEtD8JoSIpXvzPfa4TgFgCvvlGaxMF1+sUCVZY
         ERC/42gRNQIZnnVjK5b/XXkJ5SXiofJNTEJRbLq1R/ERWF+V1IE5mX/egD/0cRfaPEKF
         qIqm+8lfotTi2B6afiNlHaoy/3IzVj4IszsJucmfY6kgzE/w+kQTlq7II1W9v0ukEgRo
         adQnNB00GklTbjEvX+yqe8mW8RjHFutV8ssmoDKPZI4Sjna3qNLIVFcCWn2h7UQzOc/M
         1aZa7uOvv4iqB2UUUeMSR8VpDBeZ3ZZbiIf9shvipSn6/J/nDFJvVgxstJ4SSDergr3t
         /zrw==
X-Forwarded-Encrypted: i=1; AJvYcCVky5Zilm+GEAqh9/T28JtDg+jrWmsTTS6nQ/P3wKAtUz47VSAOSINaGG/0lvCKMMCf3VnUhW553zGs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9L70ibPTv0HcaOFJ/SBA9tjnbRQsoPoowYtFC+Fas+fv99AiM
	PT4Uxcmdn+FaRGZ4EQsZmk0ttkT1Hv+hRMq/jtKwigxmjRstw+ng9yryB7CzjJc0ZR2WvIpkpwc
	BclZZcOqfFXReLUXEo5Tu0ze2kRwk6TeUBTiLlpUgbp4lhvoBlIBB1Q2FEQ5LCTPL
X-Gm-Gg: AY/fxX45iqbEpX/iHVh6yeSvwAkvWHmV5H6doApIA/qGDSFyCwKhC+2npfd3BYEM6J8
	dLmhMWz9oyATW7fnkozeFZdvZpndXcYSbmz1itJ56I1QSgSfep8EkOel+f5wJtaOgrQKcCTdtHr
	VhQ5uNDt3cDZ3TBJ/HYAIWB5dq1Inx+YyDbiz4bBg4DyKuxt/W+z2FUcRBIIiKmp0Fvp9NhTQ0V
	j40p0l9fBjNQSTeUS5hbstqtLKEeSeHIxXA8gFWN5oZ/4NsoqaxC5jWuhvV0iT5lmrHR+MeWUBf
	3wvQ2ni8y3pqTZjgKEhTrKwxx/WihWgWMjftvj4Ed8OxzQ+XDmJhRck7ggOC1l47V3D2z9dCrLf
	sSUQWEy9JIukp6xQ3CqInsbUYRBcNxy9AD8n3Ak/T
X-Received: by 2002:a17:902:fc84:b0:295:592f:9496 with SMTP id d9443c01a7336-2a58b5015afmr17274535ad.20.1768291264259;
        Tue, 13 Jan 2026 00:01:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IERSW7Yb+/5CobzFAzu+FgCJlw8ZLQmnluW6ph/hOL/hrNL+RvpgwJ1qbt0YkWHtnX3dd/lKA==
X-Received: by 2002:a17:902:fc84:b0:295:592f:9496 with SMTP id d9443c01a7336-2a58b5015afmr17274125ad.20.1768291263603;
        Tue, 13 Jan 2026 00:01:03 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c15sm191132725ad.27.2026.01.13.00.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 00:01:03 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V5 0/4] ufs: ufs-qcom: Add support firmware managed platforms
Date: Tue, 13 Jan 2026 13:30:42 +0530
Message-Id: <20260113080046.284089-1-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ji0fnb1ijIjF29cWnPTcjRQW4OMbbBOg
X-Proofpoint-ORIG-GUID: ji0fnb1ijIjF29cWnPTcjRQW4OMbbBOg
X-Authority-Analysis: v=2.4 cv=HN/O14tv c=1 sm=1 tr=0 ts=6965fbc1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VSDEYizg4LtL04GxL0gA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA2NiBTYWx0ZWRfX1kkPR/UIpmSS
 oUwGDzRkAUkh2gxnzhz0594OhVTnKjBPUSHyyUeVViDQNHvH32CMoZc/ka4o9x9jcir0Tzfe+Bm
 mj42l2xcfqhFqWGA5i5x97RaS85kKch7Tskkod5HyIHN8BKykNwHf1dB0zfWhdjOXSmVxGRDKXN
 MltzfeCobFjzCCYCpdZKwdOp4OaCkPXEE+dsPS5/r8tk5TvRjklqNzr0YAG15cR081C+aXpX9Ly
 47QlUzvAwVpUxCypTPLth2wdzMVIWIoTxvuJ1hCy4HlYkPwKrZd9oJhbfeEqD84bZElWUdEaLIu
 Fl+z7aqV19CG46P76FbJiwZX7dCJnkrw5uBOE34aR/EDvXn2MroCzWWbkgpqMlx2tEhbL9tXc2u
 wj9eHAO6rdTX5Wwdfl0Tes9sB1O/v1jb0NzwsCG82KyOsseXsSl51d/f5MNgAkhFeOGUVVvicHR
 v896n9rC1xzceytmFjg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130066

On Qualcomm automotive SoC SA8255P, platform resource like clocks,
interconnect, resets, regulators and PHY are configured remotely by
firmware.

Logical power domain is used to abstract these resources in firmware
and SCMI power protocol is used to request resource operations by using
runtime PM framework APIs such as pm_runtime_get/put_sync to invoke
power_on/_off calls from kernel respectively.

Changes from V1:
1. Updated "dma-coherent" property type from boolean to just true.
2. Switched from QUIC mail ID to OSS mail ID. 
3. Added Acknowledged by tag from Dmitry for patch 1/3 
4. Added Reviewed-by tag from Manivannan for patch 1/3 

Changes from V2:
1. Added new patch "scsi: ufs: core Enforce minimum pm level for sysfs
   configuration" to prevent users from selecting unsupported power
   levels via sysfs.
2. Set minimum power level (UFS_PM_LVL_5) for SA8255P platforms.
3. Changed DT example in qcom,sa8255p-ufshc.yaml to use single-cell
   addressing instead of dual-cell addressing.

Changes from V3:
1. Removed address-cells and size-cells from example DT in
   qcom,sa8255p-ufshc.yaml.

Changes from V4:
1. Fixed indentation in example DT in qcom,sa8255p-ufshc.yaml.
2. Added missing kernel-doc description for pm_lvl_min in ufshcd.h.
3. Removed redundant spm_lvl check.
4. Consolidated spm_lvl, rpm_lvl, and pm_lvl_min assignments into
   a single line.

Ram Kumar Dwivedi (4):
  MAINTAINERS: broaden UFS Qualcomm binding file pattern
  dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
  scsi: ufs: core Enforce minimum pm level for sysfs configuration
  ufs: ufs-qcom: Add support for firmware-managed resource abstraction

 .../bindings/ufs/qcom,sa8255p-ufshc.yaml      |  56 +++++++
 MAINTAINERS                                   |   2 +-
 drivers/ufs/core/ufs-sysfs.c                  |   2 +-
 drivers/ufs/host/ufs-qcom.c                   | 156 +++++++++++++++++-
 drivers/ufs/host/ufs-qcom.h                   |   1 +
 include/ufs/ufshcd.h                          |   2 +
 6 files changed, 216 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml

-- 
2.34.1


