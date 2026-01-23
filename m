Return-Path: <devicetree+bounces-259077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAutK5+rc2nOxwAAu9opvQ
	(envelope-from <devicetree+bounces-259077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:10:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E378D3E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 233D73018C3E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57B8B301489;
	Fri, 23 Jan 2026 17:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnBXx22g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CC726982C;
	Fri, 23 Jan 2026 17:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769188253; cv=none; b=FMLTGC8MdI/HgVaLb+X2aUexQYv0AYiSapDLNF49WSTp6gkGTMSzn3nsUcshPJR5ZlvmPOoxcokG3NCOb7gVmXrqUWS9U/mA7Fub+aUw0p+gyR4q5qqKJO9Mzwsp2zpJ47UL/Z5CHULqRmimUPfe4qEV8Je2odD99cIjmbFbUDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769188253; c=relaxed/simple;
	bh=+qVuMU3H3SbYSFWnzrcQC4OzB8taac9KxYN9tFlltAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pcf52/9pIALWZrr4QgxzHUujhVNUUcLdwZJtEmjycKi22XJbj1vLkO7jU8RtA7JsLBNsA4+xUCuJnSdJywDa2sujUkBkRDGJv5U4pUfnmoMqFdvo41i3mvziDTWZCcncTaA5+u7uSJIBTJ1ZEWJRlKjcUIL9TxDo9+OsVvLoVeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnBXx22g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FDB1C4CEF1;
	Fri, 23 Jan 2026 17:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769188252;
	bh=+qVuMU3H3SbYSFWnzrcQC4OzB8taac9KxYN9tFlltAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XnBXx22gEsETudjvXM6bRxGy5/b3KK/cub+XysSzH2ksbCP4g4yLN6rjFenUZR3WH
	 C2eLLepECvSfd3xEIAW7qjJSdTHUFLzrshdTHinu/7yMgXJ+YSfOXz3TpGoOrsy/+x
	 hwxm6zyYMkcbSGKorrfXmS72GLLgZecy8t9M3F4sKehTmB90myWOzjH5dYTnPaNx8k
	 887fXwSTXbLSxBBa+59O/OawtZ+mhW/OsKZHwNQ3lNn37ofcrOfAwy04oweh1dySqb
	 G0mmS/teEKLG4o0RyOZuwmShx+0yPjqgweBSHxKMOjaZ2Nl9iLtmF7ld0dML81WcOT
	 BIVwQFo99rxKw==
Date: Fri, 23 Jan 2026 17:10:48 +0000
From: Conor Dooley <conor@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: mux: gpio-mux: add enable-gpios
 support
Message-ID: <20260123-alias-expert-66a1d7850064@spud>
References: <20260123145743.75705-1-antoniu.miclaus@analog.com>
 <20260123145743.75705-2-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uvIEdtI7TOZzAKND"
Content-Disposition: inline
In-Reply-To: <20260123145743.75705-2-antoniu.miclaus@analog.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259077-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2D2E378D3E
X-Rspamd-Action: no action


--uvIEdtI7TOZzAKND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--uvIEdtI7TOZzAKND
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXOrmAAKCRB4tDGHoIJi
0g+9AP0Z4YSSaJTZn3C37cenlwVcUnYivxLp1GpofZgPxTLNrwD/Spe0wd8sbICa
NpM3n2yDCBKk/AXN3bahNG226DmcKAs=
=pxFs
-----END PGP SIGNATURE-----

--uvIEdtI7TOZzAKND--

