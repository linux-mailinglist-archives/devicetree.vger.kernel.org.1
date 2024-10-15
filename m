Return-Path: <devicetree+bounces-111632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EBC99F802
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 22:18:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FF041F22391
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 20:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F83B1F5856;
	Tue, 15 Oct 2024 20:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx01.omp.ru (mx01.omp.ru [90.154.21.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E670415699D
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 20:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.154.21.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729023518; cv=none; b=eHWI6PyWkElaver63CE1wWASoI/Ji50hVRgZVXi/taRvDBa0tfZ5mfuskWuVbNjA39eHdbXs5FcIV+Z5nl4QfCf2sJe/2x7UAosqQooZM51gJ5r6HUJh6JRLXqUJvXtzKZI6UwiFnqH45ERqXM56j/bXX0KkPenqCKWKKhNKdoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729023518; c=relaxed/simple;
	bh=Wt5m2v2E3htJ/INsDb0ySCTjr7HLsTxmrOXwzqr0b6s=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=mIDZCD9O7n7Ls2CJHD3sXD4QMb2iQvyYJI/RhNuOIag0L88zSNxBGaUaRIL2yzpy4zJUPFYyCxLT/77qCt3fJRhnujEtFJ4a+3LzS5NNlHLCyTxy9yYd4CzbaMymyT4RD1t69dCYhgqHElvnnRJTeJLCjpSuTuYT0pcFlYToC4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru; spf=pass smtp.mailfrom=omp.ru; arc=none smtp.client-ip=90.154.21.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=omp.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=omp.ru
Received: from [192.168.2.101] (213.87.90.91) by msexch01.omp.ru (10.188.4.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Tue, 15 Oct
 2024 23:18:26 +0300
Message-ID: <5b0ad893-60c1-422a-a935-4d4aa266214b@omp.ru>
Date: Tue, 15 Oct 2024 23:18:25 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: module: remove strlen() call in of_modalias()
From: Sergey Shtylyov <s.shtylyov@omp.ru>
To: <devicetree@vger.kernel.org>, Saravana Kannan <saravanak@google.com>, Rob
 Herring <robh@kernel.org>
References: <471418be-5d2f-4d14-bd9e-9e8f0526241f@omp.ru>
Content-Language: en-US
Organization: Open Mobile Platform
In-Reply-To: <471418be-5d2f-4d14-bd9e-9e8f0526241f@omp.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 10/15/2024 20:05:36
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
	omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2
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
X-KSE-Antiphishing-Bases: 10/15/2024 20:09:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 10/15/2024 6:51:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit

On 10/15/24 11:15 PM, Sergey Shtylyov wrote:

> In of_modalias(), there's no dire need to call strlen() (and then add 1
> to its result to account for the 'C' char preceding the compat string).
> Replace that strlen() with snprintf() (currently below it) -- this way,
> we always try to print the compat string but then only advance the str
> and len parameters iff the comapt string fit into the remaining buffer

    Oops, compat! :-)

> space...
> 
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
[...]

MBR, Sergey


