Return-Path: <devicetree+bounces-121993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA68E9C952B
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 23:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6841C1F22F4D
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 22:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4CF01AF0C4;
	Thu, 14 Nov 2024 22:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE1SNNJH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948A9170A1B;
	Thu, 14 Nov 2024 22:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731623807; cv=none; b=DLqOGxgzU8SS7iqnlFiq3j+iP+rf6nZd/WHBHTED+4Oexqs9Le1dSnXrC9yG80jvj2rxS8zdTryqNyWFcJChsBjEp4OmodbUmXBctu5yfElHvlBBH6ETavcoSp2Nn3yE+l5O7FKd/VprEZlOdUifMrrygbfDUNXV4A6lr044jIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731623807; c=relaxed/simple;
	bh=mfhhuvQxgsjolz/D6JiwLtLMDBKlJ4RlLk8azVUsYko=;
	h=Message-ID:Content-Type:MIME-Version:In-Reply-To:References:
	 Subject:From:Cc:To:Date; b=dR08GlzcL65DVOVomJC6e2RAUNhntE67Ex9ic/QVomh9WPaeKaZF+c1qPHXI9AG30FGRekAbvkSRLm9l/qtezaiurIcO1HhYXGvKzibkTWxLzIkgqVxHhnRpn9riIISGkwJrOK7nQZAzlgJSdNtQqGBRvQFEn0i4skN+CoCzgyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE1SNNJH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3E9CC4CECD;
	Thu, 14 Nov 2024 22:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731623807;
	bh=mfhhuvQxgsjolz/D6JiwLtLMDBKlJ4RlLk8azVUsYko=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=vE1SNNJHxW0oSAzwxVA92cfDhEScdhXdsHcinHfXPL7o/u7U0zW4FzDiw8toVV3pt
	 OP7T7gSTWPkc3tUtQ/9EnGRI9CLMfzhaydVVCpI1XGWqmo6MmtIscO8Z9bD1UyrL+X
	 8DTJcj1um4nuHiRz9eYZ/j5CuJvPlQaifmRl4xG59xBYta8BvSFxxO/zcqvbUPNABq
	 LXP1ZyryqCOmqVwCbqHmfWPZXoJTwTAVF7gpAv6ixHfjVqGW7eRsVdx30ek2fkEM/8
	 99Kz0sWS8zfT1s1bvjhnG6rmImfyd+S0LnQIS2bnPCfdVW1mLSehflENQnlrruCtqb
	 dHs7fQm2faDcQ==
Message-ID: <0b49bddf8ac713f7d506661e081c946e.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241104-pxa1908-lkml-v13-1-e050609b8d6c@skole.hr>
References: <20241104-pxa1908-lkml-v13-0-e050609b8d6c@skole.hr> <20241104-pxa1908-lkml-v13-1-e050609b8d6c@skole.hr>
Subject: Re: [PATCH RESEND v13 01/12] clk: mmp: Switch to use struct u32_fract instead of custom one
From: Stephen Boyd <sboyd@kernel.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Karel Balej <balejk@matfyz.cz>, David Wronek <david@mainlining.org>, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, Duje =?utf-8?q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, Duje =?utf-8?q?Mihanovi=C4=87?= via B4 Relay <devnull+duje.mihanovic.skole.hr@kernel.org>, Haojian Zhuang <haojian.zhuang@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Lubomir Rintel <lkundrak@v3.sk>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, Tony Lindgren <tony@atomide.com>, Will Deacon <will@kernel.org>
Date: Thu, 14 Nov 2024 14:36:44 -0800
User-Agent: alot/0.12.dev1+gaa8c22fdeedb

Quoting Duje Mihanovi=C4=87 via B4 Relay (2024-11-04 08:37:03)
> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>=20
> The struct mmp_clk_factor_tbl repeats the generic struct u32_fract.
> Kill the custom one and use the generic one instead.
>=20
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Tested-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
> ---

Applied to clk-next

