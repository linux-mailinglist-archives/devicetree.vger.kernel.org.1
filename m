Return-Path: <devicetree+bounces-270716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GLeH04xp2kjfwAAu9opvQ
	(envelope-from <devicetree+bounces-270716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:06:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C0C1F5A65
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 42CDA3000FE1
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6283CD8CF;
	Tue,  3 Mar 2026 19:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9PPqUIF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC903A8735;
	Tue,  3 Mar 2026 19:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772564811; cv=none; b=XEZ7+HIDtwJx1VdUu1vSqQW+THcjtZ58yDg1j/s0Ai6P4QRLOw6CKR3qxM1Pvd32ntS7MrfrX6IPyMVgNJSLrs4YahvVmkaoslPPd2HJ6aW72d7rHcr5kCUEBWMWYTpiHJijoBT0GO8VsLyVr9tusw01eGfN6CEiEARwjHTOVGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772564811; c=relaxed/simple;
	bh=o6SqLoLouGO5bXslSs/4F7gpfo57naGALRlZ1K+ZiU4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LbL6cmRCguzx4PtQgxO+VJ1053FuPLR+jvyijJpfv1nHi7LZFfm7cBeV7VvanRFkOzaw0JYFKUrV924YS8aiexYWpT/eXqH9uLe/K14H7YsqnTJLpIzWcIES5hBHFaUfTSRPqvjJRQ3Szwml8VwABbUzTWfBUfpDP54VrP3njbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9PPqUIF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F552C116C6;
	Tue,  3 Mar 2026 19:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772564811;
	bh=o6SqLoLouGO5bXslSs/4F7gpfo57naGALRlZ1K+ZiU4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k9PPqUIFRLeeMpLf+XS9BN9LZAJTe1QWd1uFaPEnJie1rK3xaon2kvnwE6x05Gore
	 oxOkYRoitAgJeTVv4+VBD2FPfQTQRexNOJaYYAq89sGkGOELs+/NiHz299w8XhNhYi
	 yNyK2F38+EO46b/EBQEFlkLRXDKBCWZoy/TVE8ZvdW5+zpziTzin1MTaQmxXWaNRlK
	 UnaYbM0s/f+iM5+XMJJB5Sc6VL3CyZnGamgbtf1L5lsKJu5ZjqQUvlAODMWXRC58tz
	 EGyhhzH13w/id3QjGdj1a/dkjgfw3i2ziSdtDEGZb/5PraiMPcQG+oHlIRNnqDy5/T
	 lemKe0rdoJDZQ==
Date: Tue, 3 Mar 2026 19:06:47 +0000
From: Conor Dooley <conor@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev,
	devicetree@vger.kernel.org, linux-mmc@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: mmc: loongson,ls2k0500-mmc: Add
 compatible for Loongson-2K0300
Message-ID: <20260303-saint-cubicle-67cbf5909ef2@spud>
References: <cover.1772529875.git.zhoubinbin@loongson.cn>
 <5fd555050c62d1bd7dc4f7fc15f93dd48a8a40c3.1772529875.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IODElQvcItTdZo/x"
Content-Disposition: inline
In-Reply-To: <5fd555050c62d1bd7dc4f7fc15f93dd48a8a40c3.1772529875.git.zhoubinbin@loongson.cn>
X-Rspamd-Queue-Id: 21C0C1F5A65
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-270716-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,linaro.org,xen0n.name,lists.linux.dev,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action


--IODElQvcItTdZo/x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--IODElQvcItTdZo/x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaacxRwAKCRB4tDGHoIJi
0jS9AQDSc9WSVw08r08VcFLqfqMDbJZEfc37cMAgPngoYWMkzwD/WpD9cKhcf2Xs
1QGC6wUDULr1fUlifiDcPUOa44LDBA0=
=wT3X
-----END PGP SIGNATURE-----

--IODElQvcItTdZo/x--

