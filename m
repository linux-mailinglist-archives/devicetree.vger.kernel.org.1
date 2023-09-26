Return-Path: <devicetree+bounces-3367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C38A27AE8DE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 750E3281759
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2F7212B83;
	Tue, 26 Sep 2023 09:22:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31EB63AF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:22:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FBE8C433C8;
	Tue, 26 Sep 2023 09:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695720172;
	bh=5Ay18k+jPh73OS8+ssl9DFrqcOhVxl+RBRenHltQGiI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QpNEEZ/25PZBLK1cSeRjXuRk8hB1hpJ00YxGA5akv2L4mQxQz7hvEKPaJoaCni+Kg
	 HgZNsQK74Mytzw/jD/MWdyZrUuaS1tsuvkZlNgxN/ojco5QVZXp7rWOUJWSKaG9e0F
	 7VkrF9jMMrQQ30ja8qyLV/XI58eSY3e3huQGXBlMxkaoi20TDnIiIua6fcguek9zBV
	 1yX6h7FFoFr2SKvkfcjN2Dgpb76yMxhaoW57LImT3zSAIlAVwZN4RuAG1zhkT2LKAA
	 aL9L/wAODA00gB/IFWX5ziAoCggxmzLXj5kle79fXHhkTFa28BRf6XIl4Lp4SEaG/q
	 um/HpNdlDnGyg==
From: Mark Brown <broonie@kernel.org>
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230919-spi-qup-dvfs-v2-0-1bac2e9ab8db@kernkonzept.com>
References: <20230919-spi-qup-dvfs-v2-0-1bac2e9ab8db@kernkonzept.com>
Subject: Re: [PATCH v2 0/4] spi: qup: Allow scaling power domains and
 interconnect
Message-Id: <169572016977.2563985.17070473917450911159.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 11:22:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Tue, 19 Sep 2023 13:59:47 +0200, Stephan Gerhold wrote:
> Make it possible to scale performance states of the power domain and
> interconnect of the SPI QUP controller in relation to the selected SPI
> speed / core clock. This is done separately by:
> 
>   - Parsing the OPP table from the device tree for performance state
>     votes of the power domain
>   - Voting for the necessary bandwidth on the interconnect path to DRAM
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/4] spi: dt-bindings: qup: Document power-domains and OPP
      commit: e6419c35f0d92632e06708c5610a31957f1bd6b3
[2/4] spi: qup: Parse OPP table for DVFS support
      commit: 287fcdaa35fc666640f805310095c52f2d818d26
[3/4] spi: dt-bindings: qup: Document interconnects
      commit: d15befc0cef42db7712714157d9483cab81149a1
[4/4] spi: qup: Vote for interconnect bandwidth to DRAM
      commit: ecdaa9473019f94e0ad6974a5f69b9be7de137d3

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


