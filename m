Return-Path: <devicetree+bounces-227029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1CFBDDFAF
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:29:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7371C19C24E1
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5270B31C57B;
	Wed, 15 Oct 2025 10:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AJpFIGIb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD7031C561
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524068; cv=none; b=h0ClNeuf7t0OKHcJODeqIw4Kyk1LvvCzFZq29DSUW5qynzn31rvQRW/XJrir0l8L5LryIUOdIES56ZeQQs4s7Fizmeh/ylyQ6PEti5rFwhjaUaLw0K9N+jY1lolusdcSnsh+nwGTIx9/O0kuDPtq8EIBbBVueO/uaQJgKZvAY7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524068; c=relaxed/simple;
	bh=oOngDAIRImYIC9GHr++pcMxfMCky7ceWfaq5P86DVnE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=seOiUd9EJiqB1mmIqtSkkXP6uUS3mVD8CQITmMD+z/7epCrdPxDgOOxQzB9JkHBZ+1kl17QSHc5qNYPRm++rUwyGeD1Jr9L1BM90oQTl+R3JDdM0lvblVsMp6nAUtVud/c6afX9t70YDVFd+1/kp09wQMOvkrJRvJXO5BG5D4iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AJpFIGIb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sJiU024921
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zVx7zcXjZCA7ttW8u8NHzi
	JFVZBlQkgSPHnkGQy4eDc=; b=AJpFIGIb6GpIBi261CMt11+G9NvDhc1DYZFVYc
	XbsVHGICuOqBNcdgZVG39nlBwKAJKQTvmOgpP88zr8lhy/x/F6ehKLbXdFQnzQVE
	KX9QwgXICRfQmoR+KVPuq0f3nGqk3/tg6dUDPr5iAMj/9oDajfG8Of0iIgCocrT8
	ILuLYuZS8e35tb47ueeoJm8YzNRQLtbFEV1Zsl6I3hwRnsnn/J6Wu8X9HSF+fOhY
	RZETRvXBceKt7WRH5bhS7kkS52cjAezxl7nsw5L72ynSgjD/5LPhjU2u9CwixVIb
	BpHMSghmVZSkniZ4kJHVKEyjppM4OLapaPqCzDdZ2TYLusjA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0v1nr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:27:45 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ec2211659so10262698a91.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:27:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524065; x=1761128865;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zVx7zcXjZCA7ttW8u8NHziJFVZBlQkgSPHnkGQy4eDc=;
        b=lgkmDYohzxQ/nypU845Hw8KUjtiKJ5aiMwVltarzjg6zn+MT8F6hDbk2vStZRIBBFL
         hqFcDkBzl7lQ53Mxgze/5NFsUZRiaoSpfIcDKMi8kOIUgqipmKNGgM2rPPy/57H12Ss/
         nJRytvYEi/8ZguFG+KOHZSzyE1LnP6RpZaL8eIU3NqrzpMfLJn0q0qZaUm3Ga3WS+Yhu
         M7bK9wJnKLQnP2BvXQxWR492W9OsN5bunausfF34xitN+XlWYhHruj+S9/gHvdaQJCgB
         RxrqzXDBTPRki/X7PDImq3nptZvoQcF0U1uXf7EPO21GRWTB9M5j2Df331kVUCxyTBC7
         o/Ow==
X-Forwarded-Encrypted: i=1; AJvYcCVH8+oaG82nxhalTTqDz6Q132Di7CYAxl/95OwBHt6foeEVV3rPiLAZI7/8yZYNDhy+coj+dhlU5MU8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6bktioIrCYiHEQcNVxh3CqyZ5docCvoRzYi8czatnyO2gLRue
	OPtzbCnV+PdnGySEGpGimF701R3CNWnwuQ6A1pBc5JJoKPQWaINkgwvlYjoQhjWa4JIXadRkZhp
	bHyiGP/f1bH4CvAyyp0HLByTYusaLMGaM7L+68yKpYtClWRNcSpT9ut8CzCzPsLge
X-Gm-Gg: ASbGncuI4otysrCg7jRQx7yFx+HGi94/olXR+XqPrXh7Fkxt8+iZYnb+wfG528qZprk
	NWyWGPLkVOCVF4A7JUCriorVPjfVWia3HhCgy7vb7s+2zo7OpyA9yFljUIvpBjUA8jDRyLLhoT9
	mMIoQoLOy6znEjblr3hp8eyY4G+rk3J/AODKhHOY++/Smujj1BQka4swfG+nAx0Mqg4X7HQD7dY
	hza3yoN9NMeOzdSSVklN+Mybhg3YvfiR7hw+nC4CleW6gWA9BXIzvbKlxpQlrPlhB3LyeRgIi/E
	MWX5fZzxTqEZqXEHibfyd6vcQDzc/ea/fndjMHTOWbBew74NYQq+Gshvg2OeoWi8yaVJ/VyHP4p
	2IcaN0mGXqHDRp6WyTAT1jRTyU/GSq0x2dbLjaW8krEjccw==
X-Received: by 2002:a17:90b:3ec6:b0:32e:749d:fcb4 with SMTP id 98e67ed59e1d1-33b51105b46mr40029411a91.6.1760524064816;
        Wed, 15 Oct 2025 03:27:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqvhKvSn1eHk1xJPg/+2+y7nkSYc/il6T6uqSY+LutIhh8Mixt7BzAgSmrGXlz1/Dd0ye5rw==
X-Received: by 2002:a17:90b:3ec6:b0:32e:749d:fcb4 with SMTP id 98e67ed59e1d1-33b51105b46mr40029378a91.6.1760524064293;
        Wed, 15 Oct 2025 03:27:44 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:43 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v2 0/6] Add PCIe support for Kaanapali
Date: Wed, 15 Oct 2025 03:27:30 -0700
Message-Id: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABJ372gC/x3MQQqDMBBG4avIrDuQRATxKqWLYfzVoTaGpJWCe
 HeDy2/x3kEF2VBoaA7K2K3YFivCoyFdJM5gG6spuNB55zt+i0RJshonNfAvlW+GfFi9V7hWoT2
 o1iljsv99fr7O8wKvAeF/aQAAAA==
X-Change-ID: 20251015-kaanapali-pcie-upstream-c11ce03cec8e
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=1520;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=oOngDAIRImYIC9GHr++pcMxfMCky7ceWfaq5P86DVnE=;
 b=ZenRdUkd75CqOFjpbQv7VcFVrsoToSHNdW+v6nXSIIbm32dkVP0Esq8fG5KvpCDG9IYxEL8Ft
 Mp0oLUwhn+0DJANqG+wx9Gj7CgTsK2TgDBxH5XLby+WxikzcMreTHm9
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX0wH8nwzF3nqt
 Zfv+815PLxtJZJpgIjqDQvaabm4FwBPWdh4/dUxc+DNt0h21RkAInQBddXDokQwTTk1UvqBHARM
 50CdcmgVRP0EUwPe+VHnT3MjrG+c6MtA5ZJZ4i/Bd1CyhBXkTJPgUGYZxgHqMsOEzM2f8qchpc5
 zwP6VzvjM/p6jRkZwpqSEOuuQ14dwOa+fV0FH667U4T90Kk9PA1Fd8uLet+GaMZ6PvL7lYJ9hIo
 sTS5vO7axCZUbeWH13c9SJ/J1hRTwfOOzttRQMZzGDaagzsXw5xNZU89vCUYUcg9i0K8nD0owx7
 TvGPE7yfZ89JyL5AQSR5dr2f785onqT+6aBQzmCOg==
X-Proofpoint-GUID: 60v-jB_jFUDSrPy8E4xBPzWCeSY2I6lW
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ef7721 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Szuw2GHIxefIValPBLsA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: 60v-jB_jFUDSrPy8E4xBPzWCeSY2I6lW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Changes in v2:
- Rewrite commit msg for PATCH[3/6]
- Keep keep pcs-pcie reigster definitions sorted.
- Add Reviewed-by tag.
- Keep qmp_pcie_of_match_table sorted.
- Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (6):
      dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 6 files changed, 314 insertions(+)
---
base-commit: 13863a59e410cab46d26751941980dc8f088b9b3
change-id: 20251015-kaanapali-pcie-upstream-c11ce03cec8e

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


