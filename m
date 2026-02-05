Return-Path: <devicetree+bounces-263136-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KGMB93jhGlC6QMAu9opvQ
	(envelope-from <devicetree+bounces-263136-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:39:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A4535F67D2
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82BB930120CA
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 18:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B650D301001;
	Thu,  5 Feb 2026 18:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPOL/0op"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938813002DD;
	Thu,  5 Feb 2026 18:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770316762; cv=none; b=K6U3b1McV+F++z8GI13V5prmGWuF2bhiv1U/lxLUx1EEPhnoCD2fjW+gzoYIN4ud2O/HJ6Mgp9Fe75pIyLDP+mzdG3evRDQJNFcUG2Us0CQaDRnMg+GaONHa6jEMvKNseiHC4/Ugt0WIttuTAveu9kBRX/JcYH5Jlcv/WVfxX50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770316762; c=relaxed/simple;
	bh=Tt190eZ7OngEIkICNS0hCMAmsEWkborQnWwE+zoavEk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=myhxi5ENenlUAkJk1WnB7S6DkhcG3vRwh/GFGwZaRBq9i8WeqSERRL5DlQTcMrgM3BAT6a2OISw6Cn90uCXDUjiqsJka9NcxhFN0F93ixzHVNgjwnVVjITY8qvLUKLTFhP5iDVf/UFebPXn9iFjxfi1z86nx5csXP4L/m5DI/3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPOL/0op; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3531C4CEF7;
	Thu,  5 Feb 2026 18:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770316762;
	bh=Tt190eZ7OngEIkICNS0hCMAmsEWkborQnWwE+zoavEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jPOL/0opFusHsa4Yms19OzlmjoXF4u/ot5VanYW4/aNIynvzTVKUP0JiWgshuWIGP
	 aAFvbP/3jP+hFAqLIkIi+VbsTX6k6zJXr1hmYPz9dAU2yvF7PQhQI7Va5SdRDXF00I
	 mgwsOcNnvuEYPATjzq6cCWgz/U+9HQwi88sSJnnloe7ltv4BCzfGlKs8+JH9AzxuEx
	 4Xo7ddglftlWXBcYNXdjcngEGF5C54Z5M0pIGWGa2R76P9g/FxiomhrvhG69TuhBuC
	 /fVArb81X4tNN9NrmI88DGULTP5Iuf3MjJ29Wbu8IS3LdrJntpLRmpOBnb3halo5zv
	 Gnw//xvZtW/fA==
Date: Thu, 5 Feb 2026 18:39:18 +0000
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
	linusw@kernel.org, stephan@gerhold.net, hns@goldelico.com,
	jic23@kernel.org
Subject: Re: [PATCH v4 0/3]  iio: add support for Bosch BMX055 IMU
Message-ID: <20260205-greedy-uninstall-a23f2e0e9a01@spud>
References: <20260205150734.525947-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wKgtQzCCIjM6QogG"
Content-Disposition: inline
In-Reply-To: <20260205150734.525947-1-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263136-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4535F67D2
X-Rspamd-Action: no action


--wKgtQzCCIjM6QogG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--wKgtQzCCIjM6QogG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYTj1gAKCRB4tDGHoIJi
0uDDAQC+505+U0P8i8yG6w242v4+Qrt9410EM0bhCwwIzxo0eAEAkZf7CebF3bma
NfV1T7bRqe2B1inHTBxFNMzU3TWb5gw=
=6+6n
-----END PGP SIGNATURE-----

--wKgtQzCCIjM6QogG--

