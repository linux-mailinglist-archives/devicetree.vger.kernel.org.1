Return-Path: <devicetree+bounces-323947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8uSzMaHeT2rcpQIAu9opvQ
	(envelope-from <devicetree+bounces-323947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:47:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4E9733F37
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:47:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Hpt62WD+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323947-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323947-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33CE530A4A0C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 17:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F26424195A9;
	Thu,  9 Jul 2026 17:41:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4694195C5;
	Thu,  9 Jul 2026 17:41:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783618861; cv=none; b=c6PKeWGwHWoctvkEDhS4Jk5W+Ynf2cHsx7dwIbCm4ay9lk/bwoJJGkSXRvWt45h33K6IoU7GzlZ9ii1U+M9J8RyNma9/PQ/PzOvoMYN3VlaxtA965it/XOy994doCV+VYdTb4J5D/93y0SZOfyV7XN+Potb5BChmtXF+Wj+egxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783618861; c=relaxed/simple;
	bh=jp5a8bkMSRq1xl2Oo/rl01UT3ouclKqmPp/YdGmSlQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A4fft0+4q91poK4Wva5bjFLE2aAMtPdsjqK1qjje2/sDfPNVZVhuhjuq52CuYH+6CNkUpWu8ZdZ/gdOlcztG5bluKYiDhWnMTYe916LM9ChfDlFPtQv1ECNgXJiu49maA3csn+TWyNmEZcV+JGFqUS6q3UewM0ttCYRhpgsqvqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hpt62WD+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4450C1F000E9;
	Thu,  9 Jul 2026 17:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783618860;
	bh=jp5a8bkMSRq1xl2Oo/rl01UT3ouclKqmPp/YdGmSlQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Hpt62WD+zgewnBaiAyk8fatWfXNeZ6msb9TWBAHhAVq4M2t/m1H20BHugWN+1qft3
	 sUpQQDiw6SvKT94QQzV8cE5u8I1N2Jhp1LCEehzoDKweM+SEi70xKjp/iZpL/C3Cxm
	 nOkaQAsDU511pLqxp2SuZWQW/rBP/P7ZjK/iAZPBNTC0VOFY+gfR1+Yg0hibzCDRTU
	 r3B/69JYSRNkdfED/+CZ+vmBC+94HrRggvuaHJn7jIiDGd+wWF/uwTv+h0tLuTOChR
	 IT1mC249IAoTgoYvTqqRcNyCbo3cRoknNfjjS/H9xy/F2O7R2t4RalwMy/FcP5zttK
	 B1ViNHNNm3ugA==
Date: Thu, 9 Jul 2026 18:40:56 +0100
From: Conor Dooley <conor@kernel.org>
To: xianwei.zhao@amlogic.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: reset: amlogic: Add A9 reset compatibles
Message-ID: <20260709-gazing-splatter-d99865558ad0@spud>
References: <20260709-a9-reset-v1-0-fd7cf039b853@amlogic.com>
 <20260709-a9-reset-v1-1-fd7cf039b853@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AmdhtgpzA1lljAwD"
Content-Disposition: inline
In-Reply-To: <20260709-a9-reset-v1-1-fd7cf039b853@amlogic.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:xianwei.zhao@amlogic.com,m:p.zabel@pengutronix.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323947-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F4E9733F37

--AmdhtgpzA1lljAwD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--AmdhtgpzA1lljAwD
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak/dKAAKCRB4tDGHoIJi
0iLFAP49tl0vHS3N6UDt9uFBHCZ7a6q9cVF0lxC1JeZuzDsmYgD+LBAg9Ud/X8M9
ItFfalps/ENL7kn3t73vYLG2Nqi/Rgo=
=Izl9
-----END PGP SIGNATURE-----

--AmdhtgpzA1lljAwD--

