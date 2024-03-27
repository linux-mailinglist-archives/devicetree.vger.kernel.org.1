Return-Path: <devicetree+bounces-53899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABBE88EBAB
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 17:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CA901C23B7B
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 16:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1517142E9E;
	Wed, 27 Mar 2024 16:52:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx01.omp.ru (mx01.omp.ru [90.154.21.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203E312F5A6
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 16:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.154.21.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711558378; cv=none; b=oTdoi7DtUw2ZYyUEmYehG5OTVPbmu/um6CC6lBwLa8A0iR2CQLhRchc8P1y5Ksd9j7KFQtBc3g9eBfysjRiNSfiT+APZKMB+hyZeSJkE3/zTHmax4G1kIpfjUE6GrYMddp2oUQqFxSd9drgmGATCo/ZPoQJgivRuoJM1d/8LYO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711558378; c=relaxed/simple;
	bh=Ancvy1XlJLMdRh5scYq0PpszpjsbhBppBJ8qcFaHdSc=;
	h=From:Subject:To:CC:Message-ID:Date:MIME-Version:Content-Type; b=N+DcZfBA8OhOL430tofRxPAABuxCVCJtrZj0p0iQ/VcXfV9vipU/MG2Us3X89ksb9Datl57o1zd+k+9RYgxBChX8eIdt6ufEZZ256EBbv+42Bw2pwThERSIEt0uQWm9Vo4JUW028z0dOa34ApqF6aqUowopk7pAY/zSu7dCb+V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru; spf=pass smtp.mailfrom=omp.ru; arc=none smtp.client-ip=90.154.21.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=omp.ru
Received: from [192.168.1.105] (31.173.86.12) by msexch01.omp.ru (10.188.4.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Wed, 27 Mar
 2024 19:52:50 +0300
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [PATCH] of: module: prevent NULL pointer dereference in vsnprintf()
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
	<devicetree@vger.kernel.org>, Saravana Kannan <saravanak@google.com>
CC: <lvc-project@linuxtesting.org>
Organization: Open Mobile Platform
Message-ID: <1d211023-3923-685b-20f0-f3f90ea56e1f@omp.ru>
Date: Wed, 27 Mar 2024 19:52:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/27/2024 16:37:47
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 184451 [Mar 27 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 13 0.3.13
 9d58e50253d512f89cb08f71c87c671a2d0a1bca
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info:
	127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.86.12
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/27/2024 16:42:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/27/2024 3:07:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit

In of_modalias(), we can get passed the str and len parameters which would
cause a kernel oops in vsnprintf() since it only allows passing a NULL ptr
when the length is also 0. Also, we need to filter out the negative values
of the len parameter as these will result in a really huge buffer since
snprintf() takes size_t parameter while ours is ssize_t...

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
The patch is against the for-next branch of Rob Herring's linux-git repo...

 drivers/of/module.c |    8 ++++++++
 1 file changed, 8 insertions(+)

Index: linux/drivers/of/module.c
===================================================================
--- linux.orig/drivers/of/module.c
+++ linux/drivers/of/module.c
@@ -16,6 +16,14 @@ ssize_t of_modalias(const struct device_
 	ssize_t csize;
 	ssize_t tsize;
 
+	/*
+	 * Prevent a kernel oops in vsnprintf() -- it only allows passing a
+	 * NULL ptr when the length is also 0. Also filter out the negative
+	 * lengths...
+	 */
+	if ((len > 0 && !str) || len < 0)
+		return -EINVAL;
+
 	/* Name & Type */
 	/* %p eats all alphanum characters, so %c must be used here */
 	csize = snprintf(str, len, "of:N%pOFn%c%s", np, 'T',

