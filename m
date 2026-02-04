Return-Path: <devicetree+bounces-262772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APjIOf2Jg2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:03:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E53DEB597
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69DFE302A055
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E4D141C2EF;
	Wed,  4 Feb 2026 17:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfgWSKqN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8092EF652;
	Wed,  4 Feb 2026 17:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227977; cv=none; b=MjFgUoWvtMvywviDly0rhexOeL0Y+A9V5/yTbZHDL9236wQYIgDb5jkOSGX5PQPc3IWejNh7rzf22oa1MW4uxjeoLxb8mvDaoQ4nWsrI/InTvkEpJy1nydt2vB1vKLcWwqkUahNU/PB9VNdtQlRiYlMq2eEhtRz6gEPC15Rzk2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227977; c=relaxed/simple;
	bh=Vi3IV0X+okuk1f5mWVeUmyzqLjYtP6hBnsX67aaQIFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aed3s4IoMHxCwF7wNo+uoJ50njKeJa07HdfgoD0WdAfqW/8xhMEBYeJNNURExTjfUZxUGvKG1P1GLwbllDlf5yUwdecpQuY7ul6BMPh4SPVTqY31YCvYGNPfjaKvQK1wS+0gG9k6oNGTfifZhwZKdSr3rAxFlsIqqTHq7aAdDmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfgWSKqN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A467C4CEF7;
	Wed,  4 Feb 2026 17:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227976;
	bh=Vi3IV0X+okuk1f5mWVeUmyzqLjYtP6hBnsX67aaQIFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NfgWSKqN1aW+hSwN4GSSkE3lHQy61u4xI+CtaGmNZdIAEmfF/FHeGJzI9Y34+AMt9
	 L9Gwia6H0Km+YsPeQnPSwVmvkKRooc5V8g6Cnq1jq0bpAEtUZpyRBOxWR52MpCRVLe
	 cvmwmkmMv0eSXehjcw5QuW143ya0r47jlZR6GDPVLv2RduXC1rjxDjGtkRPlo/ys6p
	 YXRYhGe0vqG5fbDO37PkAd8TUZyMyk9m2Q/PH86ehpoljWj8e0hSV3bzkh8F2xW+hs
	 r5rBk+HLrOJl4T/NhX1FuauBc1ue+nIMA9WedhZLL/8ghGSA+VPXKr9tZnWMvoPcfN
	 6q2q3vc8BSyTA==
Date: Wed, 4 Feb 2026 17:59:32 +0000
From: Conor Dooley <conor@kernel.org>
To: rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 2/9] dt-bindings: iio: amplifiers: Add AD8366 support
Message-ID: <20260204-reminder-chip-ef7faa12e732@spud>
References: <20260203-iio-ad8366-update-v3-0-5d5636b5181a@analog.com>
 <20260203-iio-ad8366-update-v3-2-5d5636b5181a@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Lb/n3ya3U2PTcngo"
Content-Disposition: inline
In-Reply-To: <20260203-iio-ad8366-update-v3-2-5d5636b5181a@analog.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262772-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4E53DEB597
X-Rspamd-Action: no action


--Lb/n3ya3U2PTcngo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--Lb/n3ya3U2PTcngo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOJBAAKCRB4tDGHoIJi
0m70AQD4Vsk0GvbJKVsZFCEg2jtKl7fSeHW7i+K/ijsqorlFpQD9Haq8cm43O4iA
1tu73x6rLBu42AieZnU8vTGklViqIwc=
=uyeI
-----END PGP SIGNATURE-----

--Lb/n3ya3U2PTcngo--

