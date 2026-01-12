Return-Path: <devicetree+bounces-253902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB63D12863
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:23:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9377530700FA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F31B34DB78;
	Mon, 12 Jan 2026 12:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cpi058uh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZaciFiWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988E52DB787
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768220613; cv=none; b=co3X3Mm6u00w0DjYJkp/e5I2y6Erl8gq1STWO9QZtNbDy/H44Bcw8GtFSNLtfP0P6dJgIgI8fqsMMwL26Vub/oBFJVbjEZBkr152E3TJ8YswMBacg6IdElXiAdVfVUlf8Zz317kNYvw1pgbuY+KVzDMyIcLcSm5ibd49swm8L8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768220613; c=relaxed/simple;
	bh=JuGz8IDRPXNikOnevjyG0RNyKkVrix4FENqqblYlfdo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kpZLsY3S02XvcWsTbI3yDwJHA4v3iv9pZYy2uGidPnVPAbe2L1cSdOMQFGp1rD10KMw6vt9R9rMf8NomqOmOJNIS/YiBVb481yfYG8szFb8ijdujG7QuOLYJvzJDFbzYruWYqRiakY1bPVQbUfFUG2V3DfreiH9fquj4JAMAdNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cpi058uh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZaciFiWO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8r1hR113359
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=XtrezLLgrOSrrKEDPKIzhm
	WYUPSTkqvksns/TkOowfU=; b=Cpi058uhq2uX0cYUpyQsqPQTAjzbyVt5e9fah7
	gNt7ihjWarSrGTKOojsB6cupHPwZVXkxH5w7LEA6XvJoBxgpys8fW5LXod+kd3GQ
	a6+k3mNMsuaoNhIVsktOk3ScicnvWD1/gIRriRWSstOAbRUwjjpV5BE2H6cepJnT
	DO4DjsbOyQR5brLt1fDzjrJBYwu29WZwz0zpok20Mx6neo1V7GwpXS4qlL+vd8jk
	/BbBEHU/xBnDFs/tQNVloEctdTSowgZvP65Dz9qpzkhaIReCOaT4RUwHMX+ff15z
	0LC11v30fyztVg5Bf1ZJzYo7b/+WRDDFAvVwfXOO8oJ6zHyw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmr4uhq50-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f1450189eso45929265ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 04:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768220610; x=1768825410; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XtrezLLgrOSrrKEDPKIzhmWYUPSTkqvksns/TkOowfU=;
        b=ZaciFiWO3HnAWxWulHhTnJud7R8mldEUr/n5C+8B6Ap0x1+yflLgA/epgMc9MdFWEH
         QOpA2S0Nc9jd3qfu1cdBOYO74u0BYmdDeTrRnt5xbxfBewDGZPXUIWNKC7tGS7tm4vFv
         sqNIDQjy0Gtg7JA+dAZ8Fb7y7nX9BlTaSg6/qiKy4a5Y8LEJtYTnBxlabe/1m+a8+NzZ
         tGZW2gX9+AZF/jhKYZRo46csOAhxgwPjmSFcpi1Zr/cRxN2z/9NXWZbZHny/Jp3XduJy
         QSkoyxbCOdmybR/OQYhEHvFytxDJEZ//t7/T+syK5kQWUjoc6aqkIfPN685taNLqeO51
         w09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768220610; x=1768825410;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XtrezLLgrOSrrKEDPKIzhmWYUPSTkqvksns/TkOowfU=;
        b=Yll/ISUk/La2A7tyVKFhGQeztFJACnpTf7PRfjyyHDM5/DNhYOmow6AG+9LEQgrCMh
         CUY3lFh8xAUqa2hQ91KLz0S5Ff+UhDpgYBCR08Pjr5P0o0xQJDg9q9jZ1MD4gms8CCW0
         m5Rklh2P4yXvCmdB/ZdTM5h3Xm+YBkGClqjWuBjKKbg3vRa2N5ZuRIhJrhb51HT5uwhM
         MkP/AViDpy8jx9QTKFQ5k7R6l8MwVRlDl0p/RjZyjtsdwZ+Dk6MNxxWGggoBN58waDGz
         XAAFY8wrJEK9hzzkz7YbqwvgyuZOxR5j8droQxBlRftuvf1FBkAusUIiWhiqlAtlbnXu
         P1fA==
X-Forwarded-Encrypted: i=1; AJvYcCVss56MEXExZDqM4ec3wkZaZbsMcdpQuBoOTQJcgVO+xstpBK68YY7z3kTWvyG/LmuhSgi/Y7bXsCEU@vger.kernel.org
X-Gm-Message-State: AOJu0YzmEzxZuFrQIMEbVGazwywZyOs+INQDDT0EJ5WJsEmV1Z0tGw/7
	UdEnoPCfNtZ9iNhvxnxBzbIe5oCJx625sDMuqHMV1dRsa7W/beRIpT8717AzatZiaC+0vcc8ur5
	PWCV3Cz8hk8vRERFDATkWxkncb9IvK9YYLOARQtQrbSOOmbtKzsYRD7sr+A7zgzCk
X-Gm-Gg: AY/fxX7f69nuajONVLfidYqAh/7z6oG0/wlqdIZ/c1l12geIQrXXnIBfr/NitXMCDTt
	kMt0BkB2DcWmtwoRjKYMS96qa7CSRGWfeEYLtq/f/hU1ODIiaLdsBddqQvRyJJqtP9n+OPgztW3
	ODe2cVONV8XOiL/eHLvQG78vC5vDRfyO0JOU0mVIzLD3C6pCj1d0+bUpieYWf8tmi396M2gSBTI
	/AG+Rg+dcMp7f9GsbnDqsf1+D2AQ1PRrtlZwIFrioaus9bbFsrU5jIX7x6WafTTnOtX/0ErXOmp
	qw44YJCG5j+TOJshOLmoDIAooMsZfCHL9H0B1LJTLKV4cXq17p8CW0h1h9m08HT/ZqY2wwE2/uz
	axjF2tL0vj13Xy1WebOevDW3LZWSPjDaGhOH4RMwc5eBonsVuJei8xhsORhWJfLO2i9yAuy4RqE
	oUCqLfbPh3Pj5qfgC0Hpn70dowx+3/Dg==
X-Received: by 2002:a17:903:3508:b0:2a0:a33d:1385 with SMTP id d9443c01a7336-2a3e39d7c25mr213861225ad.17.1768220610114;
        Mon, 12 Jan 2026 04:23:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZaOgzztrWI2rInPLNd22O3peYbwK51fGuw9s9V17+95G/FF45cKcOWGyPYvzxKIy50MJ/kw==
X-Received: by 2002:a17:903:3508:b0:2a0:a33d:1385 with SMTP id d9443c01a7336-2a3e39d7c25mr213860825ad.17.1768220609595;
        Mon, 12 Jan 2026 04:23:29 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm170875665ad.22.2026.01.12.04.23.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 04:23:29 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Subject: [PATCH v4 0/4] arm64: dts: qcom: Introduce Glymur SoC dtsi and
 Glymur CRD dts
Date: Mon, 12 Jan 2026 17:52:33 +0530
Message-Id: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAInnZGkC/42S7WrDIBSGb6X4e6f4dfJRxth9jBKMms61SawmY
 aX03mfSwn50sIgIR/B5z/F9ryTa4Gwku82VBDu56PouFfJlQ/Sn6g4WnEk14ZQjozSH0cchWNV
 Wk6gOp0s7hsp1Q+jNqIf0FlAxijVKWQpDEsUH27jvReFjf6+DPY9JaLhfktbGqBah3eZ10UkEO
 HYe6jHCxIGBNYKWqHPKhHrvY9yeR3XSfdtu0/E2yzxDOMsWiG+dhrYxMIlEKg3VJuNZnplyPQl
 /SSdr4oyigBYL0WRFTS2uRTGeLZhKhbqaCpgwgaQxhdGYtmLrQBllaSFyIbdY8DIN5lV3VF9br
 wZ3WtsNZTk8PPTa2bkbAQVPXyRrIymvV4JoyQXE1nMPE0sDcU0lqiYXRum/EbWKFuYbN+w2lBZ
 GoMyVskjmjHy6OPThsoRyEktIHkaU/+ZvsUZwnrOGJXPQPDVA9rfb7Qc09eyf+QIAAA==
X-Change-ID: 20251007-upstream_v3_glymur_introduction-5a105b54493d
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768220604; l=6225;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=JuGz8IDRPXNikOnevjyG0RNyKkVrix4FENqqblYlfdo=;
 b=qN7mnbpbuHd2hRuoBAuEMps5CD42DfgyjoqhXxNmqQQQRejgZ2Uu1diQN5FsbuTTZvuHahLRF
 hRSKSkP6qYCACyMh0ndGRdNxfiIbByHFz4bQuEmc2Pqzchd3ul2PRO4
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA5OSBTYWx0ZWRfX2OYWjHfBk+8i
 itwT3M9Lfzqe/crtAbkE4VBCInjx9FWLZvK7cOlaa0uSkqSXbfMAVHM0kBVnGyeWK8SKcbXa+2z
 xXW5fODo1bBQhwSimAr94ZddZvIatsTmIfwWWXEXliJ8XpGvbToHEky8k6ojG0B9aKr9W9SAkhs
 Cn4TnAH2P6UvrbmmOsBpAEUAybGvIRurflGOrBPQ97jkhg/HhUnKyO9IJK6XncI4Ba6XZ06sfzp
 gonI92nfEGWkccheL1XY3vDxQAkBijbAnmH9IGlhXAh+Wmzuci49qHYA3/eG24A8FIv7UN/ARpy
 sOj7B/fLOtQcYNVZxGy50KLN5jtteJGSe76ESqpT4NOwy+XuNPNebKx0T8iWsZr//Krfqqf6qPB
 RCfPBjcINW97Jy8iX5WwyLHwZV1RqA6IQh9Os/9cJ0yXBzPqjTAy6DK1OJOoUA3psVc5wnendLT
 J2qceaL1DHU5i+mQ/kQ==
X-Proofpoint-ORIG-GUID: 9fNKatx2JdVx708x_gAoumhMBvXNNRkX
X-Authority-Analysis: v=2.4 cv=YocChoYX c=1 sm=1 tr=0 ts=6964e7c2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=9ajADY_X5n7qQr6QzggA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 9fNKatx2JdVx708x_gAoumhMBvXNNRkX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120099

Introduce dt-bindings and initial device tree support for Glymur,
Qualcomm's next-generation compute SoC and it's associated
Compute Reference Device (CRD) platform.

https://www.qualcomm.com/products/mobile/snapdragon/laptops-and-tablets/snapdragon-x2-elite
https://www.qualcomm.com/news/releases/2025/09/new-snapdragon-x2-elite-extreme-and-snapdragon-x2-elite-are-the-

The base support enables booting to shell with rootfs on NVMe,
demonstrating functionality for PCIe and NVMe subsystems.
DCVS is also enabled, allowing dynamic frequency scaling for the CPUs.
TSENS (Thermal Sensors) enabled for monitoring SoC temperature and
thermal management. The platform is capable of booting kernel at EL2
with kvm-unit tests performed on it for sanity.

Added dtsi files for the PMIC's enabled PMH0101, PMK8850, PMCX0102,
SMB2370, PMH0104, PMH0110 along with temp-alarm and GPIO nodeS.

For CPU compatible naming, there is one discussion which is not specific
to Glymur, Kaanapali and Glymur use the same Oryon cores.
https://lore.kernel.org/all/20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com/
We've kept the "qcom,oryon" compatible

Features enabled in this patchset:
1. NVMe storage support
2. PCIe controller and PCIe PHY
3. RPMH Regulators
4. Clocks and reset controllers - GCC, TCSRCC, DISPCC, RPMHCC
5. Interrupt controller
6. TLMM (Top-Level Mode Multiplexer)
7. QUP Block
8. Reserved memory regions
9. PMIC support with regulators
10. CPU Power Domains
11. TSENS (Thermal Sensors)
12. DCVS: CPU DCVS with scmi perf protocol

Dependencies:

dt-bindings:
1. https://lore.kernel.org/all/20251216-knp-pmic-mfd-v3-1-9d0cd62676d9@oss.qualcomm.com/
2. https://lore.kernel.org/all/20251215-knp-pmic-leds-v3-0-5e583f68b0e5@oss.qualcomm.com/
3. https://lore.kernel.org/all/20251031-knp-ipcc-v3-1-62ffb4168dff@oss.qualcomm.com/
4. https://lore.kernel.org/all/20251231133114.2752822-1-pankaj.patil@oss.qualcomm.com/
5. https://lore.kernel.org/all/20260111155234.5829-1-pankaj.patil@oss.qualcomm.com/
6. https://lore.kernel.org/all/20251017-glymur_pcie-v5-3-82d0c4bd402b@oss.qualcomm.com/

SPMI PMIC Arbiter:
1. https://lore.kernel.org/all/20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com/

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
Changes in v4:
- Enabled PCIe SMMU for all 4 PCIe instances
- Updated dispcc required opps level to "rpmhpd_opp_low_svs"
- Updated watchdog compatible
- Renamed gic-its to msi-controller
- Updated GCC clocks property to 43 from 44
- Moved cpu-idle-states to domain-idle-states
- Fixed alignment and zero padding issues according to review comments
- Dropped glymur-pmics.dtsi
- Moved pmic thermal zones from board dts to soc dtsi 
- Link to v3: https://lore.kernel.org/r/20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com

Changes in v3:
- Enabled system-cache-controller
- Squashed all initial features to boot to shell with nvme as storage
- Updated tsens nodes according to comments
- Merged tcsr and tcsrcc node
- Addressed review comments
- Link to v1: https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com

Changes in v2:
- Series was sent erroneously
- Link to v1: https://lore.kernel.org/r/20250925-v3_glymur_introduction-v1-0-5413a85117c6@oss.qualcomm.com

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>

---
Pankaj Patil (4):
      dt-bindings: arm: qcom: Document Glymur SoC and board
      arm64: defconfig: Enable Glymur configs for boot to shell
      arm64: dts: qcom: Introduce Glymur base dtsi
      arm64: dts: qcom: glymur: Enable Glymur CRD board support

 Documentation/devicetree/bindings/arm/qcom.yaml |    5 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts         |  601 +++
 arch/arm64/boot/dts/qcom/glymur.dtsi            | 5919 +++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/pmcx0102.dtsi          |  107 +
 arch/arm64/boot/dts/qcom/pmh0101.dtsi           |   45 +
 arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi    |   83 +
 arch/arm64/boot/dts/qcom/pmh0110-glymur.dtsi    |   83 +
 arch/arm64/boot/dts/qcom/pmk8850.dtsi           |   70 +
 arch/arm64/boot/dts/qcom/smb2370.dtsi           |   45 +
 arch/arm64/configs/defconfig                    |    5 +
 11 files changed, 6964 insertions(+)
---
base-commit: 008d3547aae5bc86fac3eda317489169c3fda112
change-id: 20251007-upstream_v3_glymur_introduction-5a105b54493d
prerequisite-message-id: <20251105-knp-bus-v2-1-ed3095c7013a@oss.qualcomm.com>
prerequisite-patch-id: 64b5c2583a515ba7b77e521123058e10e2461313
prerequisite-message-id: <20251216-knp-pmic-mfd-v3-1-9d0cd62676d9@oss.qualcomm.com>
prerequisite-patch-id: 8f2b3aff4b1a152b76251740883ca58a7ec87f48
prerequisite-message-id: <20251215-knp-pmic-leds-v3-0-5e583f68b0e5@oss.qualcomm.com>
prerequisite-patch-id: 6bbaff642cfd1f1386ff0ccd746739b68cdbeb45
prerequisite-patch-id: e30603778b23b7f7586b1c01a362e45af7bd0aa3
prerequisite-message-id: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
prerequisite-patch-id: bb0420363fa9587c62b9ff2f4c57ae9fcf6e4d10
prerequisite-patch-id: 1f263de890046d4051462ef213cdba260512b613
prerequisite-patch-id: e338d64b1966e05270704fc6583f7f3a4a48fa32
prerequisite-message-id: <20260111155234.5829-1-pankaj.patil@oss.qualcomm.com>
prerequisite-patch-id: 0ae26b101a15b1c4ede48da3fa10a8c923f6b557
prerequisite-message-id: <20251017-glymur_pcie-v5-3-82d0c4bd402b@oss.qualcomm.com>
prerequisite-patch-id: 6fde5d236f7b0518831d0cc4872630488e255d38
prerequisite-patch-id: 69d19c558f3f00da1fab8f034b1228f457991395
prerequisite-patch-id: 5b1bd5433c9f4ba23144047fb0634cda315ecf60
prerequisite-patch-id: 1edf633fb7824231026251d53d648ee997699dd9
prerequisite-patch-id: 71265feaeeef9fb57c2f23588f7b6491f45852f1
prerequisite-patch-id: e0700a937fac05063668bd254bb2c1eb9eedc9c9
prerequisite-message-id: <20250923-smp2p-v1-0-2c045af73dac@oss.qualcomm.com>
prerequisite-patch-id: 12162e5c8953ca1d287bb23f48e31634828d9abb
prerequisite-patch-id: 0bc9a271a02ed879eb4b7c0f722dec4cf6dccfbd

Best regards,
-- 
Pankaj Patil <pankaj.patil@oss.qualcomm.com>


