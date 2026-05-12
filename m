Return-Path: <devicetree+bounces-295911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBtjLpeBAmpDtwEAu9opvQ
	(envelope-from <devicetree+bounces-295911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:25:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DDE518372
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:25:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3F8F93009888
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A41325783A;
	Tue, 12 May 2026 01:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LacaZ//c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB69841754;
	Tue, 12 May 2026 01:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778549141; cv=none; b=R5sqZ2mNoEI9ESOg0e7cFUS6z8PBDbxKOUruBire5rBwhyni+mEY8jfhgzOjr/Z9yYoNihWpY8abjqRqwwEYYeCRBFzSvihWt0bIKaenvTxrmDK9LkYKkyM4K/TFllfXfP4Hj9j5TO3ch6KQtJpYLBfCvsQxVRHkj0K3KZf/bjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778549141; c=relaxed/simple;
	bh=MDx6wyxJnrpM3xEGYmY3gDJSK85ARjHDfhMiTGvsheY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QlxKdQ2cN6XHYFI/XpoyV7Lhwbg8jEMgix57Z//3goQPOHVRVveZXSqQoyR+iysKSnKuBk5IJ5qjmTx1BnIEtMmJk+3zZl+wrCUk15E7QppaXaToxqN2oINsNyiaZSUIf6BpC7fE4JbANKzZ/N/PXfnhjSDrtEOIOcI7CnDwkP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LacaZ//c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63B90C2BCB0;
	Tue, 12 May 2026 01:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778549140;
	bh=MDx6wyxJnrpM3xEGYmY3gDJSK85ARjHDfhMiTGvsheY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LacaZ//coubQsRNc1+AzKM4LLAQnjbZPI3UjHyCQ44EwYCejFMzDNMIyW0OhqNvuL
	 9y3ekVJ+rqxPYKmvBnxltPSQR36guKuhBxP5NnRcTxVBh6A23oIN55Qnbnhkm4uInv
	 1c2W3MKUPsu4NTEbWDyeIu7c+7qeDDSUTgc8la4pXrjyoOKNP5HcbFJCMrIABuCOoo
	 X0ZaPpQKe9KORWQjspPtC2QNrTlZnt2qN56NkqdiUyvNVlGgSpoqO03MEQwK5zBsmB
	 SSAjQwb3D/SNB/kPVhoE3cdYelYQR1ZzNp/SdgbYAdpaNS0WiThQczlbHiK2VYaboP
	 kkhDLQglFdJXA==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id F3EF01AC58C2; Tue, 12 May 2026 02:25:37 +0100 (BST)
Date: Tue, 12 May 2026 10:25:37 +0900
From: Mark Brown <broonie@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, lee@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
	lgirdwood@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com, wenst@chromium.org
Subject: Re: [PATCH PARTIAL-RESEND v12 0/5] Add support MT6316/6363/MT6373
 PMICs regulators and MFD
Message-ID: <agKBkUBVM81Y6MUk@sirena.co.uk>
References: <20260511101355.122478-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZO04f3tElFI8BsTK"
Content-Disposition: inline
In-Reply-To: <20260511101355.122478-1-angelogioacchino.delregno@collabora.com>
X-Cookie: Truckers welcome.
X-Rspamd-Queue-Id: 56DDE518372
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295911-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org,collabora.com,chromium.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--ZO04f3tElFI8BsTK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 11, 2026 at 12:13:50PM +0200, AngeloGioacchino Del Regno wrote:
> Changes in v12:
>  - This is a partial resend. MT6373 regulators and MFD patches were not picked.
>  - Rebased over next-20260508

Is there a reason why this is a single patch series, are there any
interdependencies here?

--ZO04f3tElFI8BsTK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmoCgZEACgkQJNaLcl1U
h9Cl7wf/eGQ+SEV4WqVTokc90PnMsjaK7jSAFGVrllzf7QEaXe5nO3B3fWEelwKE
8t91+XH2mSW/YD/rSts6vFNTKBFZSKjCQ8SP2km1j5SxAxjN/SCIyXloy4MyPf4f
SS0frCVFc9ZdmqYHVolKlRGvFObHCyZH8dXNmvs+WRgm4HlpJjWz2SycDxdZXtS9
E/WEycZxxWMbuIJxesMr5hunbjozk1zbOKXDafHzjqzqEFiYXcvhvmTQV10CnJ3y
iipRScZhn+35h1bkg/QTR/WE/Oui/uRumeFkKSMonav4lu1X2vac4CzTMhM6uchX
oWUtt17l1wGDsLnlCCGF2cI5VwUP3w==
=GoUg
-----END PGP SIGNATURE-----

--ZO04f3tElFI8BsTK--

