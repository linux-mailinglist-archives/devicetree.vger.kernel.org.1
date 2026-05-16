Return-Path: <devicetree+bounces-298715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PHOA1aWCGoQwwMAu9opvQ
	(envelope-from <devicetree+bounces-298715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:07:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9465255C8AF
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D3933009CCD
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 16:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF953E63A8;
	Sat, 16 May 2026 16:07:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9C53E5A33;
	Sat, 16 May 2026 16:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778947666; cv=none; b=l6VNFXo3bNbkWmslOkPkAgV98djEWCxRMZexd/vXxYtDFaw8uJWb0ZKxsFBwkiXre1K7pY9Gn2kD4Y7K/RsPVrUGMtUJnxJeInwt9iIDmZUQ8QIPWK91ddkYD8aJV58lb8I9JElNdCOGawkVL19zn2ltDnFEazDlzla3erGWP6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778947666; c=relaxed/simple;
	bh=m1vfWnJ74vd7bGhj4atmhr6NYGK70UqT47wptuvWASA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=qbwJIUYHFjrKK5yWokxiIBkae7x/+F7aEo07hJ0pg3BCuA0WnhUXp5Fnh3vKQHFl/P205SaB0QcAmNMEItERqw0S8KdvD/X5vdtXsGcM4ufexlIhTWqWK/74STPTVbL0TRuqgei4/npfiVzeKhCJkkecIfjpu0NKV+3yqW4b03A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B08BBC19425;
	Sat, 16 May 2026 16:07:29 +0000 (UTC)
Message-ID: <daa8e97a-6422-48a3-8634-cf6d4eb8ab7c@tuxon.dev>
Date: Sat, 16 May 2026 19:07:27 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] ARM: configs: at91: sama7: add sama7d65 i3c-hci
To: Manikandan Muralidharan <manikandan.m@microchip.com>,
 alexandre.belloni@bootlin.com, Frank.Li@nxp.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 linux@armlinux.org.uk, mturquette@baylibre.com, sboyd@kernel.org,
 tytso@mit.edu, aubin.constans@microchip.com, Ryan.Wanner@microchip.com,
 romain.sioen@microchip.com, durai.manickamkr@microchip.com,
 cristian.birsan@microchip.com, adrian.hunter@intel.com,
 jarkko.nikula@linux.intel.com, npitre@baylibre.com,
 linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20260507084805.481737-1-manikandan.m@microchip.com>
 <20260507084805.481737-6-manikandan.m@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260507084805.481737-6-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9465255C8AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298715-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:email,tuxon.dev:mid,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action



On 5/7/26 11:48, Manikandan Muralidharan wrote:
> Enable the configs needed for I3C framework and microchip
> sama7d65 i3c-hci driver.
> 
> Signed-off-by: Durai Manickam KR <durai.manickamkr@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

