Return-Path: <devicetree+bounces-272687-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IMlGZNhrmlbCwIAu9opvQ
	(envelope-from <devicetree+bounces-272687-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:58:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E042340C2
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:58:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F6C0300A397
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 05:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709DE34CFD3;
	Mon,  9 Mar 2026 05:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="prPH29vv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462B91E1C02;
	Mon,  9 Mar 2026 05:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773035813; cv=none; b=dBzW0Tfku8nUouX80IVseO0T6bms7sVK5HsUHG4h97L7WoKYf5vpl1zGOdUi2ZTf9wwBkcdOl7BYj1X9bT8ggCzgzRBPucypY1pMoS6S4e2799d+DWVrBzUNp0Udn4W2qFlpth9U16P09921hhaVGnz6pOB6EbZdCieFSwat9gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773035813; c=relaxed/simple;
	bh=TZ5CCcxnOFFTvnCRUXhipYRB5dJ/QFkxu7cQ6UQGKo8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JMyZo+cruPLsD++1sryggiVP7z0cs+h93wz1ZlBPICoWq1XwpnwbpmXapw4BngUsQjJS2HphvESFu8tGuCwiL3t/XvO4CgI3z7DSwFlANFTIxX+qx8fLhUTl9vNSw5cYbMfYteGmguBTiSXoyqn5kjslWzh2Edh7bx9xvcEprBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=prPH29vv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72CFAC4CEF7;
	Mon,  9 Mar 2026 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1773035813;
	bh=TZ5CCcxnOFFTvnCRUXhipYRB5dJ/QFkxu7cQ6UQGKo8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=prPH29vvtfGq/6h9NnTitlT+jij/7Z/hm+zdLULPtaz6MBWZq6vk8xNoquW9G2tV8
	 KVkXVstNE/hkdqPYQ5uRabV26bs+eD6Ruxjk6w3DeA4gFCFDXfv6D54Fsko0Kurfws
	 JZtCtfyBw5UPrmLB5vDJq8WgEZ43y7NY7qQl1F40=
Date: Mon, 9 Mar 2026 06:56:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Markus Probst <markus.probst@posteo.de>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <lossin@kernel.org>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	Danilo Krummrich <dakr@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org
Subject: Re: [PATCH v2 2/2] mfd: Add initial synology microp driver
Message-ID: <2026030913-agonizing-shoptalk-ed98@gregkh>
References: <20260308-synology_microp_initial-v2-0-9389963f31c5@posteo.de>
 <20260308-synology_microp_initial-v2-2-9389963f31c5@posteo.de>
 <2026030827-nautical-overplant-399c@gregkh>
 <8efdf3e1bbf24504d560c12131cade543bec82f5.camel@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8efdf3e1bbf24504d560c12131cade543bec82f5.camel@posteo.de>
X-Rspamd-Queue-Id: C0E042340C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272687-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.514];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linuxfoundation.org:dkim]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 07:15:16PM +0000, Markus Probst wrote:
> On Sun, 2026-03-08 at 19:55 +0100, Greg Kroah-Hartman wrote:
> > On Sun, Mar 08, 2026 at 06:41:20PM +0000, Markus Probst wrote:
> > > Add a initial synology microp driver, written in Rust.
> > > The driver targets a microcontroller found in Synology NAS devices. It
> > > currently only supports controlling of the power led, status led, alert
> > > led and usb led. Other components such as fan control or handling
> > > on-device buttons will be added once the required rust abstractions are
> > > there.
> > 
> > Why is this a mfd device?  Shouldn't it be an aux device?
> > 
> > But this is just a serial port connection, so why is a kernel driver
> > needed at all?
> I am not sure what you mean.

Can't this just be controlled from userspace over the tty device to the
uart this device uses?  Why is a kernel driver needed at all?

> It has multiple functions (leds, hwmon, power/reset, input etc.) and
> does is a multifunction device (mfd).
> 
> It does not however use mfd-core or anything from the auxiliary device
> and instead implements its functionality directly in this driver.

If it does not use mfd-core, then it should not be in drivers/mfd/
right?  Instead, use the aux bus code to split this up into different
devices and attach them that way, as that's what the aux bus code was
created for.

thanks,

greg k-h

