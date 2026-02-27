Return-Path: <devicetree+bounces-269309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CDKBoO3oWm+vwQAu9opvQ
	(envelope-from <devicetree+bounces-269309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:25:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8634F1B9BBB
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9085C30104AB
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E903271EA;
	Fri, 27 Feb 2026 15:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="fjZ2GVkV"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754E7220F2D;
	Fri, 27 Feb 2026 15:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205705; cv=none; b=gOoBl0wCDzJ+Bd9MVDzf3DnApPMZh9GL0Vi3LDIwgc8iykUcnLGAImk8Lgo/kOJuf79DKpdh2GWKkWqOgiKEvWQl8R65pc94XS5J8yYj9xqWn+Zms2orBpikowwHgA/iRF6Qe6FWd3JyGRY99lQawh//Xox9zZeSbV/gk22WpI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205705; c=relaxed/simple;
	bh=W8/Z2wnaHXf+TPbP7phEo1r85ueAZNN/X9HFJ2Hkj6o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ifEWz5SDYnGmtf6Xz+5Z693KK2JuzSQU9LE4SWtZ/DMpLReirBwSyrNsQA9kMsv4JQgXNV4iWpyNvi93rfs4wK1omHSTAMdjMpa1YyfSNhHPbEKAoopAw0cUsyWAQlPYIVNP04kDHktgbmV4xINJwIgA6WlpOfFB4nOD3IAVUc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=fjZ2GVkV; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=fEivCrRLEaWubps/mZfSJBqMglR1LXHtXAurk5Wm9Cc=;
	b=fjZ2GVkVN90vPOj+6lHylLNlax6CPw93DXU+VKgMTKFI5RXke/RMWERoTb4b0u
	VtvhAM4iPjcmS/xFZOg9Bqc6zJI9aB/LBKjZvnBGZM+5Fg/kwxSmUofoLdtbT/MT
	bNOTmqyG/Y2PrOYx6WRiKvXDxrFGgkTZChoXgFwUB1L8g=
Received: from [192.168.1.104] (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wD3H2C3taFpheHENA--.55136S2;
	Fri, 27 Feb 2026 23:18:15 +0800 (CST)
Message-ID: <0bc7875c-106c-48e1-8d40-72919ca227c4@163.com>
Date: Fri, 27 Feb 2026 23:18:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] media: aspeed: Fix driver probe failure
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-aspeed@lists.ozlabs.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Hans Verkuil <hverkuil+cisco@kernel.org>,
 Jammy Huang <jammy_huang@aspeedtech.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
References: <20260227123837.70079-1-haiyuewa@163.com>
 <8060fe77-18ec-4aa0-90a1-50eee398a55b@kernel.org>
From: Haiyue Wang <haiyuewa@163.com>
In-Reply-To: <8060fe77-18ec-4aa0-90a1-50eee398a55b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CM-TRANSID:_____wD3H2C3taFpheHENA--.55136S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7KFW8Ww47Cw4xuFWDGF1UGFg_yoW8CFyfpa
	y8ua1DKrZ3KF1YkayxJa4xtFyUZws0yFs8trW5J347X3s8Xw1FqrWSyrWv9rWDJrs5u347
	tFW8K34vgr4YqaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U59N3UUUUU=
X-CM-SenderInfo: 5kdl53xhzdqiywtou0bp/xtbC7xheyWmhtbi8bgAA33
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269309-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[163.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haiyuewa@163.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[163.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8634F1B9BBB
X-Rspamd-Action: no action



On 2/27/2026 8:59 PM, Krzysztof Kozlowski wrote:
> On 27/02/2026 13:38, Haiyue Wang wrote:
>> The aspeed video (be compatible for ast2400, ast2500, ast2600) now needs
>> the reset DTS handle specified, otherwise it will fail to load:
>>
>> [    0.000000] OF: reserved mem: initialized node video, compatible id shared-dma-pool
>> [    0.000000] OF: reserved mem: 0xbb000000..0xbeffffff (65536 KiB) map reusable video
>> [    0.377039] videodev: Linux video capture interface: v2.00
>> [    4.809494] aspeed-video 1e700000.video: irq 57
>> [    4.809977] aspeed-video 1e700000.video: Unable to get reset
>> [    4.810341] aspeed-video 1e700000.video: probe with driver aspeed-video failed with error -2
>>
>> Fixes: e83f8dd668ea ("media: aspeed: Fix dram hang at res-change")
>> Signed-off-by: Haiyue Wang <haiyuewa@163.com>
>> ---
>>   arch/arm/boot/dts/aspeed/aspeed-g4.dtsi   | 1 +
>>   arch/arm/boot/dts/aspeed/aspeed-g5.dtsi   | 1 +
>>   arch/arm/boot/dts/aspeed/aspeed-g6.dtsi   | 1 +
>>   include/dt-bindings/clock/ast2600-clock.h | 1 +
> 
> Please run scripts/checkpatch.pl on the patches and fix reported
> warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> patches and (probably) fix more warnings. Some warnings can be ignored,
> especially from --strict run, but the code here looks like it needs a
> fix. Feel free to get in touch if the warning is not clear.
> 
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> 

Seperated into two patches in v2, please help to review.

>>   4 files changed, 4 insertions(+)
> 
> 
> Best regards,
> Krzysztof


