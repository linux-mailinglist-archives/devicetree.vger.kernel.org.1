Return-Path: <devicetree+bounces-316042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SlMvDctTPmonDwkAu9opvQ
	(envelope-from <devicetree+bounces-316042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:26:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 150156CC116
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:26:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="H9wvkJY/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316042-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316042-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7ED45303BEB9
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C85D3EF66B;
	Fri, 26 Jun 2026 10:26:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D9E3ED5D4;
	Fri, 26 Jun 2026 10:26:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782469575; cv=none; b=LHh5cKzF2mzV3bFdBX9XpW5hXR6JkbSV9YAjJR8ZxX/SFpMQATSTgLHhclGCAZtIsdGAIaTAzgrjd0Hs99UUMv1XmY31RZDjVjCihdiSm2xwaQc4BzyrYxlxpQKsMNmCCXO6tqPHc2NMK0+Z4lvEVdBOfExJXEVjhsabj2COTvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782469575; c=relaxed/simple;
	bh=zNvNIOP+lA+Tu8EL824I1I9M5mhvmoXbh5ASrZCn7mo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNL82ZMzbA66rHosROV7SeBZXN3ThrSOtbSTEPEF9NEkuSGLlzjl5xLTYpqjmJeB5IpwT87jf0SQ2rx3eTccoe/nYuQLKtHnWMPSx+5r8b1iIM1qftWY/eUY4NZrqDC8LkmuiqsHFQZmrfieqdjZIuFCmVkf2bZjVmgiQK6//w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9wvkJY/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B56A1F000E9;
	Fri, 26 Jun 2026 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782469567;
	bh=zNvNIOP+lA+Tu8EL824I1I9M5mhvmoXbh5ASrZCn7mo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=H9wvkJY/3byFOViyxOid8+vl+SuEU6XbFgMfE5Kx+E2wHQYTE7zIofEN7S8tq2ZK8
	 kIGhIrlDySw50wA6u2Aif5FbF9GXefslwlrwqRsIts8SmM9XrCRQ+bGDtXl9yzXCDL
	 YDX0C8rv3pbJEI6+Gk0E4GyVofRmEVP+Srb4+CZgzKwm+8HqYRgZ7EF00/xU+1G1jU
	 04EETzd3wRIJ5rr3D34NTBtf1tUc6I1W47JroPm/WMa4YjlJTxwdpPJ3Pjkwtk0vHO
	 YLSIWkmJiCCiO/ulSCrwNXFwC0jjK2rldL5IPuwxNgkomYNZ/gKa1Dfm24gIi6MQxw
	 K46CS12YOskUA==
Date: Fri, 26 Jun 2026 12:26:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-tegra@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: display: tegra: Add channel/syncpoint
 range properties
Message-ID: <20260626-sceptical-aardvark-from-mars-cedf81@quoll>
References: <20260622-host1x-nohv-v1-0-65bc682a617f@nvidia.com>
 <20260622-host1x-nohv-v1-2-65bc682a617f@nvidia.com>
 <20260625-poetic-heavy-vulture-7baabb@quoll>
 <Np88My8kTE-rRphOw0a-Ew@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Np88My8kTE-rRphOw0a-Ew@nvidia.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
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
	TAGGED_FROM(0.00)[bounces-316042-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 150156CC116

On Thu, Jun 25, 2026 at 06:26:43PM +0900, Mikko Perttunen wrote:
> On Thursday, June 25, 2026 5:36=E2=80=AFPM Krzysztof Kozlowski wrote:
> > On Mon, Jun 22, 2026 at 05:22:51PM +0900, Mikko Perttunen wrote:
> > > Channels and syncpoints available may be limited when other system
> >=20
> > What are channels and syncpoints?
>=20
> Very host1x-specific hardware resources. Somewhat close to GPU channels
> and semaphores / fences if you're familiar with those.
>=20
> >=20
> > > components are using them. Add properties nvidia,channels and
> > > nvidia,syncpoints to limit the range of usable channels and/or
> > > syncpoints.
> >=20
> > Why isn't this deducible from the compatible?
>=20
> When Host1x is partitioned, the hypervisor (or other software entity
> with access to the non-vm host1x register regions) can configure which
> channels and syncpoints are available to each partition arbitrarily.

So you will have different boards for the same SoC with different
values?

>=20
> How that partitioning was done is not discoverable through hardware
> directly, so we need to pass that information through device tree.
>=20
> >=20
> > Also, nvidia,channels is too broad/generic. This is not ADC, right? And
> > channels is a common term in IIO. And in few other cases.
>=20
> It's not ADC. Yes, it's a common term in a lot of contexts. I can call
> it nvidia,host1x-channels if you prefer but that seems a bit redundant
> given the context.

host1x is indeed poor, but maybe there is some way to be a bit more
descriptive? message-channels?

Best regards,
Krzysztof


