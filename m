Return-Path: <devicetree+bounces-239527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFFBC65EF9
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 20:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 294C14E9AE4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 19:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28454339B3B;
	Mon, 17 Nov 2025 19:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFsco0OQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E069433A019;
	Mon, 17 Nov 2025 19:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763406971; cv=none; b=RG8VhK5NBYaF3EdicPzJ2YVSxqHNMTJMkSmWmKL9kR9o9rGjBrxKXpyru938nbZYzrzjO5uSUsBhlf+yfW5z63TUUzzFz2YndDClfNILyLkhhn41LyNOURHn7TpNuwAKATA2D1D8eMsNmFuZYcYP9lEr14vhLa6kWCuKAjNt6m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763406971; c=relaxed/simple;
	bh=LwLuj2lYfCkqH8KIyNkTwcmox1+fGhjf1jNN8oWYL5c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s6VyZWWUMPK5R0tiG7IUg3QAPuFcG1SLSRnFTf6sMaINMRnjq0WyyvhLlE3DQoe2Wt4QCWe7Wej8hkR1Phx2ClIDLokMc7PqdnLFiGdTwsflgv/Jxhel6BsdIDyfZ5A+BF4wlYYOTdTFfMcfaJYOd2KcITcn3PhkVfpPzacOlVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFsco0OQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A89ADC2BCB0;
	Mon, 17 Nov 2025 19:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763406970;
	bh=LwLuj2lYfCkqH8KIyNkTwcmox1+fGhjf1jNN8oWYL5c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fFsco0OQaZuAfwrw3O+SpTVxXjhpq+VAy6pC/2oJA6RqVcf92X1YPIZPaPKkGREFL
	 YNbj6R4YER2qHU4AT9FNaeOQNHAnsESIic8RCruRl094ExfQlS3qkmD1xr/UAQeiZX
	 4PZqPT3Ov52L55CmPXBjiWyIL/sjPAzrhC4d608IgWvAFubcDuHUriQ9PcKkRfAheO
	 BTLTgHlZCCCMTwt1qvghEARnj6pGKW+rlUbpQq3r4UizI2nZPh+x8Eeg9CO3k8PObH
	 nbE/TxGtXr8Ovx7b75HoaBF7kaSDQ6kb6dskGiBJ89jQ+OIzBZMjE3HNusEfQYa7hg
	 ni+sXkJkWirJg==
Date: Mon, 17 Nov 2025 19:16:06 +0000
From: Conor Dooley <conor@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gnss: u-blox: use lowercase company name
Message-ID: <20251117-tinsel-prankster-79926887b656@spud>
References: <20251114150529.689-1-johan@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mCRJQ1CJObbKHcRY"
Content-Disposition: inline
In-Reply-To: <20251114150529.689-1-johan@kernel.org>


--mCRJQ1CJObbKHcRY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--mCRJQ1CJObbKHcRY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRt0dgAKCRB4tDGHoIJi
0hfQAPwL4zYpYrqi8CIU2fUfJncFt9SQ5Y2vsdOn3nXUKck7wAEA8ZxJfKXuxkhr
OE4vEH4slQ/xC+GZomsuE/lNqvJ3WAM=
=9Znz
-----END PGP SIGNATURE-----

--mCRJQ1CJObbKHcRY--

