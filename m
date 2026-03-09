Return-Path: <devicetree+bounces-272936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNHkCg/HrmlwIwIAu9opvQ
	(envelope-from <devicetree+bounces-272936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 14:11:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D879239803
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 14:11:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70C0B301A38B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 13:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB5CB3BFE4D;
	Mon,  9 Mar 2026 13:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="w2KdD64d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC9E3B3C18;
	Mon,  9 Mar 2026 13:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773061677; cv=none; b=sDK4L8280rAH8mrTpyEPA/LGo4XOIxmrYwvT7KWsMuskBLO2UuLprhz3AyNIb3NZdKbgc9Kvy+dnUPa9o4IobYzfy39N6CN3edph5cNTy9GfP5/gEeuUzu2nHm0uSwb1Xaw0qgJlIKTgprdiDxG2vbNQ0xpmflNJTttL9PsFg58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773061677; c=relaxed/simple;
	bh=ujn6DnVOcPrhG5BeMK0lQZ1UIHC3dRjtJ6gSxWRvNq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IRpY1h0HiYbu8A7WnCTMbX3aFY50bnwD0VeqH0JTqC7ZwRj34P3nndu17VzqoLjoJEfTElK8bQseh5kauEGBjkjf44926NVyXcK92Ub3gOwBXbISJt1++sxG+VCGrPpoofbUbYwzgCZ+Uv1ForoHet+UBuEpxJX0cdjBRy1nC5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=w2KdD64d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8F04C4CEF7;
	Mon,  9 Mar 2026 13:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1773061676;
	bh=ujn6DnVOcPrhG5BeMK0lQZ1UIHC3dRjtJ6gSxWRvNq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=w2KdD64d2rMjge0Bsb91cYlNIEIEg+04HsAx0FXRbYLGa4tkPfikT4cBURJCC2GVB
	 66bWgezlchmq6VhKo0ZqLxsrNjdpQvAITin4iT09MFFS1+a0lEQ+MXdr7IN4e0TSb5
	 tbuGXCc1UZB5RHoC4V5b0EtsnWlRshppeZCequX4=
Date: Mon, 9 Mar 2026 14:07:54 +0100
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
Message-ID: <2026030951-implant-girdle-d812@gregkh>
References: <20260308-synology_microp_initial-v2-0-9389963f31c5@posteo.de>
 <20260308-synology_microp_initial-v2-2-9389963f31c5@posteo.de>
 <2026030827-nautical-overplant-399c@gregkh>
 <8efdf3e1bbf24504d560c12131cade543bec82f5.camel@posteo.de>
 <2026030913-agonizing-shoptalk-ed98@gregkh>
 <7f8d979a881b29398f524f526f52ba9727d95a7c.camel@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f8d979a881b29398f524f526f52ba9727d95a7c.camel@posteo.de>
X-Rspamd-Queue-Id: 8D879239803
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272936-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.493];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 12:52:26PM +0000, Markus Probst wrote:
> On Mon, 2026-03-09 at 06:56 +0100, Greg Kroah-Hartman wrote:
> > On Sun, Mar 08, 2026 at 07:15:16PM +0000, Markus Probst wrote:
> > > On Sun, 2026-03-08 at 19:55 +0100, Greg Kroah-Hartman wrote:
> > > > On Sun, Mar 08, 2026 at 06:41:20PM +0000, Markus Probst wrote:
> > > > > Add a initial synology microp driver, written in Rust.
> > > > > The driver targets a microcontroller found in Synology NAS devices. It
> > > > > currently only supports controlling of the power led, status led, alert
> > > > > led and usb led. Other components such as fan control or handling
> > > > > on-device buttons will be added once the required rust abstractions are
> > > > > there.
> > > > 
> > > > Why is this a mfd device?  Shouldn't it be an aux device?
> > > > 
> > > > But this is just a serial port connection, so why is a kernel driver
> > > > needed at all?
> > > I am not sure what you mean.
> > 
> > Can't this just be controlled from userspace over the tty device to the
> > uart this device uses?  Why is a kernel driver needed at all?
> Like with any other bus device, it can be controlled by userspace.

Great, then usually that means it should not be a kernel driver :)

> But the kernel already provides the necessary userspace interfaces for
> leds, hwmon, input etc. for any userspace application to access.

True, but:

> Furthermore it is required for proper shutdown and reboot, which is a
> kernel task.

What do you mean by this?  What does it do for shutdown and reboot?

Is there an out-of-tree C kernel driver for this somewhere?  Or does it
all just work through userspace today on these devices?

> On arm devices, it completely takes care of the poweroff and reboot.
> There is already a driver here drivers/power/reset/qnap-poweroff.c,
> which seems to be primarily developed for QNAP, but works for Synology
> too.

But that's not this device, that's a different device and driver.

> On x86 devices, is uses ACPI Sleep, but must still announce the
> poweroff / reboot prior to the firmware call to the device for proper
> shutdown / reboot. There is no existing driver that takes care of this
> yet.

Then that should be a kernel driver, no need for the led blinks to be a
kernel driver if they don't have to, right?  We try to only put stuff in
the kernel that _has_ to be in the kernel, within reason.

thanks,

greg k-h

