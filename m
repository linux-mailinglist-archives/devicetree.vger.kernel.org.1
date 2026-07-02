Return-Path: <devicetree+bounces-319588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I1odAZe7RmqccQsAu9opvQ
	(envelope-from <devicetree+bounces-319588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:27:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DB36FC85A
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:27:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=TPoBC7bF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319588-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319588-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 251D2301CDA6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C073845D9;
	Thu,  2 Jul 2026 19:27:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8507B384254
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 19:27:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783020427; cv=none; b=nL6vGKmwrmD6PXPbPqtFtcwNOOhjOukYdkX2Z2R+7QAoeQ3GnzObYoKhz2bFCkHYlYtPxKiBHkzjzPL4jlGlgd3jUatR08yTCeGlVj4pzd38jY8A22dCs/TbGXSQaEQ2G0nD5NA6Hgmq5ava7ixAiPkUzEFIqQWnkvYOXaUWVpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783020427; c=relaxed/simple;
	bh=wR1st3jTX6RTY7WDDJ1RrWd/15qri5Ffv6wmA971dXU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FMWGxNJafaRmZ9uz0MBzUOA6bo2NBYNwsL44E3qGeDPc3JR0c+zlFKbZs2M/8fEUFxLDluv9ZYJsMSHm4C/agIOayQr+ReeRnAgCwkRPnH5kxaF1g2CTZp18EokDIpbACZXUl3gVPu8203CclMItjzr6EHuYDCQRz99mSkMTOpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TPoBC7bF; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-493bab44440so6167085e9.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 12:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783020425; x=1783625225; darn=vger.kernel.org;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z1JUyIG3DwbeOPJPxX3RcLVRRPcM09xsVDoLHi5o4rk=;
        b=TPoBC7bFS3CezUu88WEQT1acocu18NekcJ43zpRzZq4WR3MrC9wJNmZ7QJOwQ8LY7G
         8MDtzO2CchBgkjZ30A++bmpA6ljH/H2pGpbOtJXfF5XlmFYSMPSjxg9itAVvg9hVocfj
         3uzBZeaMysfGSEpm0xkcbdEkUlfVn3qsDsTc40PLqkm/dgqJjQgsyMNWacA5Pnh9HUIC
         PEx9KpjIUxFYjvX/divAr/rARCub1wYfjCpppZZoVk3CqGgh1j+Xoq2CiU4RPpOZH4Gy
         0F05YBVyRs0Anl32wHQpmczI4pkzQI2kpT+Jbbo47ux9nRD/iWn7bvD6L/2lAfY3TGkC
         CjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783020425; x=1783625225;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z1JUyIG3DwbeOPJPxX3RcLVRRPcM09xsVDoLHi5o4rk=;
        b=S239KxlIK0VSzAo97uG0U9tf3PB5OKX0ngqG7IOrCnYdMLVCk8Ju2hqWzKL0+r/43w
         zPqaqrpe3d4bX7y+pesX/Bgu+cNtls5Vs3TqPi8tWAKFmPNwEsCr5Y8qpPmLOCf7+wIO
         F4AlX70YnS3HrpJL231Z9jw/+k7xj7aF+uwaLIuSkbijoWdhNKagfGJEXYkhSPmYmIPQ
         HJz648xAl6wAJhl9aKwgGODNnBtq8I0CLS2lJ3wZA8F387jCYy2saek/vTsZgXPWkEYx
         JcYw/I/P2MOTHb6+kuuHHk6NmZYG3bAnN3ccYmZcaXp8ZNAVpOT7h3zNOE81EORVvWJf
         fYLQ==
X-Forwarded-Encrypted: i=1; AFNElJ+FsIecDNAu1MQ1r0zhq/Dtqg17sILqMbm3Sa4AHC6O9dAQ/Ol6yhvqwrqtCSTmi6s+yZXGu4g0/Nh3@vger.kernel.org
X-Gm-Message-State: AOJu0YwcC7B4G2i6rbD3lsG5HYb+8Xi4dzegR23AcybyCAIzvH6lkey4
	qxPfyEgVkEF9U8Q/JSKE2LiRLRHiwc0OKPdgwjGJudifTkpfk0cDoXzq
X-Gm-Gg: AfdE7cn0cIGKuqWtqxulMgMlI7GuLY/z9ZLJ08dxb50eUoS/fnASBjU4NeoMzevj9S9
	IOE4PUEBpQJRbjp8RQTjyhOL757Jtz7eNGqoPBQTVPEwToNBfUtjYcSFWTMXBdnySxysRcXxuWP
	IKkAU/TwXQoq4MsIl8rznuTuPiwBWxeNGwf36ejCoyXrzoJOJtAT/ffz2WavFLzNUr0oCROpGus
	Slfcn/+0lThGmbp/AuZnBadkHpg+/DDp+PXn6Ap8JblEqhYB8lAyg052mDx+kGyvMvGlbnW0v0d
	UTuuJjvUoa/ahV1qbAU93r96xj8CXdrx1Pe59lTE8+icDfF5bO9RTlllK+40yyyIzvR6v3leYxB
	KCqgk+yc+/lHI1dNxkPPw1pNByDP7m5D1z7ng6lp/rLUP8W4YmP5RSbbDXCohWkU7FO4RfA20Fk
	hpH/z81Ly4Z68zPldWwjywJo26
X-Received: by 2002:a05:600c:4eca:b0:493:c600:e1a6 with SMTP id 5b1f17b1804b1-493c9b5da18mr16908965e9.12.1783020424838;
        Thu, 02 Jul 2026 12:27:04 -0700 (PDT)
Received: from strix.localnet ([197.250.51.120])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c63ba971sm107245475e9.13.2026.07.02.12.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 12:27:03 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC v5 00/12] ZTE zx297520v3 clock bindings and driver
Date: Thu, 02 Jul 2026 22:26:54 +0300
Message-ID: <-YnKrFIxSsqt7IlbKzex9w@gmail.com>
In-Reply-To: <20260702-frequent-refreeze-9850982156cb@spud>
References:
 <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
 <ihPM7P2dSn-oiyaL8fageA@gmail.com>
 <20260702-frequent-refreeze-9850982156cb@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPartCXp0dzo7QVWFrQBb7b6M4w";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319588-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:bmasney@redhat.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[stefandoesinger@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefandoesinger@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 64DB36FC85A

--nextPartCXp0dzo7QVWFrQBb7b6M4w
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Conor Dooley <conor@kernel.org>
Subject: Re: [PATCH RFC v5 00/12] ZTE zx297520v3 clock bindings and driver
Date: Thu, 02 Jul 2026 22:26:54 +0300
Message-ID: <-YnKrFIxSsqt7IlbKzex9w@gmail.com>
In-Reply-To: <20260702-frequent-refreeze-9850982156cb@spud>
MIME-Version: 1.0

Am Donnerstag, 2. Juli 2026, 22:05:14 Ostafrikanische Zeit schrieben Sie:
> > I am not aware of any IO region to configure the PHY, although one may
> > exist. topcrm + 0x84 has two status bits reporting if USB and HSIC are
> > powered and out of reset. Nevertheless, the PHY feels distinct enough
> > from topcrm that it should have its own binding. The phy driver would
> > merely deassert the reset
> This is the sort of thing that should be a child node of the syscon,
> rather than integrated into the parent, given it consumes resources from
> another feature of the syscon.
Ok, I'll go that route then

I think I can add the phy child to the binding later without breaking the ABI 
if I make it an optional member of the binding.
--nextPartCXp0dzo7QVWFrQBb7b6M4w
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmpGu34bFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoiPQMP/1oytiyuDough6TAKI1g
pyPuNyWA1l0TbqIZQujcStqcihL5JOYZo7eK/Z5amGdaD0EMEfB4eWYwsapRjRlj
hihS2WiWMGoowwNEvDsUAlxraWTwlDXpANEJtXNMPrVvOOPGin6OHFPquo3v+4vB
vgmM1r2MMacaCuuFEFn/m7NRHBuXA1QJzNXuyzCdHxwQEamNKV0SEVWp6mMnvypn
1wzXqXJjcyzbinxUBA42WiUaK8xfvna5CQAzqnqMVeS16C+Salhv41WhEDN3kMag
xjMXR6L4g04Su0MdhmssQGfE185ULucGWxSR+FZyqCvUuTOZnL1keHMtETLbQ2C0
Hafwvn0IUJiCzNhGjSzPgbzWIhe9xV7DLw9CxOjW07IVenrRoeZQr4G9/8f9ICYA
n7Zy8REW5Clmm2VfDSpsF2YLPuA39xv7TAopwUWmf+X4XqhxJvZIZVHL0B2lXQrH
CkKtc6AgRWV0Tb4wz66UK8QJCeJubNwYlHHkD7xbKt9NG+ZorwuIFxSoReT0+UVV
R77MUxXv618CXy2iN8UwCjFJ/hEl2Ffkw4c07QrqMG7HJNFkOtKBvYuvDGeseSTa
5GVk0b9cADBbSdwPkP1juTnjgYheY26U5Ru8lI5O+7zoAIrdzYik8OKkutQjbtus
ZycegPP8luJaanrjrM6flc+9
=zmEp
-----END PGP SIGNATURE-----

--nextPartCXp0dzo7QVWFrQBb7b6M4w--




