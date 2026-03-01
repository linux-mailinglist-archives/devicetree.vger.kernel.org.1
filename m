Return-Path: <devicetree+bounces-269681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIdoI4f6o2kGTgUAu9opvQ
	(envelope-from <devicetree+bounces-269681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:36:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E43F1CED57
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CC03B300DEFA
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F196833121F;
	Sun,  1 Mar 2026 08:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C7NeJH8K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T417P3bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8433D32ED55
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772354178; cv=none; b=kGCnzHiEf+D1OmVQXFCagcvQZA2NEthp5XwFk0M51IaAe686Gjnih76GfDStkkr3CpAtqG3PADJ5LQMnRn4sSkwjsjiFTHBVoWLHJt7YngkVBef+eeftkkE/x4A/xAlDwpdcXq9RGR2hEdu89eHbvp8XrquZS8Ibcl9vD+7ynJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772354178; c=relaxed/simple;
	bh=vNU3j7XZQACnjXB5cGDhUUFPb1wF58x7NP3EDYO9B20=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YljPkv0B5olc0Bg6aDKTWgutpaaMJasLpCfjpmTEEM9OUnlrYqV6Nk6AbHboBfhgIcW7yRdhaXVN40q+b4ekvJOsGpKKHODVJy5iPdFbNkH8cIguRwHOfdX6DjxFfEQJZ8tzN19uX8tLyPhUobyJJFMhCJ2DiMhzI88WUBUFqHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C7NeJH8K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T417P3bt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6217uetN533721
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 08:36:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DPGZ2f1FRPz5cKw/lYBC8NifEzRRofLwMqRkmKqE50Y=; b=C7NeJH8K06j+LTBZ
	7LR40EB36WJwpFFTzjB9ZDJlkwJWGu6HWZfLkqId4jdSEhuWDuFKcdICoy0ocOiJ
	A5O+R76J5rU7eK49upDs8N+bAXhwYPO+K+Zu4fDztMUqzEMVc/ItxhxLDrLnEs4I
	1Frzbmk+s/Mfva7mpn0o8E4o3de83z4D/Steqx6aMT3tMA1brrCd/6pp+pIgtkjr
	6GR90Jt4VwP0f9bkobEW3+SR2iy6xaiZI9vm52ZpeIfFgZnyZVQTB7wh1u2SMpiE
	/68FnB1FN+LACGaR+iqaWkRegihbEOYZpU/0iSXl1UIC+SQ2pdu1qNRhE66ZlaSu
	2S3QHw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksg72bu5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 08:36:16 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35980a994d6so5330314a91.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772354175; x=1772958975; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DPGZ2f1FRPz5cKw/lYBC8NifEzRRofLwMqRkmKqE50Y=;
        b=T417P3bt/zB4H3zD3R7BmptOYv0hDUcCJOd5uGTQ1wwDlGGDEZbeZFsWzS1w5IBOI6
         30BUxLo6hymaiUpTVZaeSWXz50PMMhcQGGZxmT+zUEcvVI4Bbzb4uYZkwWZO4e7rFiix
         nQMc1AyvAsuyi6X18MF/BoHQopLMx3eM75MqGWJ6a0fWPybxauRf+5nxGCyWgYuG+Xr9
         hT56qyQwatQxjrmTqq2h2M3USrRBGK7PWVqlHnMcuHVr5EbCv/iR8r6FAqyXKNlWi47l
         7HhqZeYo0Kxs8gdH4dztWKWgFzeeuN38meVcEnlZXzeu/GyHDc6bw0Dr8NyjzbaqRei/
         i2AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772354175; x=1772958975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DPGZ2f1FRPz5cKw/lYBC8NifEzRRofLwMqRkmKqE50Y=;
        b=anJs4LV+lYeej7nrVkiOX6ULLm/KkvI+3dXbGWbzLa6PGuktu5xJY5b/ZlY1zvyndg
         f0fw8VCPDLxaM8LlAvEt1RQcEZWTvdQGCttUmLq1TZgT7frlviaVU2YRnO62wwRVT1k5
         TFeRwPeNGvXsD6LNWoA8/HkAUJ0GV4YtXiADnVx2cMP/cWwsA2XX/7D/7rey0y8V6/sN
         UA33SQfJqCQNSoggtvjSuN+h1j6pGI95SVIEph4Idh0/8TbBYsn8vw2NTPJgowHLqg3M
         viz8aOH4aqo6aZYh3mXEYpskDcpIzJIetjrRxmqnci5MRXOOaa7zSsDe/MB2WpMImpMK
         aQUg==
X-Forwarded-Encrypted: i=1; AJvYcCV57ia6KQsn+MJJO6ap72mL/ttOalygUTcYZUpf7oZTkt6kFKum4VOMyq6rLBIDixuyrOG3DxzUdufU@vger.kernel.org
X-Gm-Message-State: AOJu0YzUYevHcN3KK7BCrBKUCfS6kjX9mLivOZbueTqhG3tbDnNe1FlK
	pa4M7M4ZtCMmWHbPbVIh0CmJSSTv+PUNbWl5ZAqxaWlAw5iZeOWR4zSZtqOeSzY4f4V4e+0NdzL
	ATX3/g48kyTU5LyDuyCq5F6Ww7uVH3Cn2JG0cKZ2AYivsKvnWAi76Z3RRcic1hsGQ
X-Gm-Gg: ATEYQzwzVQqvmuE7hxdUdCFSPxJPJEzCW6G/on1K1aJlURLBmeRWkQNt/iMJLicLMLA
	oPf3JC42n7mNP6IT/moLJR2liITTFkSWTA55q5xJHJbdxB8TObHl5dfgHfbXA0mlBkJJVKgetJW
	m4OCh06baGuXixJYiJGXfxJf6Ec/rU8KT44l17S2yepn5OS5VQR0b3wUyWyhhRPqCUYZInaEzgv
	DDmnWw2tNAAD5m+wQE3sbX3RyJdnCD4b3vg5ExgHwbXjidlgNp73d91KVLkMX+oz7Ik7rb5zuut
	OwyqPVnVBz9mwKc4kGn2bUeSFtcHiSVNuERNA1HkK3NgYwKH0xAo2YhCD2PqFHD4bPWqUEDeCSa
	9kWTAKJEHLYBGhfvT5Pa17FkIB75ejwiN/UkGwGCyXXnsApHT8uIP9oAg
X-Received: by 2002:a17:90b:3c45:b0:356:3cfd:3ed5 with SMTP id 98e67ed59e1d1-35965ccf206mr7771028a91.18.1772354175259;
        Sun, 01 Mar 2026 00:36:15 -0800 (PST)
X-Received: by 2002:a17:90b:3c45:b0:356:3cfd:3ed5 with SMTP id 98e67ed59e1d1-35965ccf206mr7771004a91.18.1772354174764;
        Sun, 01 Mar 2026 00:36:14 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa82dd09sm9177300a12.28.2026.03.01.00.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 00:36:14 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Date: Sun, 01 Mar 2026 14:04:19 +0530
Subject: [PATCH v9 1/3] of: Add convenience wrappers for of_map_id()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260301-parse_iommu_cells-v9-1-4d1bceecc5e1@oss.qualcomm.com>
References: <20260301-parse_iommu_cells-v9-0-4d1bceecc5e1@oss.qualcomm.com>
In-Reply-To: <20260301-parse_iommu_cells-v9-0-4d1bceecc5e1@oss.qualcomm.com>
To: Nipun Gupta <nipun.gupta@amd.com>, Nikhil Agarwal <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772354153; l=6405;
 i=vijayanand.jitta@oss.qualcomm.com; s=20260301; h=from:subject:message-id;
 bh=34KJIw1PW/qCZqrDovFnZs5F7MkA8lH3ZSq6PGA9s7o=;
 b=iPrFA0Mla+rfvrsVCBVpRZ9RWdwdgwTS89Lg21ZBrY5kmaFRHUg823viwJAJk6c1NGz4OkqG0
 bmC5iBdpD+FCSrT5S1eAy2UKywWw/UDcFmwwy35h1w6fxW83D7WiEy1
X-Developer-Key: i=vijayanand.jitta@oss.qualcomm.com; a=ed25519;
 pk=Lpi7Cs3wHe8KZtqvyci7FTOLzsKpEHKGCaPNZw+1zRI=
X-Proofpoint-ORIG-GUID: bEiGTnfSA1wdffopAHdVfoWHXt0Edqxc
X-Proofpoint-GUID: bEiGTnfSA1wdffopAHdVfoWHXt0Edqxc
X-Authority-Analysis: v=2.4 cv=FaA6BZ+6 c=1 sm=1 tr=0 ts=69a3fa80 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8
 a=wrOk0Nx1w3hKWqktZycA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=a-qgeE7W1pNrGK8U0ZQC:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDA3NiBTYWx0ZWRfX2ELB2xj/o3Yb
 RtAj21h9ytR3Uf9ej0JpZcRKTlKq+Fm3eFb8ELKpHvUqhQAmpTTGNGMsUlkWDTJQNcRRgLTk6op
 5jAi6q4hUzUDBuKEjusVqq0D2CitvNCMDDzaPpR/5Khcyg3Bq1K+4XrAEoMtKMcS8m5ombBY9rh
 6k412BP3KPY56mwHPNY4oqipudlxb4GGEG/tytBR7wR5+Gy5D0CDMd1ghEj83Ji/Dx+qQZZCeFa
 AjenccIWA4sRJKolRIZEWj9po603h2OkNXmfDunVMA2SNYTZc9Pg5ijf0IZJP3uVae6KIcBA1Af
 5XfiPeepkSl+sJGFB/7ASXQP0vnchYwrNjLcZ5bC44s1WdVYw5ZAe/1sumUFJijBQvoLk3A6qfY
 FpxDbIr7s24QN0Cz5ASIxLTKGM4FR99twh0DtOhS4ROMDG/u/mmeiZtQH/tmhNBEWOyueBDOBfP
 Kh4yKLjMQIvIldSID0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603010076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269681-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6E43F1CED57
X-Rspamd-Action: no action

From: Robin Murphy <robin.murphy@arm.com>

Since we now have quite a few users parsing "iommu-map" and "msi-map"
properties, give them some wrappers to conveniently encapsulate the
appropriate sets of property names. This will also make it easier to
then change of_map_id() to correctly account for specifier cells.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/cdx/cdx_msi.c                    |  3 +--
 drivers/iommu/of_iommu.c                 |  4 +---
 drivers/irqchip/irq-gic-its-msi-parent.c |  2 +-
 drivers/of/irq.c                         |  3 +--
 drivers/pci/controller/dwc/pci-imx6.c    |  6 ++----
 drivers/pci/controller/pcie-apple.c      |  3 +--
 drivers/xen/grant-dma-ops.c              |  3 +--
 include/linux/of.h                       | 14 ++++++++++++++
 8 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/cdx/cdx_msi.c b/drivers/cdx/cdx_msi.c
index 91b95422b263..63b3544ec997 100644
--- a/drivers/cdx/cdx_msi.c
+++ b/drivers/cdx/cdx_msi.c
@@ -128,8 +128,7 @@ static int cdx_msi_prepare(struct irq_domain *msi_domain,
 	int ret;
 
 	/* Retrieve device ID from requestor ID using parent device */
-	ret = of_map_id(parent->of_node, cdx_dev->msi_dev_id, "msi-map", "msi-map-mask",
-			NULL, &dev_id);
+	ret = of_map_msi_id(parent->of_node, cdx_dev->msi_dev_id, NULL, &dev_id);
 	if (ret) {
 		dev_err(dev, "of_map_id failed for MSI: %d\n", ret);
 		return ret;
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 6b989a62def2..a511ecf21fcd 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -48,9 +48,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int err;
 
-	err = of_map_id(master_np, *id, "iommu-map",
-			 "iommu-map-mask", &iommu_spec.np,
-			 iommu_spec.args);
+	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
 	if (err)
 		return err;
 
diff --git a/drivers/irqchip/irq-gic-its-msi-parent.c b/drivers/irqchip/irq-gic-its-msi-parent.c
index d36b278ae66c..b63343a227a9 100644
--- a/drivers/irqchip/irq-gic-its-msi-parent.c
+++ b/drivers/irqchip/irq-gic-its-msi-parent.c
@@ -180,7 +180,7 @@ static int of_pmsi_get_msi_info(struct irq_domain *domain, struct device *dev, u
 
 	struct device_node *msi_ctrl __free(device_node) = NULL;
 
-	return of_map_id(dev->of_node, dev->id, "msi-map", "msi-map-mask", &msi_ctrl, dev_id);
+	return of_map_msi_id(dev->of_node, dev->id, &msi_ctrl, dev_id);
 }
 
 static int its_pmsi_prepare(struct irq_domain *domain, struct device *dev,
diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 6367c67732d2..e37c1b3f8736 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -817,8 +817,7 @@ u32 of_msi_xlate(struct device *dev, struct device_node **msi_np, u32 id_in)
 	 * "msi-map" or an "msi-parent" property.
 	 */
 	for (parent_dev = dev; parent_dev; parent_dev = parent_dev->parent) {
-		if (!of_map_id(parent_dev->of_node, id_in, "msi-map",
-				"msi-map-mask", msi_np, &id_out))
+		if (!of_map_msi_id(parent_dev->of_node, id_in, msi_np, &id_out))
 			break;
 		if (!of_check_msi_parent(parent_dev->of_node, msi_np))
 			break;
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index a5b8d0b71677..bff8289f804a 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1144,8 +1144,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 	u32 sid = 0;
 
 	target = NULL;
-	err_i = of_map_id(dev->of_node, rid, "iommu-map", "iommu-map-mask",
-			  &target, &sid_i);
+	err_i = of_map_iommu_id(dev->of_node, rid, &target, &sid_i);
 	if (target) {
 		of_node_put(target);
 	} else {
@@ -1158,8 +1157,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 	}
 
 	target = NULL;
-	err_m = of_map_id(dev->of_node, rid, "msi-map", "msi-map-mask",
-			  &target, &sid_m);
+	err_m = of_map_msi_id(dev->of_node, rid, &target, &sid_m);
 
 	/*
 	 *   err_m      target
diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index 2d92fc79f6dd..a0937b7b3c4d 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -764,8 +764,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 	dev_dbg(&pdev->dev, "added to bus %s, index %d\n",
 		pci_name(pdev->bus->self), port->idx);
 
-	err = of_map_id(port->pcie->dev->of_node, rid, "iommu-map",
-			"iommu-map-mask", NULL, &sid);
+	err = of_map_iommu_id(port->pcie->dev->of_node, rid, NULL, &sid);
 	if (err)
 		return err;
 
diff --git a/drivers/xen/grant-dma-ops.c b/drivers/xen/grant-dma-ops.c
index c2603e700178..1b7696b2d762 100644
--- a/drivers/xen/grant-dma-ops.c
+++ b/drivers/xen/grant-dma-ops.c
@@ -325,8 +325,7 @@ static int xen_dt_grant_init_backend_domid(struct device *dev,
 		struct pci_dev *pdev = to_pci_dev(dev);
 		u32 rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
 
-		if (of_map_id(np, rid, "iommu-map", "iommu-map-mask", &iommu_spec.np,
-				iommu_spec.args)) {
+		if (of_map_iommu_id(np, rid, &iommu_spec.np, iommu_spec.args)) {
 			dev_dbg(dev, "Cannot translate ID\n");
 			return -ESRCH;
 		}
diff --git a/include/linux/of.h b/include/linux/of.h
index be6ec4916adf..824649867810 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1457,6 +1457,20 @@ static inline int of_property_read_s32(const struct device_node *np,
 	return of_property_read_u32(np, propname, (u32*) out_value);
 }
 
+static inline int of_map_iommu_id(const struct device_node *np, u32 id,
+				  struct device_node **target, u32 *id_out)
+{
+	return of_map_id(np, id, "iommu-map", "iommu-map-mask",
+			 target, id_out);
+}
+
+static inline int of_map_msi_id(const struct device_node *np, u32 id,
+				struct device_node **target, u32 *id_out)
+{
+	return of_map_id(np, id, "msi-map", "msi-map-mask",
+			 target, id_out);
+}
+
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
 	for (of_phandle_iterator_init((it), (np), (ln), (cn), (cc)),	\
 	     err = of_phandle_iterator_next(it);			\

-- 
2.34.1


