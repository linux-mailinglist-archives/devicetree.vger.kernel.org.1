Return-Path: <devicetree+bounces-306388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y98zEZxKIGqA0QAAu9opvQ
	(envelope-from <devicetree+bounces-306388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:39:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD0D63949F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:39:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="c+4ezHQ/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306388-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306388-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CC604308D481
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE103D1ABC;
	Wed,  3 Jun 2026 15:30:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C21B3A873D;
	Wed,  3 Jun 2026 15:30:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500634; cv=none; b=n6TvVKCWSFVc9fwJdrtX/iKE2FJpEWA3Q2jBfXdZr47cDaJ/jUCoKPqfjRcx15Gbki33IEBMsJHF5zHHSd4VAsJm95HGD65SUVqfRunsLh89ggfBAuCL54XUL5BWSBS+gXBn9GtwiXpqG9QDz/o8D83VVK1iqS7rxMI0hdVMMkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500634; c=relaxed/simple;
	bh=Atnblw3u+0+59oYj3/6rPNoCR3XUYN0HZoGIki7156Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rA6+aFAVxRs6mYkCrcibIYn9HiNl+5wbY5Z/0REQvmHwBzBWtaG4ZMyp0MQr1ZT7w88FrF02J7eP2ankfQfq2Bifw/5iasCLFFFjZ/fElu8DKTH3D6c4Ko/lWLyGd9kfD+EOTHTS5jWZNb7OaeXw5pdiHQoVV3dVxLPo2Ut5+kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+4ezHQ/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA0701F00898;
	Wed,  3 Jun 2026 15:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780500631;
	bh=Atnblw3u+0+59oYj3/6rPNoCR3XUYN0HZoGIki7156Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c+4ezHQ/l8DE9qgvwLmzKdh+Q0oIJqz2dPlHaMlU2NhX94mv71O7XTWjtjWMtkXte
	 j5jolf1zF+yPVHV1CRxa5+OMxDHavx7RaYwBDO/W5YcFA6FZblcW5iogDOEGY/8LiF
	 vz24+rHjAXpzxivWn6EaHzIWwxgYeC6xoK4Ve3dc0cZg0rYBiwu/a3hFR/kFHzihFM
	 GBFvMAI9dSQsFcQiHwOiHrTjoMLwjF3bJfSjR4aWlX06FFfp2soHUtiVza2nZ50CqU
	 gIOdcCLsYWFA2nMvRolRAbm3yJ6S+EbSalSBIP0mZG4vKzePocwOhdNR+sL/ksMY1n
	 6VvusPV1tn0mQ==
Date: Wed, 3 Jun 2026 16:30:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, git@amd.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	kishore Manne <nava.kishore.manne@amd.com>,
	"moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 1/5] dt-bindings: firmware: xilinx: Add missing
 example for ZynqMP
Message-ID: <20260603-recycler-copied-b9387a9ab0c9@spud>
References: <cover.1780499520.git.michal.simek@amd.com>
 <da152696e367eee8717a644d9303d27df1a3107b.1780499520.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OEj4Bn3ueDRLlxNp"
Content-Disposition: inline
In-Reply-To: <da152696e367eee8717a644d9303d27df1a3107b.1780499520.git.michal.simek@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306388-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:michal.simek@amd.com,m:linux-kernel@vger.kernel.org,m:monstr@monstr.eu,m:git@amd.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:nava.kishore.manne@amd.com,m:linux-arm-kernel@lists.infradead.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBD0D63949F


--OEj4Bn3ueDRLlxNp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--OEj4Bn3ueDRLlxNp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBIkwAKCRB4tDGHoIJi
0jiuAQC+o/oDdeA3mOii20jfihnzZcxChbwgO4sqzA0qk1FMegD/SBtPmGcjqHIm
x+QJ9PD4NMqs2PhnT21AfVROHTb5ugI=
=2Tsg
-----END PGP SIGNATURE-----

--OEj4Bn3ueDRLlxNp--

