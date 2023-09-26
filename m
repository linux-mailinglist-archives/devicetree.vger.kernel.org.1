Return-Path: <devicetree+bounces-3349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A587B7AE775
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:08:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D3A962819C4
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 08:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936DD11CB9;
	Tue, 26 Sep 2023 08:08:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FFE11CB1
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 08:08:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F12C4C433C8;
	Tue, 26 Sep 2023 08:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695715702;
	bh=UjHcxElqJT2Xn40h70QVPAzMGgQiQRJNiS+9s0Gk/2Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Tbfzb396Id5RYpSZusFkKdTiL9aPVNcGgS0A0dsHmqnoeaLC1HtiE+jwMZNzXUs9H
	 uuRoqOoSaznBmPFFknL2+Obbdu3r2S8RdSLvjueky9tM0+prY6DIqOuHyWNXvEVpO1
	 CQZaVkCTpHqMv04Zgn6xY9NV7Ynab9biQhu5D0HL9Bh0bRX9bvuaQ5avK/6cc0Ovfx
	 AYLacydmC1YKFY3nr83v3IQDO1tvJPc/HkP656G6Tm+iwQDWPaMCm1NclDK6AaWwf4
	 Gkk2ejWhkF/NzRyL/ZxjpS8AO1pfdyLbtwFwDqIZiqP7CN7Yn2SjJyCCn1UVy5CYHS
	 c93sy0mgxUI7w==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, 
 Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH 00/31] Fix and improve Rockchip RK3128 support
Message-Id: <169571569769.2520438.14041840367987493896.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 10:08:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Tue, 29 Aug 2023 19:16:16 +0200, Alex Bee wrote:
> this series fixes some issues I found when testing my "new" RK3128 board
> with the mainline kernel and adds some core functionality like SMP bringup,
> usb and networking.
> 
> The propably most distinctive change is the split up of the DTs for the
> different SoCs of this platform: RK3126 and RK3128. Even if I'm not adding
> a RK3126 board in this series: I think this change should be done as early
> as possible in order to avoid issues in future.
> Actually it should have been done like that in the first place.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[03/31] dt-bindings: ASoC: rockchip: Add compatible for RK3128 spdif
        commit: 5c8a033f5674ae62d5aa2ebbdb9980b89380c34f

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


