Return-Path: <devicetree+bounces-260489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFThFrAvemlq3wEAu9opvQ
	(envelope-from <devicetree+bounces-260489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:48:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4DDA46E3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33C8531AE1E3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4E22DC77E;
	Wed, 28 Jan 2026 15:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pm1I/HQV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Utuq9YgC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C2A2DC78D
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614669; cv=none; b=Qdr2PQcu16wz2Cuqu/+sxZlOm8tlxgy3YJp+qcst6VMlGP6KAO9E0zj9+CofcRMfoQnHtSckg9v0jRpdsEo66N4Ypkpxkx+lZrbYF3gUv2ade4hw54r35RORH1/9fd/PDmb8AfnxZgy3J3i8sUjcGd34LqSjAQ0khnd86h/UvhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614669; c=relaxed/simple;
	bh=ayAnJWhqvxVqxUb3jotL1noUt0bxhrC/p43Y0YGiw+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CSepNirVGN+eMQIu574cOoH09xJTuy4ZetOKGPPfIzyqcsfc/NETEUQq3CXHJYF0pnMJF3RPnH41QmF/9+XGvXkA5d88iGt9Yu8CwlhTmzz2VsS+cA2wvCP3kIEbWFdR9rmZ+4oHX3wtTp27T5VhGOtZ18d1ue6p8OKmIfPbplk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pm1I/HQV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Utuq9YgC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S91p4r3442357
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1SfBbA3M/smVtChdaDHyBs1QmfwqjTWGvIAucfFrNwQ=; b=pm1I/HQViuD+1Wjj
	US583gRwrpmFHWWZUcIpkChN3JuLgy4e4rdaGCl8H1E9Di0n0On1bdWymUzrfpcs
	35N2dDqOY9HsaBDt+2TH1gjCc6PMTx+LDNeZpGIVbc07qzgv2bpvuuPsxk5olQyD
	9Eyv9AV2rsSlzjBax/Ffr+Twv2ing1ML/DG67qqaWrVU3ynLoVEkjnbwdQB/TqHS
	9eH5ELKPhi7mp36OcuOvZsBJKW3pOO4sztt3cJ6ZeRGrw2qA7hOUXPNghzdeMpfK
	BsJWMUpUnKrFF+s6yBJ3LhSsiPbCTU+Yd1vk3rS1/oyHubMJDnojdLTsmNJVEDI4
	pgptqg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanaja88-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:37:47 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f29ae883bso48169785ad.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769614667; x=1770219467; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1SfBbA3M/smVtChdaDHyBs1QmfwqjTWGvIAucfFrNwQ=;
        b=Utuq9YgCF879zM/zcNoTsRxDRmX9ioUO6qfLUvNVJkk/5q4GgK8QQGbpEhX9xz/e28
         Uj4vSRXsycpHzKUX2LFMTiOuQKNGxp1MZY1b4sb153hf3c7z3azr6HzEIVsdz4QJ58OA
         vY42bGPf9moC9qljUmvB6QGj0x3XjuZeGIwHn/d1U4tLzGd+JLK54c2JjOujxx8meSZs
         6KJyqgBNwAs+c0b6aofftOwoq+kQjMgRAPyQIcBMYmgDZl7QwDP74nHBYAwAgWAXkxoa
         rjgBc53fAqrzR3zsDK/5mEkGlJCr2HRA9+rHqNmqxjbrQWsURghXw5NjEdN6o4NfpI/t
         pgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769614667; x=1770219467;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1SfBbA3M/smVtChdaDHyBs1QmfwqjTWGvIAucfFrNwQ=;
        b=Du6zcDloCi3AVSX5BLhD3IF4Z6Wrh0HWANnEdsTtWjZUT1XE/ohkVNoBYrUZ5FcQ3T
         xP9ShzVsnNtY7x8GKHaioaJo6kyO1q/evKxxommQncSfWm58uSeKTj6AeJKhcsS2URnm
         7QOrpgD3O2y2WJt1aMFeB/99CfNyFqZv46ryO162U7iANDfny1XDStCiM9xosM+gizSa
         h/OB05vWo/EM9v+vrpOzQ8fGwr+EigvpaD4asN2JWUFFi4FUbhyJ5d/RJ5LAMj2V0/Ut
         nCQDp17Uv2I8dnSVsRkf0V38cM/g7qzHvG4N9kEPZ4tM7FZ2R0KTDyewBjO4pnja93DV
         8zUA==
X-Forwarded-Encrypted: i=1; AJvYcCUWxneopQf7XvUlYITC+D39z5ubey+IvddorvIQkraaU7PqB1E2qvAKdXqsDC52SyBGIZa7MFk9mG1W@vger.kernel.org
X-Gm-Message-State: AOJu0YzjjbZnxVH93it1hVC/B8QWFPaS/EGY9HY5bVTokxFgh9fFmeWf
	6iNubokyBlmb+SlaP10g4JPKK7wn1ODmLEMbYRJJiuppppoQI5/BEmnRq3HkUfG0SfLRfhxD2YC
	SEcWufwTY7xwXM9/QyfRyAR6szDbg6HOj+D3jrtyeOdP8lHQ86p7mQKmlrCkjWAV9x0PyCBaS
X-Gm-Gg: AZuq6aJnjY5ETkpg5TQaSSQcwESR/zYsPW5AVIcVClJ10jsjJzwovp4x+cQ50DWTw1z
	5W44/V3JUkVPY/KUM8C2LbWwfLZUqvS3v1hIqrmYVWvWp5jTMPfjUv+9yWTYL4eKUbT/Ksc6pGJ
	7RmBIeuNKzisXacS2pBkzNuVwfmhtHzvOrbEJcxhLTyAtAvtFcVqVVoN13Up4hIdi0W/eaNI+oC
	kss8zJ47VKMth1KrmBI3wKy6M42Y/ZiZNi5Am5vHCWvOAxxjBnhJjTGFT4rUpwIyTGXrclTeeGE
	78L/K6pJ9lrPGqCJhaSZtnmRInK+gpKPRdUH6dXKUhNIgdBzIGIY36Y8tfGb4GGojTUWkYPBpJw
	NWdqe0m6vEiYlHIZB9f3zcfQi8gqu1D0rgoh1Ug==
X-Received: by 2002:a17:903:183:b0:2a0:bb0a:a5dd with SMTP id d9443c01a7336-2a870e1521cmr59413275ad.57.1769614666350;
        Wed, 28 Jan 2026 07:37:46 -0800 (PST)
X-Received: by 2002:a17:903:183:b0:2a0:bb0a:a5dd with SMTP id d9443c01a7336-2a870e1521cmr59412945ad.57.1769614665732;
        Wed, 28 Jan 2026 07:37:45 -0800 (PST)
Received: from [192.168.1.102] ([120.60.55.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3ee98fsm26371725ad.9.2026.01.28.07.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:37:45 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 21:07:16 +0530
Subject: [PATCH v7 2/2] PCI/pwrctrl: Create pwrctrl device if the graph
 port is found
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-pci-m2-v7-2-9b3a5fe3d244@oss.qualcomm.com>
References: <20260128-pci-m2-v7-0-9b3a5fe3d244@oss.qualcomm.com>
In-Reply-To: <20260128-pci-m2-v7-0-9b3a5fe3d244@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-ide@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1617;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=ayAnJWhqvxVqxUb3jotL1noUt0bxhrC/p43Y0YGiw+k=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpei01CRkwyRyAd55pohnc7Yxy6JiGTO0PVOqkm
 WPeunI7yGSJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaXotNQAKCRBVnxHm/pHO
 9WDuCACcvTLvfMeR/n6MQQCFzYUGzhc5g0cX7wrTE95npc4sFrWjI0wQKvBG0GHgVWJiXlx9dsj
 677q6U/bW9rLCeZulg+DGSW32sg1kLyB68QpFoDAfEjwGFtDHdsJ2TP+v4fLmcfI1GtOYPwQOLM
 96Sj5bs8fyDEWXabaFadqIE/N2sXOkfxVxQxkxiRXovHCJ9BnqEd0kWC5xbZnnR09Ft9Nv6vxKy
 UpUaWQ876MCJXP6+q0e2tyDGPxMT2j3aJU5iQKiFi692tk6jO9IC85Z1qjg3BmCbYqxBL5V4kPO
 DH88TCj5/aoM/cwvGRPqWTQO5/PBzH1leSk9oTvlkaKnlWpC
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-GUID: P_k9SddZkIPzg62e7lNggs2VVX7f9Lr9
X-Proofpoint-ORIG-GUID: P_k9SddZkIPzg62e7lNggs2VVX7f9Lr9
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=697a2d4b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=F3mjE3T3/ow0zpRzCzjSvA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=0pvPJS888BSDkZzuOKoA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEyOCBTYWx0ZWRfXxzuvGyqQQZXk
 Uo0ZCj+1Gj7KR3MwZ1BV/VUxptLqco++ruYei++Lg/t9xDsJhaPgFQHlo4pSEeNUZMjyFyuCkUU
 SWVzrN/aOCVyAPrVYmODkeRD8V1h03bFSwGwMKfnSOBN+I+pPwPyvE87HfBROHARR+ARKzyrlFx
 W9heUWFW40Ouu3Cv+a7SA6nZtml8KRHgz7zd55rhRp/V0FsTOXLTExvRB77keAPwkqVuSkZ11Yk
 TnUl1hoaASAyIdVis8Ij0vAMjc9dzomi7cqoRw0JkJFFsuF67aUeMVT+VRz16LvPUkeVMLvi+LP
 lpkP/LRdXpXx3bhzouM0UBguSiNMFYbWNvB8CsdilaQehkgFNIA7UKHLx6LIfBCxm2lt31zEVoW
 K5G3tcvJk0XK+o9D8CHgtEohMXTO90TbKEwhvWkDYuag7B+UE/EoZK0RW1G/cgAD31A4HzIZjOO
 M7E1n6jTez0hFU7XpEA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_03,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260489-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AB4DDA46E3
X-Rspamd-Action: no action

The devicetree node of the PCIe Root Port/Slot could have the graph port
to link the PCIe M.2 connector node. Since the M.2 connectors are modelled
as Power Sequencing devices, they need to be controlled by the pwrctrl
driver as like the Root Port/Slot supplies.

Hence, create the pwrctrl device if the graph port is found in the node.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/pci/pwrctrl/core.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pwrctrl/core.c b/drivers/pci/pwrctrl/core.c
index 1b91375738a0..6f7dea6746e0 100644
--- a/drivers/pci/pwrctrl/core.c
+++ b/drivers/pci/pwrctrl/core.c
@@ -9,6 +9,7 @@
 #include <linux/export.h>
 #include <linux/kernel.h>
 #include <linux/of.h>
+#include <linux/of_graph.h>
 #include <linux/of_platform.h>
 #include <linux/pci.h>
 #include <linux/pci-pwrctrl.h>
@@ -295,10 +296,10 @@ static int pci_pwrctrl_create_device(struct device_node *np,
 
 	/*
 	 * Check whether the pwrctrl device really needs to be created or not.
-	 * This is decided based on at least one of the power supplies being
-	 * defined in the devicetree node of the device.
+	 * This is decided based on at least one of the power supplies defined
+	 * in the devicetree node of the device or the graph property.
 	 */
-	if (!of_pci_supply_present(np)) {
+	if (!of_pci_supply_present(np) && !of_graph_is_present(np)) {
 		dev_dbg(parent, "Skipping OF node: %s\n", np->name);
 		return 0;
 	}

-- 
2.51.0


