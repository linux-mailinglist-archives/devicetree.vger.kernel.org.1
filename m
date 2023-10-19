Return-Path: <devicetree+bounces-9853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4C07CED8C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 03:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FC22B2107A
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 01:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C57394;
	Thu, 19 Oct 2023 01:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwMG1wmr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2E138C
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 01:22:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23AF1C433C9;
	Thu, 19 Oct 2023 01:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697678551;
	bh=Grh3jo+7tkGoKyq9Pq7yYPS6tSBALvJgRtmJP6V1Iu8=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=JwMG1wmrC/cc9FNHjmFS+Sv9KsxizyEok7Pr8LSdngNEXOwMIkC3O63f7TjdBiN8/
	 Jo+qi496X+6y5sSPKi/n7HJiBA3kXQrXSWPqaJ5hhNfOGv0l06r+bvzvoeALDLaUC5
	 XK6A43GLPVKvBYeYwIn3reofyflNfoeiqfN9DGA2uKTvCTZw8PSsuoeu0vAw0+GiPo
	 xpktZV7NYlcX8ywaDgg8NWutk23au3qzwip9dyWavroVjmguH99z/jjtr9wD/8poFU
	 3PBNqcAzwFcF+lPGSJmvxSsa6swNHVI2dKtp+9JeIkn0XOkm0i7Df+3NFx1eP+KlvJ
	 C1OITYZbcaWIw==
Message-ID: <79d055616b57e661ef35ccc166cae697.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230916100515.1650336-3-andreas@kemnade.info>
References: <20230916100515.1650336-1-andreas@kemnade.info> <20230916100515.1650336-3-andreas@kemnade.info>
Subject: Re: [PATCH v4 2/5] dt-bindings: mfd: ti,twl: Add clock provider properties
From: Stephen Boyd <sboyd@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>
To: andreas@kemnade.info, bcousson@baylibre.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, krzysztof.kozlowski+dt@linaro.org, lee@kernel.org, linux-clk@vger.kernel.org, linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, mturquette@baylibre.com, robh+dt@kernel.org, tony@atomide.com
Date: Wed, 18 Oct 2023 18:22:28 -0700
User-Agent: alot/0.10

Quoting Andreas Kemnade (2023-09-16 03:05:12)
> Since these devices provide clock outputs, add the corresponding
> property.
>=20
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

