Return-Path: <devicetree+bounces-317744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oJD/LbS5Q2p8fwoAu9opvQ
	(envelope-from <devicetree+bounces-317744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:42:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B4D6E44E7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:42:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=brljn1eC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317744-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317744-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C152C301BB26
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464BB3A4F4B;
	Tue, 30 Jun 2026 12:40:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3293FBEC1;
	Tue, 30 Jun 2026 12:40:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823223; cv=none; b=hGlsUPqCC/g5E02loN2XmTD1XI1qQkKP4gx1MYdWQxPLE4YslLgoTtU3ho4kX9HE8PsAM8oOqqdsqqgTlraPdCoV4WXyWo9fR1e2GIj9iJlmtqY8/Xtx/yo9hSyQLdAnqxs843mHJE/N1CivJHxrxBFuy/VDndXxyrV41vuJ12s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823223; c=relaxed/simple;
	bh=RAU+Lul52N8K6Byh4bFswCtu9IP82zxsiXB/iSJn6mc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DpGprBZI9xT5kYgv46jI3bGNGGhIVz3LWxi6PEfe7pXbdPEPNtk4nphMLKv/fLe9wH7GotlX1YmiW93xq9rhu76rLKyryqGD8XZTjE1qjImvQKM7ci8OgSyiyZMpjRjA1WbMl8lpsD/KNPEjDJ5uHX8+sSL/Cmw5vhMMkDn/0/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brljn1eC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E2281F00A3A;
	Tue, 30 Jun 2026 12:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823221;
	bh=o/9CMvHy5knN9q2s+eDnWZgo8nVwDSb8fRgIcBA1kL4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=brljn1eCSKnTLR7lA66U3D+P/mcfwfnk5r08rZNtM/BE6wt39RQpGqO3m74DOohJu
	 Y5AsKwRzHf6WewncNP+GblW6WcDCU+44UtLKOs4MWRUWdGT9XwIsHDynUzya58tbsW
	 Een59qj7l5Gg/AzW8ivmzpNfOIt+d46pv+Xu4Bl6lUnAo1NJDQDOs8EteJMOX6fZjR
	 m9oG7HSY5iuO8XHOZL4tkqJQ7MIbuiCypz4HyZZfNnRNpUvbDgSR7XEEgFAe/mUVzS
	 USizrum3mHFYrakd8Pje13+ltayE9fiRJoQoiVuc7BhbdM+MBx+qIu2mdwvGbLYz5o
	 q2B0fvszEZacA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/11] rust: driver: remove open-coded matching logic
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, "Danilo
 Krummrich" <dakr@kernel.org>, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, "Alexandre
 Courbot" <acourbot@nvidia.com>, ojeda@kernel.org
In-Reply-To: <20260629-id_info-v2-9-56fccbe9c5ef@garyguo.net>
References: <20260629-id_info-v2-0-56fccbe9c5ef@garyguo.net>
 <20260629-id_info-v2-9-56fccbe9c5ef@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:40:20 +0000
Message-Id: <20260630124021.3E2281F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317744-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:dakr@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:acourbot@nvidia.com,m:ojeda@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,garyguo.net:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B2B4D6E44E7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Data race and NULL pointer dereference due to lockless access of `=
dev->driver` in `Adapter::id_info`.
--

commit 228e0cfe9ec1514c36d9085e1b3070934920f9ab
Author: Gary Guo <gary@garyguo.net>

rust: driver: remove open-coded matching logic

This commit replaces the open-coded ACPI and OF matching logic in the Rust
driver abstractions with a single call to device_get_match_data(). It remov=
es
the acpi_of_match_device() helper and updates the Adapter::id_info() functi=
on
to use the C API directly.

> diff --git a/rust/kernel/driver.rs b/rust/kernel/driver.rs
> index 824899d76fed2..c9c74c4dde8fa 100644
> --- a/rust/kernel/driver.rs
> +++ b/rust/kernel/driver.rs

[ ... ]

> @@ -325,117 +304,23 @@ pub trait Adapter {
[ ... ]
> -    fn id_info(dev: &device::Device) -> Option<&'static Self::IdInfo> {
[ ... ]
> +    /// Returns the driver's private data from the matching entry of any=
 of the ID tables, if any.
> +    ///
> +    /// If this returns `None`, it means that there is no match in any o=
f the ID tables directly
> +    /// associated with a [`device::Device`].
> +    ///
> +    /// # Safety
> +    ///
> +    /// The caller must ensure that the `dev` matched data is of type `S=
elf::IdInfo`.
> +    #[inline]
> +    unsafe fn id_info(dev: &device::Device) -> Option<&'static Self::IdI=
nfo> {
> +        // SAFETY: `dev` is guaranteed to be valid while it's alive, and=
 so is `dev.as_raw()`.
> +        let data =3D unsafe { bindings::device_get_match_data(dev.as_raw=
()) };

[Severity: High]
Does this introduce a potential NULL pointer dereference if dev->driver is
not set?=20

Previously, id_info() performed a table lookup that did not depend on the
device being bound to a driver. By switching to device_get_match_data(), the
underlying C implementations (such as of_device_get_match_data() or
acpi_device_get_match_data()) will unconditionally dereference dev->driver.

If a Rust driver calls Adapter::id_info() on a device::Device that is not
currently bound (for example, from a concurrent sysfs attribute or a
workqueue), could this lead to a panic?=20

Should this lifecycle precondition (that the device must be bound to a driv=
er)
be explicitly documented in the # Safety contract to prevent unsoundness, or
should we ensure dev->driver is valid before calling this function?

> +
> +        // SAFETY: Per safety requirement, `data` is of type `Self::IdIn=
fo`.
> +        unsafe { data.cast::<Self::IdInfo>().as_ref() }
>      }
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-id_info-v2=
-0-56fccbe9c5ef@garyguo.net?part=3D9

