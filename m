Return-Path: <devicetree+bounces-294574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE6hKKT7/WnYlQAAu9opvQ
	(envelope-from <devicetree+bounces-294574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:05:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FAA4F8486
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:05:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA12430AC219
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 15:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD693B47FA;
	Fri,  8 May 2026 15:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SD8whVZS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A0C2459E5;
	Fri,  8 May 2026 15:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778252474; cv=none; b=b9u9paXaOGaGmo6A1jIpO7+VDdXoptsy2yGfUt8dPBDVlWr5WR6DL2oTZPQ72YMYnPez+ofk4ZNrgfhkuWOIOUw9AQm7AD4sWrl8ZuvZDlqY7gBiLWnEy3AmFJH9+bbZsM9yVaWz+tP23uXH+1wksBMcf55Mkp82gHttJyUPxhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778252474; c=relaxed/simple;
	bh=4pvPIysS9xFH+7471NAoRot/8UcaVFM2RP/Hp3uP2xI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aiVH3J++MOV4LWQnjL5QbcofIYv5bR0/ktVg1CIH/tHOttoEi1CQSAf3FgrOPSYVkfK7NGRU8FwpFIybITaT4gO1VEIFvYOf8D4KOb7R/+tljEAQxuxBN3c0Nvt9ZRfe1qtDqJONorJgdPlqioANGTGQkT+ARyRdDgtwsV3WFeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SD8whVZS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68DB1C2BCF7;
	Fri,  8 May 2026 15:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778252473;
	bh=4pvPIysS9xFH+7471NAoRot/8UcaVFM2RP/Hp3uP2xI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SD8whVZSJQao+hLGhIx0hZDHJxy08wES5ZWqNimqAq4+XJQoqFn9hRAo/xuUjTOTO
	 Ro24N6xfFdGJcI6LTLe/ZgAYLZB+hU3wRbWJXRSbvo/d//2pfu/oDngWtUyyfyRdfR
	 QQIwNBrpVoAQ8tzpsUozE9E6ybv4ruJ8Q78NA1/eOT8uPFHnkyOjq8LM9Djbimwza6
	 EeEATel4TxydtXSkWE+eDU7N9tpZsdwFEYnGL7XD5nHuluaBHh5/jO4h2KmK9xjacq
	 VpGHnOerAwLqSfpRUSb9MPbyeiLe20+rXRl3tA70UHUqqxTbi8crdS83NTqjlyzWn6
	 CNGMM4GU3e2Bg==
Date: Fri, 8 May 2026 16:01:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: altera: add compatible for agilex5
 socdk debug daughter card
Message-ID: <20260508-unpainted-stoic-bef0945598cb@spud>
References: <cover.1778237639.git.adrian.ho.yin.ng@altera.com>
 <ee029101fc623a716bcc31e040fd1271d8fc3f70.1778237639.git.adrian.ho.yin.ng@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CpKEQW07NauFiFSt"
Content-Disposition: inline
In-Reply-To: <ee029101fc623a716bcc31e040fd1271d8fc3f70.1778237639.git.adrian.ho.yin.ng@altera.com>
X-Rspamd-Queue-Id: 10FAA4F8486
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294574-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--CpKEQW07NauFiFSt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--CpKEQW07NauFiFSt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaf36tQAKCRB4tDGHoIJi
0rnwAQCq4xog55MvkvDXzVUGrUCnF6PTXJ9VoNyD3Awkd0JJ0wEA7Y1jThSrrzfo
gf34TXBvKQcLlVo6Iy0EJpVT8F8zqgw=
=lpbY
-----END PGP SIGNATURE-----

--CpKEQW07NauFiFSt--

