Return-Path: <devicetree+bounces-9851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C847CED78
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 03:20:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9417BB212B0
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 01:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50DF365C;
	Thu, 19 Oct 2023 01:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agAqvCUC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB2339F
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 01:20:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEE20C433C8;
	Thu, 19 Oct 2023 01:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697678424;
	bh=OEFMKzkQUdF2lkI84d/oCDnjWjpkF/2CWqt1c/w7l5I=;
	h=In-Reply-To:References:Subject:From:To:Date:From;
	b=agAqvCUC0fJ6MgF36t0nVVeo0JjmWk1vYdPA2ssuFUKM7Gt+UgXVYgSva4rh2RyOC
	 bnxXbiVJDZ8XLApdewHDkCqrtgUztHXar5GeJzG4Jv8CoAFBmH8qWf5/CtiRXJxCUV
	 bTYXEoMCLJUpPpL7xzWkO8579xz/b3qFxTO49nHhz4UNiMkTzal4d8yvAdZX/wB5nh
	 1zjTKZNLrXEPvqamhtckXKtOrlxKZw398nnAbkXEfqsNJFd6ChHfEMdshrvHMhDtfS
	 zozTJ4mt3u69iEGT5hj1dV4h/MxGy8X76t5IQlzNMI8rEpVVuRxfToKzhFDPKm/nUR
	 cDNMYRpmEA5Tg==
Message-ID: <8c63372175266d42efbfca0104e19a14.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230916100515.1650336-5-andreas@kemnade.info>
References: <20230916100515.1650336-1-andreas@kemnade.info> <20230916100515.1650336-5-andreas@kemnade.info>
Subject: Re: [PATCH v4 4/5] clk: twl: add clock driver for TWL6032
From: Stephen Boyd <sboyd@kernel.org>
To: andreas@kemnade.info, bcousson@baylibre.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, krzysztof.kozlowski+dt@linaro.org, lee@kernel.org, linux-clk@vger.kernel.org, linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, mturquette@baylibre.com, robh+dt@kernel.org, tony@atomide.com
Date: Wed, 18 Oct 2023 18:20:22 -0700
User-Agent: alot/0.10

Quoting Andreas Kemnade (2023-09-16 03:05:14)
> The TWL6032 has some clock outputs which are controlled like
> fixed-voltage regulators, in some drivers for these chips
> found in the wild, just the regulator api is abused for controlling
> them, so simply use something similar to the regulator functions.
> Due to a lack of hardware available for testing, leave out the
> TWL6030-specific part of those functions.
>=20
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---

Did you want me to pick this up in clk tree?

Acked-by: Stephen Boyd <sboyd@kernel.org>

