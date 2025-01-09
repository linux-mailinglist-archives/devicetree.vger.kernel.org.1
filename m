Return-Path: <devicetree+bounces-137091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B327A07761
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4043C3A8A3F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9403B218AC1;
	Thu,  9 Jan 2025 13:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="Oesz59UH"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278A1218AC0
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429318; cv=none; b=rei2eE72ScaZ73QOPedDUGxXRsVAx7eZzd7cWm+HA6L89O3h9v4veoKqVEGkCi6B4Z2Ke9C3rYNsiLe8HmOdhr7Wx3bL/v1EGe54nGb+0kJSlziL269AJYrMX6XYCeD+Vb543JPSgqoVWdKlSByP4mijD7M/ae9u+1ldqsu7h5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429318; c=relaxed/simple;
	bh=3z4V5ybLpT+xjDr+qnxjyHgY4D4/CYeGXidyOPPVLmc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VU/wMhDT9LU4npBR+6qxKQBgv4SVtMhS8vV07avOvq4YwX36WxrYQbupLt/o9/fYpokQOJOLUz7Q6DkF6F6zHnJb4TVf11xHMQQzfziOS1PCq5etwPQ2gV+ETZ+OQO7eDCzIOMPX+UHi3SNPZiSti/E6m4zYmGyewS5UWq6NZcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=Oesz59UH; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429316;
	bh=PZISBSf27wTtYLKEeEtnWRnUJBoKGGJD6tN4PU1vK5k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=Oesz59UHL30Dn3RJ45UbukBcujcbR1dijuT/kdvfctpy/yz/LwQJ7c+T82fF/1y1A
	 O/9VkxLf/wz+3OxeLy0lwx9fTR1n+4NfPpkcS7/t29yKksDcUurYmkb1wjipalJxGn
	 GfqCQgrJtPjlFDxd7BlJS/TBvidpQkvU00Hps/P/lMwhpi+LsXSimID6cb3ToW+v3+
	 hWE4nFJBRz5g8gli6bxbJlUepOZ5ZvfjHpI66i6zHhi1xFgXiU2bYtHoV+9U1EZM3v
	 TF6jTIEmV3YFH53xjOtD62wg/l4194CJ0MDNTVdjFvMNuLQYLX/CP2M8qocUmmFvdS
	 zrwhvAip41YtQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id B633834BA66B;
	Thu,  9 Jan 2025 13:28:31 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:26:57 +0800
Subject: [PATCH v4 06/14] of: property: Avoiding using uninitialized
 variable @imaplen in parse_interrupt_map()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>
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
X-Proofpoint-GUID: eWZFKMgtrvbEi97CK9id-c9GRRKqiE1D
X-Proofpoint-ORIG-GUID: eWZFKMgtrvbEi97CK9id-c9GRRKqiE1D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=920 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

parse_interrupt_map() will use uninitialized variable @imaplen if fails
to get property 'interrupt-map'.

Fix by using the variable after successfully getting the property.

Fixes: e7985f43609c ("of: property: Fix fw_devlink handling of interrupt-map")
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index dca1a3ebccae1093b2b11f51e8e692bca854d0e3..6245cbff3527d762c16e7f4b7b7b3d4f2e9ddbe6 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1391,9 +1391,9 @@ static struct device_node *parse_interrupt_map(struct device_node *np,
 	addrcells = of_bus_n_addr_cells(np);
 
 	imap = of_get_property(np, "interrupt-map", &imaplen);
-	imaplen /= sizeof(*imap);
 	if (!imap)
 		return NULL;
+	imaplen /= sizeof(*imap);
 
 	imap_end = imap + imaplen;
 

-- 
2.34.1


