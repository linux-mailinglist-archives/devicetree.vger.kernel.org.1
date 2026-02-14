Return-Path: <devicetree+bounces-265542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBRYKOJLkGleYQEAu9opvQ
	(envelope-from <devicetree+bounces-265542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 11:18:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F306E13BA66
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 11:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87E853009B05
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 10:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C48243956;
	Sat, 14 Feb 2026 10:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="kk07FDwZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EB02BE03C
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 10:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771064286; cv=none; b=k381e+ZMKbpesHt5VGfLqhYQG3FEZ/fglUTLtSsbY5OOq12JoyBHQjYWYz1cE4yCHLeY3lJ0J9GujzICFdzh0ZHdZ9hxqKA7+3K1rqspcLQ8/TZPwJf1i4vDjjEp8l/QNxRkh2ybikSU2MdzDvM2LXcjLSilvt9zhIM6hfl/TPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771064286; c=relaxed/simple;
	bh=insWAkjv96gvnHBcrA03GTrqrzkxFg1k4WDNv9xYPuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZUaBiPKPN31JI3b+WLY9v52xVNWO/pxuY93AuQiGweWFwCFvxdGjjn3IU4Zw7AH3gjzV9x9YlPMxdv+V7+BJhhoZ9r+UEVVAYL05ydWxkxF8zGcwg2FWbGCb0XxUnZP+e69U9wXAQ/1PsJkCdb7M0sshUyUHIkfBZzSpASshRZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=kk07FDwZ; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1771064282;
 bh=UnRP19hiGW2EOW6F6Xb4s8Mr1BOvl4pRlTPUo+1yLhk=;
 b=kk07FDwZhoi/OfSdOoYfOsZ9fb2xfubK/8F/4fILWELC4bgid6fLGur4aCaN9LJAYJ8vq2sEf
 x0/7pqwDjuVf9tzMO4akVMNnKm2ADXXQpwA8ApbXhdhxg04GBMsEFOyQd3M6ki9L6wGq/tYqVRN
 o0/qxEPawnjdWmj0HiGKXcgdSdvM2QYJR3kpoDiApdSBJln1yQqcw6DR1yEHPQktvoRW4X8pcAj
 MZCBCoNYyfIjZFxUoUuj0zbK8syguk7X3oPjRL2vi32icR8syRrybAZHOhVGEgkUnSpzksN4hlo
 QpRtUSDl1cKuQv700PPJgDaS2MYPxT6uU9U1qe/+WQFg==
X-Forward-Email-ID: 69904bd531a6a6d7c5f99d43
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <64285bcf-7cbe-4732-bd45-44797846be23@kwiboo.se>
Date: Sat, 14 Feb 2026 11:17:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation
 Board
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>
References: <20260210144845.317048-1-festevam@gmail.com>
 <20260210144845.317048-4-festevam@gmail.com>
 <a8c1bac7-9f67-4476-81ad-5271ff239b91@kwiboo.se>
 <CAOMZO5DJGQVOL4D4WWopduodedExMG-O65E1AzdXDQDWMP8A1Q@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CAOMZO5DJGQVOL4D4WWopduodedExMG-O65E1AzdXDQDWMP8A1Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265542-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F306E13BA66
X-Rspamd-Action: no action

Hi Fabio,

On 2/11/2026 12:03 PM, Fabio Estevam wrote:
> Hi Jonas,
> 
> On Tue, Feb 10, 2026 at 1:53 PM Jonas Karlman <jonas@kwiboo.se> wrote:
> 
>> nit: Is rv1103b needed in all three compatible strings? The last one is
>> already pointing out that this is the rv1103b soc, also the other Onion
>> Omega boards in-tree use onion,omega and onion,omega2+.
> 
> All the boards inside arch/arm/boot/dts/rockchip/Makefile start with
> the SoC name, so I prefer to be consistent.

I do not follow, the .dts-filename typically do not fully follow the
topmost compatible for the board on Rockchip platform.

The typical convention for Rockchip platform is:

 compatible: "<vendor>,<board model>[-<revision>]",
             ["<vendor>,<som model>",]
             "rockchip,<soc>"

and the filename is typically:

 board dts: <soc>-[<vendor>-]<board model>[-<revision>].dts
 som dtsi:  <soc>-[<vendor>-]<som model>.dtsi
 soc dtsi:  <soc>.dtsi

The board model typically only include <soc> if there are multiple
versions/revisions sharing same/similar model name.

And in mainline U-Boot we try to follow this convention for Rockchip
defconfig naming:

 defconfig: [<vendor>-]<board model>-<soc>_defconfig

So my question remains, why do the soc (rv1103b) name need to be
repeated in all compatible parts? Is there expected to be another Onion
Omega4 version/revision using a different Rockchip SoC?

And if that is the case, then probably only the SOM part would need
the soc part, not the topmost part of the compatible.

Regards,
Jonas

> I have addressed all of the other feedback you gave me and sent a v4.
> 
> Thanks


