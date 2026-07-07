Return-Path: <devicetree+bounces-322222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZmYYL7MmTWpzvwEAu9opvQ
	(envelope-from <devicetree+bounces-322222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:17:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7A471DBEB
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:17:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HOqCvRfb;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322222-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322222-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B2D63088F34
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92EC133DEC0;
	Tue,  7 Jul 2026 16:13:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CDD340402;
	Tue,  7 Jul 2026 16:13:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783440833; cv=none; b=F1AVxyUE2pFNzHHadRSc3CDjVzxuZvAP8ozU79RenrQuZx+CCXsty4KF35T51947O5wFGOOn3tWq4gIDZPnexVcQjRkyDPFoLWcLzWZ1GB7g0JeAKwl6U8ypehCZaScx+oPwTKIrEyaINt2i6xTeUCVJChLazn+XzNHu/DbZgso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783440833; c=relaxed/simple;
	bh=1IW6FjFzcEmU1Ry+Or56LLsYAe9HoY+J/8hZ+32I1fI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pjRvzM0LToyXDhNUNIkg8DtbYOg7QjVpZOI/j1ZlfO7Iszv/WEGRIoKiChPNkYyb4f4wgpCet4GyeYRvneZYwyBZkelEX/4Dr4TaTmpSnyydPsSPtp0aaZ/UKvZFF0pCO30ykDUhR6vraXAi5yn2iFEvOThM/fTwGl2mdGVolGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOqCvRfb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE79E1F000E9;
	Tue,  7 Jul 2026 16:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783440831;
	bh=1IW6FjFzcEmU1Ry+Or56LLsYAe9HoY+J/8hZ+32I1fI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HOqCvRfbYfZF0O5VyM8CiBywQyPPX2E1wCMD7gM4yInm91TRtmy/aQIR05IyNxUwq
	 LDZqB7yT54hfarf1FXqFHKHcYDsGlv0W6On4NoQ6xSmH/63rJcbOGtslB7jcSOE+i+
	 uJAyLOrqlyVOMdCl8TV3oeXxI73pLN00DqhFpK2IRcj0FfGeN/yh/atUwDSscnvKu7
	 JzOpo/94qGaJx0/qC2xhtS5tZbb26VW/ybWDWd1QTo2IByKaKStaAytZMGlpC1QKfL
	 xTf2vWwJ6q6sNs344XyCNKFE4TtfJ4USUreAwY4rXs2o8UAdHKrxu9ks+Wd0d8Asom
	 of+hKcHnd/3Ag==
Date: Tue, 7 Jul 2026 17:13:47 +0100
From: Conor Dooley <conor@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: mv64xxx: Add Allwinner A733 compatible
 string
Message-ID: <20260707-protector-overblown-2fb9fa42e976@spud>
References: <20260707-allwinner-a733-i2c-compatible-v1-1-566340542bdd@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/26oEDxPHKNqYJe4"
Content-Disposition: inline
In-Reply-To: <20260707-allwinner-a733-i2c-compatible-v1-1-566340542bdd@baylibre.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322222-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:wens@kernel.org,m:gregory.clement@bootlin.com,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spud:mid,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A7A471DBEB

--/26oEDxPHKNqYJe4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--/26oEDxPHKNqYJe4
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak0luwAKCRB4tDGHoIJi
0lkvAQCFp+d4OmaIv50EpvX4KECyhuI0CTWoWEwiY/98IDXO4wEAy9EAPdJoDpH1
t7JmQ1zqInnhtHSFmTyn2yfng8+ayAE=
=YDaZ
-----END PGP SIGNATURE-----

--/26oEDxPHKNqYJe4--

