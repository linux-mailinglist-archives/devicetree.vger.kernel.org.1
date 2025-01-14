Return-Path: <devicetree+bounces-138506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E106CA10AA5
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 16:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05E5B188221D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF931B0F2F;
	Tue, 14 Jan 2025 15:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="sYZ/B44H"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10012101.me.com (pv50p00im-ztdg10012101.me.com [17.58.6.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1191B4148
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 15:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736868222; cv=none; b=JC2QtU0aNXaE/lJLeGVIWRv8eFMXjgvHjUyK+gMUj25MKbQ/g9XbKSjXS+f2Wglgcd6w7hagoNBxKrLwbvEUP0MPv2HObPqYDOxJBvjIVs2BhEdkz5mo+aRATKWxTV6wrqK8zryyZmxTG/Ithihf9IC7RuYrSH66z4LEpXSU+0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736868222; c=relaxed/simple;
	bh=d1s9ZfvC1jghcNOdLj6ATp7UMx2J54qBMdja9wmUxhE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LAbVdwoSb3XyP0ZhB42PKyUHaDUxHXgrVVmAmlzKG8jsvp3lGTB3SVuvGuhdiutUN5uu2Tw1uw3p9Pn2JOf24+svPLEfsDiAIYC9oz4gj/GWP7FKbaMedx7RFeuYWExV3lrZtaxV+sGB2v0I/NNX/+eiMmDkzCi0zoNtkXxi+X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=sYZ/B44H; arc=none smtp.client-ip=17.58.6.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736868221;
	bh=w16vMjwdN8Ia+lnbvpB82rHqjNQzRwERV77jgJ4m4ao=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=sYZ/B44HfzJd8YKhuF0TR2/jowaxKrSNPjOFkbLlUsIXPPDh95kboknOBEqPnONA3
	 kG+eQ1zo3fR+UY0DK2LQfT+GFhCRv3w2byPuJM23/euJbBvW65xPPxnEs4Hk4/BO4P
	 dED5U+2Oo7gbeax6O7qrvq4u7hX0RDZ2PPwieRu7izPkwlHTJeX2o2zzFXb7bUzVLc
	 o5oCSjA6S6ZYOS5j959J2GPF2cbK1FQsKFH2wkr2mofIdJrw1O2/vMSsJU75JpHaIo
	 hmjExEw2Tu6Khy40DoLbfWm5BHpZjne9BlHI6We0Yn747LwFIKhr0U3+EFmgfI7YA2
	 E4fkmlReZDvlw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10012101.me.com (Postfix) with ESMTPSA id 591C5740369;
	Tue, 14 Jan 2025 15:23:36 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Tue, 14 Jan 2025 23:23:05 +0800
Subject: [PATCH v5 3/3] of: Correct element count for two arrays in API
 of_parse_phandle_with_args_map()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-of_core_fix-v5-3-b8bafd00a86f@quicinc.com>
References: <20250114-of_core_fix-v5-0-b8bafd00a86f@quicinc.com>
In-Reply-To: <20250114-of_core_fix-v5-0-b8bafd00a86f@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: H3kdc_4ygtUMBEws7xV4wHIYMR9xf_pb
X-Proofpoint-GUID: H3kdc_4ygtUMBEws7xV4wHIYMR9xf_pb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-14_05,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=902
 phishscore=0 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501140121
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

of_parse_phandle_with_args_map() defines array @dummy_mask and @dummy_pass
these two arrays only need @MAX_PHANDLE_ARGS elements separately, but they
actually have (@MAX_PHANDLE_ARGS + 1) elements, One extra element doesn't
hurt anything except for some stack usage.

Fix by using (@MAX_PHANDLE_ARGS - 1) as max element index in initializer.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/base.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index f4ab4086b80f62c4d9ce428cdde042d0ed4febe2..2432e0f4646d1d829d5b94ae2d2b1717afe286cf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1448,8 +1448,8 @@ int of_parse_phandle_with_args_map(const struct device_node *np,
 	char *pass_name __free(kfree) = kasprintf(GFP_KERNEL, "%s-map-pass-thru", stem_name);
 	struct device_node *cur, *new = NULL;
 	const __be32 *map, *mask, *pass;
-	static const __be32 dummy_mask[] = { [0 ... MAX_PHANDLE_ARGS] = cpu_to_be32(~0) };
-	static const __be32 dummy_pass[] = { [0 ... MAX_PHANDLE_ARGS] = cpu_to_be32(0) };
+	static const __be32 dummy_mask[] = { [0 ... (MAX_PHANDLE_ARGS - 1)] = cpu_to_be32(~0) };
+	static const __be32 dummy_pass[] = { [0 ... (MAX_PHANDLE_ARGS - 1)] = cpu_to_be32(0) };
 	__be32 initial_match_array[MAX_PHANDLE_ARGS];
 	const __be32 *match_array = initial_match_array;
 	int i, ret, map_len, match;

-- 
2.34.1


