Return-Path: <devicetree+bounces-24510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F6480F649
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8104F1F2172B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 19:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80B2F81E30;
	Tue, 12 Dec 2023 19:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvM6pfgv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB4881E2E
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 19:14:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ADBCC433C8;
	Tue, 12 Dec 2023 19:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702408442;
	bh=nK/y8/qUXY7F2IgQswKtBoiDfCkV7oJ4o9v84Y/gt78=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qvM6pfgvzQmzHstdmAkuK7g04qLNqLvH1xnvBr8a3P/o36g8RWyNZvlarV+sOT2ol
	 2HOQ07hbi2uUiMowasK7NCK/WqLVsUgxrhzMmyJ5cH0cUcrV2VDbhbNTezyWjqztoQ
	 qMvuMaUvvtvsOSJLiZcAQlI8is871KcVoTE1cUq+As7DWKL3p73qZeIBbrety9Hmie
	 Q0nYYtjYvW4xnb/LMjFNjxhiwssgougV/xa6dvT+us+YoMKTG+wTdBOeq/EBZoJU3D
	 xKiufJgpO1Ru0miCxmWZnwtVZ32HzaOG7wdYQXfSbpF0hH926Ybpj9g9pUGjMo4aKc
	 0WQr9wkCyA9gg==
From: Conor Dooley <conor@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Drew Fustini <dfustini@baylibre.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Jason Kridner <jkridner@beagleboard.org>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v8 0/4] RISC-V: Add MMC support for TH1520 boards
Date: Tue, 12 Dec 2023 19:13:25 +0000
Message-Id: <20231212-flammable-idiom-660b1d85e20d@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=938; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=4ixJChM136tV/vmqI/fCZ0fGsIfqx2jkzvnLGq0g6Vc=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKkVGy4vyF1R/GWzKmvcLfF7aj763g1lexT/Lf5RZ+Fzx lHnSfDajlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEzEwpfhn9aN/f47GEJkrgk9 m5848WjB1KNcM3ZcOpwc9cJK69uPHm+Gf5abF+6ruJpwpbiOlSFlOueShXc/csrJCk4pnm8RunF VBAcA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Wed, 06 Dec 2023 00:09:20 -0800, Drew Fustini wrote:
> This series enables the MMC controller in the T-Head TH1520 SoC and
> enables the eMMC and microSD on both the BeagleV Ahead and the Sipeed
> LicheePi 4A.
> 
> The drivers/mmc/host patches from v6 were applied by Ulf and are already
> in the linux-next [1][2] as well as the bindings patch [3]. Thus v7 was
> only a defconfig patch and three device tree patches. This v8 is a
> followup to change the dwcmshc node names to match the documentation.
> 
> [...]

Applied to riscv-dt-for-next, thanks! The defconfig patch is Palmer's
to take :)

[2/4] riscv: dts: thead: Add TH1520 mmc controllers and sdhci clock
      https://git.kernel.org/conor/c/a77f02e84896
[3/4] riscv: dts: thead: Enable BeagleV Ahead eMMC and microSD
      https://git.kernel.org/conor/c/18d92a03b319
[4/4] riscv: dts: thead: Enable LicheePi 4A eMMC and microSD
      https://git.kernel.org/conor/c/b6b5028473ce

Thanks,
Conor.

