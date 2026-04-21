Return-Path: <devicetree+bounces-289172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMMzMYOu52lZ/QEAu9opvQ
	(envelope-from <devicetree+bounces-289172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 19:06:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2681643DB83
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 19:06:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BB9E3009B0B
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 17:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2653381AF8;
	Tue, 21 Apr 2026 17:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkzXN6rX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89995364038;
	Tue, 21 Apr 2026 17:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776791124; cv=none; b=M1Gmj5WMrvMEJdX9QxNLW5BUOV/oVfz4RJg+buDTfVypAdpf1OMflYj3T5tttGAr0k6BUbdKBPcJiLkATLr3gly+LdwtRc+RmGGFwO4TNcFEqMaUywi/tZXNC49ohI/sogGRntS9co5ZiFDVoEKaSzvtv8HgIoKtNb9i7FBWEEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776791124; c=relaxed/simple;
	bh=Z1ylYruYbhjfnpeCNaQ89mNWV1yukc5kkoI0lUofjuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZvJpsmTdxlQF37YoIhbqJ/mSZ3q62rAy28AFS3C47rvYe6yHKo28jAkrlOvoMi6Hlc+Mn2VQOgYO/Kc0AbYPIvmpH6vutKB6RUECRmlS0u+vFKCSLbC5mPbcVBc7Gic/PO/AgEcnX6epLTFdQbSx1HiVugmfuIk1Y09kw99Bwbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkzXN6rX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCD50C2BCB0;
	Tue, 21 Apr 2026 17:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776791124;
	bh=Z1ylYruYbhjfnpeCNaQ89mNWV1yukc5kkoI0lUofjuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AkzXN6rXLrqbPaKzFrZVA5O7xIxtH4nkHCu15azhXJ0NWdls3ios/GdzaRlM6uE7I
	 9geCxENEEi/Y633zBDxaLCHopnhQ7PXsohfM6dxswZv88ojXMJ9F0offWnWZmm86hC
	 5rNODIAwQp14JLnzNM9C/NSRb3sPVtPuqIUyDxox/kG91DWmD5q7/7rdy+C3AdLPBg
	 UhPgZVbCxc/F5fuLXZeF3AdBtIeTK5AnC5nCKLcNQKi1HqIzHwcEgDMwxa/iUyVu9I
	 g19f++9oev8llXhdNyq4zP7CEXyqb6TQL86JnASJtgQtmKva7ov213Hbowegv2+Ul2
	 ICxIejn9MK1Ag==
Date: Tue, 21 Apr 2026 18:05:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: Guillaume La Roque <glaroque@baylibre.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/8] dt-bindings: thermal: amlogic: Add support for T7
Message-ID: <20260421-nullify-volley-5ba0e5e8070b@spud>
References: <20260421-add-thermal-t7-vim4-v3-0-a2e7215ed003@aliel.fr>
 <20260421-add-thermal-t7-vim4-v3-1-a2e7215ed003@aliel.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m1dzShhxAayQS2fO"
Content-Disposition: inline
In-Reply-To: <20260421-add-thermal-t7-vim4-v3-1-a2e7215ed003@aliel.fr>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289172-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:email,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2681643DB83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--m1dzShhxAayQS2fO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 21, 2026 at 09:19:43AM +0200, Ronald Claveau wrote:
> Add the amlogic,t7-thermal compatible for the Amlogic T7 thermal sensor.
>=20
> Unlike existing variants which use a phandle to the ao-secure syscon,
> the T7 relies on a secure monitor interface described by a phandle and
> a sensor index argument.
>=20
> The T7 integrates multiple thermal sensors, all accessed through the
> same SMC call. The sensor index argument is required to identify which
> sensor's calibration data the secure monitor should return, as a single
> SM_THERMAL_CALIB_READ command serves all of them.
>=20
> Introduce the amlogic,secure-monitor property as a phandle-array and
> make amlogic,ao-secure or amlogic,secure-monitor conditionally required
> depending on the compatible.
>=20
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--m1dzShhxAayQS2fO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaeeuTgAKCRB4tDGHoIJi
0qYWAQDxAFHuGm57LUVlyryh3ibC8pwBHTnLzI4xPChCJGGMdgEAvu7/hlYMeKT/
TdukkKtxdAjY7R/Dxiwo8NmDWA850gI=
=3G3u
-----END PGP SIGNATURE-----

--m1dzShhxAayQS2fO--

