Return-Path: <devicetree+bounces-49209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5136E87556A
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 18:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5DBE1F256AF
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 17:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30138130AFF;
	Thu,  7 Mar 2024 17:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3HKh8vJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5F8130AE1
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 17:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709833389; cv=none; b=a6iKqJvTI7qDPhMLxw+sphwSNwzP3oD1/cirOEBgB9h9jO/foo2nV03XBcQO8kgoc855kIaXvhXGHQB+vdUUOL5qnayaXEErTWRd09kVvPJELvwbM/7tNq8U9sq3LVHoCWMlMi9+d/MIBxEFq3ehS9+2HymJhHR5UAyckIOaEuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709833389; c=relaxed/simple;
	bh=dRCr4zJi41yXbASQXJZrJDtLGjtady1umh0wbNI3ZAc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=R4GU9IP5ASVgwqgDgYEctOQX9KskOdJdp9fhRpLdloon5Y4rVmZoMAgQlZco9vra5G/H/HjQ2rO3nR5wqngxgf7/lQQRHcC4emFrjd3GnWhTD4xivnMx41Cl6EtPWUekeGxJ+Mhq722HljhlwC6Ac0GAWaSvV6UYPTAd7+KhHb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3HKh8vJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CCE4C433F1;
	Thu,  7 Mar 2024 17:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709833388;
	bh=dRCr4zJi41yXbASQXJZrJDtLGjtady1umh0wbNI3ZAc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=b3HKh8vJ7spuAj9L4sttDawTDv0+XxOOBgPC1Z2Z3Umm5g0d4/FS+79YdLoCjS9t5
	 kzXP3nqACQJJ+Gt3VKvBzEGlwZLCoaHtd2QG8cY2e2/zV0MPSQbGumrOGcoXwLnioe
	 8W0hMp4dMYFXOLkAKMQxwwS2GdofNkF6XHXEYRzwrYmbA2VfvzZR4/qGVhOfL5z8fd
	 VwLLpWUdvyAhzpixwH7Odkvw3l1MnnsoQnv4II8nYHrBrWH2YNyfUn1O58Phr/2Hm6
	 U+HAR+R1GERBOQbcq6+DZLptLYido2jaoBbnv6qCVvZy6HJ3bZpnx3zjxOk9BGId/X
	 xI/e4deUxYOMQ==
From: Mark Brown <broonie@kernel.org>
To: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, 
 Zhang Yi <zhangyi@everest-semi.com>
Cc: tiwai@suse.com, amadeuszx.slawinski@linux.intel.com, 
 yangxiaohua@everest-semi.com, zhuning@everest-semi.com
In-Reply-To: <20240307051222.24010-1-zhangyi@everest-semi.com>
References: <20240307051222.24010-1-zhangyi@everest-semi.com>
Subject: Re: [PATCH v2 0/2] ASoC: codecs: ES8326: change members of private
 structure
Message-Id: <170983338698.97308.6303056838124044344.b4-ty@kernel.org>
Date: Thu, 07 Mar 2024 17:43:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-a684c

On Thu, 07 Mar 2024 13:12:20 +0800, Zhang Yi wrote:
> We found that using 0x45 as the default value for interrupt-clk
> would cause a headset detection error.So we took 0x00 as the default
> value for interrupt-clk and passed the test.
> We removed mic1-src and mic2-src, which were not used.
> 
> Zhang Yi (2):
>   ASoC: codecs: ES8326: Changing members of private structure
>   ASoC: codecs: ES8326: change support for ES8326
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: codecs: ES8326: Changing members of private structure
      commit: bb6983847fb4535bb0386a91dd523088ece36450
[2/2] ASoC: codecs: ES8326: change support for ES8326
      commit: e87eecdf53228dd2b8bfeab84d409652f96a16d0

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


