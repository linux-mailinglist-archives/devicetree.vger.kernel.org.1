Return-Path: <devicetree+bounces-137099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D6CA07778
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF5AF3A1D70
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3054D219E8D;
	Thu,  9 Jan 2025 13:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="Z+XkuKxM"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19BC218AB8
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429368; cv=none; b=QM/7PfrmNC1IOJnNBABso+zljwKe6p/OcsG2ezsvh8X3VSoimeQ3GhTrI0P6KPvbhFMw0T4/xQKgWzl8Wxd/Ee+V8tqg8ocUJcp/l0lHxfEGEUofQYdmR6QPdHaGFkTTXA3f+ZO2j2V/Gvk52vz8B1uFlMy/pchhKiLlG2GCJJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429368; c=relaxed/simple;
	bh=psKAXNfWMkbLuX2WW3Qdc2tcwLQrqwBHOlIebl09gBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EJ65bQM9uIm+HUA+DPWAXYDAB5XUJCtYSHYNwEh9FI96+NNcgdNSRUPC6tdhTyJbq2+wZSG8kT7cxEK2weZ24BBqbkf4POt96Quc46pMz6Zsu89c8NGXnnJHqZ6j39Dt5RVpvJem3hL/mZJN5oBTMWuZGfl+uXn/5qOTR9Z9yRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=Z+XkuKxM; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429366;
	bh=t46Kq8JuBMjqD2GMAPFOubmxphOD1VWA7qYalmBy6T4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=Z+XkuKxMNMxtZFUq/KfukAB5D05jZwf0aWOEqjgpRYVnh+sHYcypx5/pGk9UVdakQ
	 nPZfIgh0+GjL16Uw0PXVtgqmPsIlW8ZvJ9yPSuP60TK9dOgPmckqB+2vnEjHNSSQHW
	 DxXxyRs+C3hiJBHOpjzqVdcIFuDdvAnkZGbad3/GzgHWe/ufXNewEHDlVeU39i9Lxl
	 m+DLEL0MnAcNwjK0yxMpFeHpyfc49YpGhyKsLt2xhIAvqKcuH1hYnPiFJ5hgJuSH38
	 PZS7vtcWjuva2acoweH8Zh8Al3MQaoI1zWIPdwPddC3LwBe9hFxcqBtzXcP2+wUU9f
	 HUorP41tW4qkA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id 7C5DF34BAAE8;
	Thu,  9 Jan 2025 13:29:21 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:27:05 +0800
Subject: [PATCH v4 14/14] of: Improve __of_add_property_sysfs() readability
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
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
X-Proofpoint-GUID: qVAveBVSFTC5AwsLhX5zD_O3HrdYoxhC
X-Proofpoint-ORIG-GUID: qVAveBVSFTC5AwsLhX5zD_O3HrdYoxhC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=909 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

__of_add_property_sysfs() hard codes string "security-" length as 9, but
that is not obvious for readers.

Improve its readability by using strlen().

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/kobj.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/kobj.c b/drivers/of/kobj.c
index aa887166f0d21030d620d43c864ca76cde1c6d05..44bfe50c6ea6503e3940578de1dfc7fe0583dfb3 100644
--- a/drivers/of/kobj.c
+++ b/drivers/of/kobj.c
@@ -62,10 +62,11 @@ static const char *safe_name(const struct kobject *kobj, const char *orig_name)
 
 int __of_add_property_sysfs(struct device_node *np, struct property *pp)
 {
+	const char *security_prefix = "security-";
 	int rc;
 
 	/* Important: Don't leak passwords */
-	bool secure = strncmp(pp->name, "security-", 9) == 0;
+	bool secure = strncmp(pp->name, security_prefix, strlen(security_prefix)) == 0;
 
 	if (!IS_ENABLED(CONFIG_SYSFS))
 		return 0;

-- 
2.34.1


