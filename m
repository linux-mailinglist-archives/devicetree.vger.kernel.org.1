Return-Path: <devicetree+bounces-284313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMtcDO57z2mvwgYAu9opvQ
	(envelope-from <devicetree+bounces-284313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 10:35:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84601392222
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 10:35:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 221583024168
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 08:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1091372EC2;
	Fri,  3 Apr 2026 08:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=norik.com header.i=@norik.com header.b="HkLIlFth"
X-Original-To: devicetree@vger.kernel.org
Received: from cp2.siel.si (cp2.siel.si [46.19.12.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8342DC76A;
	Fri,  3 Apr 2026 08:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.12.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775204952; cv=none; b=cZ/iJ3QQSFy88Mm0yrUSHb/NDg4prCvcH35rv+ZihOkCIeCeYpRsyGEvkCLztBISu0XE9GTpzhQmCHjwWQJjccafLe8eJoskR+t7Lc7hfOdErUxlwzJCGmJucdaPPTg7N5BtzDWdHjCsQR6cRQzoVJ1QPBt3zrOgTFxDhiKJhlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775204952; c=relaxed/simple;
	bh=7hsMRWPDSH/DXgvbG4YrjCTJi0ukPsFS73y526akbmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MSWieyjZ4w8OFoZPLpmTqCrd6GvGQO0cpltLUEV23WMlkOnoZO65pgsU0LaNxZpR3jGPLKdyMKsxVI1l91wKtQKZkaKnCiaLm9XugB6OZhyj+vozNOhNLnyGKQrigShhuxO/Kh6FvfgmNHyeyIMOb2MXzKuATnqR/I8WARTcEqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; dkim=pass (2048-bit key) header.d=norik.com header.i=@norik.com header.b=HkLIlFth; arc=none smtp.client-ip=46.19.12.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YjFUAr5TF9qMHsoiwD86cKQNGRB+CzXIhSoVtDvqsOU=; b=HkLIlFthMtqIU2FWjoXhuHCrK1
	CNV810xc7IAnUy03WGQmFdqV5TE/yzzWXxDdsomaDk32vH+a28yFp2LDT57+sVO5Rp/IGFkJJz4OR
	OGJnUSW7W5sz7ruEDjHvyDgsabOz0mFVJzDEjxtoemUR7U077UNr6GyXWyjXWO/y0MHto/QyswYTO
	4IFPlY1e7yICBfCZJw40FSSjzJZ+FJuQjQbm1Pg3dVL7b95kt5BSZ0VvEF+B/6QNeHd27EPS1F4r2
	hTHfS1DMZvGEl2r2wcsukPns3KYUmMsqnUaMmUJ7R6ywD4cuEA6dXOwTZBGxMzcXOe4Vgw/+uMwce
	QA4D8lmw==;
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:30374 helo=[192.168.1.122])
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.99.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1w8Zto-0000000AR5L-0548;
	Fri, 03 Apr 2026 10:29:03 +0200
Message-ID: <56b9e133-74b9-4e59-a40c-c7637c080fd8@norik.com>
Date: Fri, 3 Apr 2026 10:29:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx{91,93}-phyboard-segin: Add peb-av-18
 overlay
To: Frank Li <Frank.li@nxp.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, upstream@lists.phytec.de
References: <20260402070826.970012-1-florijan.plohl@norik.com>
 <ac50OHuEApM3tRHq@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Florijan Plohl <florijan.plohl@norik.com>
In-Reply-To: <ac50OHuEApM3tRHq@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[norik.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284313-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[norik.com];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[norik.com:-];
	HAS_X_SOURCE(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,kernel.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,lists.phytec.de];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	HAS_X_ANTIABUSE(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 84601392222
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

On 4/2/26 15:50, Frank Li wrote:
> On Thu, Apr 02, 2026 at 09:08:26AM +0200, Florijan Plohl wrote:
>> Add overlay for the PEB-AV-18 adapter on phyBOARD-Segin-i.MX91/93.
> what's means PEB-AV-18? Is it random board name?
The PEB-AV-18 is PHYTEC designation for Audio/Video adapter modules that can
be used to connect displays on their boards.

I will improve commit message to add more such information in v2.

>
>
>> The supported LCD is Powertip PH800480T032-ZHC19 panel (AC220).
>>
>> Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
>> ---
>>   arch/arm64/boot/dts/freescale/Makefile        |   4 +
>>   .../imx91-phyboard-segin-peb-av-18.dtso       | 142 ++++++++++++++++++
>>   .../imx93-phyboard-segin-peb-av-18.dtso       | 142 ++++++++++++++++++
> Any difference between 91 and 93, can use one overlay file?
>
> Frank

Can you suggest how to do so?

There are imx93-pinfunc.h and imx91-pinfunc.h which are not unified
between imx91 and imx93.

So we can only create common dtsi like so:

imx91-93-phyboard-segin-peb-av-18.dtsi

and still use separate dtsos:

imx91-phyboard-segin-peb-av-18.dtso
imx93-phyboard-segin-peb-av-18.dtso

Is that your idea?

BR,

Florijan Plohl

>> --
>> 2.43.0
>>

