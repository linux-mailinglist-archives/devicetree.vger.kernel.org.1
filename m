Return-Path: <devicetree+bounces-253795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F672D11654
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0099A3086020
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2992E347FC8;
	Mon, 12 Jan 2026 09:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EJ28BwSp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DQfCYFPr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79717346AF2
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768208565; cv=none; b=DRSqjl443WDXp5StYs0xEL/TjuC9TnNLZiOyeROroXbhWNa/o3jm022Xmg1dkbxJbmv8wo6UMbNPD80xRwVZarMGamWpCLweN8Mcc5xFWNQeEi5UrEt8rwzjnhZrbGPGKDkRAjUPr0OmdYZC+1KaWZ/dg9YL3qLhHy/jVdn1ogk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768208565; c=relaxed/simple;
	bh=TmPF16RAAlaq2hUzAIedQ784SH2GAyUOdjCW44DpYHs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g0A7woGkkfinGCvWTWJYrKzzsQIIbhfA6gMDNsRRauup9c63vCJlTLEHyaAaK9bd2jAyhTsUh8a8cw60G24LanmwaeKtY9awzhcy7jQU58vw43ElCIyU/PJphOpPtn3K247S18cJ10t88GVxPEmRs0ekbUk4GalVxp8Q+wKeTZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EJ28BwSp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DQfCYFPr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C7rCLV3694646
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=W/kTaP4AzNFifilQUH0mGG
	U/3gbwBgJasIQAkDVeLG0=; b=EJ28BwSpX6gjry1ZP6/mwyWYfyCAg1B94uoHLW
	NCt84Xh8yr1j2VoVzii3IxI4ZkkKpYlXrsjq1mVCvfeNU3WIUcIOiIyZcQCFQR/V
	a7+zPdXn/XobPZ7+2SawCpjqvRh2q7NIbHkASbj+9YLfIXewbadcIDSXqxO7lsYC
	GJtR84+8akrlEz5XCXaIHoDkPcukP5rDOvK2QxKlL8o3Yo6XWmqdpmM7Z5kLsD41
	HHElhuedstyW0hU0BkOB+XgI4lPZN1YpLPnqmQgse4hNwjppomftYLcGNxsj90FH
	woo7v4NvfNc1PlYi1syE6GzHQ8Qd8+inDW+wVDkeqiDE+pJQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkfham94k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:41 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-11dd10b03d9so7720572c88.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 01:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768208560; x=1768813360; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W/kTaP4AzNFifilQUH0mGGU/3gbwBgJasIQAkDVeLG0=;
        b=DQfCYFPrbKs0mhGYvsnpI3AWsQKLQAFuuJEmq+zOos8PBqs0hE/xTwsRWiin5lEUM2
         ZVBfIfTd1fJ1atROL8plQ63pao8CqarZdsR6ARj5zDma49M2sGsxYJEck5PIfb0Jrg8G
         ICcl4NpWjTOqFWx/Ht9BoucT6wziDreIoM2cuwIyMPhO/yn+wga2qmnfl3DylDkdCTdW
         MmOGm5WzTv/Qig+LWrpUkR8Lkbjar6/RKAo8/pjLuhmot3aaeFqE0rxJgpHZXVBfGws3
         EJB3NSNq5AODeGCTBvYBMmsLGcWL7s0ZJVXMgOx3OUWIfJPnZmUKYXqbhHo+GcY1RsDJ
         6LvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768208560; x=1768813360;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/kTaP4AzNFifilQUH0mGGU/3gbwBgJasIQAkDVeLG0=;
        b=YGn1Rb7ogzklsAkspeJ1IOkiBSU7azkp/pQtMpOYQJxgll7GcF5eLf6mze0Rc+/QTW
         ho77zphVN9JMtwcxvEvGZsvqUAnE1IM4bkRl4gAkD0oiYdWKMmhrQidtlNos94MaJq8i
         Ta/0v98Wri3y82WAOCFuBh+gKA3XQN76cNNyC00RG/ZmyTxWn18zXe+BQv0bos7k9aGK
         VsghVLbbP1LBxQtqLxTyFoHgmbNi9Fj7AvhCFJ9CZ7nKwiaUmLw00sA8o/MtJFEJEUEz
         FP3xi9+LfczuwqORsawq0l+vO6kHCKgeeGiOxb5w1J3FNnjWSC2wq2Y4qbR9yh+2BNja
         QnJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmiFGg2zAlkmGICuvBihCBJ1upB9LMRHQHPda84w5JG7ve5pf5uI3XDqbCmq8OxFsSppfLspZjZFrw@vger.kernel.org
X-Gm-Message-State: AOJu0YyD0nV1Gn+v6pEXORy9bwtPZfwbqhx7nf0sqhMXMFXRT+Myd5CF
	/h9lwkoJvtIisjKMqYvjwvfituT5VqMPLOBsNVJ7hPj1nIGh4ZQskHclSelD7LDVzmHtjv7foFp
	zvrq6/KMOb1tOkbiOQsJ55X7xNmUxYaYXaZeI9kmoi7YH8vTAIbzos3a2Niy7Drpw5dTtn1z0hu
	8=
X-Gm-Gg: AY/fxX402BckPIPsgOGASK7PwrevnttSa9fLyu2Z09Az4O9udfTlLpEvSl6fyKKyxP5
	OknoMED+Zns6R6ooS/CjZ6MUTO4F1IizOBoPgBWRdsdgGTE3ybFxdWYRw+fDxJN2/A29kGpkFZL
	FTxRXsuO+LaLJ8J2kR3F7QfucMK7YtZy5T/JXeZIdIKBuLzqgqlP4qmISfSFpxFv2yT8EKY1j1W
	AS0h6jVFelIjWrgu5o0mybR/fQk140aBMqa37JmRVy65uj3pN3MjiMSC4p7A6WuaAj+ymCn07ID
	u1ra1TitrrmhbvnJ4Boeq4kV51Vi+8f1jKEkNt97FDaSLSEFeMHaZVNZ4w5asCjz+5NL8ELCIo0
	HMlRAL1+z9UWLYvW5yG+JkbjDVD6x/VWPkwMTH7KENftrv26BdukiSsdUyYr1UUGe
X-Received: by 2002:a05:7022:eacb:b0:11d:f44d:401d with SMTP id a92af1059eb24-121f8b2c0b6mr15697283c88.22.1768208560246;
        Mon, 12 Jan 2026 01:02:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb6+cj2p7/phO0G98SP9UELeyVZG6OrNCoIvBifcxP/EQf2qHb98uy5LjWYdxDo5OeH/TLLA==
X-Received: by 2002:a05:7022:eacb:b0:11d:f44d:401d with SMTP id a92af1059eb24-121f8b2c0b6mr15697207c88.22.1768208558085;
        Mon, 12 Jan 2026 01:02:38 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f23b798asm18888500c88.0.2026.01.12.01.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 01:02:37 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Subject: [PATCH v11 0/5] media: qcom: camss: Add Kaanapali support
Date: Mon, 12 Jan 2026 01:02:25 -0800
Message-Id: <20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKG4ZGkC/z3NQQ6CMBAF0KuQrh1CK9rIynsYFmOZSiMt0AGjM
 dzdAombSf5P/puvYIqOWFTZV0R6OXZ9SEHKQyZMi+FB4JpUCFWocyGlgidiwAE7BwY9M+ij1qo
 pS7JWi7QaIln33shbvedI45zkaS+FJ2bc4Cr7sztG74lCQw0YdkP7AY8m9vBSIIFIH0tlFaI9X
 XvmfJyxM733eTrr4zsywVq4qcpCkmDHi4uol+UHJb1O5+oAAAA=
X-Change-ID: 20260112-kaanapali-camss-73772d44eff7
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: PjzVYPR9LcL_sQdHJKJBrJDw8y5ZEiOa
X-Authority-Analysis: v=2.4 cv=bOEb4f+Z c=1 sm=1 tr=0 ts=6964b8b1 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=BwhbExv1iWKvBhASTEsA:9 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: PjzVYPR9LcL_sQdHJKJBrJDw8y5ZEiOa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA3MCBTYWx0ZWRfX/NH1bi42x0ca
 WxP7tV1t2Ql+QyIYGQ/6ndq1L9OvQHVXNaSkT1A1UD+n205JeyYtE0Q8b+WGBmiAemG1i+8ekb7
 nmswV8R02fWKGo6nSeg5ng78sSYBRcbBd/87yB3NG3DcrOdGCVWMuQ5ntWXdrBOC28tOPRfTBGW
 9Vz8EcLXWni2fgQKGuBnWAATfffDpE+doqutoBIC2miLw7Eo403mTd6AHnIf7eNor/4+lx6xHps
 /Z8lpVuwapKsHVBfO3oezBMBf/HNgGbwWRcKBsrLENJ7LUycb1dQdDg8lV6HNfkemD8GUIeX9CL
 VuYpzpr0FVFJH2BauozlVlBCHplNu8Lbs9vVP2zJOQUO4rRs/q0vASRh0OL9DRYLLe1jgaNIovS
 2DZVC1gcw5XAJLx/8TSdYahJ6xAISSJJwSOLJTWdoTB6aZUIltZc2j2sMp6vx2MKucVWTbQM0ZG
 hjR5qkxJHgkS7nnY4xg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 adultscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120070

Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
RDI path involves adding the support for a set of CSIPHY, CSID and TFE
modules, with each TFE having multiple RDI ports. This hardware
architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.

Kaanapali camera subsystem provides:

- 3 x VFE, 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite
- 3 x CSID
- 2 x CSID Lite
- 6 x CSI PHY
- 2 x ICP
- 1 x IPE
- 2 x JPEG DMA & Downscaler
- 2 x JPEG Encoder
- 1 x OFE
- 5 x RT CDM
- 3 x TPG

This series has been tested using the following commands with a
downstream driver for S5KJN5 sensor.

- media-ctl --reset
- media-ctl -V '"msm_csiphy2":0[fmt:SGBRG10/4096x3072]'
- media-ctl -V '"msm_csid0":0[fmt:SGBRG10/4096x3072]'
- media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGBRG10/4096x3072]'
- media-ctl -l '"msm_csiphy2":1->"msm_csid0":0[1]'
- media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
- yavta  --capture=20 -I -n 5 -f SGBRG10P -s 4096x3072 -F  /dev/video0

Dependencies:
- https://lore.kernel.org/all/20260112-camss-extended-csiphy-macro-v2-1-ee7342f2aaf5@oss.qualcomm.com/

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
Changes in v11:
- Rebase this series due to conflict - bod
- Update binding commit message to align with previous generations
- Link to v10: https://lore.kernel.org/r/20251211-add-support-for-camss-on-kaanapali-v10-0-39e8874dcd27@oss.qualcomm.com

Changes in v10:
- Update interconnect and CX domain AXI clock names to be consistent with
  previous generations - bod
- Update the struct name for csiphy lane register settings to make it reusable
  for other compatible chipsets
- Updated power domain names to IFE for consistency - Krzysztof
- Add description for acronyms listed in binding commit message - Dmitry
- Link to v9: https://lore.kernel.org/r/20251208-add-support-for-camss-on-kaanapali-v9-0-3fcd31258415@oss.qualcomm.com

Changes in v9:
- Updates the names of some of the resources in DT bindings to be consistent
  with previous generations and improve the commit its message. The name
  changes are also applied to csiphy and vfe camss resource lists - bod
- Link to v8: https://lore.kernel.org/r/20251130-add-support-for-camss-on-kaanapali-v8-0-143a8265e6e8@oss.qualcomm.com

Changes in v8:
- Change csid and vfe driver file names as 'gen4' to reuse for other SOCs - bod
- Add missing register descriptions to binding and cover letter commit log - bod
- Link to v7: https://lore.kernel.org/r/20251120-add-support-for-camss-on-kaanapali-v7-0-de27f9a67ce6@oss.qualcomm.com

Changes in v7:
- Add ICP SYS registers to camss binding - bod
- Rename 'is_deferred' to 'reg_update_after_csid_config' to do rup/aup
  after csid config to make it clearer and simplify its call path - bod
- Remove unnecessary bitwise AND while configuring image address to bus- bod
- Tidy up a comment and a couple of hex values and csid/vfe - bod
- Link to v6: https://lore.kernel.org/r/20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com

Changes in v6:
- Modified the bindings to represent the whole of the camera hardware on
  KNP than just what is exercised by the CAMSS driver by extending the
  descriptions and the properties, the regs, clocks, interrupts, power
  domains, iommus etc. In addition, use the word 'vfe' everywhere in the
  bindings to be clear that all of those resources are referring to the
  same front end modules. - Krzysztof/bod
- Change camss vfe power domain names to align with the binding file
- Link to v5: https://lore.kernel.org/r/20251030-add-support-for-camss-on-kaanapali-v5-0-f8e12bea3d02@oss.qualcomm.com

Changes in v5:
- Refine v4 change log - Krzysztof
- Fix typo by removing redundant numerical version in kaanapali camss binding
  comment description - Krzysztof
- Add missing tags that should be posted with v4 revision - Krzysztof/Andi
- Link to v4: https://lore.kernel.org/r/20251028-add-support-for-camss-on-kaanapali-v4-0-7eb484c89585@oss.qualcomm.com

Changes in v4:
- Add detailed hardware descriptions and revise message title to follow the
  standard comment format for kaanapali camss binding file - Krzysztof
- Format kaanapali camss binding file to keep style consistency, by reverting
  power domain name from TFE to IFE and keeping clocks name order as last
  generation - Krzysztof
- Separate the 1.2 and 0.9 voltage supply DT flags for each CSIPHY to allow
  for arbitrary board design with common or unique supplies to each of the PHYs
  in kaanapali camss binding example, based on v2 comments - bod/Vladimir
- Link to v3: https://lore.kernel.org/r/20251023-add-support-for-camss-on-kaanapali-v3-0-02abc9a107bf@oss.qualcomm.com

Changes in v3:
- Use the name 'ahb' for 'cam_top_ahb' clock in cci binding file - Vladimir
- Reduce and simplify CSIPHY supply, port properties in camss bindings - Vladimir
- Resolve the dependency issues in the camss bindings file using ephemeral
  DT nodes - Vladimir/Dmitry
- Update hf mnoc name and bandwidth values for icc module - bod
- Split CSIPHY status macro changes into a separate patch series - bod
- Add clear functions for AUP/RUP update in csid and vfe for consistency - bod
- Clarify why the RUP and AUP register update process is deferred - bod
- Clarify the necessity to keep NRT clocks for vfe - Vijay
- Link to v2: https://lore.kernel.org/r/20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com

Changes in v2:
- Aggregate CSI2_RX_CFG0_PHY_SEL_BASE_IDX definition into 'camss-csid.h' - bod
- Remove 'camss-csid-1080.h' and use 'camss-csid-gen3.h' header instead - bod
- Remove redundant code in 'camss-csid-1080.c' and align the namespaces - bod
- Slipt 'camnoc_rt_axi' clock in vfe matching list into a single patch - bod
- Add whole vfe write engine client mappings in comment - bod
- Remove hardcoded image buffer number but use 'CAMSS_INIT_BUF_COUNT' - bod
- Remove SoC specific logic for vfe ops->reg_update and add a new variable
  to determine whether ops->reg_update is deferred or not - bod
- Add description to explain why 'qdss_debug_xo' should be retained - bod
- Add the procss node in csiphy register list comment - bod
- Rename the variable 'cmn_status_offset' to 'common_status_offset' and
  align this with macro in csiphy register structure to avoid ambiguity - bod
- Aggregate Kaanapali items into the definition that introduced by
  'qcom,qcm2290-cci' in cci binding file - Loic
- Format 'kaanpali-camss.yaml' binding file
- Link to v1: https://lore.kernel.org/r/20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com

---
Hangxiang Ma (5):
      media: dt-bindings: Add CAMSS device for Kaanapali
      media: qcom: camss: Add Kaanapali compatible camss driver
      media: qcom: camss: csiphy: Add support for v2.4.0 two-phase CSIPHY
      media: qcom: camss: csid: Add support for CSID gen4
      media: qcom: camss: vfe: Add support for VFE gen4

 .../bindings/media/qcom,kaanapali-camss.yaml       | 646 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   2 +
 drivers/media/platform/qcom/camss/camss-csid-680.c |   1 -
 .../media/platform/qcom/camss/camss-csid-gen3.c    |   1 -
 .../media/platform/qcom/camss/camss-csid-gen4.c    | 376 ++++++++++++
 drivers/media/platform/qcom/camss/camss-csid.h     |  11 +-
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 124 ++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   9 +-
 drivers/media/platform/qcom/camss/camss-vfe.h      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 352 +++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 11 files changed, 1520 insertions(+), 5 deletions(-)
---
base-commit: 31d167f54de93f14fa8e4bc6cbc4adaf7019fd94
change-id: 20260112-kaanapali-camss-73772d44eff7
prerequisite-message-id: 20260112-camss-extended-csiphy-macro-v2-1-ee7342f2aaf5@oss.qualcomm.com
prerequisite-patch-id: 27c2ef96f0e747ec6b4bcf316d8802356e4cc3f4

Best regards,
-- 
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>


