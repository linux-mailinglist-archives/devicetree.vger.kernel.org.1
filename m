Return-Path: <devicetree+bounces-80259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE18B91842D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 171E81C21A15
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460CD185E7B;
	Wed, 26 Jun 2024 14:29:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD11918508A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719412146; cv=none; b=DqLcafU1FRvLuxOcBYz1cbYue3+CfyF+kUVjSoSCTbz5afZMconOCOwmnPnhI+1bjrQW2QmnEo/M9FacHwRFlLAOqaDEpoXd7i+n0XPB3XWYUuhjG+IHCJYVf/38G0nZwPwveoVpvtzV5DmrLE0TJ44OGxsfXsnqSRGtz65qHMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719412146; c=relaxed/simple;
	bh=JwPTLjjZ+9T6XnvQwRWqV5eSCwCeNAY4JQUdu96bdXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hirYy6YgQ88UAPxt9y6k+gRc6Gd3KmEwXqJFh6m7xyJUjzvxrWxsQHmt0zkYGm2/rfGPThlnA2SXltvkE7NZKPAiBqlYwucNll0wY7C00SSux98XLNF4gQL+Jv2bhIch6KB9PPTG2B4peo9zZa+DhVIOxEjZ0misJtZu0Gdio38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMTdl-0004SS-Rs; Wed, 26 Jun 2024 16:28:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Sugar Zhang <sugar.zhang@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, inux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 0/4] Add LBA3368 board
Date: Wed, 26 Jun 2024 16:28:52 +0200
Message-ID: <1865378.ucjEoNaZvj@diego>
In-Reply-To: <171940790685.2950756.7239158796460093682.robh@kernel.org>
References:
 <20240623090116.670607-1-knaerzche@gmail.com>
 <171940790685.2950756.7239158796460093682.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 26. Juni 2024, 15:25:12 CEST schrieb Rob Herring (Arm):
> 
> On Sun, 23 Jun 2024 11:01:12 +0200, Alex Bee wrote:
> > This series aims to add support for RK3368 based LBA3368 industrial board
> > form Neardi. The device tree currently only contains entries for which both
> > bindings and linux driver exists and is expected to be exended in future.
> > 
> > NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
> > exists - which is true - but "usb5e3,610" has a valid binding.
> > 
> > Changes in v2:
> >  - board DT property re-ordering / fixes
> > 
> > Link to v1:
> >  https://lore.kernel.org/all/20240621134030.243646-1-knaerzche@gmail.com/
> > 
> > Alex Bee (4):
> >   dt-bindings: vendor-prefixes: Add Neardi Technology
> >   dt-bindings: arm: rockchip: Add Neardi LBA3368
> >   arm64: dts: rockchip: Add sound-dai-cells for RK3368
> >   arm64: dts: rockchip: Add Neardi LBA3368 board
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> >  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3368-lba3368.dts      | 661 ++++++++++++++++++
> >  arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   3 +
> >  5 files changed, 672 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
> > 
> > --
> > 2.45.2
> > 
> > 
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3368-lba3368.dtb' for 20240623090116.670607-1-knaerzche@gmail.com:
> 
> arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /i2c@ff660000/codec@1c: failed to match any schema with compatible: ['realtek,rt5640']
> arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /mbox@ff6b0000: failed to match any schema with compatible: ['rockchip,rk3368-mailbox']

both of those are still in their .txt format, so not yet converted
to yaml.



