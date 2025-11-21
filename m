Return-Path: <devicetree+bounces-240891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF52C7748D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 05:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 387524E3D61
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 04:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53BA42F1FD1;
	Fri, 21 Nov 2025 04:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KBdec4Vx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OSGWbtw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27D01AAE13
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 04:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763700227; cv=none; b=Y+d3qICD4qxj5QV7hE0AQlesUAkuZ2uKrtVmj5bJPsJUXpjx2uYvhr+23IswZVa5nWegbR5ryOLFWRumpuL3EmYllAC3zTdyUv+bqh0MuFIBu4ZkGVmA5JC8CQYa5l/rMKtzChQMIxHZk3bEBYiUucaWCDbVRkQx3D2IxePUqsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763700227; c=relaxed/simple;
	bh=3Iku0IvR9ZUucYaf8M6BbAcl3AfcXymcNWEowgjyKY8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=O6l7zcvZIgeh/SVcH2uUYk3ivG5nAPAan2KW+b18Lt7umV/pQE4WAQrfNBeEdonjp4G8qdpQpn6m5bKLHd0eL+lxVj2xIJY5xUea8OrlDjXGFMXcBImongsc/W8qUcFha9/OJeliZzhbKWerD2aU7hB4Ebtl3DEinYzU3z93ud0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KBdec4Vx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OSGWbtw5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AKMKRTe1843941
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 04:43:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VAaOY6iCiep7qGBDL8Stf4
	xqfyBbmZQAE+nfW3ORNPE=; b=KBdec4VxSP4E8tS77UDDS28jcvjU9IvPzDpYF1
	AB8cZ2550Cgs3ok1oRdrEr0oJp+iI8xLNJXJJUBugQSYIZOmi5iw/8GKH7JXE5KO
	eT06qyXbER+uaGcHPPtahx5fwHK1ACKoOaNa3kHUcYi1Ih6F66s8+MAD3BOJenrE
	rbE8DGD4/W2e58QSwdDUM3MxdEa5UwxUSRW8kI5q/wfRoW0GvorvGkyVrr3P6E6S
	URWxey3rU0K9lxHQQJux6iFwi5yxCwY9c2HDr5IhVBlFxlDNPlFKihh5s3CLBtkP
	ofBCtnRWW2zQIhH6TNyBTc3yQwEFEtbhT1bFiLexHFkckg6A==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajbpnrvnb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 04:43:45 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-3e09d7998b3so2296915fac.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 20:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763700224; x=1764305024; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VAaOY6iCiep7qGBDL8Stf4xqfyBbmZQAE+nfW3ORNPE=;
        b=OSGWbtw5w79gseh2F4To3+dcvGTWvf0FP2V4kmpKamgXX3Ci5MiMZ1m0oYPeRVzLNy
         4bvF72/o406nElr0t1vCHX/vYBn0yDePFm41TgRvPipttlEwU5UwoXJnJ0EITmajyhH+
         DZdl8WVSKvtDqyRrExf+QCuAHsdZRMXhomC36LyvmkQGQg+STs8HytZcoYm5XbHjSfOi
         sicC6XU/ijGP4LDfoTeiPPQ9a41jwxHy+dDy+GOHgRy9eohMm4VpV+zbzreP3+B0JVxW
         IvXePSgDIKKAnSKKeA2eqyCpkRBmnWiqJsysoow/u5pH+3n0/IVB/yLC7btdGNW12pNF
         pSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763700224; x=1764305024;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VAaOY6iCiep7qGBDL8Stf4xqfyBbmZQAE+nfW3ORNPE=;
        b=hM1QONAjmbP+BIqXMv+IXgGHgav8e+ssFrGbvik1zddoeSSvy7BXV1AanrpojTdLEz
         BS1tJ6DQkTuAKfdyA1h+AF6ikJd5mopiikoCrxUFoVU+aKFkJJ8zOIm++EaG2upfMQkl
         2TBrkE9in3zx9LlQleU/WGMdbD9T3sAUdIlU9UwSaGjN0Wdv8JUWkZlORmde5rjUsHjF
         oh1KZ2LULqF3mEFggzAiTRJZcLWPT37mzCByU5MyQpNLSoLIXdRniD/ILBxcWzuLw8a+
         OLsKKYe8ibYlY2Q7cy/oTTrPkMXDusRdAC2Zyssyp5snBwveAvj/QRdWmy/ar/y0ex9G
         ss1A==
X-Forwarded-Encrypted: i=1; AJvYcCUA51rSWqQOrkB/UiPr6ZMRNPSXXN81ZavX9F8Y+Q8LTdE8b/GaYjtZCWpjK/njb75NbVjVxcg8JJ9P@vger.kernel.org
X-Gm-Message-State: AOJu0YyK9pP1mtfKqRk9Wrs5HWgunrkoIZm8U8PlKYA4yAJAaT5vWUFl
	7NAiDUv6YDug7HFBAsnNOpskc6UDyCOWKuVenr5ygAwJ4LUmOb8DE9ZEvCuCDzstFGK8ENce1FP
	UP1OOTN3dsjg4apAgosVd8sNjfKfJBozG4erd7enapsu2LRR9rnxEsgz/h8ONpIb1V6Ay7DkZsH
	Y=
X-Gm-Gg: ASbGncvEXsBzgeMptybr8YgkpfGMrzoGDCJJ7rnCpU8is7jyaQAxzwKCUnvs05ZXXqD
	jj3Jj0JClrbUV71DGXdTN+hM1pUJkhrw7wFq4jg0+9DK7mmYqhSn5xwDlD05mxxzcBliIRKUmI1
	DjJmdiTzwPChjl9fcdCeDzqsMocw00aogKI5BUimUPDAhbyv5NWTD2n5WV4UlafJ/5S7OEOFw1p
	qWCvpM509y+TH5Bcbzw3iGFvW6KkWi1PNDm/6pJ0RjEpL0OQE4PE7m384E1WEkccV1Ap44IojC/
	52u8rM7IYQPhPbepDaYfiGy/Lxg5fX0a4a9TTktYp3GF4Wq2Qh4oyuM/bcBg8ixsLrLV9YQ6EHZ
	+W/F9vvqyPGYx8ZUu4HXRldnHv9VPfOaDL08epH/90tz+Fgndn3SybuGOepVi6lrO
X-Received: by 2002:a05:6871:c709:b0:3ec:a4ed:cf48 with SMTP id 586e51a60fabf-3ecbe52247fmr415240fac.25.1763700224209;
        Thu, 20 Nov 2025 20:43:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEpEsbHijGIobeD1ldfSAfB6MDcksJCsrFOnx8GPMT2pErZD0fCcsDJzbRfzMeP4/7snBpH5Q==
X-Received: by 2002:a05:6871:c709:b0:3ec:a4ed:cf48 with SMTP id 586e51a60fabf-3ecbe52247fmr415214fac.25.1763700223778;
        Thu, 20 Nov 2025 20:43:43 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dc2185dsm2198927fac.13.2025.11.20.20.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 20:43:43 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Subject: [PATCH v7 0/5] media: qcom: camss: Add Kaanapali support
Date: Thu, 20 Nov 2025 20:43:12 -0800
Message-Id: <20251120-add-support-for-camss-on-kaanapali-v7-0-de27f9a67ce6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAODtH2kC/43TzW6cMBAH8FdZce5EtrHB7KnvUfXgjyFrLdgEG
 5ooyrt32EQNhyJxAGTL/o0Z/rxXGeeAubpe3qsZ15BDijRof1wqdzPxGSF4GleCCcUZ02C8h7x
 MU5oL9GkGZ8acIUW4GxPNZIYAqGzjrVeCdVgRNM3Yh9dHkV+/aXwLuaT57VFz5dvsg2edkHCP0
 0bCyoGBbYVvPKJhSv5MOT+9LGZwaRyf6FZt1Cr+beeMyzOnWwXJvWqlskb4vu8O5Honi/qUXJP
 MhLGuM5y1tj+Q5V4+1dFVktyilVo63SmtDmS1k2t2SlZbNzRyYdHUnokDufmWOT/XjYZkjg2rd
 auV0fgf+eMzHTO+LJS88hmR7+BdL18fVsCSEUYzuwQlgceYCi0YDS2zS9/jDHEZLT2cRcdabrW
 smyuFa5/jHbedP+IfcENydwgR1n7zi7uF+AwDBRSE6i3HutVOdkeS4LTpjuBymG5vkIspS6YpN
 yegi1oyDaZQg0ZQdce840IbxC/OGnqprRmhXC8RX6nm4zfgLXXm4y8h6sXOmwMAAA==
X-Change-ID: 20251008-add-support-for-camss-on-kaanapali-e5b6dbd5209e
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=I9Vohdgg c=1 sm=1 tr=0 ts=691fee01 cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=BwhbExv1iWKvBhASTEsA:9 a=QEXdDO2ut3YA:10 a=1zu1i0D7hVQfj8NKfPKu:22
X-Proofpoint-ORIG-GUID: lE7RxcbIMkm6o2ARyJRxLP69UfaGD1us
X-Proofpoint-GUID: lE7RxcbIMkm6o2ARyJRxLP69UfaGD1us
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDAzNCBTYWx0ZWRfXwokRqRxu5Pae
 Bet43YjUJbC+IyHVCqp9ZIFTm+aDNEEBfzbwb4nURS32Vd2W8z14sYaZU31Ty5iNNqeBRmZuHCp
 JDIrXd7y8aqaQRycTKc7JwSWYkQSFYZzqfrztlGl1/aOmHFR0TGIti5CWjKFhtpw4jbmi8fmGYn
 uQUeDI4DIWoXVyUjv4DpXSjEWZEHtEUifpCLzinCEl1TpiWyKNxKcfbdqmecEAGnH0LVfzFo39f
 gwxFX0yBiMomX/aBOAWveOvlFwVCx74ORUbxLMguvbun9f4UHCIYWrzTtxTfu8QdX4Kh24jehoK
 qSNiiuYthn3MMr7L5ZNlhK0TjgBBqsk/aEpvs2aHw6McXLLlTbfM5DCh5gherQs0AsRgr6C5bKU
 yq6YeEIkxzyxlp725ES21tss4ABj1A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210034

Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
RDI path involves adding the support for a set of CSIPHY, CSID and TFE
modules, with each TFE having multiple RDI ports. This hardware
architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.

Kaanapali camera sub system provides

- 3 x VFE, 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite
- 3 x CSID
- 2 x CSID Lite
- 6 x CSI PHY

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
- https://lore.kernel.org/all/20251014-use-marco-to-denote-image-buffer-number-v1-1-f782e4cc622d@oss.qualcomm.com/
- https://lore.kernel.org/all/20251014-add-new-clock-in-vfe-matching-list-v1-1-0d965ccc8a3a@oss.qualcomm.com/
- https://lore.kernel.org/all/20251023-make-csiphy-status-macro-cross-platform-v1-1-5746446dfdc6@oss.qualcomm.com/

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
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
      media: qcom: camss: csid: Add support for CSID 1080
      media: qcom: camss: vfe: Add support for VFE 1080

 .../bindings/media/qcom,kaanapali-camss.yaml       | 647 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   2 +
 .../media/platform/qcom/camss/camss-csid-1080.c    | 377 ++++++++++++
 drivers/media/platform/qcom/camss/camss-csid-680.c |   1 -
 .../media/platform/qcom/camss/camss-csid-gen3.c    |   1 -
 drivers/media/platform/qcom/camss/camss-csid.h     |  11 +-
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 124 ++++
 drivers/media/platform/qcom/camss/camss-vfe-1080.c | 197 +++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   9 +-
 drivers/media/platform/qcom/camss/camss-vfe.h      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 352 +++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 12 files changed, 1719 insertions(+), 5 deletions(-)
---
base-commit: b09b832c719df5e10f2560771fd38146f2b3fd7c
change-id: 20251008-add-support-for-camss-on-kaanapali-e5b6dbd5209e
prerequisite-change-id: 20251012-use-marco-to-denote-image-buffer-number-cbec071b8436:v1
prerequisite-patch-id: 3ac5d6703a9530eda884720c146b9444f90cf56b
prerequisite-change-id: 20251012-add-new-clock-in-vfe-matching-list-25fb1e378c49:v1
prerequisite-patch-id: aacb03b359fdf95977805f42918c0b6c39889e32
prerequisite-change-id: 20251021-make-csiphy-status-macro-cross-platform-5390dc128aee:v1
prerequisite-patch-id: 27c2ef96f0e747ec6b4bcf316d8802356e4cc3f4

Best regards,
-- 
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>


