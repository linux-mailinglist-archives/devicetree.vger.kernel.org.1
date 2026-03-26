Return-Path: <devicetree+bounces-281359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIWeJkl9xWnw+QQAu9opvQ
	(envelope-from <devicetree+bounces-281359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:39:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6F833A446
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 199613031980
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1684A3A2560;
	Thu, 26 Mar 2026 18:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgqXfxZh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C643A0B28;
	Thu, 26 Mar 2026 18:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774550145; cv=none; b=EqUzdbWBlGk7+zRdDxjttK+Daf76S6BN5X8vfOuCVC27x7nDkrJyPJ2j5UdEsMzGAwFbKCQ153JtxYz+/Rd1rb4PRN4pZYYs7kSLULA1lzHltfukfx6tT2VY49rek/A5dsUSKeij49jSbSyu0OFsqoQWUQ6h5r11h0KVayPX84g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774550145; c=relaxed/simple;
	bh=s7C/YJ3bH4vIrxytCLP5AZqS4GyFkVHBtGdzI0XhstE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nu9HBRSxaTn6yKgQvXOXpOSCIH5gnduNvsT6R/tiksLu5aysJPCaI1NT8k1aagMhSFtt8osR4ojGgdfgfEhZ0hpyC4623WlIPseSJ7PvS3Asvt9srwkptW33kyUlMJWjXWeIjL8nefm9QDa+ErovefWMS5N4qoxIQT46TQXcCUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgqXfxZh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E51EC116C6;
	Thu, 26 Mar 2026 18:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774550144;
	bh=s7C/YJ3bH4vIrxytCLP5AZqS4GyFkVHBtGdzI0XhstE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kgqXfxZhmtLXcyBlNt8utRu6PZXVezS9rzQ0jAEWt0zfBcatzo+Hvddgxtgkq0C60
	 ZkKnfmtYsl7efB3JpANu5jOs0S8f9y1LS/7Yyxa+XKk7rxRwkjDYU8R11SjpcQ/cRj
	 Am+J0D6dZ9mgTU7uUGGDl+g3Jh+y7fDWKrN6rpieMfQSwXjuY7O/nCJBOrE4vbnnCE
	 Th5d3TOLYUDOduiTJsiU4BGcCDSUc8qLcrhjWUSBlE/eq3/tZFpq/sFOmjLynmXOmc
	 B2lqLg9Nj38tjQmnRG/ClozFZuWdYbpx1jfrAfCtm6ohDwt8EWa3HrpXenMLFYYugW
	 AGiqLjIoDmIRg==
Date: Thu, 26 Mar 2026 18:35:40 +0000
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] regulator: dt-bindings: mt6315: Add regulator
 supplies
Message-ID: <20260326-laptop-smock-c028f709d6fc@spud>
References: <20260326081050.1115201-1-wenst@chromium.org>
 <20260326081050.1115201-2-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lFhfG7hb4m/dorJL"
Content-Disposition: inline
In-Reply-To: <20260326081050.1115201-2-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-281359-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org];
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
X-Rspamd-Queue-Id: 5C6F833A446
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--lFhfG7hb4m/dorJL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--lFhfG7hb4m/dorJL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCacV8fAAKCRB4tDGHoIJi
0slGAQDMcXP9eQdwOuxSiXJm+WfUqeKNCujzmY37ft3YdB/vywEAw+ZQyth8/OoR
nidyq8Yjr30Vc+7aLWSu9aSfYzMGIAc=
=INcA
-----END PGP SIGNATURE-----

--lFhfG7hb4m/dorJL--

