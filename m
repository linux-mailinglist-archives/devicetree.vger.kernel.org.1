Return-Path: <devicetree+bounces-174091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AACA3AAC0FD
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 12:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC5481C251DB
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 10:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E67627467C;
	Tue,  6 May 2025 10:11:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4F319F489
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 10:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746526292; cv=none; b=iwWaoyneT2yRyfm/OzbPiz1beYbiEsFNrQtl5nKgrneDKEbXa1Mb8cmuKzr6Ur8S2UNY6MAv5N6Gitmiij2P79DDVzzGN2+YEdxkhirT1/XEHDAfv5C3YjkugCacazkwoS4ltvdv96+5kg6CjuqAYdkHeL7ElisDXSvXrlIGYhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746526292; c=relaxed/simple;
	bh=/14muUSnjrguA3XDoHQcGk3OKFUssHvmhKsZnJ4M/DM=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=geZgVgvg8spVyVLGbBVkM3Eac6u2B8UrViOZtlk531M1+ROi3DiHbfsA39sWNFmFnzzqA7T9G0d5M0ZLmmN58weri0Ft6/9MBZDuqx+Y8Hmz3FXLlRrP+xrFtTVi/aiTgsw1n3zKFxrYFRjeZTsUZzNX/s5WMaFxv/1O5egsSXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uCFGh-0002Dd-2d; Tue, 06 May 2025 12:11:19 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uCFGg-001NTB-1n;
	Tue, 06 May 2025 12:11:18 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uCFGg-0005kT-1X;
	Tue, 06 May 2025 12:11:18 +0200
Message-ID: <bce05a662787134194d20951b8de7f6defb4f9bb.camel@pengutronix.de>
Subject: Re: [PATCH 1/4] dt-bindings: i2c: Specify reset as optional
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Akhil R <akhilrajeev@nvidia.com>, andi.shyti@kernel.org,
 robh@kernel.org,  krzk+dt@kernel.org, onor+dt@kernel.org,
 thierry.reding@gmail.com,  jonathanh@nvidia.com, ldewangan@nvidia.com,
 digetx@gmail.com,  linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 06 May 2025 12:11:18 +0200
In-Reply-To: <20250506095936.10687-1-akhilrajeev@nvidia.com>
References: <20250506095936.10687-1-akhilrajeev@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Di, 2025-05-06 at 15:29 +0530, Akhil R wrote:
> Specify reset as optional in the description for controllers that has an
> internal software reset available
>=20
> Signed-off-by: Akhil R <akhilrajeev@nvidia.com>
> ---
>  Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yam=
l b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
> index b57ae6963e62..19aefc022c8b 100644
> --- a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
> @@ -97,7 +97,9 @@ properties:
> =20
>    resets:
>      items:
> -      - description: module reset
> +      - description: |
> +          Module reset. This property is optional for controllers in Teg=
ra194 and later
> +          chips where an internal software reset is available as an alte=
rnative.

If the module reset was not optional before, shouldn't the resets
property have been marked as required? Then, instead of the comment,
you could conditionally remove the required status for nvidia,tegra194-
i2c.

regards
Philipp

