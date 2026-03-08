Return-Path: <devicetree+bounces-272620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJ4HKHTGrWk67QEAu9opvQ
	(envelope-from <devicetree+bounces-272620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 19:56:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9E4231CD3
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 19:56:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7AE630107F8
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 18:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200EE395263;
	Sun,  8 Mar 2026 18:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="pT4rhOAE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFC523E35F;
	Sun,  8 Mar 2026 18:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772996207; cv=none; b=l2ejvBztwLwc78JGWdOdFKgq8HGgI8UPDhZ+trwRL8djt2dP+7txWuO1Qk1uYGRfhRfA2GIypsS2MKz7w5dsfWJVUWnxjN5ADCrFOhtlXr6pKnNQr8FsjXe1AArH9AVJbPWSv2n2tdlxIcwr2rhFafCIyZ+32uwQ3sYlRDihYWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772996207; c=relaxed/simple;
	bh=1b7PrKCMWI8OXsaOWPp+ifcUI4P+AtBHqjypjS8juqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XBHuayz9eflJhMG0yWLnaR7Vr/9I6dZUb6qX7it7eEB/sS1HUJRRVQ8q/fS2izwLhAe8SoWjWc8NB1PZYlqmu2QpwmRUqS8MnC95PyGt6WRd4bPpLwUodURShItgqAWMKPgiyInYupSLNGEfCQaxhQqMLPe2/ov3o90824QLF5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=pT4rhOAE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10045C116C6;
	Sun,  8 Mar 2026 18:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1772996206;
	bh=1b7PrKCMWI8OXsaOWPp+ifcUI4P+AtBHqjypjS8juqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pT4rhOAE2mrmtIa9HfDNaSx00pIGSsLAzJ6PNa6JHX/SlMrDrPhKXvaG4cV0y9Ste
	 TWJRp3iH0FU5MQQjTdUK2E2tusA8yU3a/BHdAIngiD3V5mEV1AvZ7HNDDMPZwMOtCG
	 B3OeBmGccJfkjJTC7E7Td28V1eFsP0e8spi+vZGs=
Date: Sun, 8 Mar 2026 19:56:44 +0100
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
Message-ID: <2026030850-quickstep-blinking-b853@gregkh>
References: <20260308-synology_microp_initial-v2-0-9389963f31c5@posteo.de>
 <20260308-synology_microp_initial-v2-2-9389963f31c5@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-synology_microp_initial-v2-2-9389963f31c5@posteo.de>
X-Rspamd-Queue-Id: EE9E4231CD3
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
	TAGGED_FROM(0.00)[bounces-272620-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.575];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linuxfoundation.org:dkim,posteo.de:email]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 06:41:20PM +0000, Markus Probst wrote:
> +kernel::module_serdev_device_driver! {
> +    type: SynologyMicropDriver,
> +    name: "synology_microp",
> +    authors: ["Markus Probst <markus.probst@posteo.de>"],
> +    description: "Synology Microp driver",
> +    license: "GPL v2",
> +    params: {
> +        check_fan: i32 {
> +            default: 1,
> +            description: "Check for cpu fan failures",
> +        },
> +    },

This is not the 1990's, please do not add new module parameters for no
good reason.  This should be dynamic (why would you NOT want to check
for cpu fan failures?) and per-device, not per-module.

thanks,

greg k-h

