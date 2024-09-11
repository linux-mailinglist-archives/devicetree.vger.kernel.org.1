Return-Path: <devicetree+bounces-102126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC8E97595E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 19:28:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E850EB21EDA
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874D11B3B27;
	Wed, 11 Sep 2024 17:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB+2E1Dj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645171B375F
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 17:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726075672; cv=none; b=Wes3qYtYdRd3aODNjfkuCjxpa++aVZqAhp0foReWwwVo/Ew/apaX2Gc379nfaOBdxPsfk+jve/V/mpgrGpw4c3RCG/1aqmejeR0R1r4hrTLt1kOFwikWAnEkMImzLPc+g/DhyGPAjHXhL1Pb/mZBeplwW2mcgd5LnM7Q9aMf854=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726075672; c=relaxed/simple;
	bh=qwGVd7fR70DXTQ4TIBjZjiSafIbHZwIjIbXr7gxXOq4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=sN4wKsXCWh93p2vUQPlFv/vPMbOhyNt7SseivBsC+ePItFy58ClTzDeJ+/rgsLQTXfc5QBUbOGtRZyWoQDDKRxY8Hdm/rWuS+b8vuzwqVV7J+d9mSr8/VkH780Z/9j+NeCFttUDHnRVx1K2hRT+J+1rryS7QrfuP3oiNmgo2tWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB+2E1Dj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5505C4CECD;
	Wed, 11 Sep 2024 17:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726075671;
	bh=qwGVd7fR70DXTQ4TIBjZjiSafIbHZwIjIbXr7gxXOq4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UB+2E1Dj6M0yGOQ9WVbz59c6z1zP5/jqE9ha9gFl0Mhvq7262M1TGCrSc8+hO9QUg
	 X2EL7sU9oI1hF6Bjs4z2cFKJ/TW3xGIWOFa2mhFY1/KRCZiDpKyVYODBknUM4sXYc5
	 Trc6QfFHAbEaBXSmzoxHR+hDiali7cnhbs5CXVQgmutkGVMLLUXk+f96s36zse7AfJ
	 xLVb3nxgQBUKmUSJUqnjzPyFV4nhPUYnIR9Z1x0NW5D87dq4eFmD1If5nD7Ct20OD8
	 cFhHzmRmT5J5il5v/CuLNb2HH+ocPkQVx/Obt0N0vj8GJrLG5xiMMPCXCNFcHnBAwa
	 5d/EaeLRTOg2g==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org
In-Reply-To: <87wmjkifob.wl-kuninori.morimoto.gx@renesas.com>
References: <87wmjkifob.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: renesas,rsnd: add
 post-init-providers property
Message-Id: <172607567061.120511.8528081437305526295.b4-ty@kernel.org>
Date: Wed, 11 Sep 2024 18:27:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-99b12

On Mon, 09 Sep 2024 23:13:47 +0000, Kuninori Morimoto wrote:
> At least if rsnd is using DPCM connection on Audio-Graph-Card2,
> fw_devlink might doesn't have enough information to break the cycle
> (Same problem might occur with Multi-CPU/Codec or Codec2Codec).
> In such case, rsnd driver will not be probed.
> Add post-init-providers support to break the link cycle.
> 
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: renesas,rsnd: add post-init-providers property
      commit: a2187d0dadfc308551bbb1b8d6caee69e2ad4744

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


