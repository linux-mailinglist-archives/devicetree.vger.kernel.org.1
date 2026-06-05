Return-Path: <devicetree+bounces-307485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BbO9C9z2ImpZfwEAu9opvQ
	(envelope-from <devicetree+bounces-307485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:18:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7966F649B09
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:18:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Iki9GiRv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307485-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307485-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F87B30A98EA
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 16:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840AB35AC1E;
	Fri,  5 Jun 2026 16:11:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE883EB81B;
	Fri,  5 Jun 2026 16:11:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780675871; cv=none; b=p3LAMYiWDXx4F6E0RDf+LQgFl/nF9SC/7RK+Tg2gXfkH8xGy5XQjbyIWLlcPppARZp1BSypcm6DwrTGHAEFXyccTytY7w0lV4Bbq1TQb/zNs4uaUNhxDjh4OnSDZ7ncLqz4WFMMYH+QrZrlkuSTfAj1wxURKgMoiecUzc4EzcUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780675871; c=relaxed/simple;
	bh=THNpxThsfSQ5q0NoFb0ByoK4k8Hy0TqI7gl/VqmkI6g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Twl7+Jn/ZCsmBQYyRi/nAz1XSV+C5lnG7OcfGG1G4LdUyiHetuZR/w8JSFroRwMCBkeuSB/tKKQ8TUHOt4e7qBlc5rdGXKkWVu3F0EggZOykf00kQYRyB3J9CRCsF+hfitM4slSYz90gu1u+e4+676tZFCFtL8dx0I2zixFa8qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iki9GiRv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E71201F00893;
	Fri,  5 Jun 2026 16:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780675870;
	bh=THNpxThsfSQ5q0NoFb0ByoK4k8Hy0TqI7gl/VqmkI6g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Iki9GiRvZWexLI/dKepIIPf42Ls5mfz3AraduxedE+IqJ5xuulE10BcoLemUhXGCU
	 KiICLIkuX8DUwZrncFVCmtJ1uVElzDsq2TfxHPAfVVqmMJhSVXxzt9mY94fnxCWnuI
	 surd4Lxkcvf5Ni+QhiPLkvsxSGv7k4tMfLwZz1n7jcZvpVul+5HusQCsyV2dW92L6d
	 12/i4OJdn2tG/Cu/LuAp5r2S5ojUW19zqpos42alGqz2J6ajTBplAEi7cNAwqxWwGW
	 shFuRAXxpKNErqqpxcqkp3JPcGoj3sTkY9ihJBaUeMV/AsWN5Qe/7jOe0jr8Hrm1UX
	 trbpDt8bANszQ==
Date: Fri, 5 Jun 2026 17:11:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hans de Goede <hansg@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Jun Yan <jerrysteve1101@gmail.com>,
	Lukas Schmid <lukas.schmid@netcube.li>,
	=?iso-8859-1?Q?J=2E_Neusch=E4fer?= <j.ne@posteo.net>,
	Eric Biggers <ebiggers@kernel.org>,
	Michal Simek <michal.simek@amd.com>, Luca Weiss <luca@lucaweiss.eu>,
	Sven Peter <sven@kernel.org>, Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: Re: [PATCH v4 4/7] dt-bindings: input: sun4i-lradc-keys: Add
 A100/A133 compatible
Message-ID: <20260605-iciness-escapade-29764b0f52c4@spud>
References: <20260605070923.3045073-1-alexander.sverdlin@gmail.com>
 <20260605070923.3045073-5-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8XOEFWoS8IYeKQQa"
Content-Disposition: inline
In-Reply-To: <20260605070923.3045073-5-alexander.sverdlin@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alexander.sverdlin@gmail.com,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-307485-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,lists.linux.dev,kernel.org,gmail.com,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7966F649B09


--8XOEFWoS8IYeKQQa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--8XOEFWoS8IYeKQQa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiL1FwAKCRB4tDGHoIJi
0hU3AP9o1TBwdrTrp0JHQJyNK1YL98B6p2dudAMEacv6gn9T0QD/cWA+agbYLfpd
2TK5za4mqwGmQMDd4iURSwLJrzwNEAg=
=m51E
-----END PGP SIGNATURE-----

--8XOEFWoS8IYeKQQa--

