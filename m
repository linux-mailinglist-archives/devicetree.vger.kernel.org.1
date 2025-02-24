Return-Path: <devicetree+bounces-150459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5FCA42312
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 15:31:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3949B7AA06A
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D2B17C21C;
	Mon, 24 Feb 2025 14:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="tTiwJnBW"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011501.me.com (pv50p00im-zteg10011501.me.com [17.58.6.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CBE18950A
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 14:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740407324; cv=none; b=q2zljvPRRhJEPPf/g1iQN0vCS8g7NkT+Gn6UkZ9wIT6OJjATcEfrYOfpN1BydEz0JAQjvyt+4UG4qAgaO8V71xzdVYb2ucR25xdGKrkmS7bIA4v3juARmJWqXOm4EX8ZL68zMVa2AI9A3857ntn+rzvAph07a1Kw5Kbn5mmbxYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740407324; c=relaxed/simple;
	bh=ybdGidDMMARstNJjmL2Y9lZwUtBE5WDst4P9wmI55WQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rlhS6avvcnmMt0p3XN79KKDSgwlyRAKmdwaC5n21+3SDp9IhJJLC+w/XAqlg0Bk2np0TrQ5hswqL366L5ev7dwJbpQNqmsf+j/5wGsLimPWnZ1smAf0r5+b0sDszAWAhyj0lKT62Gjy+EHmerxLAvUHEcdJrmgq1BeDrCNSfWAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=tTiwJnBW; arc=none smtp.client-ip=17.58.6.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=/83hjhNrUe8nENtR9sKze0gL5j9ZTF3LM/sVQ4s0mdA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:x-icloud-hme;
	b=tTiwJnBWTJCI3NXr9V1a/oPqoiY5KZX2rZ7dmgq9ljTihpPw5rXZfsSidOV6h6rSU
	 fuVJKbvzTMN9PFJFYBJx/AJppwzBDeuvHKSQK4WqbTL3L3WW1bDEHUAsMjGAnnrs8x
	 RzI2unsCwz5iT73g1CnIMSvdluqMEdf7AqJ1Zz087GD458kyUNZfICcQD0MuGLJC9P
	 gA38TMyM3amYUPof45wlcelvGZImJf4usJ+viuXDTu7bMuvDguKJnjFzfOAWZWQbqK
	 F/0Z4R2v1jHPIak6onAlpgbiHw3xQt5W23eZLvL6h3/4pA4LvPPXZyKChszU74c9XT
	 qWc/6ZU92c/aw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011501.me.com (Postfix) with ESMTPSA id C2A2B4A0429;
	Mon, 24 Feb 2025 14:28:37 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Mon, 24 Feb 2025 22:28:00 +0800
Subject: [PATCH 4/5] of: Do not change property state under
 __of_add_property() failure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250224-of_bugfix-v1-4-03640ae8c3a6@quicinc.com>
References: <20250224-of_bugfix-v1-0-03640ae8c3a6@quicinc.com>
In-Reply-To: <20250224-of_bugfix-v1-0-03640ae8c3a6@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: pIZTEKEm3iay74eJglrzwHvFHeHPxKFp
X-Proofpoint-ORIG-GUID: pIZTEKEm3iay74eJglrzwHvFHeHPxKFp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_06,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0 mlxscore=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 mlxlogscore=653
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2502240104
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

Do not remove the property from list @np->deadprops if
__of_add_property() encounters -EEXIST failure.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/base.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index c810014957e81171675b63f25eaabe391cc903e4..47cae6e48a48a7e1312c25fc5267bcf39102bbe9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1646,9 +1646,6 @@ int __of_add_property(struct device_node *np, struct property *prop)
 
 	raw_spin_lock_irqsave(&devtree_lock, flags);
 
-	__of_remove_property_from_list(&np->deadprops, prop);
-
-	prop->next = NULL;
 	next = &np->properties;
 	while (*next) {
 		if (of_prop_cmp(prop->name, (*next)->name) == 0) {
@@ -1660,6 +1657,9 @@ int __of_add_property(struct device_node *np, struct property *prop)
 	}
 	*next = prop;
 
+	__of_remove_property_from_list(&np->deadprops, prop);
+	prop->next = NULL;
+
 out_unlock:
 	raw_spin_unlock_irqrestore(&devtree_lock, flags);
 	if (rc)

-- 
2.34.1


