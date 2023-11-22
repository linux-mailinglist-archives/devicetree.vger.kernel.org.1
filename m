Return-Path: <devicetree+bounces-17864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1E17F453E
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E4541C208C9
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE3655798;
	Wed, 22 Nov 2023 12:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLv9C4UH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1A055773
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60C4AC433C7;
	Wed, 22 Nov 2023 12:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700654423;
	bh=yLbsIndVEu9nwXZGIk3y4ZbcjJ+wx0rGSOC9LYLvqkc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LLv9C4UHg1F32f03vhMzZZoVyMETeNhdIkamILbfGRdlfAsC3UXIrJ4JoERKSfODc
	 3foeqgG6MUhB7falkOPj5do7txjUSJs66D4jh58XmjwmuOyLDvqdsInRnkopMmMh/E
	 OE3YCMv2VbMW4qAr3LpbNqWSFvJLVOa0ymYYahhah1j1FpiG8vcSGwgjxAh979rElW
	 UDoi2FtRbOYQ8oJiF27nx6MH0g7zYrOrd77z7RhFvYxvdw3nlE8AJoZFq38y86oVj6
	 UQQGAC9F+sWpNkpdl3PZflHsc6oZm8VGQcMC3gtoDH5JlucBOSztUXuyepO3Q4Vmrg
	 pzrnzWOP0FTYQ==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v2 0/2] soc: sifive: ccache: Add StarFive JH7100 support
Date: Wed, 22 Nov 2023 11:59:22 +0000
Message-Id: <20231122-vocalize-splotchy-1cb4f171dda0@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
References: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=763; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=WfkmwEoyD3fGvlSTinUXdzHlQ+oJRv+XCNHDd7CpSRc=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKmxbyXCdY+2Tj9huPV1j/BlK0/bKVnmcz9OCj63a1G72 rJD3mxGHaUsDGIcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZiIaSDDX6nPkj3iTawJCyMm CfMvTM0vmSW4SJed65blKyGH3kPnFjL8s1mWFZ6Z/JFT/vzL6YysWsn2pZzG0WH6MsJb3p7onVn IAwA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Tue, 31 Oct 2023 15:14:42 +0100, Emil Renner Berthing wrote:
> This series adds support for the StarFive JH7100 SoC to the SiFive cache
> controller driver. The JH7100 was a "development version" of the JH7110
> used on the BeagleV Starlight and VisionFive V1 boards. It has
> non-coherent peripheral DMAs but was designed before the standard RISC-V
> Zicbom extension, so it neeeds support in this driver for non-standard
> cache management.
> 
> [...]

Applied to riscv-cache-for-next, thanks! I still need to figure out how
I want to put things into linux-next as Arnd wants these cache driver
things in a PR of their own.

[1/2] dt-bindings: cache: sifive,ccache0: Add StarFive JH7100 compatible
      https://git.kernel.org/conor/c/3d70b9853b44
[2/2] soc: sifive: ccache: Add StarFive JH7100 support
      https://git.kernel.org/conor/c/0d5701dc9cd6

Thanks,
Conor.

