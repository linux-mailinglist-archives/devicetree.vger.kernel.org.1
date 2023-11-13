Return-Path: <devicetree+bounces-15392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7737E9E12
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 155F21C208BB
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 568D920B1C;
	Mon, 13 Nov 2023 14:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZ5Hjnrl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA6F20B05
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CDFCC433C9;
	Mon, 13 Nov 2023 14:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699884341;
	bh=fpD4M1H4xdOEFU6K/qJY74VJY3p9W9YVZi0wodwrOH8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pZ5Hjnrl3pN/k4Juvngh8mWdgeGpjMFY+wEdEupsbPmuSLoG+DRTWI80902qbg4IU
	 ok7TAWxTYLfx3nRoXuOlfMr8Hvx6686y9CVNAjdYmEcZXz8E7vJVZPjBFXERfRQOFf
	 UWIOOvZzqgrIhVEh6r2WFNLhkinLb+SipHsFxUtf01D/Qypc7G6lUH2pg6cM0+6W9z
	 ZgDqQUsz86TO2W/q7v1ZbnFFaGExe8aAOqKLr1uNRG6N85JT2AO+xqn/lK/q8fHiqJ
	 bg4opLzuDjNTXjMPfopNvZLxwj7HHWxYaXuOolePuZ9r4VZ+8iy7aBy09oX42xWhr3
	 YCIq12WoUpRVA==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20231109184453.108676-1-sebastian.reichel@collabora.com>
References: <20231109184453.108676-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCH v1 1/2] dt-bindings: es8328: convert to DT
 schema format
Message-Id: <169988433843.3280890.13854028136239519600.b4-ty@kernel.org>
Date: Mon, 13 Nov 2023 14:05:38 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Thu, 09 Nov 2023 19:44:43 +0100, Sebastian Reichel wrote:
> Convert the binding to DT schema format. Note, that "IPVDD-supply"
> got fixed to be "HPVDD-supply" during the conversion. This was
> obviously a typo in the old binding. The old binding example, DT
> files, chip datasheet and Linux driver use HPVDD.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] dt-bindings: es8328: convert to DT schema format
      commit: c479f4989486b79cb92f0ee3b2ffcfc77fc3e443

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


