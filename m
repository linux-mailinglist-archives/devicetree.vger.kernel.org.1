Return-Path: <devicetree+bounces-5533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 478737B68DA
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EEB88281607
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458BB22F0A;
	Tue,  3 Oct 2023 12:18:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DE822F06
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:18:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B8DCC433C7;
	Tue,  3 Oct 2023 12:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696335496;
	bh=Tk+5BElhw0VeC3CF5j+uL3ic7k6gB1Cu7d+eticsVEs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=db/atGkE18xakAECbQv0Zu+0Xr/j9j/OZ0SV8aMRAWWVFoefJY6lheoceS32py1u6
	 GYKc2FVjfIFM0iPdw22ZiPSRLw2KCoFAE70CZhSg36f/sYwhrwfzTsLV8LxSq16RmR
	 UoRyQvYQ+IroMbY8SvyA1kY1qD5YXbRRsPSnAfhdl6gRy3rOH+vhVMGpP7BQp/P7m8
	 aVwcpllCZ4aL5TEo/y6ZclM/fzPIuUeeVD4jJOB/PlOiWdlpvfkFYQJa1y1as0E0x/
	 UGfhkonQaT3LdHldDwS+AdAFrss9Buba6UxHIEmpSPKBj4JxM6B72DRtbzkET8EHs1
	 g/LaWzPn8ejTQ==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: Lee Jones <lee@kernel.org>, Zhiyong Tao <zhiyong.tao@mediatek.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20230928085537.3246669-1-wenst@chromium.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
Subject: Re: (subset) [PATCH v4 00/12] regulator: mt6366: Split out of
 MT6358 and cleanup
Message-Id: <169633549178.30169.17284129467278150573.b4-ty@kernel.org>
Date: Tue, 03 Oct 2023 13:18:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Thu, 28 Sep 2023 16:55:23 +0800, Chen-Yu Tsai wrote:
> This is v4 of my MT6366 PMIC split-out-of-MT6358 cleanup series. The two
> PMICs are mostly identical, except for the regulator bits. The MT6366 is
> missing the VCAM* (camera related) LDOs, but in their place has a few
> other ones. This thus requires a separate compatible to handle the
> binding differences. The hardware however does have a chip ID register
> that can be used to differentiate the variants within the driver. Thus
> a fallback compatible to the base (MT6358) model is included.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[02/12] regulator: dt-bindings: mt6358: Convert to DT schema
        commit: 93880f7e5c8c864309a57c47669ac0bc432524d5
[03/12] regulator: dt-bindings: mt6358: Add regulator-allowed-modes property
        commit: 0bf4b56b5ecaf711865f313476f91c18338307bb
[04/12] regulator: dt-bindings: mt6358: Add regulator supplies
        commit: 2f384e60acbac140732367d037c5f08db21513a0
[05/12] regulator: dt-bindings: mt6358: Add MT6366 PMIC
        commit: c631494a69c55301a03af9c028892c9098019652
[06/12] regulator: mt6358: Use mt6397-regulator.h binding header for buck mode macros
        commit: 9f3bec54d06f1eb4b47c7f78ef1401bc71977e9e
[07/12] regulator: mt6358: Add supply names for MT6358 regulators
        commit: 3dfa8a7071d4e748d5a59566f9a96e381a9fccb2
[08/12] regulator: mt6358: fix and drop type prefix in MT6366 regulator node names
        commit: 0c3697b8980dd44df05ed77222c09bd8fe729626
[09/12] regulator: mt6358: Make MT6366 vcn18 LDO configurable
        commit: b7f3b89848b3bae3b1e3a97e75b82c65a4952cfc
[10/12] regulator: mt6358: Add missing regulators for MT6366
        commit: b7768e67af9a5b6d6101cbfc146969fedf8df4be
[11/12] regulator: mt6358: Add supply names for MT6366 regulators
        commit: ce8ab92e66ccc99591b9cbb6630d720d5e6ad6ec

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


