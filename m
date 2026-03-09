Return-Path: <devicetree+bounces-272686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH7JG1FhrmlbCwIAu9opvQ
	(envelope-from <devicetree+bounces-272686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:57:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3F92340BA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 027A93031806
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 05:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337B3321457;
	Mon,  9 Mar 2026 05:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="kto2DTDG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BCF1E1C02;
	Mon,  9 Mar 2026 05:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773035718; cv=none; b=CpyAkLG9/TWcU/GwvbnEkyyOkzkVO0TlEK0Aw5wUPTK75rx1Sm5lXcASMP/sR/9usjH1XpuMWHivDShVI6lb7Lnh6V5H5NEehWdMM5upKzi9YvASMF1LLDcoe4U+g6HoF6C6AOAgZbQZ3f3tOoKbrLoTqTmhD883PrTh4YoHP1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773035718; c=relaxed/simple;
	bh=z5t07wHjxVDGBOiuz2t39KpevuyzRbp4Rlb6VpAlB+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UVJPXFE4igF3ymWQ5X1F18xuUdbFJP0yAZZHoz/T3j1rV2l67iU4sszVGJ0ydwxbeock7SJrnsxUTgkeCKVgjkJ/jMAdQ/W+ZpIlD/yyTIdct1p6Iv7ZnrH75Lj47/eZMMfJ4+Ct+5TFfYEjxilb4sfHIzHJ/BH7PDrEW89aVDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=kto2DTDG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 141D3C4CEF7;
	Mon,  9 Mar 2026 05:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1773035717;
	bh=z5t07wHjxVDGBOiuz2t39KpevuyzRbp4Rlb6VpAlB+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kto2DTDGAaDcAQ59HZ1zsimqJfI/NbZwwUvC8WDtOk99vMiAKd6v4POXpcYqG5vEx
	 ypgHkfGWAuQQ9kfdh6U+Jh3oH1XHA5H0X6ByObG3oTueXj0rZp9bjJJeZ4lguu1ttp
	 lP9M63CGMoQFLcn93L2/Jo90KR0ZN2CDm2tOI4C4=
Date: Mon, 9 Mar 2026 06:55:02 +0100
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
Message-ID: <2026030928-swerve-unclothed-79bb@gregkh>
References: <20260308-synology_microp_initial-v2-0-9389963f31c5@posteo.de>
 <20260308-synology_microp_initial-v2-2-9389963f31c5@posteo.de>
 <2026030850-quickstep-blinking-b853@gregkh>
 <33a7bfd923ebf118714dd79f4af0d4d8c4120d73.camel@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33a7bfd923ebf118714dd79f4af0d4d8c4120d73.camel@posteo.de>
X-Rspamd-Queue-Id: CE3F92340BA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272686-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.561];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,posteo.de:email,linuxfoundation.org:dkim]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 07:23:25PM +0000, Markus Probst wrote:
> On Sun, 2026-03-08 at 19:56 +0100, Greg Kroah-Hartman wrote:
> > On Sun, Mar 08, 2026 at 06:41:20PM +0000, Markus Probst wrote:
> > > +kernel::module_serdev_device_driver! {
> > > +    type: SynologyMicropDriver,
> > > +    name: "synology_microp",
> > > +    authors: ["Markus Probst <markus.probst@posteo.de>"],
> > > +    description: "Synology Microp driver",
> > > +    license: "GPL v2",
> > > +    params: {
> > > +        check_fan: i32 {
> > > +            default: 1,
> > > +            description: "Check for cpu fan failures",
> > > +        },
> > > +    },
> > 
> > This is not the 1990's, please do not add new module parameters for no
> > good reason.  This should be dynamic and per-device, not per-module.
> agreed.
> 
> > why would you NOT want to check for cpu fan failures?
> 
> Because it is also triggered at low fan speeds, even if they are
> intentionally set by the driver. While the parameter is 1, the driver
> would enable those checks for fan failures and would prevent low fan
> speeds. The parameter would allow it to disable this check and allow
> for low fan speeds.

That sounds like something that the driver itself can do on its own,
don't force a user to make a choice that they really shouldn't be
making.

thanks,

greg k-h

