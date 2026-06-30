Return-Path: <devicetree+bounces-317983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cJOGDRj5Q2rgmQoAu9opvQ
	(envelope-from <devicetree+bounces-317983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:12:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9764F6E6CAA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:12:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OJC0kuXF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317983-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317983-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 453493047BFA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7043DB315;
	Tue, 30 Jun 2026 17:09:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A784F3DB310;
	Tue, 30 Jun 2026 17:09:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782839362; cv=none; b=W/Nrw8+v/jVL9mUcvtnbrnBeNDpckWEFmuCzSBxisz6IZn5/GbmCd3zcvlxoVh3QmrJv9M5dhl3SOy26SdCWckYPlKehGceO9bXUOXNHOUxvS/aZNGEXwBO9999fepkYKGGM2uw7lbqekWXl30jBKMNLOAvLetNT+x5tYrByGPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782839362; c=relaxed/simple;
	bh=ZQ463BWcNQ/hsjfVmxHntb0h6n+WMBn6b+KUF4VdkJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bo8o3yhz+5qq97pZOkjTWk7c6Z5LOXv9aW+hR970WCnGCewpazhei65YQJiQE5Spq1EeFSY1AnOlpwnrT1Yyyy/6TDaZTIZe6squGNUob9pLAakUz70Vi6w3o0EYbmjxv5yxfOdhrGuLLYzr4o45MPv6GLXFMPNugMnlGccheBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJC0kuXF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB3D71F000E9;
	Tue, 30 Jun 2026 17:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782839361;
	bh=ZQ463BWcNQ/hsjfVmxHntb0h6n+WMBn6b+KUF4VdkJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OJC0kuXFbpCHeFcfZ07jJhUKplyTMiBXEM9OSj/u9f8yTTW396S7BV0YqTO9NPtq8
	 37RTHUZWNEzm8WptAvGvWC5kupdrZ5e8ctKl1It0Bqasiaj+mRMWUKZYdI9PXV+bGI
	 ACPqkKZqpTNEyiM0b4FB6na7X8IFsR+zOJY8XSJ1SDPwchr7vf5LmTA6q2/Q7TxoxO
	 wnhXc05th0hS5uLLZQ1oyeC3xxxdKrwJTqdTPxCMKo9DXuFnWkSRvUYAneDLCVZNqK
	 7lXZxopgwWoB0xOdGrNNiHnMQP9g0958Z8zFcR4dpAjjYxt9YwJMbWIHvjNRV/4JK3
	 Ejizw6JINVrHQ==
Date: Tue, 30 Jun 2026 18:09:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: soc: spacemit: k3: Add clock ID for UFS
 refclk
Message-ID: <20260630-bullish-backed-1790f501d5c3@spud>
References: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
 <20260630-06-clk-ufs-support-v1-2-cf7521d1d0fe@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="35b+5CeuJkFuBDwY"
Content-Disposition: inline
In-Reply-To: <20260630-06-clk-ufs-support-v1-2-cf7521d1d0fe@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:dlan@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317983-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,microchip.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9764F6E6CAA

--35b+5CeuJkFuBDwY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--35b+5CeuJkFuBDwY
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakP4PAAKCRB4tDGHoIJi
0nL1AQCAysfwv7mxL9RNVgQOqyZA/A0wbsLRrMZcK/NPCNXj5gEA7gWOJunVrkxY
IOk+VgtGB5f3YAg2sJPX5py6JGPkVwc=
=Y+s9
-----END PGP SIGNATURE-----

--35b+5CeuJkFuBDwY--

