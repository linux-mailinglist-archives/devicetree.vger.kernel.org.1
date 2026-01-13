Return-Path: <devicetree+bounces-254261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0417AD169E4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B9C03301766C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51097352C2D;
	Tue, 13 Jan 2026 04:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KxqkilrS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VLQX4y+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A9F285418
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768279748; cv=none; b=IYP5Ud6WP4V6qJbZe8xqWJhkBvTd5F5TTieuEryYbPhRDR9vF3FVBBJD1hIWsIy/4l491eVbADCp+Wg4hsp18RuoEzbL/pdsMas5cKlZ2FQTNI925zKQkiAxvQmSFfQWIk5og5MJOc2uWyP8l08zSAYzL6JhTEay0gTidfsewMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768279748; c=relaxed/simple;
	bh=1BriCQCDAQ3jYkxjQczG1vE7P3yUTNZTBbNxi3YM/ic=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mfe7EoSXXY3SudssJ8Tc/7HXvznmZcDjtrCfVWKParbOu8t6De7ht/1H+knF9lkLm6Vb/WSA7A500waU4lsY/fHPic/BR6Xdcjj5+por1+MnOYAdo9mUlEB9EYafObK7s7o37BVkgs6BC5y4D/o+/mA+63vyk/ecHMnl+5kjLrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KxqkilrS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VLQX4y+k; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN5qKr2113655
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=v1JsJ0Z9u3jB/IVqec/zsG
	pRZm5Lo476Whz31jEfsaE=; b=KxqkilrSO6gHXRBk70IPgfSmmQtljs6g56S2XF
	O1dF6lDQyEAJ8/A/yPLhcBF0T6pDRFFl7ogo+63vY3BUEc51XKOpZWGy2B1mHtZg
	CCY6g3rZq0HSCBPj+sFSRAYZB0zxt9Actd471Zlz6NKdVl46Bto3XEX8g70MrzyC
	WgARXr6AQEc2z41ocIaJ7l8ILaelvNhUfSph6SUzqMsPT7ntym8uNohYsXOsHHNU
	8PkqBnfCLGTZ4gRSRx5PRfDOXjB4mwTmsEyC+PQ3NQ57a+MA5asry9MiR+qWI8mr
	SjxC93MZmE4Takk5y4S22s1Fv7Z5eSguI/MBGThdwvZvHOyg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn34gaa8j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:05 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ae6ef97ac5so26389222eec.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768279745; x=1768884545; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v1JsJ0Z9u3jB/IVqec/zsGpRZm5Lo476Whz31jEfsaE=;
        b=VLQX4y+knFnNzhyB+Z+nQCzCDheCV4uGwvorvsCH49DIBuQ4H4ZTptnkptog9lcYeg
         jebpwp8AWXlUgYDDEjR9asw7MVdFc463uDvnd7ymLzqMVecBZJzS62GdZlQ3V1S4xQar
         GWa1Kt58T0resp1Nd3oc+YaYtnRmm+jEJg7RcRoCJ/p55K+vb0LSi8SiScczXYWj3LYe
         NLhCG6zVBeCxwbMDQlucvZDbqJs07rm3sMwE5cTSrykGDKez65+b2CPBji4n02CkI2jF
         teTHPVwevxwDE0NEuMmUcbM/qltNfQwWiSiNK31UPbHFWvgm6CMBkx5bAX5GsbpqmWv1
         4w9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768279745; x=1768884545;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v1JsJ0Z9u3jB/IVqec/zsGpRZm5Lo476Whz31jEfsaE=;
        b=CuiWOZlBsiOxYdA1xj63mxUrwOXs4KLsC5iLK4OS+muPYhZgIkdN/0cxYGvBVyyYTw
         ZUUjmCFl2+8pCXxFeaqo9q/sVHEks4eJB7OGt78DJ8KgJGyT3Wggxv2GYq32puhBA1L1
         i5YXrM9htrqNraB/da7Qqo4ZV0NIfNbYaVhDkkIi7QzmC6loF8bWXjIsmRIEETzSjnyH
         JIIJ6fe8Z0VhHuGSXQ/+/ZtM8T4J0w5J1As8whrsjRXlbvyKsOaNkgV09K9+q1mSL+UL
         rJ8mWiGBB/Tqlyd78J9UT6xnarha7RUIfsGH1SHurp0li/gMwqJN/Q4OSxWYd7KwHDH/
         /WVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqidEc1velEtxDJgtK6KER/1wSdy+jCEVWvG6JnNTEW0TeoT+IA7Orf/LvV6mCVR+55hStPm+D/i7d@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi4+YGLMTVmUm4oqUIWvYGtb+kEWA8AG78J2mT4Oy9/92chTFU
	8JzhPtzdleHM/xKYwC41PxMl25bUbEO9J2xEfwMww5oGzvlbt+RHEfrDX99FjEvQ7NG05yUp9A8
	GlhUFwaDSc5NsoInOVQZbrJPdg7Utm2eCzRNjPAxXM7e90bBbZOUfvBA/2FjdX23h
X-Gm-Gg: AY/fxX4tfkRJQKOQKJrGX+EPBLzV7JZrK9V907cd+UeonUFX8H93tidUdUL1IooCJc4
	3ziG6OG2g9w+L4Vtydaf3yrcDoy4NCOWvwoKbnL2EL9XVY/kQgGHs9ZliF7PxL+Cjvhv2rROAHv
	HNmg30hSF0syYtoFYp1GH+Frym5kGp3j360d0DQR0MTV4GPKsTSxLPW4IXMWakWDu/S7rjzQZEA
	zxQIT24l7taawiqj6xBvp18amr/QEBCOtviDMQphPjie4wVN4zVQn9+iDiYiGYRg+8bG7YrtEQA
	83r1zjSKUbd0suIh9K1774LAYwlex2BA51VwVQ77/yxBLRjc/i09tlnOELWmsulj9ruSFILlPFH
	lYHMvkP+YQ0KbHM5cMl0qYdZZgWghfrwYkmsHo9ZhyvWc6LRPlm4OVanC2vFGIiWK
X-Received: by 2002:a05:7301:460c:b0:2b0:57ec:d1a6 with SMTP id 5a478bee46e88-2b17d2342bamr14650585eec.8.1768279744827;
        Mon, 12 Jan 2026 20:49:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4psu7N2Hcui4143HS6Ivg/A/k8MAjJ2/remTaAdnsZIZR8yWBU4oApArlQgSzzDOZzWhtZA==
X-Received: by 2002:a05:7301:460c:b0:2b0:57ec:d1a6 with SMTP id 5a478bee46e88-2b17d2342bamr14650553eec.8.1768279744174;
        Mon, 12 Jan 2026 20:49:04 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707d57aasm16264065eec.30.2026.01.12.20.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:49:03 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Subject: [PATCH v12 0/5] media: qcom: camss: Add Kaanapali support
Date: Mon, 12 Jan 2026 20:48:46 -0800
Message-Id: <20260112-kaanapali-camss-v12-0-15b7af73401e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK7OZWkC/3WQy26EMAxFfwVlXaMkE4bHqv9RzcIFZ4gKgYmBz
 mjEvzeA1EUfG0u+ss+99lMwBUcsquQpAi2O3eBjo/RLIuoW/ZXANVEQWuqzVErDB6LHETsHNfb
 MkJ/yXDfGkLW5iFtjIOvuO/LtcvSBbnMkT4coemLGHVwl39gDRveJfEMN1OzG9gE91mGARYMCo
 vxktNWINnsdmNPbjF099H0ay2b8A5sppYws9NmUqdFGRsQn+Z78Ne3c/CfhHZlgE9xUJT5mgSO
 eLMV2Set4GsJj/9Wi1H7Lv2+JAyChUGRsVmLWyOK35WVd1y8iva4cggEAAA==
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
X-Authority-Analysis: v=2.4 cv=fbKgCkQF c=1 sm=1 tr=0 ts=6965cec1 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=d-Za1eDmXPogXgNBA_QA:9 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDAzNyBTYWx0ZWRfX0xBzV99BJNjg
 w+c5oJOvuM7efWivEBG+wM3WMx8F2Gkk7VjkKu9ESCSwxqxZp4cFfLK6OF7xMVDIt+CiNw2HD+e
 shHYXENH/K5xIFsnTbI13OEAM8ytxCRdCalJsPqD751valcSyytIydTkbUmMEQPwICwnRGWlYhk
 ql+/6vMdHcZHCh+r1fF34OXMhnG2zuGZFHrwkdN5W9AgwB6znIOm6nmRTwITLf+NG2uPaid618w
 DSEK5QNoozvJrxMtpsglf9j4seW6hR42HBheOLsykMMP9jOQOC1lrDxeRN9Hy5kzNz6CmunWvBx
 i19x/F3mpTGL7Jw48IkmhCjdCQul1owHHaI6xROpSkcNhTAzdd+YBIYhcHO+//Xvf5GezZ5wCOj
 EgXJC5ObN5xgTsrwSrbqcVZJf15ENnS7wV+SODx6NnaU4ahBIW7iDetbpaoS23+w6porR4zPGSZ
 vYC/2LDD7lmiAL99ENQ==
X-Proofpoint-ORIG-GUID: WXE71buhoyuDIS3xi1bXDiURXkelpBw-
X-Proofpoint-GUID: WXE71buhoyuDIS3xi1bXDiURXkelpBw-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130037

Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
RDI path involves adding the support for a set of CSIPHY, CSID and TFE
modules, with each TFE having multiple RDI ports. This hardware
architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.

Kaanapali camera subsystem provides:

- 3 x VFE (Video Front End), 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite
- 3 x CSID (CSI Decoder)
- 2 x CSID Lite
- 6 x CSIPHY (CSI Physical Layer)
- 2 x ICP (Image Control Processor)
- 1 x IPE (Image Processing Engine)
- 2 x JPEG DMA & Downscaler
- 2 x JPEG Encoder
- 1 x OFE (Offline Front End)
- 5 x RT CDM (Camera Data Mover)
- 3 x TPG (Test Pattern Generator)

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
- https://lore.kernel.org/linux-arm-msm/20251114082649.4240-1-wenmeng.liu@oss.qualcomm.com/

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
Changes in v12:
- Add CSIPHY regulator current due to regulator interface changed - bod
- Link to v11: https://lore.kernel.org/r/20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com

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
 drivers/media/platform/qcom/camss/camss-vfe-gen4.c | 197 +++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   9 +-
 drivers/media/platform/qcom/camss/camss-vfe.h      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 370 ++++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 12 files changed, 1735 insertions(+), 5 deletions(-)
---
base-commit: 31d167f54de93f14fa8e4bc6cbc4adaf7019fd94
change-id: 20260112-kaanapali-camss-73772d44eff7
prerequisite-message-id: 20260112-camss-extended-csiphy-macro-v2-1-ee7342f2aaf5@oss.qualcomm.com
prerequisite-patch-id: 27c2ef96f0e747ec6b4bcf316d8802356e4cc3f4
prerequisite-message-id: 20251114082649.4240-1-wenmeng.liu@oss.qualcomm.com
prerequisite-patch-id: affdca1f0af770b95444f99c203d291bcc41ec9c

Best regards,
-- 
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>


