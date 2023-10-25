Return-Path: <devicetree+bounces-11955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0987D7297
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:48:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27ABC1C20B5B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2192830F90;
	Wed, 25 Oct 2023 17:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOQSU+3n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025062D62F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:47:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4297AC433C7;
	Wed, 25 Oct 2023 17:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698256077;
	bh=7vCImhAy/djrVdzvnhfX4P8W3qXogIjUQ+V/wfWi/00=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kOQSU+3nk0dQ+Hv5JJT9gxQfFdsDCc052I4UmnMXP/WUt9BEXML1WQSC4wZKxO4Sn
	 GNG0djPn5j5iWGsJ7fEdWHqwf077bkM+Px4zywVbB3ONUgDYtb5vlMXjUlu45NXIB6
	 V9ESq38pxoZMf4aSYbf9sJLpy5QBwXCznwUg4tTG2DjMAAY90jdkk9k3FIQMPolZ+V
	 n4y3C6BSE4W5rqOzPKCFl3MBV9WmAd7KFUz83frwevbfGXaLnQQpUchJTtDkfCPYC8
	 p0ufRLVXncYf6JXYMIDCyHZIo8fr2T6RjWPqsb4FOioC4xxgGSLWSq5HKHc8DCXkzr
	 Y67YkHYaI1FRA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20231010085906.3440452-1-o.rempel@pengutronix.de>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
Subject: Re: (subset) [PATCH v1 1/3] regulator: dt-bindings:
 fixed-regulator: Add under-voltage interrupt support
Message-Id: <169825607496.44380.1474728681067592948.b4-ty@kernel.org>
Date: Wed, 25 Oct 2023 18:47:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Tue, 10 Oct 2023 10:59:04 +0200, Oleksij Rempel wrote:
> Add under-voltage interrupt support. This can be used with simple
> regulators having no other way to communicate an under-voltage event
> except as by toggling some GPIO line.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> index ac0281b1cceb..0f8760ed2fb1 100644
> --- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> @@ -100,6 +100,14 @@ properties:
>    vin-supply:
>      description: Input supply phandle.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/3] regulator: dt-bindings: fixed-regulator: Add under-voltage interrupt support
      commit: 0ab1dc9c657f30434ca55a3dcc87e624af0b2116
[2/3] regulator: fixed: add support for under-voltage IRQ
      commit: ecb6f1f456144e9ade5a492192287decbeef4cfe

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


