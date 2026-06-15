Return-Path: <devicetree+bounces-312100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NHh7CoMuMGpYPgUAu9opvQ
	(envelope-from <devicetree+bounces-312100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:55:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7399868894A
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:55:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="f8LcJjd/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312100-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312100-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35ADB318B003
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D981C416D0A;
	Mon, 15 Jun 2026 16:49:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD35F416D03;
	Mon, 15 Jun 2026 16:49:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781542152; cv=none; b=VM5Iti4Dyp0rglbBYWRkzP3J92jQkOzeCYaOxxGIZ8aPLgkgVUL1I9ocCu1CL/zD02H8/kDcBsdihxltY+3YgTSY3YkDwXNMXp9mBrKLAMO8A2L85ZL41Ll5mON1NB8POQYB7h9wgxWJ2pVafPyIMHGnOEWdo/9VxkY3nQ685GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781542152; c=relaxed/simple;
	bh=rL3bZLrnUYURF8thqtoxReFNhkZUU/y7H9FUEGpZHlk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VzmKJs5cXvxpkMPnJgaCPzM/F/2ATJ/PFhZdTeGN1mmzziEQLe2MoHAw1XKWY2JisbEIqdjH0S3SMqgNcL7MuC4mSAVnXcrzy+sIHPKM7Yq6L1j+EURe1EKcVXcY/wP41KPwy/Hw4tKLwylWtQKbU7yWBIFjWKb9VwTOQBRBVck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8LcJjd/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E60B41F000E9;
	Mon, 15 Jun 2026 16:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781542151;
	bh=rL3bZLrnUYURF8thqtoxReFNhkZUU/y7H9FUEGpZHlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f8LcJjd/1HjAnpmX20Vn9djIiVGiZCV/WTc3HJ/wfaEmbciM09pyS4RAPgOhcfF/j
	 IJL/Tlx6f87EiSalmrO8wzxxYefAy4aeCCWtl0SCdOy2Cpu0jQFCfZqsF4nZYix5lm
	 sIURhYzU2tWr3Mkw4DzebDua/cQ9LjMAGWX7GEC5jSjf+A9l0EkUSqf709XLumEfjQ
	 ChScSOOykIT35cJu0rYeX9FPqhvGFwfvmfzcPE3WjCpJ/nu+EPSJ9vvx26tJ43wT43
	 gOtMN/srrm53JcLut48+BgAjo+xmTUnNspwRY5WpwH5bwiP06SjBMd6gAAqzy/9Ivw
	 cPfZdf0OUzvWQ==
Date: Mon, 15 Jun 2026 17:49:06 +0100
From: Conor Dooley <conor@kernel.org>
To: MidG971 <midgy971@gmail.com>
Cc: tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	ulf.hansson@linaro.org, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
	xxm@rock-chips.com, chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com, diederik@cknow-tech.com,
	jonas@kwiboo.se
Subject: Re: [RFC PATCH v4 6/9] dt-bindings: npu: rockchip,rk3588-rknn-core:
 Add RK3568
Message-ID: <20260615-drift-dreamlike-0323a8dc5ce9@spud>
References: <20260613070116.438906-1-midgy971@gmail.com>
 <20260613070116.438906-7-midgy971@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CNSFopl0nkQ6YS29"
Content-Disposition: inline
In-Reply-To: <20260613070116.438906-7-midgy971@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ulf.hansson@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:chaoyi.chen@rock-chips.com,m:finley.xiao@rock-chips.com,m:diederik@cknow-tech.com,m:jonas@kwiboo.se,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-312100-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7399868894A


--CNSFopl0nkQ6YS29
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--CNSFopl0nkQ6YS29
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajAtAQAKCRB4tDGHoIJi
0jbdAP4q0Xsijjrii0xb5mKoYRM8X3GV+zM9Ls2VeJvRKSouvQEAiryegcy5biWz
HQrV9PRAFwdCKCO1WUIBrZR7rlOn1Ao=
=kTnb
-----END PGP SIGNATURE-----

--CNSFopl0nkQ6YS29--

