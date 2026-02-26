Return-Path: <devicetree+bounces-268644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JwtH0f6n2n3fAQAu9opvQ
	(envelope-from <devicetree+bounces-268644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:46:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCBA1A2020
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 01C90303B174
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 745D92DCC1C;
	Thu, 26 Feb 2026 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TU5UXh7k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wc8SEfrD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F683318BB5
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091953; cv=none; b=Xre9QdA59M+1SfAehk77mqiRc/7Qb+RmcOpDyVWJ6GUSqHc4/hHZfOq7mw7Fgm9YVDlhTi/ovLZ0XfM8MWk+VbLpclrNF9Zi9L2KwONmgOieadR+Y9hsMQl09NHK4hVc2UIQrHZkN+UIRHbppvd4VGM+IDjB0JlPXl7ROVFQwmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091953; c=relaxed/simple;
	bh=8Ascd7qDlVARDssM5L0tNXQ8Bm0xuOvsstgFiKGjAiQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=blE78XRRyB+xeISaRl4eb+1VqMNLR1Rw0MjyMkAzZiWp561gTuvGB9byu9Cvjkb4hGoX5prCpy174LLgluaI4R5YQS1upUo2hcT6zr2NUQEoDzrwHbsLIABIA1RLWovSsf7GnWSQN6MBey7Nh7xlXKjtkaTnje4VQI9O4d3+4Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TU5UXh7k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wc8SEfrD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4V8fn350120
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:45:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=IuCQoAKdi3KuRHJyXKcVDZr2MMU4Vod0X+O
	HjnRbIZM=; b=TU5UXh7knE8xQJ/ifEepPS8U5AFVtXyfM9wf5lZgq3LRAuJvkHy
	n93df+lyNnHKs/pi0V376ap2kbN5bh//yJQVol04YOMI+TuQdyau6bqwV9crZfdh
	VqR8Fc/JAFdWCRVCvxXpkgk80iSaEf3NJTj9Yq6UmZP+FFNrlJnPZSqFlxpF5smx
	IpzpI8JyjhPC8oPYz/bDQSqk0C3CNRCS7zbAbNx9ezlExAyooAu4n4siBZJiVJBf
	DqzFK7bq2FMXAMW/pFKWDPyTuEdkJiFb4g+2foNApUvKHV1Ga+7//EwwpLzNNtkH
	r6xZX8iVcKIC19TFck4D+5evSvqdJlpJ9hg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj54paa4e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:45:50 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35620e2faf0so348801a91.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772091950; x=1772696750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IuCQoAKdi3KuRHJyXKcVDZr2MMU4Vod0X+OHjnRbIZM=;
        b=Wc8SEfrDsJW03J2LmP4WHO+akkOeDtrP0tRGBxx5gB5ymWdOV+3+NuryOdk7KMf3/9
         Hz6+RZ7BMHKwOgGgQ//nZzbJRYu3/5tFXFDASOlsh1X5MnIKiO1B1NpOWlp0oiXm+w4g
         jzWc1TBLEY3qhkrznGGTHMZVzOnys+FE0XFn1QAW7UWcllDnz9Si0FrBWBg1vfPF99i/
         Aj6OheFzYfvgqJsLGRw6J3KiVmsa5vLbyAiIDqn1WZd6WL3LUadSndE3wXxlT7BhUcCk
         WS3iCy3jDvxhUPrJLIwZ7IpRHQXzk2PXe1mUpyTvPbsc8lfiFhgEBK0QPMvRWKNXBEio
         amjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772091950; x=1772696750;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuCQoAKdi3KuRHJyXKcVDZr2MMU4Vod0X+OHjnRbIZM=;
        b=XyZ1HS7VNJKc8z+fRZT25Tx2jtu8Cx+rho2YSjvcs9YR/ucoltvnkdX3DZMWz80zmr
         JN4RowMHZZcGW3QESW+/qnYc+Jgkm4MhJsHUFcYzB+XOZKg5e+w+NZ9WXtACWsOuQuny
         kMHCG+KE4zZhG9hcUGOMmb0qmHk5DWL7ERi9By8KplWZJRxe/TFRfjyCv2W9i4PQ1oF1
         MaxvaM5w5wyfKZE87DmEFfkedCEOw73EMoLWDZp7YAo7ccCyRV2Fff7vYLkIfhFl9kwb
         stn79mz3VBnlVeLUGTK0aKLzlkWW2gumF2HPKChyJrpAvVfcKOGuc4QhOvxOpgJZR7NV
         xp4A==
X-Forwarded-Encrypted: i=1; AJvYcCVx5s31ib8CP2AWXD+03+x4Q+nT7gFz8dtsQLKktL8VFWHvYQCJ0YTczHDge3QadTBsTmhlBvpULpB4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhao+VGZv/hSwNdyGWel5pjgkKXinklvSOpy5Sv5w8yf7+Jzi/
	t6N2OKPx2AUY7zZQUg4/Q+dbWJwegRVi/cTLfuThZKNGDJdS/D2jDtglaJ4DQ2Jp0zgvnkYVYtT
	ZToIAaKc5u3vmaJjsTXMxmxmHZtC9f1TaIs/veKUAGFJ4d1eg8GBy1yJITn6jVqSF
X-Gm-Gg: ATEYQzyEM5zG8ao8aCHoVY52zHwck+bYCe2edr+DHrAOdZ6TFNI5a6j8zQ8sMiRlEcd
	RNb2B6X/GT4z7cr/tVx7K2a/HdzdptUByO+lU63BrlEJ5/0l9CAcM2148+WbD3XHZMEooINbNnw
	xP6NaQdoKy5bQriiD+3WNUtRqeTVru/NYBR2fN7HqPTtfLsd6nx/xZHqQNJTC376o/3XbYOrU6E
	5+T+dJ0mdtlg07tqv8y55J/4MAXLb0bjd9J8LFAcinE21NcjAnou7gbRdzSEkUllm1+epZqtxZ+
	oxSnpQzvQl926jQnIut4lAMOh5g40xRPuU/IsedTD7HLqxMcUIqpg+TQbdEGrfljk3NuUpNezaD
	dwxfZfqLeWr5MHHYD+DfaYI0fB6jvywIwZjLVJEG1xo1cbqySn7g7cVUn
X-Received: by 2002:a17:90b:57c6:b0:354:a332:1a61 with SMTP id 98e67ed59e1d1-358ae7c3536mr13091465a91.5.1772091949885;
        Wed, 25 Feb 2026 23:45:49 -0800 (PST)
X-Received: by 2002:a17:90b:57c6:b0:354:a332:1a61 with SMTP id 98e67ed59e1d1-358ae7c3536mr13091439a91.5.1772091949403;
        Wed, 25 Feb 2026 23:45:49 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359034bbfd4sm4891168a91.10.2026.02.25.23.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 23:45:49 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [RESEND,v8 0/3] of: parsing of multi #{iommu,msi}-cells in maps
Date: Thu, 26 Feb 2026 13:12:42 +0530
Message-Id: <20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2OCBTYWx0ZWRfX7qzw7IypaWvI
 gZl7HgVMusyuLmb5ua6zp0b8ClDnivNGNEBTlZt3ie0iFu5eoLxsMqI3YexPzNlcK4NbUQ9BzPJ
 ueE2juWzlb5c/PQq2mNeUGJ6gA+E16ndpjDcNqwssWFsAXmYT3A9ChRvNpWDAvvPX46FJGyzsOu
 VkXrFrYAtecdLvIjKW4jIsOphXC0xTu6qYPinQTJ1Z/BRsfI3H+iID9UxVroyNn1tUBvqqeLGmj
 XXEgpvDX7nA/ry2tsPyUKJxJj3KGLbyzuexlIeZJmZPDRIjM/Nkzl6J82DE14bP6NHCgo9bjIvC
 hwkEtkh2TwEYNJkgrPdZGHC9LVRgtsA9HO3qIQm6Uytr/GIF8FtETUwsev1gWCSf0z7eVI4l0tx
 yTEUid/WSUz8DoqppOsK1YkFS/2IMGAQBfEUC4RxJz+hu3wU71rWrJ13INqZi2+14krGut7aosa
 /MGLoLBEBdVpP928yGw==
X-Proofpoint-GUID: Db5j-f34-meLCYRm5aWeL6w4u-4N7BED
X-Authority-Analysis: v=2.4 cv=I5Bohdgg c=1 sm=1 tr=0 ts=699ffa2e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8 a=bPDH9HW4QdDYPu8zaOwA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Db5j-f34-meLCYRm5aWeL6w4u-4N7BED
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268644-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ACCBA1A2020
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

V8:
  Removed mentions of of_map_args from commit message to match code.

  Link to V7:
  https://lore.kernel.org/all/20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com/

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


