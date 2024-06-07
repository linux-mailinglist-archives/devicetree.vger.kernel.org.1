Return-Path: <devicetree+bounces-73807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7910A900BA8
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 20:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 068FE1C22235
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 18:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175BF19A2B1;
	Fri,  7 Jun 2024 18:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="YbU/IO9s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAAC1CD02
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 18:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717783231; cv=none; b=JmXfdd5T4b0gUp4vMaR/oAoCp3K4jSaa4xSpmrjV+umr7kY+Y3mKL4EmpbLfY9Aailzgrk+3h6GR1BEBxbh82ewwtS7xF7h95lpEPh6RJr84be5bFgGOv1RX0R/eBKebaaxbWWuCV6yDc/n1VgDY+i/Pldkiwud5G1CdZ5ms4iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717783231; c=relaxed/simple;
	bh=0NRGuS2YrkWBCFcj/9uHh/nwyQi8ilhdgYK4XspWfA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qA6fky7Qffn//xOlW/yWsuJkQdkWAaMWmRcNaX2MQo4WycCeeyzR0FTIG/LuAK3bZcDvHoK+Y/gmI2DQ0T6BpSraRt9DR1khPf8PfPgAY6dBAQ1TA0D1UMsmWUmRY1a/DLTIISM66zeaovQm5xfs5JFZj01njGDgDxjFGRJp3C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=YbU/IO9s; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=0NRG
	uS2YrkWBCFcj/9uHh/nwyQi8ilhdgYK4XspWfA0=; b=YbU/IO9sX3jfXvqlFN/B
	cpDFyFS+gIkhlS3iwPWzsRnHRBe3vNTqv/Riknz25fD24OQaoo+288/sk277osOA
	IlK9xRMb0mab9SbpllMkDwwIZblfE1TPoLeNAKsBHiFA3OlPbvyGU6dgkdE+DSKm
	IpcSeBQY2g2stZlCx38VotzStqSD6xfz/WaIXYPqD/eQVOj2y9BIc0IWGmaa7CPt
	3eR3cynz4g+Y3AdKSQs4AxWL7VHio6TPyTCv/lcMmTIjA2TX+SXWnlvmSOrkIDni
	oPhw5Z2uhdNoRX9IpdDQYu3kMyfG1PPXp2S1uoiU4DHyDdJW+D7Nw/SW2lCHPkkk
	4A==
Received: (qmail 3413723 invoked from network); 7 Jun 2024 20:00:20 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 7 Jun 2024 20:00:20 +0200
X-UD-Smtp-Session: l3s3148p1@mbWaklAalMhehhrL
Date: Fri, 7 Jun 2024 20:00:17 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Armin Wolf <W_Armin@gmx.de>
Cc: Guenter Roeck <linux@roeck-us.net>, linux-hwmon@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?utf-8?B?UmVuw6k=?= Rebe <rene@exactcode.de>, 
	Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>, Stephen Horvath <s.horvath@outlook.com.au>
Subject: Re: [PATCH v4 5/6] i2c: smbus: Support DDR5 SPD EEPROMs
Message-ID: <txliuvufu6muqucno2uex2q6xvnveozpjzahx7zryqlvvvzrs7@flv2zztine6r>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Armin Wolf <W_Armin@gmx.de>, Guenter Roeck <linux@roeck-us.net>, linux-hwmon@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?utf-8?B?UmVuw6k=?= Rebe <rene@exactcode.de>, 
	Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>, Stephen Horvath <s.horvath@outlook.com.au>
References: <20240604040237.1064024-1-linux@roeck-us.net>
 <20240604040237.1064024-6-linux@roeck-us.net>
 <c939b0c7-2c8c-4cf1-8d5c-9309ce0b371a@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="44kjmhkbol2rnepo"
Content-Disposition: inline
In-Reply-To: <c939b0c7-2c8c-4cf1-8d5c-9309ce0b371a@gmx.de>


--44kjmhkbol2rnepo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> the text "Only works for DDR, DDR2, DDR3 and DDR4 for now" should be updated too.
> With this fixed:

Yes, maybe this could be simplified to "(LP)DDR memory types"


--44kjmhkbol2rnepo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmZjSq4ACgkQFA3kzBSg
KbbTbg//cD7sOcvnAnkIomuxZCVkBx0taLNZrNBPEfiUHTdGQ3zontEQMXJ0moHe
acWUAt/sy6sxemTyRojO0FWsDCGOZ9hPO95F8Tpt921gdDOFF3mSMXv7V4eLVbzV
H7jI+QIn7hvjUBpCTCgZ0DjDY5ku36tAxcpxbr/7aYsoXPz31lqk9Tb8lthum4+j
8AfgziLgAaNqvd0tDO5CoVmAiy0d8gs2OvqXfwP5XOOzhGA78CzfxG2GSCqqO73c
qXxrR3Rhu82NMej7FUUd+eThQvcmgo3eqV7AOHlr0eaT1338DBk3ZIEGFlswn5ae
LsoeVUtequuqUVbsf5XM0QHaCO8uB/Z9lvgwa1FIHdMvbWT/lUebhtjwlH61WjZk
aZam6j+Av84nmp9XdPWNm5itz1Yk8YcekN1Eq/rjlDqu8VF9fFofH5caKrtnojEk
+1tlAyjdoRudnf15D59pcrD/S1NMYxWb94rw0BekOaQYOHAo51dnPMsOS+YW5/H7
DqSuo2PjSMobSv8GHuUq0Sd/Ghvrc3jxSlEtgUk4jUWv6QJSBIMzrA5wWrPiYjVk
YHxgS1VSNMApKGgHGcvhzyLSWJllAiZWs3POngn0wVRiTNQwqTLkyypF8fkzOe1Q
T9IaM1Fjx/+bn2IHZRQaRNhBYfGy7tZVgodo8x5mXaOsjDmP41E=
=qngC
-----END PGP SIGNATURE-----

--44kjmhkbol2rnepo--

