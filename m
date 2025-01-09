Return-Path: <devicetree+bounces-137088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DA4A07758
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B02D83A7B38
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30BC218AAB;
	Thu,  9 Jan 2025 13:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="Zi16uDjv"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF00218EA6
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429300; cv=none; b=EHBzVahxZHDfZkkOPE5uQf9Bg3AodCicQqAwUdfCJ/X55FCUw2Rc9xImDGELGoq8PWV6USeImgKuxbfZoUiXdI7Ya56l9Ptu9Hw/ROgVUdtPu5JWK16dLv5fEGcDTnwsMvevaOzVHHcEvo1/jFLhxC6+9pAmNQUFd6gzFop8D0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429300; c=relaxed/simple;
	bh=hhxEV0PSOUDlgXbkxbGpMJBooUyQNe8CgBoY6/KKj6o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VwBVMuw64xKKGKVmzLbYhrLFJL/bTdIK+r0wCPVOfMZsbhRntZeWKOaMDu3uekFU/YSa319dmAKtrZpDV+bzS+BEScaxQu+OmhahFjlRzm0J7U4fEpmvWBJGlyVZux9o9fNMEiqhWHaJMF/cL7tKdxpAzYjD/rRO5Vg+4u9RnFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=Zi16uDjv; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429299;
	bh=voAtwf0WkjLnq9xLBA6Vyr9IuEpPzAqCBFAvUL3PwiI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=Zi16uDjv8tzlDOgqLsGRUKtbaiDQkm2oI4xcXVbpxA62idGQPw9Za5QVk0fNA882L
	 T5O+VZWoXlxuIpEz1VDL038ZhBuOY/ETKOKxKduo8ureX66zU+XvNHMZHLJQkttS96
	 g5ujxZe5gJQSo05RUQv7a5cYODW/OpSE2ya8XmJsJtrSiFb4W73ZJW9Jdvber0ZPKo
	 Dwe49p0/91NZU5DL/X4cQIpHfY7eygWuRVBtp7Vd3AZ+3aD3pw+twyEAIBmrd29mk3
	 sy6ZNYiTe8nA9zbAh1ApfzNp/4h5Zi2+Zy70qO56m2hFz59ySiJzrbcWfSTWYg7Wji
	 B2EVcF5PBmYrw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id 1934934BAA1E;
	Thu,  9 Jan 2025 13:28:13 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:26:54 +0800
Subject: [PATCH v4 03/14] of: Make of_property_present() applicable to all
 kinds of property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-3-db8a72415b8c@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
In-Reply-To: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>, 
 Andreas Herrmann <andreas.herrmann@calxeda.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>, 
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: R1MP36i3a-RVMZzTJ-h2CBM6pEAKwsrZ
X-Proofpoint-ORIG-GUID: R1MP36i3a-RVMZzTJ-h2CBM6pEAKwsrZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=792 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

API of_property_present() invokes of_property_read_bool() to check if
a property is present or not, and that has 2 shortcomings shown below:

- That narrows down property scope applicable to of_property_present()
  from all kinds of property to only bool type.

- That is less logical since it says a property's presence is decided by
  its bool property value.

Fix by making of_property_read_bool() invoke of_property_present().

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 include/linux/of.h | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/include/linux/of.h b/include/linux/of.h
index d451c46132b01efe6d4e0b6cf83a3e2084bb3ec6..fe5d7b74c23b9701743f5debc3d030b765bc914f 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1242,17 +1242,16 @@ static inline int of_property_read_string_index(const struct device_node *np,
 }
 
 /**
- * of_property_read_bool - Find a property
- * @np:		device node from which the property value is to be read.
+ * of_property_present - Test if a property is present in a node
+ * @np:		device node to search for the property.
  * @propname:	name of the property to be searched.
  *
- * Search for a boolean property in a device node. Usage on non-boolean
- * property types is deprecated.
+ * Test for a property present in a device node.
  *
  * Return: true if the property exists false otherwise.
  */
-static inline bool of_property_read_bool(const struct device_node *np,
-					 const char *propname)
+static inline bool of_property_present(const struct device_node *np,
+				       const char *propname)
 {
 	const struct property *prop = of_find_property(np, propname, NULL);
 
@@ -1260,17 +1259,19 @@ static inline bool of_property_read_bool(const struct device_node *np,
 }
 
 /**
- * of_property_present - Test if a property is present in a node
- * @np:		device node to search for the property.
+ * of_property_read_bool - Find a property
+ * @np:		device node from which the property value is to be read.
  * @propname:	name of the property to be searched.
  *
- * Test for a property present in a device node.
+ * Search for a boolean property in a device node. Usage on non-boolean
+ * property types is deprecated.
  *
  * Return: true if the property exists false otherwise.
  */
-static inline bool of_property_present(const struct device_node *np, const char *propname)
+static inline bool of_property_read_bool(const struct device_node *np,
+					 const char *propname)
 {
-	return of_property_read_bool(np, propname);
+	return of_property_present(np, propname);
 }
 
 /**

-- 
2.34.1


