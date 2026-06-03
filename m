Return-Path: <devicetree+bounces-306407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cC9FARZYIGp41gAAu9opvQ
	(envelope-from <devicetree+bounces-306407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:36:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D93639D05
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:36:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jO5Vh1Z2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306407-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306407-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6D7D3028B4C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED3D3D75B4;
	Wed,  3 Jun 2026 15:52:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD9639A063;
	Wed,  3 Jun 2026 15:52:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780501961; cv=none; b=kmAEeB/SFqJslNXj0fsnvr1ewsky6KqUaVPMDjJRiXJp708WQSwoGdY/Tr4UB3ejaLCNsCOG+DQBofDwDmUamWUTbG5tsyP2gjjvsOSqhedah9noKX6xf9K/150GbQnPGPg8+3u6eTWLie0ohE/kKJNhrV3UTnXfwm8Ze+DrF44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780501961; c=relaxed/simple;
	bh=fG3MUMFCV92OWWB77GGml+hp8tZmw/pgA+W3l3I1k20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EinZ+nl+ftsIt3aDLWMUgmlFxX+KtXqEsd24VVlqV7QtQLgqZu4Fz7fyqR9+jU/yRfMA+1ipuPAjOv1EXbh/r7JAy1WHRCGPgYKccXZ/6E78ebj3Ilk6xpw4tCaXfAgkNY7X8eZA3Ui9tM6lzkNNIifkelDHu41vVMbphM0QFfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO5Vh1Z2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FC521F00893;
	Wed,  3 Jun 2026 15:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780501960;
	bh=fG3MUMFCV92OWWB77GGml+hp8tZmw/pgA+W3l3I1k20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jO5Vh1Z2cCH53eKrog4JC9WgTp6qjuIxSww1UqENset/sIpIhNuxmzZqwF972/eqM
	 sgLPIBkT0nLpPNTrQvYH/PL13eY0XdNwPtA9FuXlucIZQxZzfc27eZBSYbp1bRn4Id
	 YRz1RhdLDJUdi4/uBcUiu6lmt6IG5lU9xlerGYflKg8EXAqSgkEOgmhBa0eza4cqT4
	 j/oHfkClM0tUxVklQ2F8AXGzSrOx/5jmIo5jOZ5Ji9Fud+O3ryZ2VTv4KN4iWq9iIf
	 CNjVs+Rt/xpSNxhgGhZ3wv1usGh/QTiXNGigpw0eQPg0hlL7dPOpzHXZfyT1n6iz0Z
	 hRQDpK9llKWzQ==
Date: Wed, 3 Jun 2026 16:52:35 +0100
From: Conor Dooley <conor@kernel.org>
To: jian.hu@amlogic.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Xianwei Zhao <xianwei.zhao@amlogic.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add Amlogic A9 peripherals
 clock controller
Message-ID: <20260603-banshee-reshape-7183ef9cde25@spud>
References: <20260603-a9_peripherals-v2-0-ee1b8c0a1e6c@amlogic.com>
 <20260603-a9_peripherals-v2-1-ee1b8c0a1e6c@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DCCmq9+7sUVqL8ML"
Content-Disposition: inline
In-Reply-To: <20260603-a9_peripherals-v2-1-ee1b8c0a1e6c@amlogic.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306407-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jian.hu@amlogic.com,m:neil.armstrong@linaro.org,m:jbrunet@baylibre.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:xianwei.zhao@amlogic.com,m:khilman@baylibre.com,m:martin.blumenstingl@googlemail.com,m:linux-amlogic@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail,spud:server fail,vger.kernel.org:server fail,microchip.com:server fail];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,amlogic.com,googlemail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58D93639D05


--DCCmq9+7sUVqL8ML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--DCCmq9+7sUVqL8ML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBNwwAKCRB4tDGHoIJi
0sghAQDd2PkqviQwhNqJEYhIzE3HGz8asHPFKg41uBAnYMt5TgD/RAOvvy7LgVTT
XtUTQPnCXjUUQTlu5zvj2P6MgNPjEgA=
=L+fy
-----END PGP SIGNATURE-----

--DCCmq9+7sUVqL8ML--

