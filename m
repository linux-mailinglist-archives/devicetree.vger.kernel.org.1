Return-Path: <devicetree+bounces-85182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F6A92F26A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 01:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EBD41F224EE
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 23:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB4A216D4D1;
	Thu, 11 Jul 2024 23:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="qr/4BrG0"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A888130487
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 23:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720738829; cv=none; b=ddKY9LhVL4kbcBJ+KDFsaimtHJiwLzXH792+HhrJ0eAV2shGesT0MSpJ3vGMBhQFvLrRKPHGwAlOya9gsydPCSfD6Yf/DOFMQ2hrr0XAPwK2BSqgCeQHur+73r8Nd8Sd/m6CqCEcwAKPoWZBuBQ5rKTGSPk2KQl1c8HZHA9GLQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720738829; c=relaxed/simple;
	bh=1KLVQ/uiLWk16JeW9B8Z6tjY3smbgCRfewlVr2zxva4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Cjm0YvJSk9ucG5NvYU2qsZXPXj2usu1ZPXyLvHxioBML+5iC5nH+6ZBxfu1woi6aw8D1UB5j6I90ri9raF2sspDYxy6K4PkpdAoB4gW+oXOq5hr+EJs+06kOrBbCjaMQTI+ppsslOyvgE3GIhzjdpzwcNzG4XgaVaT0KnCufQHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=qr/4BrG0; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720738825;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=N+O6Eol+qGAhu1CJiyww4DDoBhScIiMTS66JXvFp04Y=;
	b=qr/4BrG0YFHwOnMfoB0vUfWbdHS01anww6ApoFGWDUz7iyWbQTSGxpSU2nl9sgVOSbu2EF
	d+Bh16c2Rbf6gbm8R+jO88a6mPdE7HXRT7yIU4FzCOPOpH343AefHcDQ0qNTXqs/zXMf4n
	3QECfFw5KzrhueZEStc8EcQqZ9bsFQMHBPqqOmLjUQT5i3RgziQEBuAyT34p4ogfar8PdL
	Eg8tvMHmlh5ebnx9/B0gv5sdsk8BT9A9xnXyZCOMZoXJIXAPeRXQaHk8dd2iYWJ9k+PnRt
	Nswsokx2pv9aGspv6cIU+J2zeI22yZI20xxM6bj/Ts2CgXRbcr9u0f9/MKZ2Uw==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: naoki@radxa.com
X-Envelope-To: naoki@radxa.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>, FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Fri, 12 Jul 2024 01:00:08 +0200
Message-ID: <3934922.MC4KtzWskY@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-2-naoki@radxa.com>
References:
 <20240711210526.40448-1-naoki@radxa.com>
 <20240711210526.40448-2-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2559802.jZi8m0hQ7y";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2559802.jZi8m0hQ7y
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Date: Fri, 12 Jul 2024 01:00:08 +0200
Message-ID: <3934922.MC4KtzWskY@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-2-naoki@radxa.com>
MIME-Version: 1.0

On Thursday, 11 July 2024 23:05:26 CEST FUKAUMI Naoki wrote:
> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3288 chip that ships in a number of RAM/eMMC/WiFi/BT configurations:
> 
> - Rockchip RK3328 SoC

That doesn't seem to match RK3288
--nextPart2559802.jZi8m0hQ7y
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpBj+AAKCRDXblvOeH7b
btMjAQDbbyA6P1TBYf7eZouoeMQViwnw0gfAbPucN4SHsjuf3wD/cKl8cA96y9KY
IQXUKnPgiwxTgPmTEoD8VokeORmB/wA=
=AFOW
-----END PGP SIGNATURE-----

--nextPart2559802.jZi8m0hQ7y--




