Return-Path: <devicetree+bounces-202696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3295CB1E62B
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 12:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58CCD164740
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 691B9272E58;
	Fri,  8 Aug 2025 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b="froTg+2G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24422.protonmail.ch (mail-24422.protonmail.ch [109.224.244.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3E4272E68
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 10:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754647943; cv=none; b=XZStvIw1VW8oiOhJo3znzKUNHH/uEO9Ag++d0gteJd4eFOC6hlGB8Aa5Q/Di+/2dNZqljw9JBY+Mub9u5n5mDx8hoIyE0FJHqs/675Mdjud29TrvnzyL31/Rr6V6LvRZSsmbFm+5nGJJPWVOcMAnvTTg/p07cEInW/vc4/gdVQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754647943; c=relaxed/simple;
	bh=h0zIQbSvyxqDSyFVDGoSNiPPz+mQYBdiYh2opvFecX0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kcpPDShAcIXfhUtyn93XVk1vYVeB+uh/NgKNkeF/tMDyCmI0xxD2cNHHLikV33Skf2klkVFt1UmpS786BLr+1ftNURxc5w6EKjfNg8W+Z2lziCxWxFYsrejxTTatbzpBkiVxx8NkEEcH6Y9TGtQZafU/dRbVkOeQtX1DAyWF7uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=froTg+2G; arc=none smtp.client-ip=109.224.244.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geanix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail; t=1754647933; x=1754907133;
	bh=h0zIQbSvyxqDSyFVDGoSNiPPz+mQYBdiYh2opvFecX0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=froTg+2GHOGPNLELm2mc2cAxgrgZ9C1WYyIMFQjOhJIMCARoRFdN4cs8PqPzNWmxp
	 5LFBHXCDa5Jn0sq+VA3VrY87ydwT7f6Xj/4m6mKbI0dAiNsglCcHWb170/PAn4Bncq
	 AexVS+psvWoi/msrr1iY+BvDFWDefAwt5ERJX8j1wYLPybumZ4JG5L1zb0wWT7Q3AI
	 5N9lWjxQ0hHqfro8HSzkk6cBLl9bHZXu1kzp4UV44sQZ08uqB9fw515Mui0R3+tv3E
	 2zc5W4C1KzzmlSQhx6Z3kp5x56gSFAzl2+DVA7irhuYmAWlXzaqEQPI1hqQOXUF5jr
	 8MRZ4LJlU95aw==
Date: Fri, 08 Aug 2025 10:12:09 +0000
To: samuel.kayode@savoirfairelinux.com
From: Sean Nyekjaer <sean@geanix.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Sebastian Reichel <sre@kernel.org>, Frank Li <Frank.li@nxp.com>, imx@lists.linux.dev, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, linux-pm@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>, Abel Vesa <abelvesa@linux.com>, Robin Gong <b38343@freescale.com>, Robin Gong <yibin.gong@nxp.com>, Enric Balletbo i Serra <eballetbo@gmail.com>, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v9 0/6] add support for pf1550 PMIC MFD-based drivers
Message-ID: <znrv5235mga6ns4oue63o2acwmj5gge4c2mr32m7pui4lkamji@cu7zk4skmqkg>
In-Reply-To: <20250716-pf1550-v9-0-502a647f04ef@savoirfairelinux.com>
References: <20250716-pf1550-v9-0-502a647f04ef@savoirfairelinux.com>
Feedback-ID: 134068486:user:proton
X-Pm-Message-ID: 0efdb6af94b748956b6be047e167a11300340c63
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 16, 2025 at 11:11:43AM +0100, Samuel Kayode via B4 Relay wrote:
> This series adds support for pf1550 PMIC. It provides the core driver and=
 a
> three sub-drivers for the regulator, power supply and input subsystems.
>=20
> Patch 1 adds the DT binding document for the PMIC. Patches 2-5 adds the
> pertinent drivers. Last patch adds a MAINTAINERS entry for the drivers.
>=20
> The patches 3-5 depend on the core driver provided in patch 2.
>=20

Please add to the whole series :)

Tested-by: Sean Nyekjaer <sean@geanix.com>


