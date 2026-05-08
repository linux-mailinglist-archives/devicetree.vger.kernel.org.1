Return-Path: <devicetree+bounces-294576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OJ0OyH8/WkdlgAAu9opvQ
	(envelope-from <devicetree+bounces-294576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:07:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 902F84F84E1
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:07:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DFF3A30308C2
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 15:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72713FB7DD;
	Fri,  8 May 2026 15:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQ4Dt0cY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D5E3FB7D1;
	Fri,  8 May 2026 15:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778252591; cv=none; b=hUxQQ9y6yjr3v1+Bknj74jFyYq3j3AAi4PVPMfDhwPUgUZ8nSd4E8lW9eIMdPXAUoM9QhQmif80PMdq/RTZBR12xqVFkQgnCQvFlY6bGsnfAcLCsg+Z9oJe9kvH2tla46HeGyFD3Rr6pbBg0nHKUMG1ljmYQFnQqH9s1ONQC+yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778252591; c=relaxed/simple;
	bh=NM5ozFdNjhLrCOorefIKlM0r0GV3bwA5Z7mfJpSCFTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eteuK3ml9si2eyMxVFwOkUysLj6L1dn3whKafz/ehfs8xMhfluBLw4w6SLdrudImG9CDAXfEPYsbvQ52TXUp01ChZmLS6F20odApr22sxShS14aQzAUjAz1dJYru8FhWwsr1bd6TqG07ZK77vh/+oK4Z3Dd6cNPDDcG6diB9dPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQ4Dt0cY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A866C2BCB0;
	Fri,  8 May 2026 15:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778252590;
	bh=NM5ozFdNjhLrCOorefIKlM0r0GV3bwA5Z7mfJpSCFTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WQ4Dt0cYgrEmfgZNytRHShXRSiBtAJ94LPbT20bmRuAlEFS7fx0o0NPzU1r6atvfO
	 v2XvyYmw7DGJPCU3ym0FhuBC7Kxs16kD7juYgyBMvYGVpjegKUkJ/soWBgN51q2fd4
	 yqXRD94yq4SY6sryRPpj+ApMh3gV34t7voX/U+DHTVgi+lHoyus6oiwvrE5EZD+29B
	 8v7akqzLsVh8yOkJUwx/OWUmmBvuwZKLvrWbNpmB96paITHyoSkioVrw1H2g57Kv6d
	 cVXSW0l70FlPcNGUw/yHDST8IFRxEIei1vcirTre2S+YVe/t9alh3cewMgLkP3NfQN
	 TKGsnfeVq3uMw==
Date: Fri, 8 May 2026 16:03:05 +0100
From: Conor Dooley <conor@kernel.org>
To: xianwei.zhao@amlogic.com
Cc: Thomas Gleixner <tglx@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: interrupt-controller: Add support for
 Amlogic A9 SoCs
Message-ID: <20260508-barn-stoplight-b51074b42891@spud>
References: <20260508-a9-gpio-irqchip-v1-0-9dc5f3e022e0@amlogic.com>
 <20260508-a9-gpio-irqchip-v1-2-9dc5f3e022e0@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mlnt36XCcXWZcNH3"
Content-Disposition: inline
In-Reply-To: <20260508-a9-gpio-irqchip-v1-2-9dc5f3e022e0@amlogic.com>
X-Rspamd-Queue-Id: 902F84F84E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294576-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,gmail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--mlnt36XCcXWZcNH3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--mlnt36XCcXWZcNH3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaf37KQAKCRB4tDGHoIJi
0nLMAPsFCeq/96IK484wEU77o/cSNulu7ivTsIutSLq8L+VP7AEAsziQTnbLvns0
lUzVz1X7li6jbxx7sUng/Wq33cMfcgk=
=Xg4i
-----END PGP SIGNATURE-----

--mlnt36XCcXWZcNH3--

