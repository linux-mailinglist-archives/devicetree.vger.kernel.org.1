Return-Path: <devicetree+bounces-264333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MN6NZAEi2kMPQAAu9opvQ
	(envelope-from <devicetree+bounces-264333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:12:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 548B61197F5
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:12:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A1D0302EA9E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82AAE34BA3B;
	Tue, 10 Feb 2026 10:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sq7PEECP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HHQ0DL1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5230134A78C
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770718348; cv=none; b=CwytJtg7TFYW+90i0kVjRTgHQgXYPwvKyADhWVXRn3Cc/xvH9MZufZnbyOZqvwwyba1a+OvyrYS1nzE/tp8B99NS1ZFL8UzOAcQ9ygsLBEyq9MKfiR/xxwapE/lyVM88XwSSuuh5MTc0BnocY8YBlyA2p6X52s+cZbwqC6uKU4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770718348; c=relaxed/simple;
	bh=n9MmhsmrBg06BwA9AXyf4JpudzLUwtCHossabGgbLMc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=C6xMjKnd7xRj1RekgvnbhPixEcXj4ViGmTl9bBR6SHgOR0IorW9iW0/wPwTdrFbzwUWo98xf5Wg0Sy7PWNDtNeIVlroxUK+eSi+BftKXVHzEshAux8eVdQGbf/KbFtwi6CCISkOxI7nXVp3jytRCyJXRe+oRzvfFtxQXZwjxhUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sq7PEECP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HHQ0DL1K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7Z5892169318
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=3RJbkaXw9v1cGG0O6WIj+UDLPbuhKlUrIHP
	wBJQe9Vw=; b=Sq7PEECPH4B7zT49pxF1eT6alhcgovIMyJw7VB0hGXn4X3JzMbg
	/WbqLxe3FgATOqFDo27DmSHaCgZ3C0XcIe9RaULHZIlQjIxPF3Ainc6evYUrqZMJ
	fkbxjdtEkmXXawnQ3MckMQK26/aNoKtYFshD9FQMkYKNdoMjW5MBOEXPUz9Byy1+
	9DySGwUHb9Wpqtz/2Rl36ehY8J/BYbu4ERMweaBTTU/v+LAUui1UK8mR3vioMAwX
	df00hViWp18Aj5KtxrsHht+yfYb1XaJ5ypZkmzEgf6gk/Yf52/0aYKHpGS96ZJEW
	7N+HD5zqeH7nlz/ePyLRJCRAyDcNanwGtnQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c80drrhkm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:26 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8216fece04cso6229385b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770718346; x=1771323146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3RJbkaXw9v1cGG0O6WIj+UDLPbuhKlUrIHPwBJQe9Vw=;
        b=HHQ0DL1KSwdfOhheOLY8UMbG13O+wJv1rjL/YYgoJjVUnbHtDR2NTLbMQuHpbo/tXt
         QYgTW74lj7nvP0XYaK/S11cqxp+iiQEC6JvV12V1+648lBrPbTm+XmjuRqJumR4oL67W
         qRFy+HzMaRAdoBgWkHfB34mp/25Hj9G40T80N1xBrIp5w3VFiKNuKCVtbNCtVWzBnxbc
         bIVNZw6yraJVohz9xFf3BTYoI7ZcfTACQxtyz91BUxTXRZUAwYZBCGuU2OvMUTfT1Bcr
         LBZoulS1RWU/wqq+0+grFNgmjGiSQCTSb3jPYxlYoWOzv/SM4K71Ui5GOV4DEJdDTm/Z
         VX3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718346; x=1771323146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3RJbkaXw9v1cGG0O6WIj+UDLPbuhKlUrIHPwBJQe9Vw=;
        b=iJvyp2WkThi6GfCUOaZKR+Fjt2U+ErDAP8Nnho/kL2GW3/981oDiMAFPIt+fzpS/Op
         pTOFA/VdYaDCud35b9t3P9m1xb9IA/LHDuOrsTyOy6QSFnyIqD6xzAAKRf70Syr7Hcrz
         +da7pqraSYB8uZgOSlSqXcF+lYgRAsBkQzJGtfe7O4t/at4gccbtdyty1paHDpBCnsj0
         NQG74o/bCNAxksj/g+ULhVh3jScogkdgGCOK4W0ZtiGyKyqGdtD5fG8t8o0+Kh78ER0Z
         vP15rSDf++PHoZU6XfFHBLh+ygub8Ci7NZsSDHs+SOwTJ4uW8cT3sgnAICMH8F2/vNWz
         DMxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiTXHy9fINAJUP/OYTed694I/q/2i8MLFMO37QFpjr3igOjqeTYrtTYLL06Em0o/JNI/0YDec3QoJC@vger.kernel.org
X-Gm-Message-State: AOJu0YxgHXsnQ0kRe63TpuXnDDjPRVJSo6n8yovrgdU4MivgcQ17yuXp
	gafocIecpdYitIWGkv7jfADQbnr/IlxUp7bdy0G4/2iFHHbGiWQGa1H9ngAYriDNAj1Bcp3VUy0
	AzMFmbJHc1ZxBQz2ZLktRDTbSbPrwWtQBzcEP2kFHiY+GyvS4pXy/OdIRzl/MbnwN
X-Gm-Gg: AZuq6aLyLhq+Hub0g9CCg/mEezIjW5DQ5OSO14v/q5zTw+bZ7jHDdIWJpvICZ0dzhId
	EdS3J+7onvCAiVMPXpm4CQ/hNTrFy4c2wRVP97Q9AhGJ6fEEp+jYsADOJ1gmHnoz6vGbJnnuBOi
	6JNPsfd/xOX05P1niOyyF851A+jTqwt83qjglp8qNXa37fynWrC7UvAOALSBSBSu3NrCU3BBK3f
	0HLdN/0xfmPx7oKiqkXz3G0FfB3rtXhGS5rSWR4pDX2J7qMM3id8pmSlNTlYYPj5uDiK03xev/I
	ZGvDedlQqKjIz/fc7/8OPe5BHua0ZrGQ2qpnTpS6d62D7smELOTZNI6HLAMuARiZ3Eh9uUEW4sq
	XcYiRnuEeyJumPIE9R05nGyJ0S1PQf1wO6jebnb7D3pEuEI5Ynj7GB3fo
X-Received: by 2002:a05:6a00:f93:b0:823:5729:a125 with SMTP id d2e1a72fcca58-824877f7ed0mr1584359b3a.30.1770718345726;
        Tue, 10 Feb 2026 02:12:25 -0800 (PST)
X-Received: by 2002:a05:6a00:f93:b0:823:5729:a125 with SMTP id d2e1a72fcca58-824877f7ed0mr1584341b3a.30.1770718345233;
        Tue, 10 Feb 2026 02:12:25 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441884b75sm14380940b3a.39.2026.02.10.02.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:12:24 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v7 0/3] of: parsing of multi #{iommu,msi}-cells in maps
Date: Tue, 10 Feb 2026 15:41:54 +0530
Message-Id: <20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4NCBTYWx0ZWRfX1BlqHYaZwo6S
 yN2CazCr5D1/UUB5slaEFsdlOogWVcH7yXFA/9RHtZNN11rZwBZKStwo8mbX+xRfR8tgLrNRSx3
 kE+GxqDvGMDToPh7FolykKYghbJhmrnV30ECkWOgijhKAL7p06cX7bGCx6qWQLXSvAwPPxyHcsU
 4QqEIkDGflLv/u4SfrBuhonOK7/inDrLDTzub2lD7fW3FVN7bkcrl2i0mdT8/COw2r9BeKEmo0p
 DoWvdJPVY5E1FnQXlFYdZebT5+7qSxFKvxRJu5EQBXdHV3MDj6QxsKnOa75M6fDz3U+ChhCi3kk
 rvQ6YLb8eZngrDz3Arz9jZ38IHKDkPgWNsGnBZlgvaJX4cJ3fFueHfV3HPaxvXyNME8ymfxlsUa
 fGmQjn1r+JR5GU6yHgMvdrdSQ/FESbJhkxLKxKHqkk2Yb0rNon+XgM0InqqLrCni038I0Jo/3RN
 o4rFEUEIfkbICmbp3hg==
X-Authority-Analysis: v=2.4 cv=fd+gCkQF c=1 sm=1 tr=0 ts=698b048a cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8 a=bPDH9HW4QdDYPu8zaOwA:9
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: RojSvnEexgyLO6NPjaXBSIucAwTkuDD1
X-Proofpoint-GUID: RojSvnEexgyLO6NPjaXBSIucAwTkuDD1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264333-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 548B61197F5
X-Rspamd-Action: no action

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

These changes have been tested on QEMU for the arm64 architecture.

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

V7:
  Removed of_map_id_args structure and replaced it with of_phandle_args as
  suggested by Dmitry.

  Link to V6:
  https://lore.kernel.org/all/20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com/

V6:
  Fixed build error reported by kernel test bot.

  Link to V5:
  https://lore.kernel.org/all/20260118181125.1436036-1-vijayanand.jitta@oss.qualcomm.com/

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

 drivers/cdx/cdx_msi.c                    |   3 +-
 drivers/iommu/of_iommu.c                 |   6 +-
 drivers/irqchip/irq-gic-its-msi-parent.c |   2 +-
 drivers/of/base.c                        | 148 +++++++++++++++++------
 drivers/of/irq.c                         |   3 +-
 drivers/pci/controller/dwc/pci-imx6.c    |  12 +-
 drivers/pci/controller/pcie-apple.c      |   5 +-
 drivers/xen/grant-dma-ops.c              |   3 +-
 include/linux/of.h                       |  33 ++++-
 9 files changed, 152 insertions(+), 63 deletions(-)

-- 
2.34.1


