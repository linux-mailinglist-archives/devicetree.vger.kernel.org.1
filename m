Return-Path: <devicetree+bounces-261483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP20EURmfmkzYQIAu9opvQ
	(envelope-from <devicetree+bounces-261483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:29:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B97E0C3E33
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:29:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5960930008B9
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F9D3783D8;
	Sat, 31 Jan 2026 20:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+/glb7S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECC43451A6
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 20:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769891392; cv=none; b=FWiED+mIkUAwNJIOe8EKdc0Tqix0KygJzlYgeP6M3iLVddfchvloq7346hakoa8tBUdEyC5D9N3+O4dddsadxmSlwzAKNAxTw7aW8bRiXDD8bW5kOw2wq8jVzBBpECt1vMkR5dUF1Y8pqgOUjK6HItCxBJIpPep2euUq+YX1D28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769891392; c=relaxed/simple;
	bh=Lewz4qnNVbNBEvCRmfUiMH3/a7XAklebuCMfi3/B71U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g2FiUc9Z9tHu6Dyh3owun8aybQN5jssiJZkdrMQIB3XImKfxcfuQtC18Zfwmzj8W7VSVkYrn2x4xIQOrjpPbk7cfoxjjLZXTZ2DJCyubM+Mijjsw028aHRsUEj5jNco1gQpBRRwP5wwszVKc0/Ax9C5ds1TrCVS8mLflpDyVPGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+/glb7S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5859EC4CEF1;
	Sat, 31 Jan 2026 20:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769891392;
	bh=Lewz4qnNVbNBEvCRmfUiMH3/a7XAklebuCMfi3/B71U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A+/glb7SxXHll2OjKMpVry4y2VAPyP9Zh4Zj9NGOgNfILSO8EBeVKGGmKjyg1wcWa
	 jNrFnxuQTFqFBNSrdifbAvRpw73PzbDRA0ER+U9zTJulHVKRNrYCNJFFZRs/pHMN81
	 n20mfJ+RHy6hqzzkDwRRW0Q8JxZq6XHfTfIzsTOOi7+Wde2ajIcz3jfjYHssgWmi9h
	 v8iVle5+j2ehHAzA7y/iI626DREajXEgdb873inxifNAS/vWz3fx0RYKolWGS2iM3M
	 xBrHqpuunZUyCCdFFPEuMT80SQ5rSOxmEcFEtmJmTrf7FjdZRpXidxjA56OZEx46CY
	 w7ov3U7wA2uHw==
Date: Sat, 31 Jan 2026 20:29:48 +0000
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	alchark@gmail.com, dsimic@manjaro.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing
 Technologies Co., Ltd.
Message-ID: <20260131-emporium-patrol-38135e9019e5@spud>
References: <20260131153106.31723-1-jerrysteve1101@gmail.com>
 <20260131153106.31723-2-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fgWpgL+R6/i0XvEy"
Content-Disposition: inline
In-Reply-To: <20260131153106.31723-2-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261483-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,sntech.de,gmail.com,manjaro.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B97E0C3E33
X-Rspamd-Action: no action


--fgWpgL+R6/i0XvEy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--fgWpgL+R6/i0XvEy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaX5mPAAKCRB4tDGHoIJi
0kYAAQDtM2AA3Ol/gkSLPBdaQzEsJRgqBnNmMB2vb6l4284bvwD+PKrio30dLdp4
ONTBmhcEIAw9kWhh/+0N8dFt2igtLgg=
=drnZ
-----END PGP SIGNATURE-----

--fgWpgL+R6/i0XvEy--

