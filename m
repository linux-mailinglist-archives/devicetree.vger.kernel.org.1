Return-Path: <devicetree+bounces-273022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JSQLa3urmkWKQIAu9opvQ
	(envelope-from <devicetree+bounces-273022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:00:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E0E23C527
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:00:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E32930A02EE
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A5D23DA7FC;
	Mon,  9 Mar 2026 15:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgRXyBsv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052113DA7EA;
	Mon,  9 Mar 2026 15:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773071439; cv=none; b=bLEogtvRom9wj0j0/h02S54SIGagx3cUxhoh6M/GwQ0oihOksjAaYaJPLRvFE/aSYFzvoVfPLOZgLqZqRpSl+3t9NVn7tMU4zdvCyxtAvIC0jf/Dk8F2HXVidkv5oFfHVSPQayfzbDQuOdYDVmfiHNmU+MyKee8AkBO2M5Ig7yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773071439; c=relaxed/simple;
	bh=3p2Dim+bdDTFGhGz3lLyn1e/mTJ/gdOqKuuPJOH/7KQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rc9eYZc1RNGLSzROvhY/BO5Y8cIny9Z4DOCW5XXh6GeqtmzrUNusk5GyCLuIVL/Dt8tEdgI4+XfsYW1YK7ldaz3qFr9tBvoJV4qlu/QTfPTAlCGVcNXUvh0RX2qi7N0wbrHDajgL3MtYoJLHzg+QanC1q1pebhhhhezLMyDGy0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgRXyBsv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1157DC4CEF7;
	Mon,  9 Mar 2026 15:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773071438;
	bh=3p2Dim+bdDTFGhGz3lLyn1e/mTJ/gdOqKuuPJOH/7KQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lgRXyBsvZVtlLj7S9McxTp7EB0FLNP5zaIhBUv2R74YE+tIazKP9+NDeSdPJbeX3A
	 Kl17c/G6soVQi22vl4HtWLBbfcP7rtqzSlnXFCgToRqAnJ0QVbZxOXzejAEFR9Jhyn
	 VX/Jy7IRmxfdCk1tPeVkkn2kHpVkvKaSL3t9fRdbbvhphaT5IUAB3dnnfJz0xIRTNc
	 AG95wft/fJUusszsVWshpto9OurYXPwqbfstOama59tqZQp36b+CUdQpIy94+FG9rm
	 vaj3Cp3XYTn9I2HxINes8cHBnmaEZ+SqQI+C4DX4w0j0LKcyZ08F4gTg+CsvmbPA8R
	 M7L1/s5Su00ew==
Date: Mon, 9 Mar 2026 15:50:32 +0000
From: Lee Jones <lee@kernel.org>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Markus Probst <markus.probst@posteo.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <lossin@kernel.org>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	rust-for-linux@vger.kernel.org
Subject: Re: [PATCH v2 2/2] mfd: Add initial synology microp driver
Message-ID: <20260309155032.GW183676@google.com>
References: <20260308-synology_microp_initial-v2-0-9389963f31c5@posteo.de>
 <20260308-synology_microp_initial-v2-2-9389963f31c5@posteo.de>
 <2026030827-nautical-overplant-399c@gregkh>
 <8efdf3e1bbf24504d560c12131cade543bec82f5.camel@posteo.de>
 <2026030913-agonizing-shoptalk-ed98@gregkh>
 <7f8d979a881b29398f524f526f52ba9727d95a7c.camel@posteo.de>
 <DGYAFNSJ7576.1E0JZ2W499ZQ7@kernel.org>
 <e43ca445ec7887d3d15676adb7db04f5685f4195.camel@posteo.de>
 <20260309151555.GU183676@google.com>
 <DGYD30Z605PK.NEMCORGS2FTD@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DGYD30Z605PK.NEMCORGS2FTD@kernel.org>
X-Rspamd-Queue-Id: E7E0E23C527
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273022-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[posteo.de,linuxfoundation.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, 09 Mar 2026, Danilo Krummrich wrote:

> On Mon Mar 9, 2026 at 4:15 PM CET, Lee Jones wrote:
> > On Mon, 09 Mar 2026, Markus Probst wrote:
> >
> >> On Mon, 2026-03-09 at 14:32 +0100, Danilo Krummrich wrote:
> >> > On Mon Mar 9, 2026 at 1:52 PM CET, Markus Probst wrote:
> >> > > Yes. I will split it into multiple drivers using the aux bus in the
> >> > > next revision.
> >> > 
> >> > Independent of the other discussion whether this belongs into the kernel in the
> >> > first place, reading over the cover letter and commit message I understood the
> >> > following.
> >> > 
> >> >   "Synology uses a microcontroller in their NAS devices connected to a serial
> >> >   port [...]" controlling LEDs, fan speeds, a beeper, etc.
> >> > 
> >> >   I.e. it muliplexes several physical functions that belong to different
> >> >   subsystems, such as hwmon, input, etc. over a single serial port.
> >> > 
> >> > This sounds like a textbook candidate for MFD to me.
> >
> > Then you do not know what a textbook candidate for MFD is. :)
> >
> > What part of the MFD API does this device utilise?
> 
> I did *not* say this driver - as in the code that was posted - is a textbook
> example for MFD.
> 
> I said that the hardware that is supposed to be fully supported eventually is a
> textbook candidate for an MFD driver, i.e. it should use things like
> devm_mfd_add_devices().
> 
> I think this was obvious from what I wrote above.

No, not at all.  Or there would be no confusion. :)

But yes, I agree, if re-authored this could fit into MFD.

-- 
Lee Jones [李琼斯]

