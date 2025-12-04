Return-Path: <devicetree+bounces-244281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C8906CA31E9
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA3A630EF555
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B7832FA3F;
	Thu,  4 Dec 2025 09:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YUwsmk0g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H1cwkRqT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7B12C0F7C
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764842144; cv=none; b=Fbzp5JYVps3zQVZg8X35Tqt/JtUUbVu0yO1z3RNBhyocbS91Pe5mxiHOdncozaifeFjSLVXzKa6Vzshh7pRpMp//EC351DrDxkqry5oHDM2rbPgxR8nnct0OwnrNovYBh2pAgnqTEmx6K2IVBcSMWX6QRrHa7/IYiCmyAEsDVl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764842144; c=relaxed/simple;
	bh=dYNYUjY6ikxZh56WSHbxDgmXCaZcm2S1pqIcbri6RjE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=N8rYQ2Po3Dd2G+R26ONag3YmbLO7cXZu9sGnKZi30Ybb6zXdgTTQSMNwnT/AjxAkkY6OwSiiQ6pL6hQvBimMppDq4aKZyYJ2bictcpBk5ZXud+kyJFz9TluWPXC9rPOyFQtDmGA4gS/yZcCWGxbL4F8x4NqUOXoghWrxsMkG3pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YUwsmk0g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H1cwkRqT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468cVP551467
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:55:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=0CBS82JE97HEdddV9MujHpiyCYF+cW+4cfC
	P0rgquHo=; b=YUwsmk0gWpQr+TJQl2/ZVERUCk6QvjLsFnEx3aLHrg36h1gvhDW
	MKamww0EP/5CgwaH9KR+UgUkSBLBMR/rPCl7PeGJ4AXfDHdzJ0JAWrLzjR9APvUt
	dlZdy5UCYRtCp9Bf7Mtd/J64k9k7TM4WsmbFkHuuGAqGBc596c3/V3xCfoc0Ajyj
	7aVS5LTe5aMktgx2mZFYv3ez8bYvbmZMWVJjysOo9WHChveiAsjry2K0lzDTlBMo
	m2ZMgt++Uq/nN21kIVYFOcGrqyupsI3xXWkMxg5UulEGq8DWj0lYiGq4A572pkTS
	6vUhkWy0sWGbc/ybbt03nBsSN8ZmKffz/RA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmmdbmnc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:55:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2982b47ce35so11086095ad.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764842140; x=1765446940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0CBS82JE97HEdddV9MujHpiyCYF+cW+4cfCP0rgquHo=;
        b=H1cwkRqTlccEvQgy07TIAE2jXjokF+1OKywZKxP/XwOp1WgKS++VoD4rYlmmOhjxDu
         8yOyW9xLciTWWZisS58Ys93E0ZHjyWwBUM1HsxthcIEkVHBYdnSAKfG8wWsm60VOZhha
         ukBfMcD5abtM/73RmO1Ln4sqyOnzb8N2mmAW8T57FftAQsfQ6PqSJiiWoGXxEUJQfu4F
         0RcBYBtzhlohgadmJvZ25MsKbqU/0HcBJ2izfBAVBbL3kTLveTSD7+3DtAr1774FsCKC
         ijIc9DnTCujmfk/ZSz7zyuxUO1FrXUzNxvVrKc3GmmeII2I0bsyT1+/GAuR5JibWW9ar
         eNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764842140; x=1765446940;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0CBS82JE97HEdddV9MujHpiyCYF+cW+4cfCP0rgquHo=;
        b=LsJnpZBTmaxLPKSsJzUvA+8WG9ULuXMdxMbe/G1irHsjkdRVttBEOfvQcEObonDXb5
         0IaqlUdhvaAXkFOsPdP9HolqtVY8TDUlLKWDmL0+8s85MbvEosBQu6cUlyFBZ9dycymK
         FsQSAd2TFSdpdsmDVIMBLyGKEy6S7S4KdFdqIMl7hiX/iCM55RLFrsWliaORLqW4UK43
         6i/xbDWxLd5Xu9J8j9E0DjfEvOpCaOzEa4euiaDEv3uavcDK+Hj2Rn0G8/hwCorIhY+I
         PwX4D+es75duxzI/2+IQyhRj3NHXQNHjMoQE0APPGRFVnQBUCqW/aSq5pg2nFduon9m4
         8Dbg==
X-Forwarded-Encrypted: i=1; AJvYcCXdYUHd4MyXfUe2JTZzvInM9m86Lg35IoSiZZbIaC72jhFQpD7hZPHTZf0FAcGHS6BrJE6L7663IiPa@vger.kernel.org
X-Gm-Message-State: AOJu0YwEthlCreBL4umsDOrjp6bb/Ee0ZyWi8fPPQ7mijDiAx40wXVid
	O5OeennoYlofWBX5PSkKnN2nWGFxFipUeu3JSE9l6jo3Nxm/o06yRJlkO/f4TNHWrMrDsBlezeU
	if3+6gapUovg9b5BsVQaB2JA8Dne3hIHmE2ZGYM1vZ7GXddzqL+Oar/2Y3vwJcLPm
X-Gm-Gg: ASbGncs0jLAyU0JTPVIO85HafIwoYhdy10Ivx3XeS+3cZwnIcWUODXPChyKS/eth+y4
	YUCKNHWiSLCeNeudyH5fdmFNeibCogbLa7bDMZfTYbIgXV2XgBhC9Al+WshfxAGxm0Zi7SMJ49c
	VMj8VEp5HdvUvJDiEdX3fiKkR17rXHct8ilMcDeRhOTQ0TWqPlFwZG0VjNE2HYORD3Wh5qPS3i5
	3gOSJCVIzkJugzXym0kd+UEb5qd93yTwtw86KjK5rcJtQGp3/v0KyCMyDgGixZY4i1U8EbqkQSA
	238gpv/Q9uu6nxh2E6/be+Z+qK2QLQPoqPC2/m2rtX3lIfVhZC+0YbxwquNnKVnSjsJa5lp7Tr5
	W1GGp+8CO6rEL/t365zRf2YCuzR8pVQWujUToRc7Skorj
X-Received: by 2002:a17:903:3c2b:b0:29d:9f5a:e0d1 with SMTP id d9443c01a7336-29d9f5ae5b9mr29352225ad.27.1764842140529;
        Thu, 04 Dec 2025 01:55:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLmJJ1IqVAbpRWJYWX68AfdveHt+0MbsRDYek5+9K27SHrhh0a6ba8/TJ2nGMVM8HpcloKvQ==
X-Received: by 2002:a17:903:3c2b:b0:29d:9f5a:e0d1 with SMTP id d9443c01a7336-29d9f5ae5b9mr29351895ad.27.1764842140016;
        Thu, 04 Dec 2025 01:55:40 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6817389fdsm1380436a12.1.2025.12.04.01.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 01:55:39 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, charan.kalla@oss.qualcomm.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, vijayanand.jitta@oss.qualcomm.com
Subject: [PATCH v2 0/3] of: parsing of multi #{iommu,msi}-cells in maps
Date: Thu,  4 Dec 2025 15:25:27 +0530
Message-Id: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: QXDHYv28eSN03tJaJQ3OT0ij3QC0V8Im
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA4MSBTYWx0ZWRfX++1WXGVj+cmE
 UnBfgiJWAbDVtQkJKWZlN84VZwvcjWnchlNv6cQQwylcy7Q/zz8Cg40sTLLJVhNAOziaWqLP4Nm
 7WdDwnjh45aBOdTiHzUWU2h53CJgF4m6+UuAhNhDTPTOGRI1DF/Ab20/yFRGkwfHwO+eZozImCs
 quJDB9fFxMcL3HovzjhtHHOZN8M5xBeGZ2Z5bIBSv4HdKOo8uUesqiYUXCOjTZ6nJH3a2mjApwi
 vxE8u+EtgIG0DcGHv4PmuPbCgIr/ccFUwV/qXnExf7EpDgW+O5VjkCy8U4Psbl0v2tj6Y6j5uNZ
 hdCeSSeKArNsaSsean0BsRcmqqLp0DAmhAecqKqOIPXVAZGU0aJypNOX4clZcuvfxxtQY8Tk2rc
 rVRwhd0X5EuJk4ACUg1Wq7AkjHfuSA==
X-Proofpoint-ORIG-GUID: QXDHYv28eSN03tJaJQ3OT0ij3QC0V8Im
X-Authority-Analysis: v=2.4 cv=Ctays34D c=1 sm=1 tr=0 ts=69315a9d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=eQMVBvNRXY1Htgy04vAA:9
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1011 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040081

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
plan to perform more extensive testing based on community feedback and
are sending this series out early to gather review comments.

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

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

 drivers/cdx/cdx_msi.c                    |   3 +-
 drivers/iommu/of_iommu.c                 |  11 +-
 drivers/irqchip/irq-gic-its-msi-parent.c |   4 +-
 drivers/of/base.c                        | 132 ++++++++++++++++-------
 drivers/of/irq.c                         |   3 +-
 drivers/pci/controller/dwc/pci-imx6.c    |  10 +-
 drivers/pci/controller/pcie-apple.c      |   6 +-
 drivers/xen/grant-dma-ops.c              |   6 +-
 include/linux/of.h                       |  36 +++++--
 9 files changed, 151 insertions(+), 60 deletions(-)

-- 
2.34.1


