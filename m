Return-Path: <devicetree+bounces-260567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODDrH4FLemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:46:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE3DA71DA
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B29D73031316
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65BD731579B;
	Wed, 28 Jan 2026 17:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kl+fSdPs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D0A248861;
	Wed, 28 Jan 2026 17:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622147; cv=none; b=q7xFbXkiDTZzmzpo9rLD9srQY4spkZV+7HUhl2VIG908A2oqlx4lzt8ge0lLJ2rzDr7iEt1h9gIboQAOl0vJ3dXDVc+RSv8z7t+IMbJ+7LuIq4en9W2cwLYQFqaDq2aFTme9gQCZg+XS9dN618ThrcnNWE5KdtNd48UpUXBS/y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622147; c=relaxed/simple;
	bh=3AAO19nNVqLcAGRkxvozsuhUW0i3Z+IQDaRF+aPh0L4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUR/63kWAn4wHp2fpqXzsseTuxxYX7M9czKact+gRmIMYb/9XNRXsYMWIIa0tmdh9V25qCUI7j6CW7+lBGavHV509Pgn5YM1+LuczaTPfFqYgtOndxjfR51z9Ltt/2WWV/jWDl14LrhbY2zOaRLpcAVfQkxUMFf2ZGpsrcTNKko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kl+fSdPs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D698C4CEF1;
	Wed, 28 Jan 2026 17:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769622147;
	bh=3AAO19nNVqLcAGRkxvozsuhUW0i3Z+IQDaRF+aPh0L4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kl+fSdPsUFL1MDJ7fF6AsuWf/6pM+UtxxA5AvFPPCf0pnQCnA5BwiF5LATymFfDbp
	 io9U8tZMC/oJ+Pr63Mo/MPR1fpJZ8lyyeKiAPzfDlgsQr8fNuK8YAphdC4xLmpRT6E
	 bBoCL20sLdWWfC7hfo/w42YgBQeuIYbojIlANMT9tiIDrLhD4jnCJoRZok9yDRZ4pT
	 6kdhxWnO139zoB4gIJmfd5xWHjRPMUJjyqRLntSNJSKhTYo3baWcaWg99gh8zwilQu
	 uXDkuehJObU+a39S/gc+qQvPhEtkVJViBvX21NRqpUYe/LoOfetxJUyk+6GUG3CMjL
	 xd3p1aOc+nV7g==
Date: Wed, 28 Jan 2026 17:42:22 +0000
From: Conor Dooley <conor@kernel.org>
To: ben717@andestech.com
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/4] dt-bindings: i2c: add support for AE350 I2C
 controller
Message-ID: <20260128-moonstone-grope-5df7a55b5da1@spud>
References: <20260128-atciic100-v3-0-8c002fcc2bb4@andestech.com>
 <20260128-atciic100-v3-1-8c002fcc2bb4@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="foFtRSyLMH1HfjkT"
Content-Disposition: inline
In-Reply-To: <20260128-atciic100-v3-1-8c002fcc2bb4@andestech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260567-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EEE3DA71DA
X-Rspamd-Action: no action


--foFtRSyLMH1HfjkT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--foFtRSyLMH1HfjkT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXpKfgAKCRB4tDGHoIJi
0odYAQCXZQk1e9GHrNVVuWzxBQYPhfgr69mFZon7hexoNefbyQD/SnpkBWgLGvlE
vZ9+FsamjcmoLykBgiSU2lznlobpLwk=
=uHGy
-----END PGP SIGNATURE-----

--foFtRSyLMH1HfjkT--

