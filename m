Return-Path: <devicetree+bounces-90328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A54DB944F3D
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 17:30:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60C0E28AFB0
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 15:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534A21B3758;
	Thu,  1 Aug 2024 15:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkJwmeHj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC521B374E;
	Thu,  1 Aug 2024 15:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722526180; cv=none; b=U/aQfhUDS585b9Gd7puyRCkLu4WFvhRrcha6+N9OBt9DKfIOv7soHXHAagssiVSjWoadk5tivjZGgYypaThL+0UrXnXbLXm4JOHB1PgAo5t2Gn7JifyugAGKKy6wJ5CjRD1nc8cPl4Gc1emqYce66xwHOdgHlD5k2KX1fXjbrg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722526180; c=relaxed/simple;
	bh=Nyd4g5rhTQbe44jgfTOL5a3YHQWfVlAEm0eqKH+VvZ0=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=ZUGA4tBm7OxXYwDZ5JDB/ipjSdpIbObT8CQPDJPMjLk8qxQQmrtQCvlo2X9Vy0uhY22JD/U1SZHfOmcAjgUNegGWeyJpHkSIjmusotXfcWRYz8TmB1WrzUEZ1QVw75gWbiqhVBnB2sCVAIghCeOsCgXZVAxMHZ2gjdX7sGRGiq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkJwmeHj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1B5CC4AF0B;
	Thu,  1 Aug 2024 15:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722526180;
	bh=Nyd4g5rhTQbe44jgfTOL5a3YHQWfVlAEm0eqKH+VvZ0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=SkJwmeHjFADZd6O4hfrUM5ED6u0ENUlkgkDi3LGm988eJgr6P5a4v/oJhAlmfv+5G
	 C9I/3FPONFytE5XBLEo/FjEhxDR+vegIpVbQB+2SPPSvWGwj4tYlazHgPFIAOKZrPz
	 9y/Il9xf1yzIDVvZeyabQrDeqRWzNG9KapfvbRd5zo3iB827zQL+L0W//BQTPsIOy/
	 Gb7aHNQu78slFxgiAzEpgJp8BgaepD9cboxhP8ioEdmBZjdud7wcZQqB0D9/uP+vSi
	 EiB3Tcn4H5WQALCO+4u/riraf7o04zTVQ12xlDNrDfDTiyU+Fig+lRySFgV1b2e+Zu
	 9tXdndj4g+Wwg==
Date: Thu, 01 Aug 2024 09:29:38 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chanh Nguyen <chanh@os.amperecomputing.com>
Cc: Joel Stanley <joel@jms.id.au>, Conor Dooley <conor+dt@kernel.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Open Source Submission <patches@amperecomputing.com>, 
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>, 
 linux-kernel@vger.kernel.org, Thang Nguyen <thang@os.amperecomputing.com>, 
 Phong Vo <phong@os.amperecomputing.com>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20240801091217.1408809-1-chanh@os.amperecomputing.com>
References: <20240801091217.1408809-1-chanh@os.amperecomputing.com>
Message-Id: <172252600912.120761.16384387883905749466.robh@kernel.org>
Subject: Re: [PATCH 0/6] Update the device tree for Ampere's BMC platform


On Thu, 01 Aug 2024 09:12:10 +0000, Chanh Nguyen wrote:
> Updates the device tree to support some features on Ampere's
> Mt.Mitchell BMC and Ampere's Mt.Jade BMC.
> 
> Chanh Nguyen (6):
>   ARM: dts: aspeed: mtjade, mtmitchell: Add OCP temperature sensors
>   ARM: dts: aspeed: mtmitchell: Add I2C temperature sensor alias ports
>   ARM: dts: aspeed: mtmitchell: Add I2C Riser card alias ports
>   ARM: dts: aspeed: mtmitchell: Enable i2c10 and i2c15
>   ARM: dts: aspeed: mtmitchell: Add LEDs
>   ARM: dts: aspeed: mtmitchell: Add I2C FAN controllers
> 
>  .../dts/aspeed/aspeed-bmc-ampere-mtjade.dts   |  16 ++
>  .../aspeed/aspeed-bmc-ampere-mtmitchell.dts   | 152 ++++++++++++++++++
>  2 files changed, 168 insertions(+)
> 
> --
> 2.43.0
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ampere-mtjade.dtb aspeed/aspeed-bmc-ampere-mtmitchell.dtb' for 20240801091217.1408809-1-chanh@os.amperecomputing.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dtb: /ahb/apb/bus@1e78a000/i2c@480/fan-controller0@20: failed to match any schema with compatible: ['maxim,max31790']
arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dtb: /ahb/apb/bus@1e78a000/i2c@480/fan-controller1@2f: failed to match any schema with compatible: ['maxim,max31790']






