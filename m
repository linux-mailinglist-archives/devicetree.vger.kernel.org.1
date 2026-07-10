Return-Path: <devicetree+bounces-324269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YsU3EKSsUGoB3QIAu9opvQ
	(envelope-from <devicetree+bounces-324269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 10:26:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C8B7386CA
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 10:26:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SFqaNAaY;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324269-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324269-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D15530067B2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 923ED3EF0A4;
	Fri, 10 Jul 2026 08:19:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D3D3CB907;
	Fri, 10 Jul 2026 08:19:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783671599; cv=none; b=kgh6lrGOduDxbtlnAxl9+iJ7nLYwrky7H0Dk6XjLiiZTl0ONtXDqaOOvX0ps/563PpbIdOXAq0F1IZHlhfaT1/yjsREVf4bWKkYwvGjkrOfIevx/I3jzia+SlmyxaNRDUqcOMUMaZH4oY4ynZsCbRNABdcfab6n/D27DMeeNMrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783671599; c=relaxed/simple;
	bh=Q9e7mqixsLLOGhm6cscuonEBHgxSw6utmXoQtuoEMBw=;
	h=From:Date:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=BV+MKdKC1VoR7mWHovdOBODx8nsM3Fiz2nts8Z1OJ5siuzG63/ZF1lxAafBklrgaefzxg+o2fcBWi6OKl3uFCv1s87enPCGdtk58E9TLAb7KTkZPvkO1ggnOgwEfO/uExSHDVxQeF9NWOzmZQc5bXVJRzO5jF+URswlQYv0ECaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SFqaNAaY; arc=none smtp.client-ip=198.175.65.15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783671598; x=1815207598;
  h=from:date:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Q9e7mqixsLLOGhm6cscuonEBHgxSw6utmXoQtuoEMBw=;
  b=SFqaNAaYlIPTCYj/TxMWksFz0t6J6Ss9XKfJbyGB/EoHF5JGWs4nSfLh
   sBZeS3two7zXxNMp0e1+Pbww2AdJ1iAybLUT2HN0j8Tp+499q1XlbUafw
   nBILHK/VpAAQSJP5RUX0QkQ7uGmVKlycQ52QvaQKP14MPKj94Ol7B67Jv
   k/jT8yO4Yb0Pae67Etlur4Zx++fqWArtse+FqYs166YaWXuIxR2xvrYvc
   kHwrw1QNiTcsAVzUu9fWqHOkRXURdVX+gzhovMzSqSn/Niyx75z1M/dH5
   dvCbGr16MkN/tc3gKSMn2F33LNXlAqb1XwIpextgt8ILK/luM3dbSpHjY
   Q==;
X-CSE-ConnectionGUID: PZLKHi58Sx63jgLqhTfJ7g==
X-CSE-MsgGUID: LY7oDH/nQ8KRFVc1oW7sLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88052300"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="88052300"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2026 01:19:51 -0700
X-CSE-ConnectionGUID: P9BM3yqaTaKoiZYP8nQwiA==
X-CSE-MsgGUID: T1iFFTLTR4q7oYwpCO+/vg==
X-ExtLoop1: 1
Received: from conormcd-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.244.169])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2026 01:19:43 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Fri, 10 Jul 2026 11:19:38 +0300 (EEST)
To: Christian Marangi <ansuelsmth@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, 
    Krzysztof Kozlowski <krzk+dt@kernel.org>, 
    Conor Dooley <conor+dt@kernel.org>, 
    Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
    Benjamin Larsson <benjamin.larsson@genexis.eu>, 
    John Ogness <john.ogness@linutronix.de>, 
    Marco Felsch <m.felsch@pengutronix.de>, Gerhard Engleder <eg@keba.com>, 
    Jiaxun Yang <jiaxun.yang@flygoat.com>, 
    Randy Dunlap <rdunlap@infradead.org>, Binbin Zhou <zhoubinbin@loongson.cn>, 
    Rong Zhang <rongrong@oss.cipunited.com>, Lukas Wunner <lukas@wunner.de>, 
    Lubomir Rintel <lkundrak@v3.sk>, devicetree@vger.kernel.org, 
    LKML <linux-kernel@vger.kernel.org>, 
    linux-serial <linux-serial@vger.kernel.org>
Subject: Re: [PATCH 2/4] serial: 8250: export serial8250_get_baud_rate()
In-Reply-To: <20260709205656.319531-3-ansuelsmth@gmail.com>
Message-ID: <25725cc4-f3c9-8153-b400-c36a5099340a@linux.intel.com>
References: <20260709205656.319531-1-ansuelsmth@gmail.com> <20260709205656.319531-3-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324269-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andriy.shevchenko@linux.intel.com,m:benjamin.larsson@genexis.eu,m:john.ogness@linutronix.de,m:m.felsch@pengutronix.de,m:eg@keba.com,m:jiaxun.yang@flygoat.com,m:rdunlap@infradead.org,m:zhoubinbin@loongson.cn,m:rongrong@oss.cipunited.com,m:lukas@wunner.de,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-serial@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[ilpo.jarvinen@linux.intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ilpo.jarvinen@linux.intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,vger.kernel.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E0C8B7386CA

On Thu, 9 Jul 2026, Christian Marangi wrote:

> Some driver might need to access the current baud rate to correctly
> configure it.
> 
> Export the serial8250_get_baud_rate() function to limit code duplication.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  drivers/tty/serial/8250/8250_port.c | 7 ++++---
>  include/linux/serial_8250.h         | 4 ++++
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
> index 630deb7dd344..033d8fb8bb23 100644
> --- a/drivers/tty/serial/8250/8250_port.c
> +++ b/drivers/tty/serial/8250/8250_port.c
> @@ -2560,9 +2560,9 @@ static void serial8250_set_divisor(struct uart_port *port, unsigned int baud,
>  		serial8250_do_set_divisor(port, baud, quot);
>  }
>  
> -static unsigned int serial8250_get_baud_rate(struct uart_port *port,
> -					     struct ktermios *termios,
> -					     const struct ktermios *old)
> +unsigned int serial8250_get_baud_rate(struct uart_port *port,
> +				      struct ktermios *termios,
> +				      const struct ktermios *old)
>  {
>  	unsigned int tolerance = port->uartclk / 100;
>  	unsigned int min;
> @@ -2589,6 +2589,7 @@ static unsigned int serial8250_get_baud_rate(struct uart_port *port,
>  	 */
>  	return uart_get_baud_rate(port, termios, old, min, max);
>  }
> +EXPORT_SYMBOL_GPL(serial8250_get_baud_rate);

Please put newly exported things into SERIAL_8250 namespace.

-- 
 i.


