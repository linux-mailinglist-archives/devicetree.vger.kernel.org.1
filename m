Return-Path: <devicetree+bounces-311048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EJ85L70xLGq3NQQAu9opvQ
	(envelope-from <devicetree+bounces-311048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:20:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9EC67AD47
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:20:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NV7E1ihB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311048-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311048-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9EE6731DD95F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8683238F94C;
	Fri, 12 Jun 2026 16:17:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866583A963D;
	Fri, 12 Jun 2026 16:17:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281048; cv=none; b=HgA8yPR1hN8uiPMDsxpDYQ57/eKpu5EW277pTMD14xHagVKh/Ch0R4eGYCRd2nFOqpduZcYr+htoT6H6VLLYW/fQvA2+K11kssa54wvRKdVze5eEtypfnahpQC/faoWMTz3h6+XSTtulAsT1R8JTB/Wyp+HyNLoyN86CJVIKeDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281048; c=relaxed/simple;
	bh=OWWbZyIFi19j+EWcZCzS4VusckZ01Z7f+4v5sT4JcJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cYGNKUZg5ibVdzp6EVao2PF9Wd+k1Po+lr988qa9oqTZQRmP8+yGepFiRoSX8VsC6HQvMGJOY3EOL6IEVgNMpTIq+YI+ytmr/btkLvTFhhPGHkXGbT2PL+mzmyKkf96YP1sx0UVGK7IcEMT1cC1eQAOnUNaepyODEbM0Xzpi0EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV7E1ihB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60D731F000E9;
	Fri, 12 Jun 2026 16:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781281047;
	bh=OWWbZyIFi19j+EWcZCzS4VusckZ01Z7f+4v5sT4JcJk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NV7E1ihBEgQoUF0VMyMDi2wAShusL7TC1KCRP0r4jcUX/F5/9WSt/uiaeRDSeVvDB
	 dvY2nOIbWPeWDgTZ+HWN7uhWEYopFVZzguW3Xr0HXNryg1o/vNl8nxqhajKVLau+B4
	 UT1WrNW4G7e5XvJYBkBlja85oHNAgeHLaU2JIkVF46RGcd/cdiooi6kHWzgIt9rR99
	 FsH8dHAfa5oOItPyCNUqroBEla3CtNYmClXujG+vZnwFUkrEp7ZVC6PXVP3eSbcnkv
	 IFFnapDmXg3gw059fJB0xiM+anU4vfkZJwz02NNlbUBjOCbL1biKelP0vC7gZQHqhl
	 jJ6nKdvnsikZw==
Date: Fri, 12 Jun 2026 17:17:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-tegra@vger.kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: display: tegra: Add Tegra264 compatible
 for VIC
Message-ID: <20260612-ascend-bonsai-d330bcda91b7@spud>
References: <20260612-t264-host1x-v1-0-8d934987de67@nvidia.com>
 <20260612-t264-host1x-v1-2-8d934987de67@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o0OMdNtSGtGTVJju"
Content-Disposition: inline
In-Reply-To: <20260612-t264-host1x-v1-2-8d934987de67@nvidia.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-tegra@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311048-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6D9EC67AD47


--o0OMdNtSGtGTVJju
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--o0OMdNtSGtGTVJju
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiwxEgAKCRB4tDGHoIJi
0v83APwMmQtkExjlV1rXRIJAdC8veFtoH4XlazZaj20VnWSx1AEA1HO1dn5W3+Fn
I6+TW43YwKhtZHoR7HaENzMU53R8OQw=
=r/jw
-----END PGP SIGNATURE-----

--o0OMdNtSGtGTVJju--

