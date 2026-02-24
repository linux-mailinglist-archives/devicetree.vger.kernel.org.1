Return-Path: <devicetree+bounces-268008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CD99BKnmnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:58:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 670CF18AD6A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2241030E43B5
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90E973A8FE6;
	Tue, 24 Feb 2026 17:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCN5ahYS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E75128F50F;
	Tue, 24 Feb 2026 17:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955699; cv=none; b=Zs3Pe391B/ZcSRuxjEa/4iU33xASsAYbTMBka/gvs3Sj0+nHNHJ4g+M6B2CvVWvddJt64xOPfCbrXIoLSeVLSoB/rCSof2sUeqb/2afVgm5nro4XAmtXWow9D4vzl9N+9sI0Dg93fliSKhs6EPeexnd9TbIp9I0yazyga9nPE9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955699; c=relaxed/simple;
	bh=Gn2h2zOyye5SBxdkla9WuhYaZHjOLfaYbHzyqJi0ELo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cpDcQBe8laI5SUEo8Klddj3KQHQ2cAKe3k88e0HRzrvqilZV456V9ClAJC1eX+13aO2/ZOluycfyfidCxWJalHndTclTFnmcWWeZEwIAA2/tcdv4cfh3bsgVakzoiMqE2HhwQ2okqU6SmpqnRlYRZElOj+zFBak2T8BG0dhU0K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCN5ahYS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E257C19422;
	Tue, 24 Feb 2026 17:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955699;
	bh=Gn2h2zOyye5SBxdkla9WuhYaZHjOLfaYbHzyqJi0ELo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PCN5ahYS8xfyl/e7vql9GDB9b3VorvhxYAh/6KqilOwVUKlfU0A/L70lB8cA6Dspf
	 mdsv9SnMGRfRBwp0yc2Aq3Z5CZzcq/naktqkkgglzia7fkGzqHpOMN3DeLm38xFKQj
	 5Ba21OiZGnN/0SwfwBlYHxU4HKmaqEPoWoakroC3mwVDO2yVIPgFjtQ2/iqIolU6si
	 pQdrPcntXHWXIOch1s+5yWM5Fkq+LJzyAf079FQZuE70CfrDgPcVbdJu7or3D1amP5
	 LrwRHDBPJCJi0anlMBUasYnoT2OssUFBh0lREQ3VBaMmt6Wkxb4vNGteUtbNfNibDP
	 ij7gXXboX6J+g==
Date: Tue, 24 Feb 2026 17:54:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v1 1/1] spi: dt-bindings: snps,dw-abp-ssi: Remove unused
 bindings
Message-ID: <20260224-overview-humongous-efae202d01d8@spud>
References: <20260224115218.3499222-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Lcxi7HRZtYlHyi1T"
Content-Disposition: inline
In-Reply-To: <20260224115218.3499222-1-andriy.shevchenko@linux.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268008-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 670CF18AD6A
X-Rspamd-Action: no action


--Lcxi7HRZtYlHyi1T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--Lcxi7HRZtYlHyi1T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3l7wAKCRB4tDGHoIJi
0ir9AP9JT0fqPEiq9lqqP+Rb/kDcySR46AdCFrIZbOB7wAvSJQD+JRjVTiO1XVY8
4XdUbjrgCdKsZHgD86w6I+Q5J9pJ3AE=
=R6/D
-----END PGP SIGNATURE-----

--Lcxi7HRZtYlHyi1T--

