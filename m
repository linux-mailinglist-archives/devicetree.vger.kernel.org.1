Return-Path: <devicetree+bounces-77406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C7390E8B5
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 12:54:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0BC51C21FF4
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 10:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F7E130AFC;
	Wed, 19 Jun 2024 10:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2/oRfA8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832F54D8B2
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 10:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718794455; cv=none; b=aRrN0NQqG0sPQfUUqzdw2+6Vr/Q806NwOc7xwqc6FAEwoRp//xIF59O7c/vlOsWmOidq9CksbtS73cdWXMeqZtivEummEdNsTFqT5We8bE+yphzuBGzmfdYc6nLiR5HtdXVgjDP1smr0pwPqrMphlFA54dWZgjd5s3P/nc5G13c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718794455; c=relaxed/simple;
	bh=N0AaIoaI8diruOmcEr/EmRanq5T/ngLihO0rujTQU78=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hYG8yojpir9W7chHexLkRpmgN/BN7AxQLLdpOFP+GVfk0S7ZWyPLZPqEqlh1KTMV6BGMyk7ZySiR4YG5Nhbeb/GvpOrJ1SlE+liN/LzNlA8uwVI1LvnOWxj+rgE9F6mfdfjmcyvz4+nEgg8Ei1Yrz13GbZJe2R4JqJC/YnsFPUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2/oRfA8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9098AC2BBFC;
	Wed, 19 Jun 2024 10:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718794455;
	bh=N0AaIoaI8diruOmcEr/EmRanq5T/ngLihO0rujTQU78=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=f2/oRfA8kROKWSq4TTqiPkVBRCclvzSMTfpEg3PfQ399JVGn2LthCJKcB36KNvJLW
	 5idm9KaPMxumoWwQXogxmR/u5ie+TjVPMk1GUJJall/UbJXUci0Js2uiOuf1ZXg8O4
	 Jz+om+pD6ghTUqgMfboeaaqEDzXdeeOZuIaWQ+GFwEEJQmJnBZotG1WWHj7gw81Kow
	 WJXDlMrzVYTaM33/0ZCoVdhQSnDa5cAXdafPkVKTmwr7ICZGaH04beD12TvsC/SPkS
	 WR4mosDtnq41UZkMraUJF6ykZhWYxnidGeJ/Nk9YlsCAeBQNkGIxaB2lVY2KvhFFnV
	 NeD4dEcuMaLqg==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org
In-Reply-To: <87jzin3yc8.wl-kuninori.morimoto.gx@renesas.com>
References: <87jzin3yc8.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH] ASoC: dt-bindings: audio-graph-card2: add support for
 aux devices
Message-Id: <171879445303.57943.18127033845572445791.b4-ty@kernel.org>
Date: Wed, 19 Jun 2024 11:54:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14-dev-d4707

On Tue, 18 Jun 2024 00:10:15 +0000, Kuninori Morimoto wrote:
> Add device tree property to define auxiliary devices to be added to
> Audio Graph Card which is already supported on Simle Card.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: audio-graph-card2: add support for aux devices
      commit: 7109f10ca4225c4a7e47dee5eab0d8d72edbf324

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


