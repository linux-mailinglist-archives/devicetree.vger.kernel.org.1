Return-Path: <devicetree+bounces-46821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D4B86AE87
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E63C1F25431
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 12:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D2670CC5;
	Wed, 28 Feb 2024 11:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCuvCf8J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47E473507;
	Wed, 28 Feb 2024 11:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709121486; cv=none; b=oLmw2MDtOeKRKpjFQGh3frp0ZL8WqBIsMf+zdHUpPff9T6ZXW/bnvSYv9UDlAjVnTApdQeHzPpO5npAzLw07JFBy4/aajtb/GjYN/ve1biGU1I/0fG4QBuCeCvJYQNLwqH21CnszJ4Tl7sHPwOM29fksmVd7hjc0HlWvNDSK6Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709121486; c=relaxed/simple;
	bh=2i57F2bwd8MFtlPkyg5+cTyjkGeR5xF3YTz9mn9FMPo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mEkRUGYqOty0CYIcmOgMuMEk39oZTaMdqiyUt/ebs/5dPYzWJEVPV81RgfHJgOcvi+3pb6iFPbzCp4qT11hNeNpEeZrvLjft3ffZgkRs6oY6DxwTpBykQQDqziMvL6iusks7M97hm7uZApvg/0Bz5bL8RAdhMLv2YC151WWnAGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCuvCf8J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81BF6C433C7;
	Wed, 28 Feb 2024 11:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709121486;
	bh=2i57F2bwd8MFtlPkyg5+cTyjkGeR5xF3YTz9mn9FMPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gCuvCf8JLm/G3hyf82omkF/EFRSEDdsMPz+k8PJOUXPTs19x4IjEhAC7IjvarNarp
	 f2mfRJuQBszQyCddyAoxMKEO/9uwRxfdk6t0vPR6/B77rKJ8uYagYgTj8UDlHozlPd
	 8Hpor3xdVOWiOQ4gKx0b8I8KNTfnrdIOZ34vxV/QAc5cupuKmdFWXXDYqHSBUgLkH/
	 9tnS4u6/BKc/7Pny26ZvnLLv3Q4dOw/mpLwnExI+DCB7ZSaQ2CAiFYxEuIDNtIIWD/
	 rQRqY267+OLRb0coDAzBmqVFIoEfgFqLDHvjMGJbqn2heiodlXXBROnYWoaAmK43kE
	 zgzYtrx4vvqfg==
Date: Wed, 28 Feb 2024 11:58:01 +0000
From: Conor Dooley <conor@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: antoniu.miclaus@analog.com, alexandre.belloni@bootlin.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
	linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	Ibrahim Tilki <Ibrahim.Tilki@analog.com>,
	Zeynep Arslanbenzer <Zeynep.Arslanbenzer@analog.com>
Subject: Re: [PATCH v8 2/2] dt-bindings: rtc: add max313xx RTCs
Message-ID: <20240228-embark-rimmed-d81bab3d42b8@spud>
References: <20240227010312.3305966-1-chris.packham@alliedtelesis.co.nz>
 <20240227010312.3305966-3-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t4gB6YKl63pmWb0L"
Content-Disposition: inline
In-Reply-To: <20240227010312.3305966-3-chris.packham@alliedtelesis.co.nz>


--t4gB6YKl63pmWb0L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 27, 2024 at 02:03:10PM +1300, Chris Packham wrote:

>    interrupts:
> +    description:
> +      Alarm1 interrupt line of the RTC. Some of the RTCs have two interrupt
> +      lines and alarm1 interrupt muxing depends on the clockin/clockout
> +      configuration.
>      maxItems: 1

The maxItems: 1 looks odd here when you state "some of the RTCs have two
interrupt lines", which makes it sound as if there are actually two
interrupts that should be exposed here. If those two interrupts get
muxed to the same pin for output I'd suggest that you clarify that here.

Otherwise, this looks good to me - although I do wonder if the
authorship on the commit (attributed to the analog guys) is still
accurate.

Thanks,
Conor.

--t4gB6YKl63pmWb0L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZd8fyQAKCRB4tDGHoIJi
0tDSAQD7rkCjY+O1QQKDOVfrzBf54VpRC0g+H4OnP8QHO8tvcAEAve/lMLAJY/bw
qykf1vJWluXsxzAdd6/12T1WX8A94Qs=
=7JwR
-----END PGP SIGNATURE-----

--t4gB6YKl63pmWb0L--

