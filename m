Return-Path: <devicetree+bounces-262777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELV7LQuLg2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:08:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27387EB698
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C72243019F15
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67292421F06;
	Wed,  4 Feb 2026 18:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiM/vKOW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F122F5A34;
	Wed,  4 Feb 2026 18:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770228279; cv=none; b=X/NbxkxuKnY7RDinHXoQHQD3q+ZQ2x5vmtaKvbQfZ68UyKnxqXlIfFmHhk3A8M7P/GuN1/jOymOcvFXz2CBbECttIMqQuMVv+pSHqh+txA/ZeMwIQZhqjUL6XwoNtjJhDenYDKuICkwHM4B7KXBw6SWBsVLfSMatFn6VQZh7ZwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770228279; c=relaxed/simple;
	bh=jBQp3nLqWP8FzkdVHFvaNH+FKz7q+nqq4HbvzVC2Nu0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FvxSPqS4ItjrAxnbnXULPN+4LxZIa5/QwYkDqVM+m+9cwKhXHf+HmiP5v7awhgbbd8+/yGFzHdj4OYkz9jsWNzG5xERBqPzkigcqAlYPNnNlABiL56MWwpvGhtiyxcLD6egadz/roxLgS3XIDhhQX6/96S43OMMHgYgg3KRmMgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiM/vKOW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49896C4CEF7;
	Wed,  4 Feb 2026 18:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770228279;
	bh=jBQp3nLqWP8FzkdVHFvaNH+FKz7q+nqq4HbvzVC2Nu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XiM/vKOWNK91k16+wMf/KvrhwbJ6NFyvbtXkWOVwjmzZCPRxJN6PY8RXr5ziRjKB+
	 R9aSFT9o/FHbv4v2OOfiWatyfue9hrEHPxKvKa+H7m/HAyB4ras2wLyWGjl8ekpjLs
	 UYMn+/SJz/Qr3Rg6m0uBjNXQ6xhWODWJZJMHcgMFLiT44j36bkX5qC5l1EDmdo2P1h
	 DZmRnUNe80PVYJAHiRR2km7FokPulAzVgQeTRj0AMkA/rmrKbp9ZVs8slwEKZTMV+/
	 4HniVwhcTVEwwzOgeOlP+FVdFQtyZ1ohnRN/NggPAbWT3T7jOTWnz0yi4IqR7BE9X0
	 m7RCaFbzmbGlg==
Date: Wed, 4 Feb 2026 18:04:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Potin Lai <potin.lai.pt@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Patrick Williams <patrick@stwcx.xyz>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, Cosmo Chou <cosmo.chou@quantatw.com>,
	Mike Hsieh <Mike_Hsieh@quantatw.com>,
	Potin Lai <potin.lai@quantatw.com>,
	Roger Kan <Roger.Kan@quantatw.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: aspeed: add Meta SanMiguel BMC
Message-ID: <20260204-pentagram-undrilled-3c85ec087a2b@spud>
References: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
 <20260203-sanmiguel_init_dts-v2-1-6a5682c32b38@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8hOsCkrKAc3Pq8Lt"
Content-Disposition: inline
In-Reply-To: <20260203-sanmiguel_init_dts-v2-1-6a5682c32b38@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262777-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 27387EB698
X-Rspamd-Action: no action


--8hOsCkrKAc3Pq8Lt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--8hOsCkrKAc3Pq8Lt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOKMQAKCRB4tDGHoIJi
0hsIAQDcWkSEb+P7WnSB/EHaS0NN88Ti/rykerSiGLt2jE9mYQEAzYAaHgX6rASe
Gfdsh6cxkDzBBA/abp5+aRh1+kIgCw4=
=PuSJ
-----END PGP SIGNATURE-----

--8hOsCkrKAc3Pq8Lt--

