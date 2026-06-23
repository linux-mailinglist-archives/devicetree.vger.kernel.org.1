Return-Path: <devicetree+bounces-314638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wz4dILUXOmpT1QcAu9opvQ
	(envelope-from <devicetree+bounces-314638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 07:20:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 724836B424A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 07:20:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314638-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-314638-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B1C6F301563D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 05:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1EBC3A8FE1;
	Tue, 23 Jun 2026 05:20:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDC130D3E7;
	Tue, 23 Jun 2026 05:20:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782192038; cv=none; b=rCzvXlXf0ivtGMt5QxrlB82qBkyYTlZiZobSaOwBO2Hjzzlta6m06tI2+E+Fv6+XvlgGOz8s5xskVJhM7E1lxKbDMBlRSYyqUWiLKeYh80LhqvSHzNSoIacf8mUSDjrbXBRZjzqprhw7SpmIKlKNw4yd7TXG5MbgEcfdxgnudqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782192038; c=relaxed/simple;
	bh=ucKhV3qPR3R10cLFSr0rdXW/SyGDGnKTpCdgWQ0IsSQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CJGZx8IED6xadSLGoUiylFIe4VHalpsg6y83e0BgnHgqskWQuQb5GhcEfpzXAArn3Su1eyNOJblFl2ATFJvJguTmPxJvz0GxvIElSJHOmYKTCABEunwpCxZTEWmTsn0q8WDLLIn/eYjxkwpDxxS31Px6Mw+aZ8+o1HVNUcU2Z9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8BB36200792;
	Tue, 23 Jun 2026 07:20:33 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wbtYn-004Cej-1U;
	Tue, 23 Jun 2026 07:20:33 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wbtYn-000000088NI-1TH6;
	Tue, 23 Jun 2026 07:20:33 +0200
Date: Tue, 23 Jun 2026 07:20:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Wadim Mueller <wafgo01@gmail.com>
Cc: William Breathitt Gray <wbg@kernel.org>, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, krzk+dt@kernel.org
Subject: Re: [PATCH v5 2/3] counter: add GPIO-based counter driver
Message-ID: <ajoXoYc1CYKZyQ5l@pengutronix.de>
References: <20260524193846.19216-3-wafgo01@gmail.com>
 <20260617074929.333876-1-wbg@kernel.org>
 <20260622205210.10317-1-wafgo01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260622205210.10317-1-wafgo01@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314638-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:wafgo01@gmail.com,m:wbg@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kernel@pengutronix.de,m:krzk+dt@kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:url,pengutronix.de:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 724836B424A

Hi,

On Mon, Jun 22, 2026 at 10:51:40PM +0200, Wadim Mueller wrote:
> On Wed, 17 Jun 2026 16:49:25 +0900
> William Breathitt Gray <wbg@kernel.org> wrote:
> 
> Hi William,
> 
> thanks for the review. Three things before I spin v6.
> 
> > One change I consider is whether to make Signal B optional. [...]
> > I wonder whether this is substantially different enough from
> > simply using the interrupt-cnt module on the respective IRQ?
> > I'm CCing Oleksij and the Pengutronix team in case they wish to
> > comment.
>
> I want to keep signal-b mandatory in v6 (if no concerns from Oleksij).
> The single-line case is already covered by interrupt-cnt.
 
Hm, I have nothing against extending the existing driver.
If you wont to enforce and validate multi line concept, additional
compatible will be needed. May be interrupt-counter-multiline ?

Please add separate interrupt handler, interrupt_cnt_isr is already
"over optimized". Adding more code to this hot path, will break existing
configurations.

Best Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

