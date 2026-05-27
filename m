Return-Path: <devicetree+bounces-303475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FNmKbsKF2pB2AcAu9opvQ
	(envelope-from <devicetree+bounces-303475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:16:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D1B5E6AED
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:16:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3FECB30428E8
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 15:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F51731A567;
	Wed, 27 May 2026 15:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPiXoF0h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A44426EDE;
	Wed, 27 May 2026 15:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779894331; cv=none; b=h6tk1S4XVhpMRl8AHWdRNr1iIw1n5LBS4hnTFPE1NFddcf+akFBEnS+NKL41JAxbKKyLBTGfpGAv7bVn53G1ut63jrSemz6i+3HUP0Rji4kz+BnqomAJJsWlO6J2/1xygl/c1Zvkgp4Ra1gcuinewY1C1Kr9Pe78GKUdmUHix2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779894331; c=relaxed/simple;
	bh=MGmR6CcGiBOmQNZpPysg402T4JmKxS2ge0rBNZi4C40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NmZzjm8be9rWwq1ZowJxbsIz8NrgPM/qutt0R6KOs4vrwrAUTkXZCWqh8pA8Au20HfMVE6Y2zdfUf+y1YXuxrs5Iwlri0odxBqimjIUPN74fxyr3TTrM6jGfvS3cqUcb/78BYLkYGQNQgqsRnOMWNrKYwE+KJnPhjDYqwFHicLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPiXoF0h; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63A5F1F000E9;
	Wed, 27 May 2026 15:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779894326;
	bh=MGmR6CcGiBOmQNZpPysg402T4JmKxS2ge0rBNZi4C40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XPiXoF0h6f0mUiURqQTIsK69SVa2icT9vazhZC5YvKavoLC2mQuyyoJw2uHKNKbIe
	 mQ2pAHz4LWL/PzmKg/DKJqncps/lvADLp15XGEWrXilGApyoPDJQ+8j54JrPVKARZt
	 CYVHYmCpfCqhN0auJDLq83ATCYOwl9dWJ9/gs0cc4F08Nh5gr4Oh1cR7BUejiEkMcF
	 9aQaMTt2K0vJd1rNz7OytmzPHwHjNbex7P2gqzsgt2YnJQEBrBuTZ/voi/lrkB4hvr
	 TFJu28YRFfA6Yt/wxCgpHDrSZlwEmycGQbd4y0TlM7zD+B/k9PYjWDwvLh5m4GWxJK
	 7gPgsITCfBSBA==
Date: Wed, 27 May 2026 16:05:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Cc: Karel Balej <balejk@matfyz.cz>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	linux-kernel@vger.kernel.org,
	Duje =?utf-8?Q?Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
Subject: Re: [PATCH 1/3] dt-bindings: mfd: 88pm886: Allow vbus regulator
Message-ID: <20260527-private-deity-f6f1c12ade6f@spud>
References: <20260526-88pm886-vbus-v1-0-f2bd1fd3c19e@dujemihanovic.xyz>
 <20260526-88pm886-vbus-v1-1-f2bd1fd3c19e@dujemihanovic.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OqxlURgg5Xue9OFE"
Content-Disposition: inline
In-Reply-To: <20260526-88pm886-vbus-v1-1-f2bd1fd3c19e@dujemihanovic.xyz>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303475-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[matfyz.cz,kernel.org,gmail.com,vger.kernel.org,lists.sr.ht,dujemihanovic.xyz];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Queue-Id: C3D1B5E6AED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--OqxlURgg5Xue9OFE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--OqxlURgg5Xue9OFE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahcIMgAKCRB4tDGHoIJi
0j2xAP9PjsDeNxovrLfTuinnvZ0k7nOVtSj4an62wC4eGC2SpAEA3uury4d5vMKe
EENU5kb0ulnU2THl5pHfmpi3GOUJpgA=
=FDsI
-----END PGP SIGNATURE-----

--OqxlURgg5Xue9OFE--

