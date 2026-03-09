Return-Path: <devicetree+bounces-272795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HVoOFyWrmnRGQIAu9opvQ
	(envelope-from <devicetree+bounces-272795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:43:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F94236679
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E73863005174
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1388437C0F5;
	Mon,  9 Mar 2026 09:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3QyHLg+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E252937AA93;
	Mon,  9 Mar 2026 09:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773049392; cv=none; b=nlLCflAUhc9jt71JYhJXNhlBxyxUfJVbujvtQlufOvJNJYpPeXEdpC9t8sVuTat18huPBnhWoppkqStt1apc5ZqwYH3PyvTRBphL2O6NmRo7ptCou5rQe7a4x4fOUdWkW5R22tEDItwwiTR5ouvyjxbWrFvxage9vPyC6gSKXFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773049392; c=relaxed/simple;
	bh=hcQscNv6X2IlMsZ1MJR70rObJ5x82p83FljFASKR/yA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JwM+0ZLfIbh9wac215NkFdr1XmFgyASox1jS41OYUSM/j0rmhpgEjFt38ffz1+8Yaq4oSK2W4lYDWMlgsliHfo8zZoSMXvhql5nTw/RixII8it5XE8IvaQZOzN/qMkaRtKMQ1grxe9VQou6EB1nwGRAIO/8/hm7+p8ruJowvC3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3QyHLg+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2451DC4CEF7;
	Mon,  9 Mar 2026 09:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773049391;
	bh=hcQscNv6X2IlMsZ1MJR70rObJ5x82p83FljFASKR/yA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g3QyHLg+DaI5NY+BHCuKPojHTq6OhmW+NN6e9IDrnlxJzST0+B8MOuPiMzTOi3MHj
	 13rfzrK9d603+yt5jZjg+mzwKljAQz3DNm8xLWXsiPIbCaMgV4ItIUYYUm423wJKY5
	 HXXMwW4KPyyjIuf9pNxIc8nIzzFBAMy8mLsAwyIQM/F7C4mRG240o+WUdgulUmtCK3
	 SG8wHM6HqGbed3CSH2QQLB/ObkQJ97USNAcM8xewthB/FIKf9j3zS6PPu0QQOqbOr5
	 9x1zgSUK1U4EzBi1EAioYyc3Swd4GCE653jS4uM7iXbSggPFSvJy1MrLSeCAEBjgkP
	 a7Ok9ie/sR8pg==
Date: Mon, 9 Mar 2026 09:43:04 +0000
From: Lee Jones <lee@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Markus Probst <markus.probst@posteo.de>, Rob Herring <robh@kernel.org>,
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
Message-ID: <20260309094304.GQ183676@google.com>
References: <20260308-synology_microp_initial-v2-0-9389963f31c5@posteo.de>
 <20260308-synology_microp_initial-v2-2-9389963f31c5@posteo.de>
 <2026030827-nautical-overplant-399c@gregkh>
 <8efdf3e1bbf24504d560c12131cade543bec82f5.camel@posteo.de>
 <2026030913-agonizing-shoptalk-ed98@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2026030913-agonizing-shoptalk-ed98@gregkh>
X-Rspamd-Queue-Id: 16F94236679
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272795-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[posteo.de,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, 09 Mar 2026, Greg Kroah-Hartman wrote:

> On Sun, Mar 08, 2026 at 07:15:16PM +0000, Markus Probst wrote:
> > On Sun, 2026-03-08 at 19:55 +0100, Greg Kroah-Hartman wrote:
> > > On Sun, Mar 08, 2026 at 06:41:20PM +0000, Markus Probst wrote:
> > > > Add a initial synology microp driver, written in Rust.
> > > > The driver targets a microcontroller found in Synology NAS devices. It
> > > > currently only supports controlling of the power led, status led, alert
> > > > led and usb led. Other components such as fan control or handling
> > > > on-device buttons will be added once the required rust abstractions are
> > > > there.
> > > 
> > > Why is this a mfd device?  Shouldn't it be an aux device?
> > > 
> > > But this is just a serial port connection, so why is a kernel driver
> > > needed at all?
> > I am not sure what you mean.
> 
> Can't this just be controlled from userspace over the tty device to the
> uart this device uses?  Why is a kernel driver needed at all?
> 
> > It has multiple functions (leds, hwmon, power/reset, input etc.) and
> > does is a multifunction device (mfd).
> > 
> > It does not however use mfd-core or anything from the auxiliary device
> > and instead implements its functionality directly in this driver.
> 
> If it does not use mfd-core, then it should not be in drivers/mfd/
> right?  Instead, use the aux bus code to split this up into different
> devices and attach them that way, as that's what the aux bus code was
> created for.

Correct.

If the MFD APIs are not used, your device is not a Linux MFD.

MFD is not a dumping ground for devices with more than one function.

Please place all of the relevant pieces into their respective subsystems.

-- 
Lee Jones [李琼斯]

