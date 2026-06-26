Return-Path: <devicetree+bounces-316041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w5B6AMhSPmqhDgkAu9opvQ
	(envelope-from <devicetree+bounces-316041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:22:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4186CC073
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:21:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jby4GSSL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316041-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316041-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C4CD3037DF7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAFD43ED5C9;
	Fri, 26 Jun 2026 10:21:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFAA3ED3A7;
	Fri, 26 Jun 2026 10:21:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782469300; cv=none; b=fZoGa2pDAYbIb2NoW+6+vYuhkZLXVc/zwwVLY2tbwMyWlaz8oP0KRCPw5Sk96UrX2JdwHIgqNrFGfVTTHVye4dygLeh1wUu2cK5eAf19gil95GxAaQbQ5uZgsKxPpZOBcFyGP33i1sJl8U9NDltm1BN0wjVCANMW3iVmd4v29+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782469300; c=relaxed/simple;
	bh=YzX/MLAta5+or8FOVzZwpdDah+/ccMdWjuTIgvsyxos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eSS/4q/rLD+3xeMstmMnru0Jl78IJTZwr0Smxq5PWrPmnSaDeFxL0n1X2L1U3w3r0xMHKI1bYBNprNbfZFJxB0bnvQxv4ZXPCMLjK7Rv0aSO425PcMrgQ69/BswQQBXcUo6GdndgtH1gmKEzzgUsKCwjbjxdiITfmIkf1AaiSEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jby4GSSL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26BEB1F000E9;
	Fri, 26 Jun 2026 10:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782469299;
	bh=YzX/MLAta5+or8FOVzZwpdDah+/ccMdWjuTIgvsyxos=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jby4GSSLB3FQDlGlwLgAbSFvKzA84V2ayaAzuo4FElROdQkFtzmg9+xj7HfktefBd
	 A3Ag69eHgHl59FZNUjUDQgXF2ya0XmU5X/peuZWK5CnsBMetj4Tbk1avoaC/gxQECj
	 yHVV2+Fj2qem8RNVtN0/Cg4FFhIRAOmdDFdx5+OROMwh166qy58kv6Ad1z0u7RdZvn
	 mEAOeMtkQCBoPwrg/h6QHGcBWYslYbEM/nC7Ddkpgj40ZG+/J0zo88ahI/iRIe77HY
	 QxEDo7ZMOE65bF+2tl/fEUzJ3/2Jrfk8DR3rYmQfAGH3kKMA4aVUJjareuS7FmcJoR
	 9YtGaj1aLYs4Q==
Date: Fri, 26 Jun 2026 12:21:35 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-tegra@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: display: tegra: Make non-vm registers
 optional
Message-ID: <20260626-unnatural-thick-iguana-88ab9e@quoll>
References: <20260622-host1x-nohv-v1-0-65bc682a617f@nvidia.com>
 <20260622-host1x-nohv-v1-1-65bc682a617f@nvidia.com>
 <20260625-hospitable-antelope-of-diversity-f3456d@quoll>
 <NWz2vh3HRYqBDySgTFAF_g@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <NWz2vh3HRYqBDySgTFAF_g@nvidia.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-tegra@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316041-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C4186CC073

On Thu, Jun 25, 2026 at 06:17:39PM +0900, Mikko Perttunen wrote:
> On Thursday, June 25, 2026 5:34=E2=80=AFPM Krzysztof Kozlowski wrote:
> > On Mon, Jun 22, 2026 at 05:22:50PM +0900, Mikko Perttunen wrote:
> > > Host1x can be used without accessing the hypervisor or common
> > > registers. Adjust the bindings to make them optional.
> >=20
> > You still have these registers in the hardware, so it is not optional,
> > not flexible. IOW, DTS represents the view of real hardware for the
> > software, and that hardware still has this address space regardless if
> > OS should use it or not.
> >=20
> > Otherwise you need to provide better background here.
> >=20
> > Best regards,
> > Krzysztof
> >=20
> >=20
>=20
> The intent is that the vm-only version is used in situations where the
> other register regions are not available to software. Typically that
> means running as a virtual machine, and the hypervisor owns the non-vm
> register regions and doesn't pass them to the guest.
>=20
> Since the guest runs under the hypervisor, its view of 'real hardware'
> is what the hypervisor is exposing to it -- in this case with just the
> "vm" register region.
>=20
> I'll add further explanation along above lines to the commit message
> if you're OK with it.

Yeah, it's fine. Please extend the commit msg to make it more obvious.

Best regards,
Krzysztof


