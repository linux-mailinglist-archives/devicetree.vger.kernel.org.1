Return-Path: <devicetree+bounces-254776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DC125D1BF91
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B34B330146E5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 01:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF9BA2E92D2;
	Wed, 14 Jan 2026 01:41:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D687A2BEFE8;
	Wed, 14 Jan 2026 01:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768354900; cv=none; b=gra85C/bZ2C0ntpcA1DnvPpWKeSGcLrOAxPlrdjhsGeyGe7rjj46eGq9QhKzSzn1hESqgqMFWKecCzuaLVaIqSpzNFQ6JXffUfstGqhddddNyto8xxlcFozEafczDUKrPNAvzQl6eRj6hlT8CCWXr783GThlEqoGe9ynfZmaRKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768354900; c=relaxed/simple;
	bh=BmDyE4WCGrCBLlCERou1OFvBaSL6TXltG8ReLc3YCeQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iirTpuPJQKcWpFueifgVLwAJLq8hA/j3+CZ5XEe9NBpFcKrha1sHn+bkzVR2LKsU77SBL1FjcHrZ5WudMVX0TwvlIJIJYC9r5TOZ/sDdD9aPoJuldK6T/nOv+3lnE4K75wNMdBMeIcVNs9NIQvVOBM4U8GqQ5f3ZPlb6nX2WtAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from ofovo.local (unknown [116.232.18.222])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id C6027340FEC;
	Wed, 14 Jan 2026 01:41:34 +0000 (UTC)
From: Yixun Lan <dlan@gentoo.org>
To: Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yixun Lan <dlan@gentoo.org>,
	Haylen Chu <heylenay@4d2.org>,
	Guodong Xu <guodong@riscstar.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Yao Zi <me@ziyao.cc>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/5] Add clock support for SpacemiT K3 SoC
Date: Wed, 14 Jan 2026 09:41:12 +0800
Message-ID: <176935356287.13018.17884535923723366958.b4-ty@gentoo.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260108-k3-clk-v5-0-42a11b74ad58@gentoo.org>
References: <20260108-k3-clk-v5-0-42a11b74ad58@gentoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On 10:11 Thu 08 Jan     , Yixun Lan wrote:
> I've dropped the RFC tag as now the driver got tested on K3 SoC.
>
> The SpacemiT K3 SoC's CCU (clock control unit) is similar to old K1 generation,
> the clock and reset functionalities are distributed across several IP blocks,
> therefore, we model them as several clock tree accordingly.
>
> The PLL clocks has changed register setting layout, so introduce a PLLA type.
> Some gate clocks has inverted enable/disable logic which writing 1 to disable,
> while writing 0 to enable.
>
> [...]


Applied, thanks!

[1/5] dt-bindings: soc: spacemit: k3: add clock support
      https://github.com/spacemit-com/linux/commit/efe897b557e211a09f51d749eae5eca933e8bf56
[2/5] clk: spacemit: ccu_mix: add inverted enable gate clock
      https://github.com/spacemit-com/linux/commit/ace73b7e27633ec770cfb24cd4ff42c24815a9aa
[3/5] clk: spacemit: ccu_pll: add plla type clock
      https://github.com/spacemit-com/linux/commit/3a086236c600739d6653c0405d86aff7d6f03c06
[4/5] clk: spacemit: k3: extract common header
      https://github.com/spacemit-com/linux/commit/091d19cc24018f2bd783e932fb2403cb7a2bdb3c
[5/5] clk: spacemit: k3: add the clock tree
      https://github.com/spacemit-com/linux/commit/e371a77255b837f5d64c9d2520f87e41ea5350b9

Best regards,
-- 
Yixun Lan <dlan@gentoo.org>

