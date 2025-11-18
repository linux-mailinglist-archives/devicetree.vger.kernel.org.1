Return-Path: <devicetree+bounces-240002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E26C6BE6D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CBEA13616A0
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA6FF30FC2E;
	Tue, 18 Nov 2025 22:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSjIKcU/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C29A30FC0A;
	Tue, 18 Nov 2025 22:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763506321; cv=none; b=mcTE1rPnIGGXyFmN1NfOFPsS57OWxioBnuxS05chGXrx8ahp5dob8je7G4RhpAIeSvEETSPv6dwOwopdzjEGkzJNbLxl876sEJPvZVBEeNTNK+r4YQPnPsiM8JcuQ64fJ9cUjtrnTMSc5rZWXDfxPY1tb/7OghrA6QJ7UgT0Qzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763506321; c=relaxed/simple;
	bh=/v42flAIHS9iDm0f/A5o6QK0ZYsyVEbRMd+O3vT0Xdo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fu8VvFhlhxF0OToBXLqk4yOKNCVtoskzF3BCkbJNNOokKtzY0IoCaC2TmLNGBIgBqLkJCgkRGjMyiMXeKjuoVZXRfBwzAJyTjRLaZCO0fNAyuJyTmsSnVdWhvsDJulS8mCuHxSJU2YYkrS7gP5cQt7E/jok1LX+45Fm542klbvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSjIKcU/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3F80C2BCB6;
	Tue, 18 Nov 2025 22:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763506320;
	bh=/v42flAIHS9iDm0f/A5o6QK0ZYsyVEbRMd+O3vT0Xdo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tSjIKcU/xL8KoN3Py4EeMY2yQk1Duk6WeKglM0YjVSM3R9QpKmqzvccMZVrVLDOo0
	 AQOPpWW6rRuqBRKJxEV0EFRBE+q9qrx+fN2EjMdh3nPJKX+4RciTMwTlGpw6/Voux1
	 xnYt/JBk7mR8K778A/TiA/ZZC8dorTFP2JXmOWCEVtahiStZmiM9POXulWH61cke7I
	 lFcXADh0v6WcvOqb0URiKj+c6u3kmn6V8vPqJfYfRCAfzG2ZeIHRb4noETDAYj0ZMH
	 On2aJV4ib8TPkySq+9XcUArLsKqIjRiYSY/c5IPqkOez4HJ0u7+C4eHOMBcv6q2nDd
	 oM3ell6s9XIjA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robin Gong <yibin.gong@nxp.com>, 
 Martijn de Gouw <martijn.de.gouw@prodrive-technologies.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20251117202215.1936139-1-martijn.de.gouw@prodrive-technologies.com>
References: <20251117202215.1936139-1-martijn.de.gouw@prodrive-technologies.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: regulator: pca9540: add debounce
 timer configuration
Message-Id: <176350631851.1296183.9641729070037194364.b4-ty@kernel.org>
Date: Tue, 18 Nov 2025 22:51:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-88d78

On Mon, 17 Nov 2025 21:22:13 +0100, Martijn de Gouw wrote:
> Make the different debounce timers configurable from the devicetree.
> Depending on the board design, these have to be set different than the
> default register values.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] dt-bindings: regulator: pca9540: add debounce timer configuration
      commit: 93218e3f2cfeb1e7992768dd3e64c9012e705992
[2/2] regulator: pca9450: Add support for setting debounce settings
      commit: d9d0be59be2580f2c5e4b7217aafb980e8c371cf

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


