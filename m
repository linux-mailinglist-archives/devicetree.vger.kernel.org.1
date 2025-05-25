Return-Path: <devicetree+bounces-180312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA4DAC3342
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 132B71675EF
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 673111A9B53;
	Sun, 25 May 2025 08:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iMgSBbhE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA4672600
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748163368; cv=none; b=lJh6l60sEr/NZzjDr0bSQmCpCB9OgnaXqQfi4p9E0YjP/YyhYPYhRtsfUf9V/i0YWi/uamCK8EPSWTFp1JXs+NuWKCiFOO04NTsat/qs9v5XKgHhsZ/PGCvOYUmGpI59truUTAGfTyYEjOd1QQ7J4bwDlkWf6z77CkzvExnh7aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748163368; c=relaxed/simple;
	bh=Gdm4fc4veXI3OeYSAjjpDjBbAvEys/rUB+fN/2hyl1M=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Mkz2DC9AmRzNBLdO5wt4Wl3twLV4nx3perEY77r4ioDTVBGQWSdbI3e2TJg40yNaqW5RcCxwfwKfsxcVdH3M0SLxjcjckp0ahgjydKubbIqEXPvgH9Aij4ivvVBG070GNmGy6CDIbPe/3E05AEn2xtf5xD763kGA670eXw9b++o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iMgSBbhE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54P6vHV1005246
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:56:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=x8Q50l5U/57EBNBZm4d0wG
	DjpdKN9xkqTD0QizmCGc8=; b=iMgSBbhE3CWwHZEq+/rx42JU+ly90FfnUrqc14
	7nI5VMpYKXC5C8WIKJvWQXbOwFoTOBZEZ+okczaAx82fXlI3wz8fdamafwBWi6y+
	uaOjTM3W2lH0L7LybXFeu3vMq58iKwZhrXIAIPKlB5scSDvd0MDFbCXe7iLdrnzN
	uzNHTHe1kNd4CuQIU61TCWTndGvXfus6OkOIK/6xC6rKQMLtZ56AMESva2DV5P39
	RHIUzSPh4bWNTE9sTG+wdsNl3C04xskL0AX+SM+7SZslAT+cunUTMi/fBeiOIbdu
	T2BRPwgrU7hhLkA0A8386cVCS6ICIYN8Lf71tCFQIywdjbfQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3thsx7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:56:05 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-234596321bbso203805ad.3
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:56:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748163364; x=1748768164;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x8Q50l5U/57EBNBZm4d0wGDjpdKN9xkqTD0QizmCGc8=;
        b=fKAw6aWFMvUV00SitACmyKTAHIL1QV/GGo9uJ3O51/dUOxCbLLLd7Xh6if6WLDfnEQ
         CjG8SljfzyVaWtQ1kO2FWvfwhzmt4LY5iqE5wETetkpWiXnEiBm+BN5pnNJ5JRw2msEO
         brYWRi+GcwFT+YHbHYEsd16di+RRYRG6rYCGs0Vas90YNgqTDF1XFMoyUj8WbDhJQbZy
         m+XnGUKLhmdg3Z/jBorMzA23h100y5z/W43AZhU7anyO8O23InRF+Nmn5Y9xq1AdjDgk
         OC3EflOrhh6eP7eZv26cCZRtMskM8EjEp/N/WKry6BoXQDcTW5w6mf60u5/Qdl+PAJVk
         SO4g==
X-Forwarded-Encrypted: i=1; AJvYcCVSm0QaHzh7J9vK9+a+6vf/H+88EYOrUPeelmaXfHq2dIjHqp+ZCyNv5dzGJ0n2oLrqgoDJx/HfcDMZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9kx910u3hL6QZCVrMUPOiXH05qTXP+9ZJfcWF1zte53Hjtb2k
	7MvKqpGsYuzJxlBcc7anHbLgkID/9WYWmlTvDChuGO1XylqhV8/uaXx30eLuNzTjqvEsweuQfPj
	w3Q94doOKhovnzu8CITt/06KYglvhZTr6SfQ+hllCab99EpvIZOAV5uyh5BwB4JyePkmD4G77
X-Gm-Gg: ASbGncupVs/fZjgYrRa1db7mZEszQmkwXGMQ/PdTRxeLh1oZR9g5O9FfMHOzdjUFI8r
	cqDP8ZBRK3MIdJ6V/eW2A/ACEArbih+LDwRbnvNcQDyp0yYkUkQdvBYkcAZLAZAYAAOGfz3fHKR
	JtlOJFDKCOBNY8W64zp4HGCYdnqb11d9vuNy1GkopUroNRk2DyRwiGjB9tgTkiXz+/G8gkZgxyZ
	8jc6fldbhLdABTDAYQu99Na7jqhsmZM2BlchbaLsDA1sp0aRwPZg4dh6m13WKrh5JA7WwagGfzx
	up5mn+Vgn5Zuxw1TZdkxRbBPWQ==
X-Received: by 2002:a17:902:fc48:b0:224:76f:9e4a with SMTP id d9443c01a7336-23414f5aa40mr75715535ad.14.1748163364608;
        Sun, 25 May 2025 01:56:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGlNh2c5ZBjpomhhQkOdvv+tvQtcBO11xKSSSzt+8aWCSn4K4UCGHr2Xl6QAkrplcMOWgu0g==
X-Received: by 2002:a17:902:fc48:b0:224:76f:9e4a with SMTP id d9443c01a7336-23414f5aa40mr75715315ad.14.1748163364130;
        Sun, 25 May 2025 01:56:04 -0700 (PDT)
Received: from [10.213.103.17] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2340531be85sm29609805ad.104.2025.05.25.01.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:56:03 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Subject: [PATCH v3 0/3] soc: qcom: qcom_stats: Add DDR stats
Date: Sun, 25 May 2025 14:25:56 +0530
Message-Id: <20250525-ddr_stats_-v3-0-49a3c1e42db7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABzbMmgC/23M3wqCMBTH8VeRXTfZpvNPV71HhJzNmYN0tWOjE
 N+9KUQF3Rz4Hvh9ZoLGW4Nkn8zEm2DRujFGtkuI7mE8G2rb2EQwIVkuCtq2vsEJJmxoVnPJpMp
 aKIDEwdWbzj427HiK3VucnH9uduDr983U30zglNG80xWvAFSp1MEhprc7XLQbhjQesmpBfAQp+
 I8goiC0zA1Eh5X8j7AsywujaqKY7QAAAA==
X-Change-ID: 20250426-ddr_stats_-391505b3da6a
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748163360; l=3176;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=Gdm4fc4veXI3OeYSAjjpDjBbAvEys/rUB+fN/2hyl1M=;
 b=NJp5EoYFKrWZzLLhZemKLZCMdiVIIVLpX/Y+4hkV7d1WdQITEUU1/RI63VvcUmivbULLLJVwD
 0ByOmhJIuMyAbe/cn8CJ6jZiuO79+TaL/vU3joTHIAvzjxiDT09RqWT
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-ORIG-GUID: eygklivMmOk-7tExRzfNZjUVAZo8Xk0p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDA4MSBTYWx0ZWRfX5fktVEY071n1
 UmGA6D6+eLqdfYb7KMxlW/WIhOlWZHYfjBpEMujbOI6Hc/2pIKX8VFMCkG1s7LHzDRQFuEaYsYf
 IVvXMN8sXxOvno2ftlWQ0c89EGU9erdBBGp4K8aOegwuALNtqe2SQ/11+sekUsUvIck3y+gpYjo
 ElFsBD1KIUk7Rdfea65toOr22iIshixPflAXaPk69e35J+SeC65pDeuBV3YtuWRewiKa4tPVfPp
 u1aYaHtISKobCDFkGVdh1aQ2RRfgolNoWxWynbt+4ze3CQrd6d2XrCuoK57smftr8MwH5A5s0hT
 cOTvPI01dDe20M3gMBPf5q9gWkdT728XRMubU9WnGYmOSjrEZ7nh2mTTEVOUY2XABCryVO3NTEU
 bbE75pGcajmLSAyvoiE1c9fvZcpsb2yz0EOWL2u4ClMdVqiDrjHSSU5Q0qHF9L0rmRegv+gg
X-Authority-Analysis: v=2.4 cv=e94GSbp/ c=1 sm=1 tr=0 ts=6832db25 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=ubf2v9fuHxWRXcPCyOcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: eygklivMmOk-7tExRzfNZjUVAZo8Xk0p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_03,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505250081

This series adds support to read various DDR low power mode and frequency
stats. This was added in past with series [1] but reverted with [4] due
to some SoCs boot up failures. This series is more aligned to downstream
implementation and fixes the issues mentioned in [4].

The series [1] tried to add three feature support

A. Reading DDR Frequency and low power stats from MSG RAM
   (targets where DDR stats are readily available in MSG RAM to read)

B. Trigger QMP to ask AOP to populate DDR Frequency and low power stats
   (targets where DDR stats are available but duration field syncing
   requires QMP message to be sent to AOP)

C. Trigger QMP to ask AOP to populate DDR vote table information
   (To read different DRV / Direct Resource Voter, CPUSS, DSPs's votes
   for DDR frequency)

Current series do not include reading the DDR vote table information (C)
part from [1] which is to be separately sent potentially including reading
other resources votes like Cx Rail level vote information. These vote
tables details are not strictly related to DDR Frequency and low power
stats (A) and (B) this series is adding.

This series updates respective SoC devicetree with QMP handle (where DDR
stats syncing is required) and it is backward compatible with older
devicetree as without the QMP handle present, ddr stats can be still be
read (duration field will be read as 0).

Note that [1] was only partially reverted and hence device binding update
for QMP handle [2] is already present along with the fix to have
dependency on AOSS QMP driver in Kconfig [3].

[1] https://lore.kernel.org/all/20231130-topic-ddr_sleep_stats-v1-0-5981c2e764b6@linaro.org/
[2] https://lore.kernel.org/all/20231130-topic-ddr_sleep_stats-v1-2-5981c2e764b6@linaro.org/
[3] https://lore.kernel.org/lkml/20231205-qcom_stats-aoss_qmp-dependency-v1-1-8dabe1b5c32a@quicinc.com/T/
[4] https://lore.kernel.org/all/20231214-topic-undo_ddr_stats-v1-1-1fe32c258e56@linaro.org/

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
Changes in v3:
- Use correct format specifiers
- Handle qmp_get() failure cases
- Link to v2: https://lore.kernel.org/r/20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com

Changes in v2:
- Mention count in decimal instead of hex
- Update read failure cases to return error code instead of success
- Fix typo in comment
- Link to v1: https://lore.kernel.org/r/20250429-ddr_stats_-v1-0-4fc818aab7bb@oss.qualcomm.com

---
Maulik Shah (3):
      soc: qcom: qcom_stats: Add support to read DDR statistic
      soc: qcom: qcom_stats: Add QMP support for syncing ddr stats
      arm64: dts: qcom: Add QMP handle for qcom_stats

 arch/arm64/boot/dts/qcom/sm8450.dtsi |   1 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi |   1 +
 arch/arm64/boot/dts/qcom/sm8650.dtsi |   1 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi |   1 +
 drivers/soc/qcom/qcom_stats.c        | 131 +++++++++++++++++++++++++++++++++++
 5 files changed, 135 insertions(+)
---
base-commit: 393d0c54cae31317deaa9043320c5fd9454deabc
change-id: 20250426-ddr_stats_-391505b3da6a

Best regards,
-- 
Maulik Shah <maulik.shah@oss.qualcomm.com>


