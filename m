Return-Path: <devicetree+bounces-240782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A32C7561B
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id A41F62AB8F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F0636C5BB;
	Thu, 20 Nov 2025 16:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2DZ7R70"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA93A3644A7;
	Thu, 20 Nov 2025 16:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763656340; cv=none; b=P0d6dYODtjLqTaaoSo+jIs+w+vYw8juv+UyuHtSB5IbQJtLZLxynV2EjBV1eztdD0D9Wxv6wUItcc8EMuNQhXXPZlOWAyRaKH0eDwjoXzmMdvQceSKkxLUSnXrAthFXNK3CUuaomEy8HDYUr9hgyd5AarouzdrTvxPZAtt1aLfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763656340; c=relaxed/simple;
	bh=djBJc8NBHIfjouCxeglYHGZFlODrk8W+XWfiX1ZGAX4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YtVSZT4BWFrDuqLLs0O2dgkB7iHVKqKNpLeeievdxZ/BhsWejM4SjN51GqfSsXdPDjnBNrq4aK/CyvjY31D/FSjmB71o5kU8Zzc0FTs/dHAejP4GQhKRDyCGoAkgsyxkjAruIejfyEHhYVfhuvGJkUnFwrqJAsfgRm4wIdUDYhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2DZ7R70; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C991C116C6;
	Thu, 20 Nov 2025 16:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763656339;
	bh=djBJc8NBHIfjouCxeglYHGZFlODrk8W+XWfiX1ZGAX4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=d2DZ7R70KDfdzIDYhWqroUnbwjQiw0tpaL0NCkHKR/BpmcONT9PiBLCBNW9mpYt6V
	 Ff0FsbVuf8bVS+jYokou4huxxSpo3CNWw/mnN9blzorG++a6JEoYyDV7NISO0gH25y
	 +LEWRx+zpiFpKUsGAx+OxDv5ayMDAUu1A/418CH3rFPh6jTcn9MCPHyy/tan/1+JKu
	 WN1TprILiUx1XtNs48Zt0RpWyMjfvl+bZatz4/XIQgNgL7gyyg4w1LdkQq/9JvBPMj
	 YXBU8ZdhCh/0sE0vVC0iEjIQ3enrhuE+suRjT1NVUbvRe1Sinn6EilQaWdtEanR08y
	 gU0pZ+8tOlt8A==
From: Mark Brown <broonie@kernel.org>
To: tiwai@suse.de, Baojun Xu <baojun.xu@ti.com>
Cc: andriy.shevchenko@linux.intel.com, 13916275206@139.com, 
 shenghao-ding@ti.com, linux-sound@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
 k-yi@ti.com, henry.lo@ti.com, robinchen@ti.com, will-wang@ti.com, 
 jim.shil@goertek.com, toastcheng@google.com, chinkaiting@google.com
In-Reply-To: <20251117102153.30644-1-baojun.xu@ti.com>
References: <20251117102153.30644-1-baojun.xu@ti.com>
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: ti,tas2781: Add
 TAS2568/2574/5806M/5806MD/5830 support
Message-Id: <176365633604.66643.15357865496661099696.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 16:32:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-88d78

On Mon, 17 Nov 2025 18:21:52 +0800, Baojun Xu wrote:
> TAS5806M, TAS5806MD and TAS5830 is in same family with TAS58XX.
> TAS2568, TAS2574 is in family with TAS257X.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: ti,tas2781: Add TAS2568/2574/5806M/5806MD/5830 support
      commit: bb52dc1d0342a4d2dccbfb1aedda019b8415cce1
[2/2] ASoC: tas2781: Add tas2568/2574/5806m/5806md/5830 support
      commit: d5089fffe1db04a802b028c2ef4875be1ed452a3

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


