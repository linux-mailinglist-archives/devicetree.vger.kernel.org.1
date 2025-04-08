Return-Path: <devicetree+bounces-164215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2329A7F892
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 10:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4FD617F372
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 08:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41CFD2641F7;
	Tue,  8 Apr 2025 08:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SirbSLFw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57868264F82
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 08:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744102209; cv=none; b=dQDvIKUTCEYBloPXsomEWpV/W7E7l9yQFeajtGDpYpsO0j4xsnGq4FqSmXMHt9b7puZ8fB5SgctTwRyzVi8H3OjTsPFuXo6DhXfmA4w2AeH8O/Clf7Am9YT+p0wjfIsIdqSMcZRmcertmRuDALaOvvPuj9rw9lYwoxZSntovq+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744102209; c=relaxed/simple;
	bh=3WL9RHuOr37ueCpY977pBENFvwmMyXbAuJwbEskYP10=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=f8CUEheqyyLVnGeCkRp7R31KOjDkuJlczBk6OF7IU3fLpT+eSvARPQzW4eb+PitrfFuZSYI+4zp0xi6b9S3xkuGu8ikB+2fqZ/SwDWxDhEAyGr8IjlXdsiSJuTrsb0AmcpBNuL+oMs3ZJ0RjjdIl80gwogXrwZN5X9g8GnqkI3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SirbSLFw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5382GPMv019664
	for <devicetree@vger.kernel.org>; Tue, 8 Apr 2025 08:50:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=KX0kg+QY5VU+pzrQGxzEsX
	01PSKAVuHH52HYSLvo0s0=; b=SirbSLFwhmS3MiN7T/Be95a4IWMYEhtzPwoEGz
	q7fdzjjCQFE4mRLwWgukdleL2+moJSAk7c9ZYURRppGN6pZVJwN5bVSs6vgs2zBQ
	tWIN7kWMomq9QpjXgdpvmWCxWMUk3fpqtRYQvO5XF3NcQsrNuavaQLboUmTQof9X
	slTFMTotsfqkyAzYQxt/P3zZXvjgyR22SS69g6Ulax2SELI1YCaHMR+b4fmubOQU
	BPKm+IbPYaGx08rP3YQ0SlXjjRJyf/LFHRzUUeHDs/DHWA6ZAkdYL5kKITgk9VyW
	JrB7WfZMYegoN5bwfY92qfxokOSpez45/yfqO1MaJ5Cu+O/g==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twg3f2u7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 08:50:03 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-af8c34d03a1so5355586a12.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 01:50:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744102202; x=1744707002;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KX0kg+QY5VU+pzrQGxzEsX01PSKAVuHH52HYSLvo0s0=;
        b=TgL9YI8qVAQdSC3Z4x0d04ZGKe8EnTeejATYkZsW7mu1MVDlHijkK9P1Fqu0Ttm8Fe
         ITQh7Bm2m1MrJabCzKulls7xjwnEv3oGp08nmbGAvcOpBVEEYQNYfNqFWoUsGPzidt05
         wZY2IkazAlayWdLfviG9pDbDCCZXwXjGNZDj3EJn5pMYZmWKmCOz6h5qEMY+YUXo5POI
         e39j8vrpzSj4W0xOJHWk9XFxKWpyVxjakRUZZyORk06j4kTso6QFpK+ViORVb0K6CXpi
         YvITHboBLpak02V8bcJLrI+UpV1z7XwypGjO38IO9vaNe0DTgGcrmO39LknU95cUhU5D
         nfyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpZ7GQWWC9PquSWT6RLgPsOvCdxT9FlpRyinfZNlTS0cwOiQT1z7SmtYb7IrFz5tath5cdRc06nKTX@vger.kernel.org
X-Gm-Message-State: AOJu0YwquoR/2HfifNbMnR+Vr5ltFXM0P86dzOD/5RodDORFPjT0HiMZ
	ZC7NKBefy5s3MBqJncNrKevlL2B9OqNn+Kns31VcFUvLnz+2af18JLpXLCnXsmm8uJKeuQpkvmo
	RjquUZ+6oFR/tGV5C0CR1FzrYCgzILlmuY6bRsMTS8VuFaOSjsmAfRKfQ2T50ysfnm2RD
X-Gm-Gg: ASbGnctrAyN2lGTeZHEcGdgHfR37cV+OhTZyLvSI+ptlPgRoOwGOLjvM68FtI0O/Ki2
	9D7Cjqm81ZR6oNV4AQQtZkmE66nmtTB6orW242D4HCQMK++i7jzDdB4uJ3bCSxenIrhGk2ON0ay
	0XHHlaXgma4jKrLLOXvJpiq229xjeELbDDUA8q1txqOU9hsqnI9kBAu+ObMa3SKsyGI34pz9S3O
	dUetvASsQ9nz8aDsIkdpXotYZkI8FIE8uaSTrDR64qaqU+lmrhv0EudvYW5thKNyLsLdslgSuLK
	TAEMEbkIgijvPkpuzgxbuWuK7Jj59vdkezOsu++8U0Mq/FljXdo4PIwK1a9S5d85Fet3CrqATgs
	P9fClqfnyCX0O5LiJ4c6A+ggAffchNH9y1Z6Ep1qai9IDY/+4a/g=
X-Received: by 2002:a17:90b:5144:b0:2ee:db1a:2e3c with SMTP id 98e67ed59e1d1-306a47c2d86mr21775333a91.1.1744102201950;
        Tue, 08 Apr 2025 01:50:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZDu58HLU8z1kjAvtuD0+tTe4rj0TQqBxPVQxMknp/sqfe0o1vsto4rylXMqGaXoGMRj8i7w==
X-Received: by 2002:a17:90b:5144:b0:2ee:db1a:2e3c with SMTP id 98e67ed59e1d1-306a47c2d86mr21775310a91.1.1744102201605;
        Tue, 08 Apr 2025 01:50:01 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3057cb5a823sm10480846a91.34.2025.04.08.01.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 01:50:00 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH RFC 0/6] Add support to read the restart reason from IMEM
Date: Tue, 08 Apr 2025 14:19:50 +0530
Message-Id: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC/j9GcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEwML3fKUkvii1OJUEJlYnJ+nm2poZGlkaGlmnJZopgTUVlCUmpZZATY
 yWinIzVkptrYWAGssErpnAAAA
X-Change-ID: 20250408-wdt_reset_reason-e12921963fa6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744102197; l=1647;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=3WL9RHuOr37ueCpY977pBENFvwmMyXbAuJwbEskYP10=;
 b=SAdcE6fBGzs6IH3MdA9eaCRwAUGWQckJseD6tm3tHBXicqdLB9R1izF2UHddv7nvXjSHsySFw
 INH8Vd9aLDoBBLlA/OtRlSxMEPi08mLDwQNDgapqIl0DEf3xdgdqfXa
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: 59BTaAy6k5Ku1F5yMo6M64D_6OXsgCxY
X-Proofpoint-ORIG-GUID: 59BTaAy6k5Ku1F5yMo6M64D_6OXsgCxY
X-Authority-Analysis: v=2.4 cv=I/9lRMgg c=1 sm=1 tr=0 ts=67f4e33b cx=c_pps a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=6yf5bMAz9jDV2NJdPn0A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_03,2025-04-07_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 phishscore=0 suspectscore=0 mlxlogscore=875 lowpriorityscore=0 spamscore=0
 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080062

In Qualcomm IPQ SoC, if the system is rebooted due to the watchdog
timeout, there is no way to identify it. Current approach of checking
the EXPIRED_STATUS in WDT_STS is not working.

To achieve this, if the system is rebooted due to watchdog timeout, the
information is captured in the IMEM by the bootloader (along with other
reason codes as well).

This series attempts to address this by adding the support to read the
IMEM and populate the information via bootstatus sysfs file. As of now,
we are handling only the non secure watchdog timeout reason.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Kathiravan Thirumoorthy (6):
      dt-bindings: sram: qcom,imem: Document IPQ5424 compatible
      arm64: dts: qcom: ipq5424: Add the IMEM node
      dt-bindings: watchdog: Add Qualcomm restart reason binding
      dt-bindings: sram: qcom,imem: add the support for restart reason
      watchdog: qcom-wdt: add support to read the restart reason from IMEM
      arm64: dts: qcom: ipq5424: add node for the restart reason information

 .../devicetree/bindings/sram/qcom,imem.yaml        | 25 ++++++++++++
 .../bindings/watchdog/qcom,restart-reason.yaml     | 46 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi              | 14 +++++++
 drivers/watchdog/qcom-wdt.c                        | 40 ++++++++++++++++++-
 4 files changed, 124 insertions(+), 1 deletion(-)
---
base-commit: 7702d0130dc002bab2c3571ddb6ff68f82d99aea
change-id: 20250408-wdt_reset_reason-e12921963fa6

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


