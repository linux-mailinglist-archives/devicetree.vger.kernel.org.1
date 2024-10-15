Return-Path: <devicetree+bounces-111630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D8699F7FB
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 22:15:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2AB30B217C7
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 20:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17DD1B6CF1;
	Tue, 15 Oct 2024 20:15:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx01.omp.ru (mx01.omp.ru [90.154.21.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9131EC006
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 20:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.154.21.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729023321; cv=none; b=dEjtQEGKi/9VFRPVspV4LUcSLwwIz2t+UEAUQO6AOvdcroPkBrkMn2hlniCFLr3yh+3jlxbP8DFTyNJmUYruejf59Op/CFaEgljJW9W8l29sK3Kl6X9akyX8a/qizi/aJTnCEb22jaZX78MPNa1dqThPBQNPVS+AsjzUYQ9YkZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729023321; c=relaxed/simple;
	bh=C+Z1k0+7PxtsU4QfhTHmavIEUTIt4Qw9h8tFVgO9lRo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=TSSh2280WfgmLBB8zGOTtrKuAouUqF7VOKKhdXkw74C29W7YK12SGkB7xTuONhv6W5b+W7PYDniTfyqCiz6jml3bTqB6Ir/7SqUx1b5hv2EKyi+hred4wALbXy1zYv9hoWfHEeW6AQhV6tL2dGyn4eA/fA4tzmpdtDpM5HYNW28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru; spf=pass smtp.mailfrom=omp.ru; arc=none smtp.client-ip=90.154.21.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=omp.ru
Received: from [192.168.2.101] (213.87.90.91) by msexch01.omp.ru (10.188.4.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Tue, 15 Oct
 2024 23:15:05 +0300
Message-ID: <471418be-5d2f-4d14-bd9e-9e8f0526241f@omp.ru>
Date: Tue, 15 Oct 2024 23:15:04 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [PATCH] of: module: remove strlen() call in of_modalias()
To: <devicetree@vger.kernel.org>, Saravana Kannan <saravanak@google.com>, Rob
 Herring <robh@kernel.org>
Content-Language: en-US
Organization: Open Mobile Platform
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 10/15/2024 19:54:51
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 19
X-KSE-AntiSpam-Info: Lua profiles 188459 [Oct 15 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 39 0.3.39
 e168d0b3ce73b485ab2648dd465313add1404cce
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 213.87.90.91 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info:
	127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: ApMailHostAddress: 213.87.90.91
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 19
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 10/15/2024 19:58:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 10/15/2024 6:51:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit

In of_modalias(), there's no dire need to call strlen() (and then add 1
to its result to account for the 'C' char preceding the compat string).
Replace that strlen() with snprintf() (currently below it) -- this way,
we always try to print the compat string but then only advance the str
and len parameters iff the comapt string fit into the remaining buffer
space...

Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
The patch is against the dt/next branch of Rob Herring's linux.git repo...

 drivers/of/module.c |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

Index: linux/drivers/of/module.c
===================================================================
--- linux.orig/drivers/of/module.c
+++ linux/drivers/of/module.c
@@ -35,12 +35,10 @@ ssize_t of_modalias(const struct device_
 	str += csize;
 
 	of_property_for_each_string(np, "compatible", p, compat) {
-		csize = strlen(compat) + 1;
+		csize = snprintf(str, len, "C%s", compat);
 		tsize += csize;
 		if (csize >= len)
 			continue;
-
-		csize = snprintf(str, len, "C%s", compat);
 		for (c = str; c; ) {
 			c = strchr(c, ' ');
 			if (c)

