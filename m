Return-Path: <devicetree+bounces-137090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 423CDA0775F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:29:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E55F3A87B6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2598219A8F;
	Thu,  9 Jan 2025 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="zy7rSUXm"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB8F218AB2
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429313; cv=none; b=XoWtxWGH9gFT2jmD+okg2wi9RWohWyJ/DJoUFamN7ZwGAzl5uH9fHDAgZviGtfuVbGEjOxsngrBJAKIJUjQrW4QwaHlf5fF5D5MgArn/KBnudTRmiImcjnfbr+phYVETRo3xvN63s08F9u9SQpjRqKY3EOryU83nZlSH41m9seE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429313; c=relaxed/simple;
	bh=bc6lzGgIEQ1cBkFQ7KiFXTLCSQur3IQsBxM4lNEjjT8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=scYQBLmCX5p3CoH8ruflNGaPP0Mbo4tTMDPlrv7cfNFZBiD3ANuYRRPJSapl6Qbp7G3V+rix4okfxauXeCQhkjUE/tA/Zt8szdlWCZ9JqLta35foDu+rqc9OsDzLEJmmLn4OHK0CRkSkN/n99jUq4Jdj9JG0eecQe1jzqKSgahM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=zy7rSUXm; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429311;
	bh=2a/BC8NRIh0uh85HCJfRd8BdlVkBEXk7Aqyv3gynJAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=zy7rSUXmkus7HexLxBcV84qoD/XumqA+L3xN522a38Gqx5OXRR4Izkn2IDJ+G5UD8
	 dIwHfvkTwx9ia1aqXTfS8d/4Qsa7YyRYmq2C50gsNk78MX0Mc/rS7yjxJDRgn7jgEG
	 15Rh8zllyG395g/U7AP9rU5m2RBoyTmEGRXb9pwAs3pyquXpoILw3+kwDr+wfms3hB
	 N/XkiK1oea3JUxhztA85BLqONx8Da0U6PSguoNlzVnkkmzvVJymaQLMVQ04U+31bxE
	 rJTH/tHRsBJ6lN+ChNw6RA+muYbnTDXFkIdTnMbZ+/9Mph+c+81lQCprgbG4edVOp6
	 +RCyDyubgXGkQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id EF7A934BA9F0;
	Thu,  9 Jan 2025 13:28:25 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:26:56 +0800
Subject: [PATCH v4 05/14] of: Fix available buffer size calculating error
 in API of_device_uevent_modalias()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-5-db8a72415b8c@quicinc.com>
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
X-Proofpoint-GUID: 34RVrnDgEFOXyeM9Ufz85vXOBdzZSPdw
X-Proofpoint-ORIG-GUID: 34RVrnDgEFOXyeM9Ufz85vXOBdzZSPdw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

of_device_uevent_modalias() saves MODALIAS value from offset
(@env->buflen - 1), so the available buffer size should be
(sizeof(@env->buf) - @env->buflen + 1), but it uses the wrong
size (sizeof(@env->buf) - @env->buflen).

Fix by using size of space from char '\0' inclusive which ends "MODALIAS=".

Fixes: dd27dcda37f0 ("of/device: merge of_device_uevent")
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/device.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index edf3be1972658f6dc165f577da53b10c7eebc116..f24c19e7aba8e01656f503ae328a4e08aab5a5f3 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -257,6 +257,7 @@ EXPORT_SYMBOL_GPL(of_device_uevent);
 int of_device_uevent_modalias(const struct device *dev, struct kobj_uevent_env *env)
 {
 	int sl;
+	int pos;
 
 	if ((!dev) || (!dev->of_node) || dev->of_node_reused)
 		return -ENODEV;
@@ -265,13 +266,18 @@ int of_device_uevent_modalias(const struct device *dev, struct kobj_uevent_env *
 	if (add_uevent_var(env, "MODALIAS="))
 		return -ENOMEM;
 
-	sl = of_modalias(dev->of_node, &env->buf[env->buflen-1],
-			 sizeof(env->buf) - env->buflen);
+	/*
+	 * @env->buflen is pointing to the char after '\0' now
+	 * override the '\0' to save MODALIAS value.
+	 */
+	pos = env->buflen - 1;
+	sl = of_modalias(dev->of_node, &env->buf[pos],
+			 sizeof(env->buf) - pos);
 	if (sl < 0)
 		return sl;
-	if (sl >= (sizeof(env->buf) - env->buflen))
+	if (sl >= (sizeof(env->buf) - pos))
 		return -ENOMEM;
-	env->buflen += sl;
+	env->buflen = pos + sl + 1;
 
 	return 0;
 }

-- 
2.34.1


