Return-Path: <devicetree+bounces-264600-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HVDEqIWjGnegQAAu9opvQ
	(envelope-from <devicetree+bounces-264600-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:41:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BA09812161E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:41:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A36EC303E4AF
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2569834D901;
	Wed, 11 Feb 2026 05:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CqOc8hZD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WMfp9dRi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BC5346FC0
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770788512; cv=none; b=jMPzzWK8ili2gFQfNIvqxhmlXE6cUnboMzz3zryUBxL2BsGQMHeCF1QlAPN82prsvvTxIwD3j81sbT4GsFqAGG8QMiM+cQ9kjrrZzXk6Er38Xv1eS58o7VJxCr6HFaoXsgfhIvFIzeMFYNsbqpR8+w5k0tDWmWngKSm1NLirVT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770788512; c=relaxed/simple;
	bh=62wE/dFO70wWM6jtNkIEjSDoZ/uTZDrsSnyLOGNH7AU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RQv+HDG1f23kLUxjqghOeRDqhcnQ8l1ZoxeoMz2rIn9MgYt37agARmQL9iV1cVfpOO4PIXseICZV/LIarjDSUF9Hm9bcfBfQaYzwLYWzOEnQ4Imje12RtKqPFADqmPSRWrfs/24Xx9E3NHgOZVDD99k5qLrPGvpo5LvLtkJE0tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CqOc8hZD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WMfp9dRi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B2d2Bh2396523
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3ukvPHoLd8R
	ybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=; b=CqOc8hZDMLTBxxbQqQK/WNgBngs
	ZTY8mmVLI9SXpAr5LnLvwZTP2NAg4qHtYTy7ZgHwZff4eOPP9WhWn7mTO5VPSfpj
	hOpieoOGOKOB+JRnVfgF1OBz9zUkUoJBvLhlKKASLrHRWd1ipmH5RXZ/NaddnSOy
	dCW+AcpWGf6HGBO9bYPrWu8lQqx5bvVQubhUplD3+vQJlo7lsdHFdaEBneivmMpj
	Yv4vUgBMZJBO+D9NPEMg59fgRJyn3a+XVF2f+QLWVxAB7bsZfzkUb5kBmC0lQ32F
	YF7gnQ3mTLXoG2oXWZ/ESFLb1ERlzgUTNbESC2GdQ5awLijPXBH9TBMtO5g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c88wqj2dd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:49 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a76f2d7744so18468125ad.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 21:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770788508; x=1771393308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ukvPHoLd8RybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=;
        b=WMfp9dRiVnZCgsosKDWKRITeeRy0wV/YspOGPmYwTCjzkFIlyj6j5gkHR84Ja0XSLJ
         1+U7M1TfCl7gE/gmgoI4+nUpVLIzMajdQFiWtWg5aVOBOkZIjOPaSdC3Xwlu5doqCAVw
         +L0rZqo9L8oPnu+FCp9u3fjGgOWFrHI1wDyPN8SmIK4NxFcgGmSVDENSAPBKE756Z9CD
         9LZLjtXA8+lU1bWtwpWXQo2gy4Ut4yc/SEBQKj7KHFBKDcZ2EfaD4wzm2yFrw0pSvt1G
         iduASRkKztUAcB4sZg1kZWTStX2N/OShrJ+pFYbG+tzgLkdCOveU90nnqeCMQiBr6XoZ
         1j6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770788508; x=1771393308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3ukvPHoLd8RybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=;
        b=w6Iw1LpKeOhUn03EoL3jd8TR1rZ10ub6J1mOn1MzmhAMMWkrqzb8XlPlOF/0xVCtHL
         LTXct0M1eoypVMf+vtQxgXJbK93EEYG84+w+IFD/jUx9yIyyxS+gn5C9mk7qcgLJ+SDg
         yTVbQjPrJ9qcawMq3VnsEzdfD9POcp7OwImz2onjwUprEip2r/lUR7S+72hIewNtosE9
         csc+CpcMi3w+Vyd1kCSxOE/3WpmeEFQdCOLv9I0MXePIeIwYN6LD3nn8o4Y0Fcx9QX81
         ntTi9zOvV41OJQZQ7G0CceLY7KZxuewEwZ5fknnH88+HfsiEP0zFpWhzSFaXNfEKMedy
         boRw==
X-Forwarded-Encrypted: i=1; AJvYcCXr1LjKxvW0rvCa8oXwlrIc0zeaP2txhILuv6E0coIQu884B+2k5XWktXFj0ps9ybtPBo6Cs0d9d4PJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw69EQssIRsQds5QE76Xed3Fzur5sREHp6GwjuGjSI2lnJ2OwSk
	PNHWZblKZKvv4vAmbh85nBnhGqpW6sH/wGoSpdxqtInu5ZgMNr2nghnJ/ZvyCP7I3HdSkyEeQ8B
	7ek202+/ralG0INxyR9vzNIRXkIext3l7ymVIrZK81HC+fPOiY5+JJGN2NHCDWOpG
X-Gm-Gg: AZuq6aIMUH2Rsev+fZPsmWfJkAaSCsq3fma4JOBg4WlTJJLvVIH8LrLEf+FFlEnJZrH
	qP6czHEo4oZVunzfBfXAnQvCHPOia3XGFZxy+Atm89xdOE3gUmEe5V9oI4RdjXQzN5oLBww4Nv2
	fSRSSnHf8a9KbEfx0DvY0jQ8MHk9V5heOxe0f6bZdsMLFc++OKVmQ+cvlzvn+aJ6+vxGJMeLziW
	8szHJwSkUG9CFjQ7VenMLVl17IWRoxi81FVHyKqB1MAfHauHCHrb2M88dEeq6/xWRUvj82TUv8l
	hj2hOKZCRnJurpzAudDpw4jWPc6LbNuT8ADoNR4GveuphKEv16jG0qCxuaGba43VozVjk+lV8YD
	g6NI3z4ge+g7efxnyIyK/PmPz6VHWbl+ZHg5GsxVxZ2MFkv3LCiXePWGX
X-Received: by 2002:a17:903:2f08:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a95181196fmr166691945ad.40.1770788508445;
        Tue, 10 Feb 2026 21:41:48 -0800 (PST)
X-Received: by 2002:a17:903:2f08:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a95181196fmr166691725ad.40.1770788507959;
        Tue, 10 Feb 2026 21:41:47 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2986f0adsm9932875ad.26.2026.02.10.21.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 21:41:47 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v8 1/3] of: Add convenience wrappers for of_map_id()
Date: Wed, 11 Feb 2026 11:10:31 +0530
Message-Id: <20260211054033.2796660-2-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211054033.2796660-1-vijayanand.jitta@oss.qualcomm.com>
References: <20260211054033.2796660-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA0NCBTYWx0ZWRfX48wSud5dJ8Q7
 bx2swD0a3I6DJjTHkcbtp30tokzPlap+P/oB7s9+oEcEc16zGcntEE/2MmgS3TlgLZ+iCkzt5jx
 dsoBaTg9wDNO9aUjfyVFVV7CBb5ALwoyuBWBJOBGvnyv2g26Nxqfd3jP+ODbbLLShaRQWjxP72r
 DX/fvRD/6ZeP89byy+zIjT8s41iFaLkdL9/Ei1T1hYrC3gDcnpUpjhNEVRDgy9ccd1XcHYeO2v6
 rNECepz6NZzmJeXqdjDaEGW4KBd3tx3iRVCMSG1VBn1Ar/Sjl110P183TZ61HeotgLaxfRDxub1
 1dTT5QiOI1JqfHHqeAz/to34vA7P4uICeW3pFlPlVT4WK8FuKpRS9QeYbbOxueOMYXpaKBxU71G
 3MHmt9dPKvjL/xRAYKIsHRLHzlWdVa6P/KB8cPSRMCGfo3fXFWTk8MxIvULn53WnPaQ5YYhq1eX
 A26BgMEuHHvQ9DmqJLg==
X-Proofpoint-GUID: vYDYrCaBQCV5dZ9BomD7Agk2sEZFfaiW
X-Authority-Analysis: v=2.4 cv=W7Q1lBWk c=1 sm=1 tr=0 ts=698c169d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=7CQSdrXTAAAA:8
 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=wrOk0Nx1w3hKWqktZycA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: vYDYrCaBQCV5dZ9BomD7Agk2sEZFfaiW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264600-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,arm.com:email,qualcomm.com:email,qualcomm.com:dkim,nxp.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BA09812161E
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
index a832cdb2e697..b30d0dc0a1aa 100644
--- a/drivers/irqchip/irq-gic-its-msi-parent.c
+++ b/drivers/irqchip/irq-gic-its-msi-parent.c
@@ -179,7 +179,7 @@ static int of_pmsi_get_msi_info(struct irq_domain *domain, struct device *dev, u
 
 	struct device_node *msi_ctrl __free(device_node) = NULL;
 
-	return of_map_id(dev->of_node, dev->id, "msi-map", "msi-map-mask", &msi_ctrl, dev_id);
+	return of_map_msi_id(dev->of_node, dev->id, &msi_ctrl, dev_id);
 }
 
 static int its_pmsi_prepare(struct irq_domain *domain, struct device *dev,
diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index f374d8b212b8..ddd046de70de 100644
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


