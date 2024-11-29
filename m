Return-Path: <devicetree+bounces-125578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D399DE936
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 16:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32BB5B20BF8
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 15:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB84213C9C7;
	Fri, 29 Nov 2024 15:19:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA545A4D5
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 15:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732893548; cv=none; b=dEuhCmEEtlbkRwQQV4oCY1z7deDeVxsUzhvLN2TYezOwdiPT2JGC4E6VUtbWoHlieUYKYiTuRelF5wwr7lwuzfGcw/wVNcEs7z5VyZ+lmMYyE3qRkLx2AI66Zn6hOTu3wMJ6agHQQXEVnJDM9+j35M1BuAKJH+masRM8vv9Djg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732893548; c=relaxed/simple;
	bh=uDHBLfbpRiVwcl9aEKjeDZaraPbmRFFy1TAUaYIaN1k=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=N+YKsp/xXhunZv2VKiktvLDFUZy2qPHMspjtC1Oj1QkBtLIaefWfdaZNJ46UqIVQfnERt7eSq00QJHr/oroZxosqmxhMCQQwJwxdksCJ1d3J8HDE7k1p165/L6yF/RfrJk9TH8SBZueHgNYZB8KHjBvs/tet2Z2wXoa4U+W7ktQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Fri, 29 Nov 2024 16:18:48 +0100
Message-Id: <D5YRHL3A1KCB.17A2YM4TVM6M3@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <macromorgan@hotmail.com>, <jonas@kwiboo.se>, <andyshrk@163.com>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <dsimic@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add support for device tree
 overlays for Radxa devices
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "FUKAUMI Naoki"
 <naoki@radxa.com>
References: <20241129002419.60404-1-naoki@radxa.com>
 <1952472.6tgchFWduM@diego> <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
 <3674598.hdfAi7Kttb@diego>
In-Reply-To: <3674598.hdfAi7Kttb@diego>
X-Migadu-Flow: FLOW_OUT

--a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Nov 29, 2024 at 3:07 PM CET, Heiko St=C3=BCbner wrote:
> Am Freitag, 29. November 2024, 13:46:12 CET schrieb Diederik de Haas:
> > But IIRC, the objection was about enabling it *globally* and instead it
> > should be done more granually, be it on the SoC manufacturer level
> > ('rockchip') or on the SoC ('rk3588') or on the board level as is
> > proposed in this patch.
>
> I actually meant that less broadly and way more Rockchip-specific ;-)

Ah, sorry, then I misunderstood.

--a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ0nbXgAKCRDXblvOeH7b
bhWWAP4t21+r7gbPCqmVqBRaZiYf36PBCatL1i7bxSFjiwxxLQEAhctHUoGHGusp
WDd5Rs7omMuwRf6FH3zmrDiF8KDR1AI=
=+sPn
-----END PGP SIGNATURE-----

--a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26--

