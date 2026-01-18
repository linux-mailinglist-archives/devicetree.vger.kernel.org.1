Return-Path: <devicetree+bounces-256577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C63D398EA
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 19:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 06E82300909E
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 18:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78CD2FFF8F;
	Sun, 18 Jan 2026 18:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6bPl+vT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jvsdv5vD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66FB2C2368
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768760006; cv=none; b=XbIprThwEcvQFZSw0Hf9BdEJKM+sY6/9BWi4veTGiLeW2alPhhyn9GEi+fZaiWS9PiFE80LMK93Ar2DjgKjKpWZRRNnHjgMit/5Hub830+ems1sPLBnAnEU0FWzvyaCzRD42wsf4gffun/6NHPKV8Ww+kiJplK/yuUIr0cT/pTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768760006; c=relaxed/simple;
	bh=VlFSFWvHnQMGVVCrh3MMKzAZQDdauOFrjxddbturkt4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=V6nRW8VkVI5SUauJMI//Qti99TEBemH6DgHja2pJD/3lU70VD+ebcatZ+7dQltQWwhHDnkd3XGe8SXFIpiGXUOH2yTNpwR5Zet55XmGJ0NoWBR4l40qSe++On3r4iEtG2cIWga9fb6yilirYAhYSg4KduN1kfAJewN46dP5N1ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6bPl+vT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jvsdv5vD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60HNqR58429844
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:13:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Z7BCDE6NuBKjmTnS7pl2AkICTLrCUaSZNrs
	/2I930h4=; b=B6bPl+vTzyYkcmy+Osu8ma+nQdWIlIR3cGoNAOxlhv4otpIRqrG
	fTuhvY70dKXZ076m/Ld/iX7G5RKwzrk2xLJZJ0oyuUeuaIsGJFiS9sScl8Xr296x
	tEZLZACUI5v1V/u2vKhyutitziZoM0SUkhZoHkOIu/P/y8wKRv62+vHu91skSrsI
	OvfzZ6BrJg/aNnUWgcyljDLlxCeBhe3dKrT6zb9CwknSgAOVJPWaB4E53U+0WNTh
	KkPzc180v8iEzVdLH/putwHny/Ekp+Zli6qcBv7hjkBpmcVYSIizjh5pGcTz4SVW
	IWREJZ5IhyS1hxrXRrEoFBNeQj4Vym5Y5cA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br20x2vne-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:13:23 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7f66686710fso6185319b3a.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 10:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768760003; x=1769364803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z7BCDE6NuBKjmTnS7pl2AkICTLrCUaSZNrs/2I930h4=;
        b=jvsdv5vDv5bdmF5zraXvR7LHIT2z1hyyc/PutyOLCGSkSPcoxclbuY1Sk1+xXaGsyI
         Lz1iS51GfnTakHfwL7NuHg0NiBvQ+dZmEVLzzKmltvypuHH1cE+UiShg0hTgCK4P27qT
         LUEOoL0pXyJZ5a+x6K5LV9wS7mzOnkLTz9YSygv0WnUCw2n5Q48PrIV+ob8uZ2JHMXHf
         ZNdmZZsi3e6/ivGfjtnVhl9UGmyEGbztjcFl6BNS4WvFvwOXAGr+wrnKmUbgKVDFbzn/
         2kGk3qOKniHxgIgpvkLx6toQ3VYbD9fXMmCVdj+VsmUHZQGB9R0sTMgoJ/pWbc4yODUK
         exTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768760003; x=1769364803;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z7BCDE6NuBKjmTnS7pl2AkICTLrCUaSZNrs/2I930h4=;
        b=aTX7bbq0gTyb6qv9n/ntnZo3ff2eth/+sPHTpVY3veVYz1F2AnfHrJudERct0AEUhc
         NuqXxoQ8dMhZqO2MTtCufSyuEQeCq3GdaSG6lF3F6J33dp0E6V1lqXuhUIjr6oeThVA+
         zT5IX4SzN4wfqXBSHFtN1LEBle80kPFC3y/C7Qh+Fw0JKp/AlvVYlp4vvlr/gEr/wv0k
         RcgYsU054WGWkp/v6KxfGiABMNTt6KqEUj+lEBYiCc1aVVb9XpVhlkLb4gXlyrexf2f2
         YVc4bjw97z9CgOpwm8zemlFf9oSyo0Dm81HifpplSyrh4QHgRgp6R8Esx7oyqjk6KeiL
         MvQw==
X-Forwarded-Encrypted: i=1; AJvYcCVW+M9Gh48d+dIjgitd8WoRaU4OkS0MXrqBTnbeH1Fty7U+bBu2AEJwuoDxrXqT+c1CUTv7wIRmrMEw@vger.kernel.org
X-Gm-Message-State: AOJu0YyiNb3SdmP8NgYszqUaqWW6lcqkMI4G/tVAMmRmieB8GnaYjopQ
	LUa4mfcaEsx6TL+id/DhllPQD8rJQRxVtL5Oi5Hs5F4m3StKgqDl7VqLeJxV4cEYurAjTaq9jtY
	+lUlS60/zFXIB2FxuzzqxRaHcV82CdelmYfcQMiDUp2i/cOWpibqCUCnLIdoCOp19
X-Gm-Gg: AY/fxX4Ao3Lh91B+rRNhyEVZmLp+NP2tMYPrmFS3Y6rtIIVt3YbpZA/74/9f7/NRIu+
	5VfyjnX0sz9Sfj7q0OuZge+pT3nbcUOOpMIbmWHBRiCvWi/sW2FmQueveRq0uJ+y9FOCoflt5Iu
	VX35z6Oa0b8Pk0Sv7BY47x676pKbvmKzmTBT3E5wW9tJ22Ab1VnjOQOF9GiJ5P787nkC51K+BkU
	qipz1M3tX5o86eP9Lwb8m4Zj9ycc05bi3Z7GKaqzAgksQGqlODOwfwGRZN9OSBVq9lToZot9cZ5
	5a/JyD8dh+bLyaqDAWSCOxrFjaLYALfq/SRL2nwe6Dxc3FKpBxMnZ3ZE5k+nnnI/Ws5HbaNAHPE
	uYfIUIPRgzeVG8ydg0dmzt9HEYuklnfMEt79qdQdabslm
X-Received: by 2002:a05:6a00:ad2:b0:81e:2bca:d133 with SMTP id d2e1a72fcca58-81f9f6a63e9mr8389045b3a.24.1768760002760;
        Sun, 18 Jan 2026 10:13:22 -0800 (PST)
X-Received: by 2002:a05:6a00:ad2:b0:81e:2bca:d133 with SMTP id d2e1a72fcca58-81f9f6a63e9mr8389021b3a.24.1768760002236;
        Sun, 18 Jan 2026 10:13:22 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1277a15sm7070759b3a.42.2026.01.18.10.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 10:13:22 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, vijayanand.jitta@oss.qualcomm.com
Subject: [PATCH v5 0/3]  of: parsing of multi #{iommu,msi}-cells in maps
Date: Sun, 18 Jan 2026 23:41:22 +0530
Message-Id: <20260118181125.1436036-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE4MDE2MCBTYWx0ZWRfX2wkr6YUFP/E5
 tSHBWKIkthD2xPtVm3rbi67Gig/syeW/vLVd8CZBmvioil8SEpS5pptufS9fOdqdY/pmGf028zv
 dIGuMK+CX1v1kmzKCKtlD/J1BrkttXTPNr3H8CfoMa4BTB4bEjk5mXSoOpOspc1GiqErkKhJLzr
 E9Zn/sR5XahiCsdj+0u0TQajeOPzs8PB3RDgzpwHHCd+d1tCgJBCF0283dxg9ClpZS045GduUYU
 uI0VQPnSpzw3BdjG5hW7/GI3WOcPTaFP2r/DGytWLmojgvPRfLpRztl3kLmQ+XslpDbzuTbQKuO
 NLahQaSzlgx/KT/gD+mAe9QGwsz/DMaR6IjVXFDQrahiJpJzkCh6x8nUBV9ryTpyaDRcIeSdWtM
 3WVxGvW24w0k5ExB/olYLn7e/MXBr7RfLP0Ki18ccxei/v/oiV50anS+fGqlFi3+aDMxyhdzjl/
 4U0CffCIy6G8UWSqOsQ==
X-Proofpoint-ORIG-GUID: slssMvlebtxcEEAfZqYDmelMDPKDXNx9
X-Proofpoint-GUID: slssMvlebtxcEEAfZqYDmelMDPKDXNx9
X-Authority-Analysis: v=2.4 cv=abRsXBot c=1 sm=1 tr=0 ts=696d22c3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=bPDH9HW4QdDYPu8zaOwA:9 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601180160

So far our parsing of {iommu,msi}-map properites has always blindly
assumed that the output specifiers will always have exactly 1 cell.
This typically does happen to be the case, but is not actually enforced
(and the PCI msi-map binding even explicitly states support for 0 or 1
cells) - as a result we've now ended up with dodgy DTs out in the field
which depend on this behaviour to map a 1-cell specifier for a 2-cell
provider, despite that being bogus per the bindings themselves.

Since there is some potential use[1] in being able to map at least
single input IDs to multi-cell output specifiers (and properly support
0-cell outputs as well), add support for properly parsing and using the
target nodes' #cells values, albeit with the unfortunate complication of
still having to work around expectations of the old behaviour too.
							-- Robin.

Unlike single #{}-cell, it is complex to establish a linear relation
between input 'id' and output specifier for multi-cell properties, thus
it is always expected that len never going to be > 1. 

The motivation for this patchset originates from the multi-map use case
described in V1, which will be addressed in a subsequent series once the
current fixes for iommu-cell handling are concluded.

These changes have been tested on QEMU for the arm64 architecture. We
plan to perform more extensive testing based on community feedback.

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

V5:
  Fixed Build Warnings.
  Raised PR for iommu-map dtschema:
  https://github.com/devicetree-org/dt-schema/pull/184

  Link to V4:
  https://lore.kernel.org/all/20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com/

V4:
  1) Added Reviewed-by tag.
  2) Resolved warnings reported by kernel test bot, minor code
  reorganization.

  Link to V3:
  https://lore.kernel.org/all/20251221213602.2413124-1-vijayanand.jitta@oss.qualcomm.com/

V3:
  1) Added Reviewed-by tag.
  2) Updated of_map_id_args struct as a wrapper to of_phandle_args and
  added comment description as suggested by Rob Herring.

  Link to V2:
  https://lore.kernel.org/all/20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com/

V2:
  1) Incorporated the patches from Robin that does the clean implementation.
  2) Dropped the patches the were adding multi-map support from this series
  as suggested.

V1:
 https://lore.kernel.org/all/cover.1762235099.git.charan.kalla@oss.qualcomm.com/

RFC:
 https://lore.kernel.org/all/20250928171718.436440-1-charan.kalla@oss.qualcomm.com/#r

Charan Teja Kalla (1):
  of: factor arguments passed to of_map_id() into a struct

Robin Murphy (2):
  of: Add convenience wrappers for of_map_id()
  of: Respect #{iommu,msi}-cells in maps

 drivers/cdx/cdx_msi.c                    |   5 +-
 drivers/iommu/of_iommu.c                 |  12 +-
 drivers/irqchip/irq-gic-its-msi-parent.c |   2 +-
 drivers/of/base.c                        | 146 +++++++++++++++++------
 drivers/of/irq.c                         |   3 +-
 drivers/pci/controller/dwc/pci-imx6.c    |  14 ++-
 drivers/pci/controller/pcie-apple.c      |   5 +-
 drivers/xen/grant-dma-ops.c              |  21 ++--
 include/linux/of.h                       |  44 ++++++-
 9 files changed, 179 insertions(+), 73 deletions(-)

-- 
2.34.1


