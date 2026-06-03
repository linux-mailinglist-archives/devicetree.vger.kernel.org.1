Return-Path: <devicetree+bounces-306386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A1ulH2lMIGpZ0gAAu9opvQ
	(envelope-from <devicetree+bounces-306386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:46:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A352639601
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:46:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PbNOyYyi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306386-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306386-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CA316326A671
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF2D43D45FE;
	Wed,  3 Jun 2026 15:29:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5253D88E2;
	Wed,  3 Jun 2026 15:29:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500554; cv=none; b=pmJ3roJbGNPl55f29juEv34OgSX/W6qoiu/1ur2ausizMnx5vBoAweMGvo5SjDnoBXLTdaHETZHaGFEpklAQtcHviAtsZgqy3bZSlztAUvosFoAgeZGk8V96X1FQQxZO+u0fMeUqQc2u7KBUSoWBoNP/NoV89dwg/0f+eOMGcZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500554; c=relaxed/simple;
	bh=dEM4FZiYxW5GwuHui+XET6DH4BwS+45tvNzCTdARDiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rzYGm8V662SAqm/dHxyxgJ797zmUtb2m8azXmCGwktOSrdZA2RyBcxVtTQ55rr8miU1aN0ZE3Z3Z4pEHYHN8B9qOGb1PfSjzd+T9JhEmFWsOPbY/UdlzRIeFGXnO+SPtYMyiaEr2iraZp+qrNbMZiSsaH9anwxF3VBSJRZo+tvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbNOyYyi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6244D1F00893;
	Wed,  3 Jun 2026 15:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780500553;
	bh=dEM4FZiYxW5GwuHui+XET6DH4BwS+45tvNzCTdARDiQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PbNOyYyiz8IZwYJEG0n+fAwOz9+vF5Hul7AVXy8HkjLQIU0/XpovG6Jhk9K9J3EJ0
	 1chyVNTtz1Tn7m9cplpxJ0DhUIuCFfx/fftXz7AnyRKtFDKXF3Tjl2FdH4mB/m8GqM
	 7y5HshQOQBAwkky6kjEWWk6NoL+JucNJr0V0z7Cyi+3y5VD3scuUxqdSXSD119Y0c7
	 jPYdXBlB2gW9DFH2i3Ad0CJfJ0iQACnUihbBxOpAlsqLJ5fllY84TylNXH0uMYs5H2
	 tcpIK+O2J7TZK7iiymP2V2Z4KvPPI8DGKKcBfWkG6Dgg9mGymgM1vhEdlsayvPuod6
	 1bAP8cKUa7nOg==
Date: Wed, 3 Jun 2026 16:29:08 +0100
From: Conor Dooley <conor@kernel.org>
To: rodrigo.alencar@analog.com
Cc: Michael Auchter <michael.auchter@ni.com>, linux@analog.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH 04/12] dt-bindings: iio: dac: ad5686: rework on power
 supplies
Message-ID: <20260603-jinx-comment-893bd09b67e9@spud>
References: <20260602-ad5686-new-features-v1-0-691e01883d27@analog.com>
 <20260602-ad5686-new-features-v1-4-691e01883d27@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MaYwtlXVLhGyALtk"
Content-Disposition: inline
In-Reply-To: <20260602-ad5686-new-features-v1-4-691e01883d27@analog.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306386-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,spud:mid,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A352639601


--MaYwtlXVLhGyALtk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--MaYwtlXVLhGyALtk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBIRAAKCRB4tDGHoIJi
0hHpAP4vSnt2gJc7cOKZ5HA16ZE9X3/61xB+ARF0TMDXNE9uhwEAjBaheBYS48KL
mADBl6MOPknJR45HEpYVF36x6gnu8QA=
=OxSt
-----END PGP SIGNATURE-----

--MaYwtlXVLhGyALtk--

