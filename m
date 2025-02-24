Return-Path: <devicetree+bounces-150457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C03A42306
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 15:30:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB8EE188C5E1
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCECB186E54;
	Mon, 24 Feb 2025 14:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="g/L/E01V"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011501.me.com (pv50p00im-zteg10011501.me.com [17.58.6.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E0817C21C
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 14:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740407318; cv=none; b=bYA8xyDfJ6wZy49HKBunGW690DQowNZ6Hp5ENJNpe2q6uwiJ8tkx16UyYVNm2cveIZPT8Bb4UK9fpv6GMpwkNTD9SR+YOa/WxWAv/Rg6vns5tHUgzIovtWrfg57eZasVpm+pwS9Bc0eAatfHiFk6k5OGxd2xvlqgdPihtLGmAHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740407318; c=relaxed/simple;
	bh=oOm1FU6bnGwCzq6hDTWsx6pFHsKwB8TyNvtEkuEDz5A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kw8bCVZc103e+jqXlRa/d+ZU0UzMoYfb0lQG/ZnLXxZCid4MNZRjPOhVbdOyA+XHP26BJh1T7beTnofEOcjj++Nmm6YOL8vd/iw4v1fpoEW56jJBl4WGokZotIjyO+giDKE7ZdHbwobgYQINPReB0e3OKBVZnzeRxDE2jRPoVD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=g/L/E01V; arc=none smtp.client-ip=17.58.6.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=zx7MvlB6HU8Mone1UvhmXub58CbDSzOvGiV2JBKE2U4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:x-icloud-hme;
	b=g/L/E01V8FGxZOKgANrpGazYxXi0CW/GwTeo5EfmWANP7kCOO5WVyLjUbAGQq4qP0
	 SwJvb+a1DYGi1q7fjbun1nskPZCVbBTx7mPfA50ZuEwilrYTeooRuSN/b4RbpdZE2q
	 xdX5L4+api1iqvhIyzOe61Ao98iB3LmrQU9Cbc3dqw/1mCyKxFN47UV/G3Pa2ni2/8
	 8xS323BgLKM1ycQR0cmkADWNPIBLGKVGhXmNhnW/0ES151setkafqki/z3vODaoPFU
	 Eiz2eADSsOPtmTwIXd94dQxkjji+wWPdUhJRS5xIPqvDmpG0Ffmggpu2dtwSJ8EohC
	 NFeaZFYOjmWMw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011501.me.com (Postfix) with ESMTPSA id CE0714A0446;
	Mon, 24 Feb 2025 14:28:33 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Mon, 24 Feb 2025 22:27:59 +0800
Subject: [PATCH 3/5] of: Correct property name comparison in
 __of_add_property()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250224-of_bugfix-v1-3-03640ae8c3a6@quicinc.com>
References: <20250224-of_bugfix-v1-0-03640ae8c3a6@quicinc.com>
In-Reply-To: <20250224-of_bugfix-v1-0-03640ae8c3a6@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: f8g7UmWd-tUBLPefCfnrNeoZNjUjwumV
X-Proofpoint-ORIG-GUID: f8g7UmWd-tUBLPefCfnrNeoZNjUjwumV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_06,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0 mlxscore=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 mlxlogscore=846
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2502240104
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

__of_add_property() compares property name by strcmp(), and that is
improper for SPARC which wants strcasecmp().

Fix by using dedicated property name comparison macro of_prop_cmp().

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 001ff6ce4abf85c07f13649d5a9f691f549a8ccc..c810014957e81171675b63f25eaabe391cc903e4 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1651,7 +1651,7 @@ int __of_add_property(struct device_node *np, struct property *prop)
 	prop->next = NULL;
 	next = &np->properties;
 	while (*next) {
-		if (strcmp(prop->name, (*next)->name) == 0) {
+		if (of_prop_cmp(prop->name, (*next)->name) == 0) {
 			/* duplicate ! don't insert it */
 			rc = -EEXIST;
 			goto out_unlock;

-- 
2.34.1


