Return-Path: <devicetree+bounces-312623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q3yvKQByMWoBjgUAu9opvQ
	(envelope-from <devicetree+bounces-312623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:55:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C80CC691842
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:55:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aKnfwheL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312623-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312623-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5738A3086D80
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E14D44DB64;
	Tue, 16 Jun 2026 15:41:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D2544CF4A;
	Tue, 16 Jun 2026 15:41:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781624515; cv=none; b=fReyF5mhz06nSh2qPF6s0TcQ8U3Xqh5gNGaIjFLRBXvyH4+Lhv12iuKBT/K9SzMTriHaaTtPiQG2TxBP3QLfbONaxNRKDKDUm0coOtgDytHHFbkLYtOxnUJyiAC8BjDfIFj61r5wVq5b+bUrhU3WdrwLRthNHKXEPs4J2SCNZSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781624515; c=relaxed/simple;
	bh=XYHbz1TmYYOg/4AjUMy+PtpiVOh1Q8GtJYBsbEvokQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MImVT1ythL8NIRlDPUJhrf+aOsRa5HFtfyKJGGfbyfRDap+7wQMxhkOaBycS5xwWKPb9zZCWvGWr4Nz43aY9+ouPN9oYigWrebLTG4lPCn+0VUiULbEVvlmlZaz7gEOwGi21pZXEin4jwn9e+ayOKqbJwKGY0Y0GFgHdz8xJAVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKnfwheL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 589711F000E9;
	Tue, 16 Jun 2026 15:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781624515;
	bh=XYHbz1TmYYOg/4AjUMy+PtpiVOh1Q8GtJYBsbEvokQQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aKnfwheLTKb+TOspgX+0SerqwDvEtkTr072QVHMwl7clY364JtYBSZ7GD2afL+QYR
	 Z7iQkJkLx+miW6DTprSKHpmVEom0hCHC2CnjlDKNIPKkOP1PljmC0y56PbZfridkFO
	 4w+3+MQsOaagEb9qxqPS86N96/l+ZHV6Qz8Eum0itxkNQlqTwumgCnVxQ1ZJdV91rW
	 xcYxERrY3mz99ofCJmKZ9eNyd5pjE+7UTU7fG611Dy7oBJVlPUw/giQ3aJL1nsrDx/
	 Y+OdaxBhgOfD6Urht4POzPWwt3Xg3/JLqLxKW49ejohuQrC4GNfV33wn2UxNp3JwLk
	 jhae4qjzlzdeA==
Date: Tue, 16 Jun 2026 16:41:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	Denis Ciocca <denis.ciocca@gmail.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Denis Ciocca <denis.ciocca@st.com>,
	Linus Walleij <linusw@kernel.org>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: iio: st,st-sensors: add
 st,fullscale-milligauss
Message-ID: <20260616-squeeze-darkened-82e280beb389@spud>
References: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
 <20260616-submit-iio-lsm303dlh-magn-fixes-v2-2-063edcf74e60@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sZQvM//h8kBE8vC1"
Content-Disposition: inline
In-Reply-To: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-2-063edcf74e60@herrie.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:denis.ciocca@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:denis.ciocca@st.com,m:linusw@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:devicetree@vger.kernel.org,m:nickdesaulniers@gmail.com,m:denisciocca@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312623-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,google.com,metafoo.de,st.com,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,lkml,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,spud:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C80CC691842


--sZQvM//h8kBE8vC1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--sZQvM//h8kBE8vC1
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajFuvQAKCRB4tDGHoIJi
0r3jAP9HfcyWDr1jQxsIlN00Sa+52Wx8bbwqt+R3c+ofWNZUAAD/dtgh/qnBR+Ci
OV5Bwl9V3HSWwLdcdsjX5UZIVBa70gY=
=A0GN
-----END PGP SIGNATURE-----

--sZQvM//h8kBE8vC1--

