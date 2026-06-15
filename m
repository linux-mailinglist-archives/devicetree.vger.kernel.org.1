Return-Path: <devicetree+bounces-311808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vSPjBjDDL2pjGAUAu9opvQ
	(envelope-from <devicetree+bounces-311808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:17:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A136684FAA
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:17:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Mpb+BgFs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311808-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311808-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C625D300647F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44553932E4;
	Mon, 15 Jun 2026 09:17:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9BD353EEB;
	Mon, 15 Jun 2026 09:17:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781515053; cv=none; b=auxrFeyhVO33EszX81ZhAR5wJ1aFkO8NwP9kd0EDtfNQSM6nLsIJY3SMDisC5R9jNxAwW2uLUgWnAqmmf9OfQPNseUyiTnMSeGFjhX/SPm0Fv0RFgNFOt3G5B/ztl0Izu/csn53boASHnxDx6m0cDxTPiYEl9EWTTnoHrfWAmng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781515053; c=relaxed/simple;
	bh=sUN1mggEBsvNeQUZYfEsFlExB4nn5MMmyNrc+xQboLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uJKxF0Hya/C2INsQpkwlddFB3Ai0ZZGYtBG9qT40MPQOBvypwFfGac+S7LbLNCrflZJjAkfMp51c9vz9ADoe94dWa4DXlgV4VcHnmUZyxu1LRM8G8XPoatNHwLVjxbCT9mxdPmgnHyNXtRs1/i3fo3Dh0YWIYYcP/l9IExhWNms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mpb+BgFs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F03D61F000E9;
	Mon, 15 Jun 2026 09:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781515052;
	bh=sUN1mggEBsvNeQUZYfEsFlExB4nn5MMmyNrc+xQboLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Mpb+BgFsw+7A0qUi5aHSlxex14BAbTk6I++U0zGciY8ez4lvx7WpwG+e1pH1XSZ3M
	 ovXb4pNne9USG2Ho523ENLtgwxwq9zblIB4r9RZXAGkDWwReHND5fZiMIL9pmZwtCn
	 RGnC67HS0HTX8uBRRdKziZJg+I+3nM05lOk4SaxLqG+k9cEqpOSVf/+/44jtq9ctVP
	 iK3Vvv50UxhBgx1v2XtujNL/o4IYMr4aLKKVYk8t/v5fl+gOP/ACI9890Mz3MCurpt
	 ANGMu+7g41+OpprAVigK9pFgEHrDnaXj0cBhaHRfQKUzKg8sGorG+69eFWyD3sOlRF
	 uSM5xb52sniMg==
Date: Mon, 15 Jun 2026 11:17:29 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org, 
	Amir Dahan <system64fumo@tuta.io>
Subject: Re: [PATCH v3 4/4] Revert "dt-bindings: display: panel:
 panel-simple: Add lg,sw49410 compatible"
Message-ID: <20260615-amigurumi-kagu-of-prestige-ecae6c@houat>
References: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
 <20260614-judyln-panel-v3-4-07f4134441bd@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="afkgux7sdtvsh334"
Content-Disposition: inline
In-Reply-To: <20260614-judyln-panel-v3-4-07f4134441bd@postmarketos.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:sajattack@postmarketos.org,m:neil.armstrong@linaro.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:jesszhan0024@gmail.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:david@ixit.cz,m:phone-devel@vger.kernel.org,m:system64fumo@tuta.io,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311808-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[mripard@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,kernel.org,ravnborg.org,vger.kernel.org,lists.freedesktop.org,ixit.cz,tuta.io];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,houat:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A136684FAA


--afkgux7sdtvsh334
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 4/4] Revert "dt-bindings: display: panel:
 panel-simple: Add lg,sw49410 compatible"
MIME-Version: 1.0

On Sun, Jun 14, 2026 at 05:08:01PM -0700, Paul Sajna wrote:
> This reverts commit a74c2e55ab66519ffa2069ac9ae83cd937bff4c4.
>=20
> It isn't actually panel-simple-compatible, and we knew as much by the
> time this merged, but I guess maintainers needed something to prevent
> the dt-bindings error going off while I was working on these patches.

I had a look at the patch and discussion that commit was from, and I
didn't see anyone bringing up that it wasn't actually panel-simple
compatible.

If you knew as much back then, why wasn't this brought up?

Maxime

--afkgux7sdtvsh334
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCai/DIAAKCRAnX84Zoj2+
dt4gAX49UvOe2Zj08VKwUKpsZozNFe/Yoeizs4amVYEac2pNv+aAF420ATx6l1hM
5i8fITgBegOFQFS9CgjhrXP4pP1+hSO4vcQ5SSy0pMGsN73XmQXJJAjapYIp85+a
eXguIesxmw==
=F+rc
-----END PGP SIGNATURE-----

--afkgux7sdtvsh334--

