Return-Path: <devicetree+bounces-262226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QB9LMh3mgWl0LwMAu9opvQ
	(envelope-from <devicetree+bounces-262226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:12:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FDED8D84
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38A4E3069A26
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5718233E348;
	Tue,  3 Feb 2026 12:12:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E42339863;
	Tue,  3 Feb 2026 12:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770120729; cv=none; b=gF4uOUyvPparVjpntCu8EUPazg4jzd+vcCiqUAvOhYBnchTt+JRpl4fOZ1o4Wpwcy4eFAKYsAUQUHgh7YlAi095bvBtGBM+5kC5sdSmew0lnMU50d7SIzkCCU0Ftiho5e+46Ol6+lmW+hqig3NEAKhodJBTCEMGrmxHcrrkEQeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770120729; c=relaxed/simple;
	bh=fXtdPzk8BdzdyUf7rgfFgER7kw2OOqzMMzT0LKGek0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fRixdtMLgqT/aIYb+7xKVFOOecf3Grf09WURwYNTVPYWV+OacBjZPzKiSESBhweCBzc5Pp55LwKg0Brk9J6cchJ+yajPBZwfsW/eCwQ3Dpp7adRnUAk32suW9VPXFLugm1NrSl/y2GJH6cDVuQqitZmZZcmGHTw91wBr0op4uCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CAB0150C;
	Tue,  3 Feb 2026 04:11:59 -0800 (PST)
Received: from pluto (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00BE63F632;
	Tue,  3 Feb 2026 04:12:03 -0800 (PST)
Date: Tue, 3 Feb 2026 12:11:57 +0000
From: Cristian Marussi <cristian.marussi@arm.com>
To: Sudeep Holla <sudeep.holla@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Debbie Horsfall <debbie.horsfall@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
Message-ID: <aYHmDTboOtkgac00@pluto>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
 <20260127132206.036892e4@donnerap.manchester.arm.com>
 <c1259bad-be4d-4489-840d-4ab2f4e466f2@arm.com>
 <8c343e6d-14f8-4f55-8218-bc3f0813e8cf@arm.com>
 <20260130-light-piquant-termite-fcbec4@sudeepholla>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130-light-piquant-termite-fcbec4@sudeepholla>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.86 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262226-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.marussi@arm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.970];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 46FDED8D84
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 12:34:31PM +0000, Sudeep Holla wrote:
> 
> +Cristian(in case I am talking no sense)
> 
> On Fri, Jan 30, 2026 at 11:31:25AM +0100, Andre Przywara wrote:
> > 
> > So do you need just one "tx", but "rx" plus "rx_reply"? Which isn't valid in
> > the current binding?
> > If that's the case, then we would need a patch to relax the binding and
> > allowing this combination as well.
> > Looking into the kernel code it looks like the SCMI driver doesn't use
> > mbox-names, but explicitly expects assignments depending on the number of
> > mboxes? Somewhat confusing ...

Hi,

so the mbox-names are NOT mandatory, since the SCMI stack initially did
NOT identify mboxes by names and such decision pre-dates me so I am not
sure about the why...

...anyway, when unidirectional mailboxes hw came along, in order to add
clarity, WHILE maintaining backward compatibility, mbox-names were added
only as optional and the stack really does NOT use them; the only thing
that matters is the number and order of mboxes AND shmem areas: only the
combination described in the mboxes binding description are allowed and
accepted in order to manage both the case of unidirectional and
bidirectional mailboxes while surviving backward compatibility.

> > 
> 
> It is generally transmitted via tx, and tx_reply is necessary when the
> platform has unidirectional channels. tx_reply is used to determine when the
> synchronization commands have completed, without requiring polling of the
> shared memory. rx_reply is necessary only if the platform firmware expects
> it and doesn't poll the shared memory for OSPM/agent acknowledgement.

In SCMI you have generally A2P (Agent-to-Platform) bidirectional channels
to send commands and receive related replies using one dedicated shmem and,
optionally, a distinct dedicated unidirectional channel P2A, with a
distinct dedicated shmem, for receiving notifications and/or delayed
responses sent asynchronously by the platform.

These two channels, A2P and P2A, maps in the SCMI stack (for historical
reasons) respectively to TX and RX naming.

If the underlying transport is based on birectional mailboxes you can
happily have 2 mboxes "tx", "rx" with 2 dedicated mbox areas.

Instead if your mailboxes are unidirectional like MHUv3, you will need
effectively 2 mboxes to represent the 2 parts of the A2P birectional
channel AND one mailbox to represent the P2A unidirectional channel,
exactly like you do.

So, if you want to add the optional mbox-names would be:

	firmware {
	    scmi {
	         compatible = "arm,scmi";
		 mbox-names = "tx", "tx_reply", "rx";
		 mboxes = <&mbox_db_tx 0 0 0 &mbox_db_rx 0 0 0 &mbox_db_rx 0 0 2>
                 shmem = <&scmi_shmem_tx &scmi_shmem_rx>;


...since the first 2 mboxes effectively represents the 2 unidirectional
sides of the A2P channel, with first being the cmd-request direction and
the second being the cmd-reply direction, while the third mbox is just the
P2A unidrectional channel...

....so it is fine, even though admittedly fuorviating, that the tx_reply
is attached to a db_rx block, since it is exactly what represents: the
reply to a previously sent command.

Anyway, being the names optional, the only thing that really matters in all
of the above is that the numbers of mboxes and shmems matches:

	 3 mbox / 2 shmem => SCMI TX and RX over 3 mailbox unidirectional channels 

The additional optional rx_reply mboxes was added to represent P2A
channels that have an completion interrupt.

All of this madness was the best way I could find to address the problem
of supporting such new unidirectional mailboxes in the SCMI while NOT
breaking backward compatibility in the absence of mandatory naming from
the start.

Hope to have shed a light, beside having annoyed you all with all of the
above flood of words :P

Thanks,
Cristian


