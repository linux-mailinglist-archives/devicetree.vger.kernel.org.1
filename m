Return-Path: <devicetree+bounces-131209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C35F9F279A
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 01:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B89E1885A6F
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 00:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB2A1CA81;
	Mon, 16 Dec 2024 00:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="OroHDgbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10021101.me.com (pv50p00im-ztdg10021101.me.com [17.58.6.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A477417C7C
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 00:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734309729; cv=none; b=YNU7tn2tLVXGn735xh3pF7DeAyzafFWi8WwFi2fQHM8FyijRp6ZEmr4nD1ZaRBH89D0Y/ctaUc9WyqDSQF9pAwfMAOO9p0c4DLUbNT76kx3b+1cIYHZZHg9X/UkrrHdXwSv1wl8+DNWMBdgQwPEGWoujYdgCSpc9+8ZhsdMnagQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734309729; c=relaxed/simple;
	bh=PwJ9PFqWEHq/TOsJswnCkJZzL8dsehuJu7Miuk9kvTw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cdrH8v2mzLL7upgObfct1IVT84gmu1RUt3n1fig7mz+8KL6o5QGecsoEjf89wPrt0/dZHCrjpT9k7c3Mg9mEIf1JIcCXXGvRogvCQYoRytM4lEgDkG2f/LNknDF2JKf6z28O03VS2NifRdBAF9fgWnQJEFlxZ0ohfuXDjitnKbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=OroHDgbJ; arc=none smtp.client-ip=17.58.6.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1734309727;
	bh=1aTosr+ehgCRhF05kcISxBde7llaXDsgXEKu5O9zvdI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=OroHDgbJTpLKZuYSXoEIue0GmBFDwPT8G9p4J6cUC/zlqJT2nKi2/q6tF9uuPWyps
	 AGdWBQCu9QwnP4d38KCAqVaLdaw/NPO+Jp/NKXtCyxPm/u7j35C3p8ILfees7tIZCv
	 b102O8NUSRCg5OFWI6RLt6Buh7s7e9IvXpBRiY0pJj+sDcz93MVNfvlImLmSSwmgUm
	 MKNnBPX2CTqvl86c4NYsDqaQ0MWQipMQGBMYmpmYTyEUwXCAHP/rpv9YBoKPkk8vwW
	 qbsDMonr/DFhHDmk4wcyrXOc9Q8HabqLS3opNJhja65Nolj83NzmxMKaF8YBiqLBsy
	 34pJsmJ3RBRAA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10021101.me.com (Postfix) with ESMTPSA id 25F87D00318;
	Mon, 16 Dec 2024 00:42:03 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Mon, 16 Dec 2024 08:40:46 +0800
Subject: [PATCH v2 7/7] of: Do not expose of_alias_scan() and correct its
 comments
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241216-of_core_fix-v2-7-e69b8f60da63@quicinc.com>
References: <20241216-of_core_fix-v2-0-e69b8f60da63@quicinc.com>
In-Reply-To: <20241216-of_core_fix-v2-0-e69b8f60da63@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Grant Likely <grant.likely@secretlab.ca>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

For of_alias_scan():
- Do not expose it since it has no external callers.
- Correct its comments shown below:
  1) Replace /* with /** to start comments since it is not a API.
  2) Delete return value descriptions since it is a void function.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/base.c       | 5 ++---
 drivers/of/of_private.h | 2 ++
 drivers/of/pdt.c        | 2 ++
 include/linux/of.h      | 1 -
 4 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 969b99838655534915882abe358814d505c6f748..5485307e2a3a3d3a216d271c60bdfc346dd38460 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1806,14 +1806,13 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 		 ap->alias, ap->stem, ap->id, np);
 }
 
-/**
+/*
  * of_alias_scan - Scan all properties of the 'aliases' node
  * @dt_alloc:	An allocator that provides a virtual address to memory
  *		for storing the resulting tree
  *
  * The function scans all the properties of the 'aliases' node and populates
- * the global lookup table with the properties.  It returns the
- * number of alias properties found, or an error code in case of failure.
+ * the global lookup table with the properties.
  */
 void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align))
 {
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index ea5a0951ec5e107bab265ab5f6c043e2bfb15ecc..3433ccd330e84fd3a4b54638e0e922069757c8f0 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -119,6 +119,8 @@ extern void *__unflatten_device_tree(const void *blob,
 			      void *(*dt_alloc)(u64 size, u64 align),
 			      bool detached);
 
+void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
+
 /**
  * General utilities for working with live trees.
  *
diff --git a/drivers/of/pdt.c b/drivers/of/pdt.c
index 7eda43c66c916198b1c2d8fc5043fcb1edaede7a..f961aaa9b96cc4a31c39f42291e87b0007394ec5 100644
--- a/drivers/of/pdt.c
+++ b/drivers/of/pdt.c
@@ -21,6 +21,8 @@
 
 static struct of_pdt_ops *of_pdt_prom_ops __initdata;
 
+void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
+
 #if defined(CONFIG_SPARC)
 unsigned int of_pdt_unique_id __initdata;
 
diff --git a/include/linux/of.h b/include/linux/of.h
index 2fcc12de4a9178276a24cd4d6c975495b9eb04a2..b43e8d5561332a10cee006b383d42822f28057e1 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -397,7 +397,6 @@ extern int of_phandle_iterator_args(struct of_phandle_iterator *it,
 				    uint32_t *args,
 				    int size);
 
-extern void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
 extern int of_alias_get_id(const struct device_node *np, const char *stem);
 extern int of_alias_get_highest_id(const char *stem);
 

-- 
2.34.1


