Return-Path: <devicetree+bounces-285168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHpuKKy71GlRwwcAu9opvQ
	(envelope-from <devicetree+bounces-285168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:09:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F1F3AB1BF
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:09:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 66DCC3005589
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 08:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FBC83A3E64;
	Tue,  7 Apr 2026 08:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc header.b="mgE0dy0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5953A381E;
	Tue,  7 Apr 2026 08:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.69.201.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775549353; cv=none; b=lJe/F8R24Vt6/ofglCs9y8uSEYD7lp2XLuu1ZmRRN9xlJzh4WE9ItoYbONEV33AFAvFRKnEFbze/4VuUkDprB2nJOrQXRmgno5GqECkWDaH2mQT2J6BxkuhKs26O90OTnG+gpfqU/ExncLvhcBlKJgxP1PKg8cSOnS8TAf24Wgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775549353; c=relaxed/simple;
	bh=x4CIhcKyiAyiHLRxCfzrNVNhwmG+Osil9WJy47xc4Uc=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Subject:Cc:From:
	 References:In-Reply-To; b=CvBH6EaOl5vI+7sLrhpM3uQFtJ0t828o+GZxEi2yDhIqC12MhsgSNcTVsOgdh1L9nkHN8Pp7aJxzCVF0ka0JB+hHRA5vUZh1YR92yfl52U7zumTMlk9nUcjQ/Bc5lqxZpLHG48N2u61IV1kl5Q/uBHvpRiiojSQ+ulbK0SV0fgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=walle.cc; spf=pass smtp.mailfrom=walle.cc; dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc header.b=mgE0dy0o; arc=none smtp.client-ip=159.69.201.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=walle.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=walle.cc
Received: from localhost (unknown [213.135.10.150])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id 2591063;
	Tue,  7 Apr 2026 10:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2022082101;
	t=1775548945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ad+PThozXsFVIRgJjzkr6m230pul0DpcAhIS8dHfyG8=;
	b=mgE0dy0oYY88IBAC9FsAmUIYkWg7j5ZoIv3q58lOa4qqMSIr8BxE8rOwMoN867BC/rt3NB
	wLAOVJzIT78D8lUoC7P/IeE1gSfSbyCGdvE2HAEwbrdUPREraKRUgvk7oIgbeB9Eob6MwM
	o9YHmOyqUJGRtmBfEUN+TxgeETxWNqRh/2E+wPRLNW/nmrX+QijaxQwADApn3sY1rWQWXl
	Cfbc0Vb2c3Wb4hYnjG191eM7wv8CCIHp1L2GkaQvnw5bGGFXzT9ytbI9amEcHeFV34X+3X
	TwPahiwbHKiDbtsjxhU2yccbWx1aVvA9hfA/73LwspR5/d9lDgrhCOmUWlMO5g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=0d2bcfc64f4ee9e083e2af46e7c1d5237e5e21b76e32ac13f6cb36dd1b9b;
 micalg=pgp-sha384; protocol="application/pgp-signature"
Date: Tue, 07 Apr 2026 10:02:17 +0200
Message-Id: <DHMRKHET4G64.2OC3H718XYFTY@walle.cc>
To: "Marek Vasut" <marex@nabladev.com>, <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v4 6/6] clk: fsl-sai: Add MCLK generation support
Cc: "Michael Walle" <mwalle@kernel.org>, "Brian Masney"
 <bmasney@redhat.com>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Rob Herring" <robh@kernel.org>, "Stephen Boyd"
 <sboyd@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
From: "Michael Walle" <michael@walle.cc>
X-Mailer: aerc 0.20.0
References: <20260406215150.176599-1-marex@nabladev.com>
 <20260406215150.176599-6-marex@nabladev.com>
In-Reply-To: <20260406215150.176599-6-marex@nabladev.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[walle.cc,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[walle.cc:s=mail2022082101];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285168-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[walle.cc:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michael@walle.cc,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email,walle.cc:dkim,walle.cc:email,walle.cc:mid]
X-Rspamd-Queue-Id: 33F1F3AB1BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0d2bcfc64f4ee9e083e2af46e7c1d5237e5e21b76e32ac13f6cb36dd1b9b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Apr 6, 2026 at 11:49 PM CEST, Marek Vasut wrote:
> The driver currently supports generating BCLK. There are systems which
> require generation of MCLK instead. Register new MCLK clock and handle
> clock-cells =3D <1> to differentiate between BCLK and MCLK. In case of a
> legacy system with clock-cells =3D <0>, the driver behaves as before, i.e=
.
> always returns BCLK.
>
> Note that it is not possible re-use the current SAI audio driver to
> generate MCLK and correctly enable and disable the MCLK.
>
> If SAI (audio driver) is used to control the MCLK enablement, then MCLK
> clock is not always enabled, and it is not necessarily enabled when the
> codec may need the clock to be enabled. There is also no way for the
> codec node to specify phandle to clock provider in DT, because the SAI
> (audio driver) is not clock provider.
>
> If SAI (clock driver) is used to control the MCLK enablement, then MCLK
> clock is enabled when the codec needs the clock enabled, because the
> codec is the clock consumer and the SAI (clock driver) is the clock
> provider, and the codec driver can request the clock to be enabled when
> needed. There is also the usual phandle to clock provider in DT, because
> the SAI (clock driver) is clock provider.
>
> Acked-by: Michael Walle <mwalle@kernel.org>
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---
> Cc: Brian Masney <bmasney@redhat.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Michael Walle <michael@walle.cc>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-clk@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
> V2: No change
> V3: - Rebase on current next, update mail address
>     - Update commit message according to clarify the difference between
>       SAI audio and SAI clock driver
>     - Pick ancient AB from Michael, although this may be outdated
>       https://patchwork.kernel.org/project/alsa-devel/patch/2024122616223=
4.40141-4-marex@denx.de/

I'm fine with this, but I want to point out, that this is still a
hack as the correct way would be to make the original SAI (audio
driver) a clock provider. Keep in mind that both driver variants are
mutually exclusive. So if a SoC has 6 SAIs for example, you can only
use 5, because the one will have to be MCLK the clock provider
driver.

In the original LS1028A case (which doesn't have a MCLK), you
actually have to use the hardware peripheral block to generate the
BCLK, thus you'll loose one SAI anyway. In this case - at least from
what I understands - this is just a software construct, because the
original SAI driver is missing a clock provider (phandle).

-michael

--0d2bcfc64f4ee9e083e2af46e7c1d5237e5e21b76e32ac13f6cb36dd1b9b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKcEABMJAC8WIQTIVZIcOo5wfU/AngkSJzzuPgIf+AUCadS6CREcbWljaGFlbEB3
YWxsZS5jYwAKCRASJzzuPgIf+HfsAYC6DBNdJDZfxQXODWnhg46KsgrP8GwmHLw1
hjxaZ6s8dK3te04j7RWTeIXx1doxrBgBfAg8tGFYQpiOqt3cMzVapU/hXUYVj7uM
J310VCbce7mg59wZ8ol798MjTWRIPRl9gw==
=j1JI
-----END PGP SIGNATURE-----

--0d2bcfc64f4ee9e083e2af46e7c1d5237e5e21b76e32ac13f6cb36dd1b9b--

