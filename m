Return-Path: <devicetree+bounces-84929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1EB92E425
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 12:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51D751F20C89
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 10:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3944157E9F;
	Thu, 11 Jul 2024 10:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="Guw25fXT"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D971157A61
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720692325; cv=none; b=IlgUVvDGyqy3V16k07R3FaiC/3ncYtcDteQqYCrcCOyIHl4k+tu5kvSunsIOJc8wsqt5ZNaqMbsrcjd9BBCYE2QMn5zZRnk2YpbQoiIUJ1Re6rELcM6fRA4y2BzatMobccqUC3b+172iRkr8SXFlkvh0MS2BwHwiOU2ws2YefQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720692325; c=relaxed/simple;
	bh=woariqs1T/t6joBcoDmTz9WPGOF9LK4+GbAOdGbFbyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FTaGUzd5UeJit450pLv5saCHq6aXczq6zShW2vKZRLaAtgEZ9xTU+SXbsvZ7zykQlK0gpgf4aT26wDj696jp2RjS3o4Db3DoNJIy6ZNO4hj28eD8ucuQbR7hRIDo5zDeB322vwE/Tj5G7x7yTcNAY07Fr2Fw4PK2p4lgPWSa1CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=Guw25fXT; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: jonas@kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720692321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=woariqs1T/t6joBcoDmTz9WPGOF9LK4+GbAOdGbFbyw=;
	b=Guw25fXTsi2R6EDlEA9Sq0mA1QFGoWhYFqmBpJJR7gBDxmaPVIGpjHw97CkwW1Zwnt6B4J
	Ydyo1WOgg/qynJOlUKr/kF3JPyOAMu1EMOLPsYS42vB3DwZT9BAtSJxgXDKRp6LRn5cFUN
	EDCDUp2surfL6vW11js9ztESYJheqxeKohcHGNbbO/DRdMMveA0W3dIfDhDgt+I6DzaatY
	c6iip31+SA5dV+G43MjNVHO38GqC8WAhloL3YXjky+u2ukgjNEyR0KvNHoAokYi8VeuVQw
	X1FhLDFwDKZChAV84HXftQJ7T6lJ4Uhv/m/p1WcY6hSF0l/LNzeDNG0FlAzG6w==
X-Envelope-To: linux.amoon@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Jonas Karlman <jonas@kwiboo.se>, Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
Date: Thu, 11 Jul 2024 12:05:07 +0200
Message-ID: <2017670.43MJ0K8Myn@bagend>
Organization: Connecting Knowledge
In-Reply-To:
 <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
References:
 <20240711060939.1128-1-linux.amoon@gmail.com>
 <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9979218.Gk3PjodWl2";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart9979218.Gk3PjodWl2
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 11 Jul 2024 12:05:07 +0200
Message-ID: <2017670.43MJ0K8Myn@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Thursday, 11 July 2024 11:09:48 CEST Anand Moon wrote:
> Ok but it is better to update this in rk3588s-pinctrl.dtsi

It's probably better to base your patch(es) on Heiko's 'for-next' (or 'v6.11-
armsoc/dts64') branch as that file no longer exists there
--nextPart9979218.Gk3PjodWl2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZo+uUwAKCRDXblvOeH7b
blpuAP0UVF/cKRG9V7+rqf/WlKLAkLvHlt6ZJ4I9ApuZxegHKwEAieUAKVb4laEU
S21ZzMcJwL9EtDWySPiHunToRKsDbAE=
=1hje
-----END PGP SIGNATURE-----

--nextPart9979218.Gk3PjodWl2--




