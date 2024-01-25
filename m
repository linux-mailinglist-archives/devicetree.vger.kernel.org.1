Return-Path: <devicetree+bounces-35293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C4F83CE3B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:13:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C4851C23299
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A87BC13B78A;
	Thu, 25 Jan 2024 21:12:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F7F13A26E
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 21:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706217151; cv=none; b=UtrGkUsXxidmEymzt7QlFdD83rtM2PytclgaTEZcYXBMRSuKVpWmlA2vKPVwULEB7nHNvWoE0o4q024gW6iSwqpMEqdsujOFO3N1xryebjuc4UKunGChJqS3yl/2yenGTqsJqbtoxMVNh7d164RuMg2dNsZRBJlxw3+2+e4lCug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706217151; c=relaxed/simple;
	bh=Q/l/ZD2jON/Pcl+oV49H9bUOnKiNkNaeLF+/0JWPl08=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CBkHhGcRau+H60bj1bEo9Re3bLK1EhZSGdJ3CNwZsPGEupslF1UCYsNQtbz4TSs2IJfdnGn5HRJhG9BtLzy53vqZKCLJKHGd1+AzPS9DJWObozsEVogpLR2syo5aWF/VSdb1Mfq1EnGH2U6iA5w6ix097+vgj05oozTzN4s9GQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71L-0002EX-K2; Thu, 25 Jan 2024 22:12:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	mturquette@baylibre.com,
	krzysztof.kozlowski+dt@linaro.org,
	sboyd@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] Add Support for RK3566 Anbernic RG-ARC
Date: Thu, 25 Jan 2024 22:12:13 +0100
Message-Id: <170621707721.1872080.13657125176438385219.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 23 Jan 2024 15:21:07 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG-ARC S and RG-ARC D handheld gaming
> console.
> 
> Chris Morgan (4):
>   arm64: dts: rockchip: Move device specific properties
>   dt-bindings: arm: rockchip: Add Anbernic RG-Arc
>   clk: rockchip: rk3568: Add PLL rate for 128MHz
>   arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Move device specific properties
      commit: 46943b333d60b8f4998df359fe697254eb2f90ad
[2/4] dt-bindings: arm: rockchip: Add Anbernic RG-Arc
      commit: e441dd472eb23329de738f365a5429fe7e6f844b
[3/4] clk: rockchip: rk3568: Add PLL rate for 128MHz
      commit: b3244351e2b39bd49aba780ea204f0f2a45a4725
[4/4] arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D
      commit: 05a708c6ebcadfb6c506f649375ccfc56b572652

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

