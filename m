Return-Path: <devicetree+bounces-323968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ED65Mw/hT2qWpgIAu9opvQ
	(envelope-from <devicetree+bounces-323968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:57:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A39973410D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:57:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=axNtc6LO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323968-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323968-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87145301F483
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 17:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F644D990F;
	Thu,  9 Jul 2026 17:56:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6594195D2;
	Thu,  9 Jul 2026 17:56:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783619802; cv=none; b=cP8r1IaeO3A1kip64+CtLlaxysMW9M2dQ1ouuqU9lDx0S/RwfHsKZP/L4mabrFxRvX0tJdkK4Aq2BPsSiCvDP7OlnXP+BpkanHCoNzDmLjlr9yc6fouPfKx734KHyz5cI4lC2rNNq0V6I8NszgFe0OKBPTvhimTGey0DWDbwT0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783619802; c=relaxed/simple;
	bh=kRNaGdAzO65KDiiRZApRLTAEg00VP2mKB0qAOtVoKqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sK5ha/nulPwkXIqmILbFjR3sNKHX9zAmU1XweWMb65x24ZFuikBofE5Ty2tgRwJsNH8wjvDkomZ0DeQFqvI2wvjTG3oH0+wRfu9HRqhoJCAdLuhhfA/Em3diZlRz+N0WrfAHGgDBeOvCLGUS8bP/aPFe2fNyMvsLGuw/6phWy/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axNtc6LO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73D671F000E9;
	Thu,  9 Jul 2026 17:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783619801;
	bh=kRNaGdAzO65KDiiRZApRLTAEg00VP2mKB0qAOtVoKqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=axNtc6LOOBmyBlnBWUE9U9vekFWNnBt9PdSaYchoHJcik99QPBwU8bS3ByRopgCSs
	 53Etzm5KZeWG3QAMuBruIEdNHSVtoN8hYLuggDGdNcUa2Q0Bqw261XG67Hu9d0VSwO
	 LvanHDh/ZyUDeHHLW9Mv7WIQCplnf2daiknOyWstgJewxlUgPJHT6aEVl9bwF57J3H
	 cXpDGivmGMbS4jT3PXDA5KDCHBhfXBXiZu77UVkkw3yWWua15kj2nCVoIfJOwM/9JP
	 XAamfoj1NaqAdqVq8w/lDNzHnWg7Vv5sOkMnau93YFBZ7VLlJwCdN0dj0cLNxaHCqC
	 vTvOpuek9KZaw==
Date: Thu, 9 Jul 2026 18:56:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Russell King <linux@armlinux.org.uk>,
	Mark Brown <broonie@kernel.org>, Linus Walleij <linusw@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com
Subject: Re: [PATCH v2 01/11] dt-bindings: input: samsung,s3c6410-keypad:
 introduce compact binding
Message-ID: <20260709-unmoving-tarmac-7b2a4c919fc9@spud>
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
 <20260708-samsung-kp-v2-1-3c6ed4c9b3b6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+hEnRWUEffYSYq9t"
Content-Disposition: inline
In-Reply-To: <20260708-samsung-kp-v2-1-3c6ed4c9b3b6@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:linux@armlinux.org.uk,m:broonie@kernel.org,m:linusw@kernel.org,m:ckeepax@opensource.cirrus.com,m:semen.protsenko@linaro.org,m:arnd@arndb.de,m:brgl@bgdev.pl,m:krzk@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:patches@opensource.cirrus.com,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-323968-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A39973410D

--+hEnRWUEffYSYq9t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--+hEnRWUEffYSYq9t
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak/g0wAKCRB4tDGHoIJi
0jsHAQCJcgPlMZuvdGNMPI7lSKXrzapHabhemAMKR+FtfbcAZQD/RZzL++UNHLy0
dU/d8/UC/L4AAP2H3So4Ft+2ivIaFgA=
=eiJ3
-----END PGP SIGNATURE-----

--+hEnRWUEffYSYq9t--

