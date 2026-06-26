Return-Path: <devicetree+bounces-316132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BEEuHiuePmq5JAkAu9opvQ
	(envelope-from <devicetree+bounces-316132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:43:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D99776CE9B9
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:43:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KNxkCNqh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316132-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316132-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 938AA3154E63
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 15:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F313376BEF;
	Fri, 26 Jun 2026 15:36:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DD32F3C19;
	Fri, 26 Jun 2026 15:36:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782488208; cv=none; b=dtjmBW5W5DkKtXH1+11Qgn1Vw62rA1Am5FDovVD4BziLWvE26OAgzOYwkGVFqMspT4HFdOZOWk+88OG6qBkBfsCuSSKA3SGmR6+Ww4cJTJ6kvQPyK5Z8iU2QTD9neXNTcMBA88BO4pPgBnzRH049VEF95OUEfgPi0vDPrW57nV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782488208; c=relaxed/simple;
	bh=62mB4Rf7rGoMMJhEEyJqd2qXM2uJ1hue8C5YaLlYn8c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fKx9yNJ50YolK/yHpRbOMegw5/7X0ZGd+GN6VCuGzbsXQz0riDttngekUy8R+yF91zAsT1I989R6sOFEhAmOaO4nGRs4wy8EgN8/AF3rXtaDbAUnWaA8+hX1hCxb+q/bxGgbeE53TNbLjbPwF29pK2PsLVA0uIT1kfkaA4vkmgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNxkCNqh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38D731F000E9;
	Fri, 26 Jun 2026 15:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782488207;
	bh=62mB4Rf7rGoMMJhEEyJqd2qXM2uJ1hue8C5YaLlYn8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KNxkCNqhkFlxTaC2AKSYrjBO4VYQnOOA38JxDiyQyZ6Fm9AGNcXeMHk8gjQeadxGB
	 x2GK+kirRX5heqRwDvagUH1tSs1MlY3vaocMk1Oqev9bBGzT4L2ZfWmb7QpFLlQ4yj
	 yI3UzGwJz8SG0h0E4CsU3r3G+CgaiQ6p1OAvKoyC6WDDReiCwrw/sCkJd1DoZJgjZO
	 rxOWa0a4Q6f9lPoU/P8Z/Kjyg0a3wHz9FzrowR+wbZiJOuYO0j9eHfgl/4hIDVJExy
	 NmBcy9iCI4ulJBXRPN88L9rPfc8QiOH49RWV6N2YGW5EpwAMKiq6r/TnWWuKQtb83w
	 DSy92msmkQRQQ==
Date: Fri, 26 Jun 2026 16:36:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Jiqi Li <lijq9@lenovo.com>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jonathanh@nvidia.com, thierry.reding@gmail.com,
	mpearson-lenovo@squebb.ca
Subject: Re: [PATCH 1/2] dt-bindings: arm: tegra: Add lenovo,thinkedge-se70
 compatible string
Message-ID: <20260626-cartoon-splice-59704e8ca9c5@spud>
References: <20260626105625.600156-1-lijq9@lenovo.com>
 <20260626105625.600156-2-lijq9@lenovo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cqHS+6gAc2oW++dh"
Content-Disposition: inline
In-Reply-To: <20260626105625.600156-2-lijq9@lenovo.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316132-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lijq9@lenovo.com,m:linux-tegra@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh+dt@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:thierry.reding@gmail.com,m:mpearson-lenovo@squebb.ca,m:robh@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,nvidia.com,gmail.com,squebb.ca];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D99776CE9B9


--cqHS+6gAc2oW++dh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--cqHS+6gAc2oW++dh
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj6ciwAKCRB4tDGHoIJi
0rTwAQCLbcqvllYTQbGdCCnn6NyySU+DKoU+vEb8UIsKe3Br+wEA2W8lxQajBnGJ
zPq0cWQZfgWt3EawwK0Sm9XIlfqQQAU=
=rkGN
-----END PGP SIGNATURE-----

--cqHS+6gAc2oW++dh--

