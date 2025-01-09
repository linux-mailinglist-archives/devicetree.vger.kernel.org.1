Return-Path: <devicetree+bounces-137089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F749A0775B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A977164D72
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0B5A218AA0;
	Thu,  9 Jan 2025 13:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="aH/3opQg"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4A6219A74
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429306; cv=none; b=QALEZxQkre/iZSEABHc2xb1eT20IGnSsKOZUuyhnN9nWUt9+RSn9b3vKkMVx0EqGL5ML9aVtMGZtH+Ng3xLHg9mxxPwkRXgUa5SQa16Mb7l/AGdJ2VJ1km0IRN3lLhvLWgwf1cybhzag/wy0ODCudS8yoskTwm1u6OAsFgb8yJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429306; c=relaxed/simple;
	bh=80kccgYvnj9G84Nx3IR+WA53NzpjDh/0RaEOK5puNy8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VjuBvczoJYMgttxw7rH8RPpFcEVSK+5PUVIm4u88HcmMxqV4rJ0/RSxeZtor5T85jUP9TzvuroYREidw9b1zSiKfwN5bwXwvkfvEt3x4ttE4S/3cXSDVA2HsjfZ35/cZHUUuOxN72MxQUHBBO4ejF6yTuXZCSuMiTL/jJfuCtRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=aH/3opQg; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429305;
	bh=lMZVZTNsgFOCxTCYXq6jCFsMl6EKNzODNeFIS1bvHJg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=aH/3opQgZzMKVDIwkHeb7UgA/QKLtOoWv2DXfz0sLNhxXUxyL9IoPe67kJXvaEtk3
	 tivjr77641FrzPoQFAplN26KJ3bZk8wqGHg8v7cdsxjwWNt4wivutZK4ycGBLmipY6
	 6RVqhfu5ctxvmV9HdrY94Nqo03uibQdhio/dLmaeo0AhYrIJZoITXRkIu4dUqDfSZQ
	 mBLphN6Sn8c8oysbS84/Wyw2VwM1P60qofeO3XMkZP5n7AT5wphrKX5UzUZiLJ0rVh
	 LlY2S8By6pxclswvAzRabPNg2FQ/4vVoOLgUu/mduQEr6wix0PUPCmY5wQgfQyY/0y
	 eC7Hc217YnC3w==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id DD5B534BAA77;
	Thu,  9 Jan 2025 13:28:19 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:26:55 +0800
Subject: [PATCH v4 04/14] of: property: Use of_property_present() for
 of_fwnode_property_present()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-4-db8a72415b8c@quicinc.com>
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
X-Proofpoint-GUID: hxgLa_XSkJDj_1KlQ5Jg57sJg8To2bAN
X-Proofpoint-ORIG-GUID: hxgLa_XSkJDj_1KlQ5Jg57sJg8To2bAN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

Use of_property_present() instead of of_property_read_bool() for
of_fwnode_property_present() since the former is more applicable
obviously.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>

---
Hi Rob,

i pick up this change again after some considerations as below:

1) of_property_present() is more suitable than of_property_read_bool()
   here, deprecated API is not main reason.

2) it does not conflict with your job which warns when use
   of_property_read_bool() for non-bool property.
---
 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 519bf9229e613906547b57d8c68e7b8558eff327..dca1a3ebccae1093b2b11f51e8e692bca854d0e3 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -966,7 +966,7 @@ of_fwnode_device_get_dma_attr(const struct fwnode_handle *fwnode)
 static bool of_fwnode_property_present(const struct fwnode_handle *fwnode,
 				       const char *propname)
 {
-	return of_property_read_bool(to_of_node(fwnode), propname);
+	return of_property_present(to_of_node(fwnode), propname);
 }
 
 static int of_fwnode_property_read_int_array(const struct fwnode_handle *fwnode,

-- 
2.34.1


