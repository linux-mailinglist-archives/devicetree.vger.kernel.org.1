Return-Path: <devicetree+bounces-262869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEN7IJ5BhGng1wMAu9opvQ
	(envelope-from <devicetree+bounces-262869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:07:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D813AEF443
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBB6230137B5
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 07:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72DA35B156;
	Thu,  5 Feb 2026 07:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sgh37Aov";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FO8s249f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB82334C14
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 07:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770275225; cv=none; b=AApOFTbqTY6GdxAi5wyNDIRcTR9Oxp6z+MYkdeZ6A1ttBWNA8zAPNme/mkUv0uO8Nc63cAH83xo5rzokBk6llhF5jJBvi8flJNXN1XxxNZ6OwO7Hzu1ujHZeyGQP8go9hXi3oDd/zntaS9HMGhp3/iRNsv0mri3VRVjIJKSCn2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770275225; c=relaxed/simple;
	bh=fq2wpiZ773IOFc7fxWAh/SMh/YI/JwX8itDPQ/RWkNU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Wvb1F5MSec4LFCgIlQbu73ig9y/Vp9XOoQP+wwnIG41ZTLzgmb5iquA0WmSpjJkJAtX5sMrowd4vuknc1jJ87jopwFxADGJ/jiV7g07seFMpcbvtr+2DFWAG3BASURJ0rG9j46b9h1sb9I0bDLQhaG/tO7LfvynoKpkvmFfZByU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sgh37Aov; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FO8s249f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dstw2713101
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 07:07:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5FKJB2P6HDciMpPvjhiKmPzzy+VBOE2ZMev
	xnuattbg=; b=Sgh37Aov/IsnLYfc1fPG866Dvpk3PX36Dp8qrHTqkRoGnICBn/I
	BR+wbCoBEJdh0yNTc77RYwN20ZM8cZuCVqKWVNwB/AaTmuRW9T1s4LV4SK12qahD
	s6/8LPZ+vqxbcgMAjecSOKB8Tb3SN7qL4Ql0iGHsvuGsTGVDmhnK4RnEIsE9RNDX
	l3flv9L3CIpn9Xj7RfpqGgAt90w2Z4shXqsSpANNJzgcmBlxkjzqnFMCgAFkxsvM
	WWI9XWf6udCRWGs8Skb7DLJhagANI44AivQ+r3IQ8oef3CA7qqIsBjuj/QVVxOz0
	P8zCHBWqIbK/ogVd5DRogc/XR0/413rLoKw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c47ja2tg5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:07:04 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-353a5c295e4so1381260a91.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 23:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770275223; x=1770880023; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5FKJB2P6HDciMpPvjhiKmPzzy+VBOE2ZMevxnuattbg=;
        b=FO8s249ftZFb61jMvfZhSQg6Xlfrfw4Qxt2icGrr1rcODNLWTQnDSx5HxYZAbQV6aN
         jRXNa7OrjON54i4NzU5j2ozPVZEAFgmt4/JkHPWtBKXBGP9zRYQ5cad708IYPkRfdH4e
         LHksNkJn0CT2E911K54UDAlpFU2tYc2FtCHog5aEAHZk2yQ4sssuUZuwlKU+qYm6UHlz
         DZi2mfKHb1kJLdd29E7TdCn5kCJ20lXIoB7a8fCVjmnhE53OaRee/2on7sZWBivJxB0Q
         KG5oIx/xmIGB57f7tBJFkVrCNeYZZfYfZeVfmkoFCA2ycf0T2WPYedLkktg5g279/7og
         /h2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770275223; x=1770880023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5FKJB2P6HDciMpPvjhiKmPzzy+VBOE2ZMevxnuattbg=;
        b=sH9sgMAhplT4llSLPFWxLpMg7XAbJsqUyTzri5Vaw8zPRym1uHIEmSL8Dbv4NmhLEK
         UX+JOVCvoUI25wHUL31z5wMqqhp7VrCcpEYY4jdI8R61+WPNmDmfGkS8aPHFq/OCWnJL
         LGONhyed1DW4R9bO+M/+fs7F3nP2UokVvKK35wIwB+ARGgAiWDPwg6FabVR2jz8r8jLu
         0ENG21nAkjqIdlFpdXA4Q+rLmpOVZG7EjE5ikY8gfFPosudrWoE+Eob6SMcVkkzUzZrj
         QF60MfXdo0kVmmYkhAiXEhVio6LlGqOGBWM8GxETWBRXsJ7wShdRuoB0uhiUHA6t0E3U
         rTaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlVFuwPcR+MQS7mwwvRo168LBynIDHCMHiPRC4TJNre2XrNApNTUKVTij18XclbkUqB7zmhN/AjM0e@vger.kernel.org
X-Gm-Message-State: AOJu0YyEI+bNAJTKzMJb7I8Z7gsqXzV6kIiX9yW2B3E7hKnlDP8MK3aP
	oAlmMw4cA2oSKCkg0yk+ggeOf7f4KNEHVaYmDpwK37m4iTl91wy0ToZs0NtDmZHU8MlWH0DMn+p
	Qg7gpJDJPbaEc7kSJI/FOVCHpPAFwtJBVtdkamZ33ERSbid6jFruF8QJRD1nq6Qal
X-Gm-Gg: AZuq6aJoK9ksdLMXQ6cC0hbtJNMRubEBInV2zliEmW+ovanQcvoEB3YiJcyKG1orwYQ
	9uSPYdguYLnujhZg/HI64H0pDAVFEB5oXqGAzJ99spbs7i9drOIkRt339bQEbRkb64KjxB3I8d/
	xyDw0SXLqxPc+Py4KjRoJ9PThSOpH3DlDZHB6JUkFWokLpwbg03dnaQZZ5dirvRQuUf2MczWWeR
	wcvIak8k3XELuQ3KMLMYCUuXjvxohpXkzVk0tztuOdCBZKrME0wui27EXb8aZnFUUl9uYD2fb1w
	jdnYhRccKzFXY3C485GgTtg5w9yHLwqAqmf8CMjyYq/oNFPOl1i5WT1UQk3tPUPPFpVp7fwZUR+
	4KZdW9yNsyO71avKDJArv2TgYsVGnrWwxrxY=
X-Received: by 2002:a17:902:cf08:b0:299:daf0:e044 with SMTP id d9443c01a7336-2a9417aaef0mr22899395ad.18.1770275222919;
        Wed, 04 Feb 2026 23:07:02 -0800 (PST)
X-Received: by 2002:a17:902:cf08:b0:299:daf0:e044 with SMTP id d9443c01a7336-2a9417aaef0mr22899065ad.18.1770275222352;
        Wed, 04 Feb 2026 23:07:02 -0800 (PST)
Received: from work.lan ([2409:4091:a0f4:6806:a143:fe87:de49:8a5d])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c8553e888sm3819165a12.31.2026.02.04.23.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 23:07:01 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: robh@kernel.org, saravanak@kernel.org
Cc: andersson@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        qiang.yu@oss.qualcomm.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH] of: property: Create devlink between PCI Host bridge and Root Port suppliers
Date: Thu,  5 Feb 2026 12:36:40 +0530
Message-ID: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 2W5ZcAmBEpSxFvb77euNwThCYr2FY3xr
X-Proofpoint-GUID: 2W5ZcAmBEpSxFvb77euNwThCYr2FY3xr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA0OSBTYWx0ZWRfX1JmxpZgLJiZ/
 rAd7xhdHPp2fr4tGKu1QLjTm9DgXTSETt9CDN2YN6VQjeFmBJ/9hkmwfQ7sjRQ6V6uwPqey/dZW
 W7PPN8GaCaUJY5OV3HUm9hBDmAeVjMS95WdeLZQC773iCpc5qn0RPwUYxKVFkb7QgY3EQOHD1U4
 5TND0g9iID00WoyLrZGPV2kF82zByMtEx/g2NZenL0SvNk0wMft1+VceSBtSVw8hI1nWbHKJ4CV
 0ryq1v7EjBXf3kEnu0TeRYhnFAG6R1io945Ntp50xst1az3qbLJcg6TCKEjcfrIuVeOj+ld2Ljr
 VxioiAvyc8D4AoTxYq+VoG+43p6IbvEtx1BxdnmKOkmnIWamm0MgMQ61OD70awS7cldijQW7/ER
 pV+Y0gVD/x1RqRkledrjfjuDdFLhLsGZySYyrE2lgXMGcu6npCD+weU0eUF5VLRtr68pcq7/OoB
 6f2Hhmtb8MKVjgTXylA==
X-Authority-Analysis: v=2.4 cv=a8E9NESF c=1 sm=1 tr=0 ts=69844198 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=n9glyVbX8GFbeWSgBHEA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050049
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262869-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D813AEF443
X-Rspamd-Action: no action

In the recent times, devicetree started to represent the PCI Host bridge
supplies like PHY in the Root Port nodes as seen in commit 38fcbfbd4207
("dt-bindings: PCI: qcom: Move PHY & reset GPIO to Root Port node"). But
the Host bridge drivers still need to control these supplies as a part of
their controller initialization/deinitialization sequence.

So the Host bridge drivers end up parsing the Root Port supplies in their
probe() and controlled them. A downside to this approach is that the
devlink dependency between the suppliers and Host bridge is completely
broken. Due to this, the driver core probes the Host bridge drivers even if
the suppliers are not ready, causing probe deferrals and setup teardowns in
probe().

These probe deferrals sometime happen over 1000 times (as reported in Qcom
Glymur platform) leading to a waste of CPU resources and increase in boot
time. So to fix these unnecessary deferrals, create devlink between the
Host bridge and Root Port suppliers in of_fwnode_add_links(). This will
allow the driver core to probe the Host bridge drivers only when all Root
Port suppliers are available.

Reported-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/of/property.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 50d95d512bf5..10d041ea61f7 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1561,6 +1561,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 /**
  * of_link_property - Create device links to suppliers listed in a property
  * @con_np: The consumer device tree node which contains the property
+ * @parent_np: Optional parent device tree node requiring child's supplies
  * @prop_name: Name of property to be parsed
  *
  * This function checks if the property @prop_name that is present in the
@@ -1577,7 +1578,8 @@ static const struct supplier_bindings of_supplier_bindings[] = {
  * device tree nodes even when attempts to create a link to one or more
  * suppliers fail.
  */
-static int of_link_property(struct device_node *con_np, const char *prop_name)
+static int of_link_property(struct device_node *con_np, struct device_node *parent_np,
+			    const char *prop_name)
 {
 	struct device_node *phandle;
 	const struct supplier_bindings *s = of_supplier_bindings;
@@ -1598,6 +1600,10 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
 			matched = true;
 			i++;
 			of_link_to_phandle(con_dev_np, phandle, s->fwlink_flags);
+
+			/* Link the child's supplies to parent if needed */
+			if (parent_np)
+				of_link_to_phandle(parent_np, phandle, s->fwlink_flags);
 			of_node_put(phandle);
 		}
 		s++;
@@ -1632,7 +1638,21 @@ static int of_fwnode_add_links(struct fwnode_handle *fwnode)
 		return -EINVAL;
 
 	for_each_property_of_node(con_np, p)
-		of_link_property(con_np, p->name);
+		of_link_property(con_np, NULL, p->name);
+
+	/*
+	 * Supplies for the PCI host bridges are typically present in the Root
+	 * Port nodes. So parse the Root Port supplies and link them to Host
+	 * bridges (identified by the presence of "linux,pci-domain" property).
+	 */
+	if (of_property_present(con_np, "linux,pci-domain")) {
+		for_each_available_child_of_node_scoped(con_np, child) {
+			if (of_node_is_type(child, "pci")) {
+				for_each_property_of_node(child, p)
+					of_link_property(child, con_np, p->name);
+			}
+		}
+	}
 
 	return 0;
 }
-- 
2.51.0


