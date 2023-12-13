Return-Path: <devicetree+bounces-24856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE6081182C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:49:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 808CB2810B2
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A86381DE;
	Wed, 13 Dec 2023 15:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwCt09Q1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD58381D1
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 15:42:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 154A1C433CA;
	Wed, 13 Dec 2023 15:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702482179;
	bh=hkcptZUU72QGqUIGA2u1ZtU7E07KBVFxcMF2xAvR6u4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OwCt09Q1RWJLNWO0MDuEwZGt9IkbFtgsoctzaaeO0noYh6S1gFg2cd/dUnLZ49B3+
	 LBfhqfjbjkM+nMXEcHHYLb/GJ1OUYk7eDPruZ7TbrQvOIFFpsyGYnWQL/qLmolr7R0
	 Sn8Bb3MyJXaXx3I3ytBdwMN/U6HIuMbORSty8ziKODMDvsJvJjyRku86VuHntHcusR
	 KsWfxsQeidwpNCPFPYVNwPD62fd9P+UXa2LqlNJ6EVvNybCOj9qH3TJhXNnerXfkU5
	 0Qr8yhPEXnGbVdNGhBobuVWjlRxUmHUcibXK5Fr3NtPlAXUbDwM49L+HcJx6Msf4Jv
	 8kuNMLvIJfQ0Q==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: (subset) [PATCH v2 0/8] Add JH7100 errata and update device tree
Date: Wed, 13 Dec 2023 15:42:44 +0000
Message-Id: <20231213-jester-rendering-dd876ef8e8ac@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=615; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=uS9TPJL7JAemNHfJAG96Ozr9DLEia/BDfH/NodMVEi4=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKmVFz7NKPq9Wf/i82/1PJKM+a+/LLT8uEA9OVkvUemn9 XTnvoClHaUsDGIcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZhI8CZGhjO6oY7/Q4IjSk3V 6/YcYg9bG7YmLFziUYICj+/dxuUfVjEyTC/9JyH07PTaME+b1znb7sXYLatmPMWka2HdpKF5XNO TDwA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Thu, 30 Nov 2023 16:19:24 +0100, Emil Renner Berthing wrote:
> Now that the driver for the SiFive cache controller supports manual
> flushing as non-standard cache operations[1] we can add an errata option
> for the StarFive JH7100 SoC and update the device tree with the cache
> controller, dedicated DMA pool and add MMC nodes for the SD-card and
> wifi.
> 
> This series needs the following commit in [1] to work properly:
> 
> [...]

Applied to riscv-cache-for-next, thanks!

[1/8] riscv: errata: Add StarFive JH7100 errata
      https://git.kernel.org/conor/c/64fc984a8a54

Thanks,
Conor.

