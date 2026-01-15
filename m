Return-Path: <devicetree+bounces-255486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BC1D23A18
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B2CFF30AC17E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FA3A35FF54;
	Thu, 15 Jan 2026 09:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cWtbIack";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Uobxdf9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A7635E52A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469293; cv=none; b=Lb9rLEbTojvWS7/Nco6qZ1jk4PCpRhPmwqo/zTh/aFnoHvE1VtJ855dVMluGCUYFNMUf/UBSpKZ2GwzzK0phkkZmQKdBkhBCKjYIfdbZdc2ubCVQ8Uh1JdIpwXGveUmtw4bvdieI0IQGft1sZTRmH9ITtFEDA6EYoPWYfI5sBEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469293; c=relaxed/simple;
	bh=XTstPq5Ma7tapNvNp/osbBwQCwuKpAXVIymEHX8p1pE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=neYnEEIDxd2thQbYA9rrNpNZAATYzQU2mcP3jAQ2Io2bxbvXy/Yjwa2HivnZCfQGblLygAInJ6ndjM5qud3/dqxcuRVwJndsFmq6y4pXmLF7DD+ear7vqTGBX7H2b1aqqfVOgJA1jW6DnVMu29QiFZ+g2Z3pPQh/FLtefsSe0Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cWtbIack; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Uobxdf9/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6g0SI1055228
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=FV3nONimYsR0PrhxI5KPJUKAwXWGm5Fx9h2
	vmS9IGy8=; b=cWtbIack/GPOswRmiz/IdCY4Ooq2WW+TUMInLIpoDDcH/s1bxxT
	zha1Ql0Fh3C2ZVHfgivUTuElxgxhUa95MhhNpCZy810ftY8Ko/r4Bg0NFwjyFljw
	AOCBoUqL3rvn03KTAd3Ex2y4T74H8fCre1JqPBKRc/DYLsBGa+647/Nww6RbGbB1
	iMpONPNwjRD3xlxd1BPvoLPpBANKvvItX0A0XPkjFQ+DXgUNRA9WMHNgFIjNEFID
	aEmVdx35X15dBKCQxSNwWO4PDEMEaLec3Sb2KMEBHN0nd6W3+A7I+7NX3ithsl3n
	4vPI8o5KI3h1uCvwml9hozATYke3QHI5w+Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp8d34488-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a3356a310so16101696d6.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469290; x=1769074090; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FV3nONimYsR0PrhxI5KPJUKAwXWGm5Fx9h2vmS9IGy8=;
        b=Uobxdf9/UMvs4r/3XIQhxNcJUDp/jM6NLpyhmUatVNkJHNYGETDLOvhoBTci3EKqgI
         r8G5h1VG3CHs6hOU+hmA6zO384oavJe5IfJIBqODQcURzFsOjk3oTVAi7A5aRjctprX0
         ++uCiSrfwAAH/Z5NnmzCSc+1A3+4uWZUJ6RX+AG0leO26GEPXZHi1+T0m04s7SShn00k
         AHOL57By3j0wAyKlOoAoU9+G1GBRtG5qeqELn0IV7XYLkkQIjaNWzJHDqkfi34x1mBSa
         cuBIZ2nNqsDepJoxHWKtmn4x66Yw+hZ8WXC0mk3KMRG1jY61qTQ/bmM7gS1sHblDUar+
         k1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469290; x=1769074090;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FV3nONimYsR0PrhxI5KPJUKAwXWGm5Fx9h2vmS9IGy8=;
        b=Hdo8luO5G7HNRHwfMNF7WyMrIPc2a96vLMlyH3L4eVV0HQn69x7f6r6Hcfu2NVdUsr
         C+wKxVtnGKbIbFNZSGHqvudnNuaQpWPiurOeE6sIRCFDw0U5xry3rj+DRmfj2ssgL/VZ
         7wwSrh3Bqq9EBOXD/w8+RkKkLhsAl7m413v22EMv23kSci1YQA0AwNGngpiICvYhYKX6
         iwfj9Gu0AmA1Z9tSRB9BdhGwuEpxCAWOhheJFm0ZU1tm8q4F+eshUTucC1cNDpWCqi9q
         bHtUd+cwJJskyCwtF795/VYwi8O3QUCbO4wXajJwhAT3Z9PCeh8PXpWHk9tP4u+Id76b
         u/PA==
X-Forwarded-Encrypted: i=1; AJvYcCXM/6CJ6ZDehQ/fspf0Thrhv5NErLqM8FqYXN9sAX8yJmYahLNrhIv5fVNCFo30fVRY/XbPwjmN6x4L@vger.kernel.org
X-Gm-Message-State: AOJu0YwsMqcSE6Y1xfammTo2XFm1XV5W0opDgCmsC8pvWieYph1jI6zZ
	HnBBjqkWC1B53kSVnBTBLWT50YAuWIA2J/f10VPnax266tobRFDdZJul0RlFlj1LZSMdpCMFwRj
	+5ldAEWwmSojlHRSbDWZ98kag18ozHv9XKUNrZgBaQIJ6xiExmHuz5rlHn5PMiy3Q
X-Gm-Gg: AY/fxX6jlUBWE8rD+nnKQiaeLEXdZdKnyhT1sFC87GRsKZJg0zsy5M0d86x6TFE3Gk5
	h+HaUSMegRbz8bDXbinL06zzHFb7lVZyeAi63v3r5fZArMV7NdtMBKQwbvKNmQbjbEaBX5nCBAX
	SKxvSuWEFcZdtTlwoVPaYCYFb+tSNNFtKpJ40qCS3kQSefBtPnPL5yqPyduHzZVbnBszoB35zy3
	aTENXoCQElFYGrsEGiV8yPfP+9uLvzmnbcz243deDwtLEkFpiMwXa/cGJv/u+483MUjWIczbSdK
	VyLNWlE5tbODigyoEDzMa2hRnfNQhgLXshI6C9602NE5HWGXguewtoDtQZGFV/U2ja39FIhNoTz
	aVX0MCKI4+599j7XrXtJf/mEmP3G5aV1UVZT4XJYfUUKZ6DNUckIlxWb/9lr49KA9C/0=
X-Received: by 2002:ad4:5baa:0:b0:87c:2967:fd32 with SMTP id 6a1803df08f44-89274387480mr77132556d6.22.1768469290197;
        Thu, 15 Jan 2026 01:28:10 -0800 (PST)
X-Received: by 2002:ad4:5baa:0:b0:87c:2967:fd32 with SMTP id 6a1803df08f44-89274387480mr77132276d6.22.1768469289733;
        Thu, 15 Jan 2026 01:28:09 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:28:09 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH v6 00/12] drm/msm: Add support for Kaanapali
Date: Thu, 15 Jan 2026 17:27:37 +0800
Message-Id: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: bOzdTrTauQh0JEMPsXM44CfKAHL16txZ
X-Authority-Analysis: v=2.4 cv=fbWgCkQF c=1 sm=1 tr=0 ts=6968b32b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=qC_FGOx9AAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=oHaaim5x4gMG4YHD5WcA:9
 a=OIgjcC2v60KrkQgK7BGD:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-ORIG-GUID: bOzdTrTauQh0JEMPsXM44CfKAHL16txZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfXwm7Bi7HtCeCc
 AQZBmvLL+phdHkW3u9eu7mINDaQvQtU/1XagoKLLwLE/OpEWIZCgw5UBhRn/hnDHZp+4c/pb24r
 wz2zIi4OXsNt/Tu8jPUl5lEUAU2H9AXNDd8JE8z0rBn7jEesePGr9jcpAsZc4tL4LA0YigrVV3Q
 9cHjywFqwnFbBtDpNZzeZP3DHQfd8eL8QYHB4joOm9cJGkwrvPlP/chCaw/R2Aqgj45XwHlr9XK
 GLq+iTan5jsNBaSskn7YUnZhMOXBJSXDfXYrHqcfOyu9Qdh1rqRi0+oEnqV9NhVXd0seNeXIjxX
 4wiEHRx4fpZgeqnYsElDLJLzpnDgHxn0Tpx/30jNRCUpTSNmpxKrluOwXPxRJSzTPJKaiK88fYq
 JYyChxvbZhCFmuNdNZO2HCdnJ07zYAVgKdsdMJ6qo48WmtJhrm9oYBcAMR6YGVXLdXZw3/qU1yr
 /CobaL8bOoSHRk+lNEw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The Kaanapali MDSS has some differences compared to the SM8750 MDSS:
- DSI PHY/DSI base address have some changes.
- DPU 13.0:
  - SSPP layout has a great change.
  - interrupt INTF layout has some changes.

This patchset contains DSI PHY, DSI Controller, DPU & MDSS bindings
in addition to the driver changes.

We have already tested the display functionality using the Kaanapali-mtp
device on the Kaanapali branch of kernel-qcom repository.
Test command: "modetest -r -v"
kernel-qcom repository: https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/kaanapali

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
Changes in v6:
- rebase on linux-next tag: next-20260115
- rebase and fix merge conflict "dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY"
- rename _dpu_hw_setup_qos_lut_v13 to dpu_hw_setup_qos_lut_v13 and put it to dpu_hw_util.c
- fix wrong indentation in dpu_hw_sspp_init_v13
- Link to v5: https://lore.kernel.org/all/20260108085659.790-1-yuanjie.yang@oss.qualcomm.com/

Changes in v5:
- move sspp v13 related change from refactor patch to sspp v13 patch
- move sspp ubwc change to dpu_hw_sspp_setup_format
- split wb change into a patch
- Link to v4: https://lore.kernel.org/all/20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com/

Changes in v4:
- fix qcom,kaanapali-mdss.yaml compile error
- reorganize SSPP patch order
- fix Dmitry ohter comment
- rebase on top of msm-next
- Link to v3: https://lore.kernel.org/all/20251215083854.577-1-yuanjie.yang@oss.qualcomm.com/

Changes in v3:
- split SSPP refactor patch
- add devicetree email list
- fix Dmitry comment
- rebase on top of msm-next
- Link to v2: https://lore.kernel.org/all/20251125064758.7207-1-yuanjie.yang@oss.qualcomm.com/

Changes in v2:
- Drop panel patch
- adjust patch order (bindings then drivers)
- add dpu_hw_ssppv13.c to complete kaanapali SSPP function
- fix bindings example dts compile error
- fix other comment
- rebase on top of msm-next
- Link to v1: https://lore.kernel.org/all/20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com/

---
Yuanjie Yang (12):
  dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
  dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY
  dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
  dt-bindings: display/msm: qcom,kaanapali-mdss: Add Kaanapali
  drm/msm/mdss: Add support for Kaanapali
  drm/msm/dsi/phy: Add support for Kaanapali
  drm/msm/dsi: Add support for Kaanapali
  drm/msm/dpu: Add interrupt registers for DPU 13.0.0
  drm/msm/dpu: Refactor SSPP to compatible DPU 13.0.0
  drm/msm/dpu: Add Kaanapali SSPP sub-block support
  drm/msm/dpu: Add Kaanapali WB support
  drm/msm/dpu: Add support for Kaanapali DPU

 .../display/msm/dsi-controller-main.yaml      |   2 +
 .../bindings/display/msm/dsi-phy-7nm.yaml     |   1 +
 .../display/msm/qcom,kaanapali-mdss.yaml      | 297 +++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml |   1 +
 drivers/gpu/drm/msm/Makefile                  |   1 +
 .../disp/dpu1/catalog/dpu_13_0_kaanapali.h    | 492 ++++++++++++++++++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |  41 ++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  15 +
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c |  89 +++-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 124 +++--
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  56 ++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   1 +
 drivers/gpu/drm/msm/dsi/dsi_cfg.c             |  13 +
 drivers/gpu/drm/msm/dsi/dsi_cfg.h             |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |   2 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c     |  23 +
 drivers/gpu/drm/msm/msm_mdss.c                |  10 +-
 22 files changed, 1475 insertions(+), 54 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
 create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_13_0_kaanapali.h
 create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c

-- 
2.34.1


