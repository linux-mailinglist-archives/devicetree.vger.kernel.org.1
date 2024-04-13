Return-Path: <devicetree+bounces-58983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F418A3E4F
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 22:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AE931F2142E
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 20:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5894B5473A;
	Sat, 13 Apr 2024 20:08:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx01.omp.ru (mx01.omp.ru [90.154.21.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842FD53E16
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 20:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.154.21.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713038929; cv=none; b=gDfYXKcJVJXecVY3cSsxCQp6P+srxPcBhO8yeFlzp+y0vhCvL2jAh050YaMaHNI4y7paKgPCoDPyHqrO9oAHqX04CZ6cKxTkCb193eSxQUG87JZ5IBq/m51Yy0qL2nhll/QeaFl3eCpol69whQqH64RJkZp91fuMUdCGruJxYVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713038929; c=relaxed/simple;
	bh=fM+9rkGGColibIgHhi58C8MxszQkZFt9Yfp4vJq+MVI=;
	h=From:Subject:To:CC:Message-ID:Date:MIME-Version:Content-Type; b=rQYKzTTlBeoifZ15B7LYCgs9AQMmTF7GrDfKVATaiSIq6KPbl+mNGGC4saP5cxoi8Yf9n+VOY/Xa7Nl6rW5M5LRpFdKQP1AQB+Gm470TCq9u1pzIsccT1hVoUClyaY+1zAQKHvn/Su7GnU2OlRUmhSMxQaSRss1hETG9mLprdh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru; spf=pass smtp.mailfrom=omp.ru; arc=none smtp.client-ip=90.154.21.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=omp.ru
Received: from [192.168.1.105] (31.173.85.237) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Sat, 13 Apr
 2024 23:08:29 +0300
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [PATCH] of: module: add buffer overflow check in of_modalias()
To: <devicetree@vger.kernel.org>, Saravana Kannan <saravanak@google.com>,
	<"Rob Herring <robh"@kernel.org>
CC: <lvc-project@linuxtesting.org>
Organization: Open Mobile Platform
Message-ID: <26d4efdd-864a-d923-ccb5-68ee7b4cc5d8@omp.ru>
Date: Sat, 13 Apr 2024 23:08:28 +0300
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
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 04/13/2024 19:50:44
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 184697 [Apr 13 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 16 0.3.16
 6e64c33514fcbd07e515710c86ba61de7f56194e
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.85.237 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info:
	omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.85.237
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 04/13/2024 19:55:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 4/13/2024 4:31:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit

In of_modalias(), if the buffer happens to be too small even for the 1st
snprintf() call, the len parameter will become negative and str parameter
(if not NULL initially) will point beyond the buffer's end. Add the buffer
overflow check after the 1st snprintf() call and fix such check after the
strlen() call (accounting for the terminating NUL char).

Fixes: bc575064d688 ("of/device: use of_property_for_each_string to parse compatible strings")
Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
The patch is against the dt/linus branch of Rob Herring's linux.git repo...

 drivers/of/module.c |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

Index: linux/drivers/of/module.c
===================================================================
--- linux.orig/drivers/of/module.c
+++ linux/drivers/of/module.c
@@ -29,14 +29,15 @@ ssize_t of_modalias(const struct device_
 	csize = snprintf(str, len, "of:N%pOFn%c%s", np, 'T',
 			 of_node_get_device_type(np));
 	tsize = csize;
+	if (csize >= len)
+		csize = len > 0 ? len - 1 : 0;
 	len -= csize;
-	if (str)
-		str += csize;
+	str += csize;
 
 	of_property_for_each_string(np, "compatible", p, compat) {
 		csize = strlen(compat) + 1;
 		tsize += csize;
-		if (csize > len)
+		if (csize >= len)
 			continue;
 
 		csize = snprintf(str, len, "C%s", compat);

