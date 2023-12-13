Return-Path: <devicetree+bounces-24869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5514F811869
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D344A280FE2
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785BE85365;
	Wed, 13 Dec 2023 15:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa+vjghE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5975485346
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 15:54:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EB99C433C9;
	Wed, 13 Dec 2023 15:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702482845;
	bh=2y1sC29LZVf5pOO/mDDd70nkQpS3j6F+u18Jw81+VcA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Fa+vjghEYQ0QZb4ZiejM15rw46zji/7Gzsvf2LAZB3W933pTv/Tg+V9MeSa+WaEXx
	 wzA9dbitQYvjCM68noceSUh3BUyRIKPFX8MXHilP66g45R2+UHY1mxzCIVnPZhmsGz
	 nssRld9YUiq0kRlKfJ5SWsfeF1tQzGPefMR38OeG0MYtjPJVehcGC80j39arrmZCFZ
	 pk+xRIWaRhh3gfH4mDdhBxSbiCp31MxmRyPw190pYPsC39MTC8VMVpKtfILskV8CZ3
	 8SjjT3UH3jgN/7THPi5rAgp9uF8ct/4jlvvRoA+TOtoywK6RkfyZR98WuNdbaDqqsT
	 bT+JrUroiOb2w==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: (subset) [PATCH v2 0/8] Add JH7100 errata and update device tree
Date: Wed, 13 Dec 2023 15:53:56 +0000
Message-Id: <20231213-animating-ambiguous-b8267c78e335@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=1318; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=bDevohe/TkJ99xD3EWfy4Mbir3mmI5PygrNqH48gvbE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKmVlydV/7r2TMbr1Dymn6LXFj5242m78l/nkvrWdXFmP X6LFyYUd5SyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAih+cyMnx/p+8+ZVKr1+Q+ 0XUbvvEemfFVuMno46acPSHaJ49tfHqE4b9nseD609fOXraw55JYuat/dXJWtuj/bDu+DUV7fx/ 458gOAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Thu, 30 Nov 2023 16:19:24 +0100, Emil Renner Berthing wrote:
> Now that the driver for the SiFive cache controller supports manual
> flushing as non-standard cache operations[1] we can add an errata option
> for the StarFive JH7100 SoC and update the device tree with the cache
> controller, dedicated DMA pool and add MMC nodes for the SD-card and
> wifi.
> 
> This series needs the following commit in [1] to work properly:
> 
> [...]

Applied to riscv-dt-for-next, thanks!

[2/8] riscv: dts: starfive: Group tuples in interrupt properties
      https://git.kernel.org/conor/c/dd3c1b365fe9
[3/8] riscv: dts: starfive: Mark the JH7100 as having non-coherent DMAs
      https://git.kernel.org/conor/c/ba0074972ee9
[4/8] riscv: dts: starfive: Add JH7100 cache controller
      https://git.kernel.org/conor/c/d4b95c445cab
[5/8] riscv: dts: starfive: Add pool for coherent DMA memory on JH7100 boards
      https://git.kernel.org/conor/c/0a99b562e815
[6/8] riscv: dts: starfive: Add JH7100 MMC nodes
      https://git.kernel.org/conor/c/a29bb6564e12
[7/8] riscv: dts: starfive: Enable SD-card on JH7100 boards
      https://git.kernel.org/conor/c/c548409cfe03
[8/8] riscv: dts: starfive: Enable SDIO wifi on JH7100 boards
      https://git.kernel.org/conor/c/56b10953da7e

Thanks,
Conor.

