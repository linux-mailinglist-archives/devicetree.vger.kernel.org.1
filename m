Return-Path: <devicetree+bounces-282553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKb1AKyVymkj+QUAu9opvQ
	(envelope-from <devicetree+bounces-282553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 17:24:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1E835DC28
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 17:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C3F53011152
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 15:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DD6344030;
	Mon, 30 Mar 2026 15:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prqTKGyK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5C1340A6B;
	Mon, 30 Mar 2026 15:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774884219; cv=none; b=ZXpamrL8X5CMcm1I8fmqvL/6cqCJjkRZKhEUB3s8WxE5ZUU9JukfUlk7mCLphjSAadXWMpiXu/frjxIcsJ/Jw8zZy7pi4ORw4WuswLjSupKMrQiG9qmFl6IOKe6IfKI+sYt/A3JKy5WQ8b9cZZwaNfcv/eikCQy9taXINy5qmPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774884219; c=relaxed/simple;
	bh=VULu542ABKvcNdY+7D9CdlmIg9J7r7UGrQBVKdeLiMY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S6VBv0ciPrxK+mce2QBQN0RW+AxmPPvvBA8gIQzwg17FCzhyh/pidBB+k85WDjyVw6X2F6ZtBeAFzNAOymQIjhblv621OJFQ1QxBhMJ0PrNgTIWFW1+IpkgFgLS7goaa0fdChVwdMCMvFJ16HROXrzTV0nxt1Zjag2LrgFmlbeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prqTKGyK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8D43C4CEF7;
	Mon, 30 Mar 2026 15:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774884219;
	bh=VULu542ABKvcNdY+7D9CdlmIg9J7r7UGrQBVKdeLiMY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=prqTKGyKEq6bTMdFHWFNCYT/lKNg2YpV5IlAQwiIXHGhkCSZWIL3OCS5TpKgH8Wgf
	 XLZGHVoliDtSLgDYHhKQnVtc/Ls03TOKKqU3Wj0wwKUQ+VxQ+VJI8OfqUiv2vkOOoS
	 NGntgeCI2idZ0VBEPbG4PiWV7R2YM6GaCwinftD2PCvkrpIEKa/O7mmO6oDOOUeczc
	 u2gLeC/R3Z/DayowwA12TxHzD3ZYvH/WTn55qNZDSFKjoN5z9+K6EVIxsgGwxRPQQg
	 UVpIf1muwbocTSqJ9u66iCI8wQ7oNQdixAVTsqwFWT07WzHnYTy+SraeSgsmugk7yJ
	 Fs0w5WGFHfJRA==
Date: Mon, 30 Mar 2026 16:23:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hui Min Mina Chou <minachou@andestech.com>, pjw@kernel.org,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	geert+renesas@glider.be, prabhakar.mahadev-lad.rj@bp.renesas.com,
	magnus.damm@gmail.com, ben717@andestech.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	jonathan.cameron@huawei.com, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, tim609@andestech.com,
	alex749@andestech.com, az70021@gmail.com
Subject: Re: [PATCH 2/7] cache: andes_llcache: refactor initialization and
 cache operations
Message-ID: <20260330-rug-coeditor-82f88ac95e7f@spud>
References: <20260330102724.1012470-1-minachou@andestech.com>
 <20260330102724.1012470-3-minachou@andestech.com>
 <8c01c910-21b4-4a16-98e4-197c20883d23@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XSEEsXFnQ9xlKiil"
Content-Disposition: inline
In-Reply-To: <8c01c910-21b4-4a16-98e4-197c20883d23@kernel.org>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282553-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[andestech.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,glider.be,bp.renesas.com,gmail.com,huawei.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BF1E835DC28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--XSEEsXFnQ9xlKiil
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 30, 2026 at 03:02:11PM +0200, Krzysztof Kozlowski wrote:
> On 30/03/2026 12:27, Hui Min Mina Chou wrote:
> > This patch cleans up the Andes LLC cache driver:
> >  - improved error handling in andes_cache_init() by using goto labels
> >  - updated andes_dma_cache_inv/wback() to check for !size instead of
> >    start =3D=3D end
> >  - cache-line-size mismatch from an error to a warning
> >  - Use ALIGN and ALIGN_DOWN helpers instead of the alignment logic in
> >    andes_dma_cache_inv() and andes_dma_cache_wback().
>=20
> Please read submitting patches document. One thing per commit with
> proper rationale WHY you are doing this.

Applies to multiple patches too. Anything here with a bullet list needs
to be several patches.

--XSEEsXFnQ9xlKiil
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCacqVcgAKCRB4tDGHoIJi
0vBhAQCwaaV8c1kS1cbuCi/Pa4fZ8f4Oq1pfsKXH8bMxDxOimgEApnKQp+tY6hDU
KPlDV7uSgwfAYilwkjTxwTIG7cKTkQI=
=gqdu
-----END PGP SIGNATURE-----

--XSEEsXFnQ9xlKiil--

