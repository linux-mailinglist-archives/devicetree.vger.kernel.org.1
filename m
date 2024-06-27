Return-Path: <devicetree+bounces-80872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F74191A9BC
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:51:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B95D281BB0
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 263471990C9;
	Thu, 27 Jun 2024 14:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ha3PNmCE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027481990C5
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719499731; cv=none; b=j34JMNU1U7MtfLe9oa3XAXN6n36tWEaNeD342tCDwbaOAD89NfqI+BMaSnykR958h0Xc+TD7iuGm/Nz344vaBMD/YnxU9NKskmc6ZEej2AZ8TdPv3QhuXuTRtMzCfmcYYy6RRd3v12Wl9aelbrkIdn3co0NQdfmTcamzB/9FNTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719499731; c=relaxed/simple;
	bh=j9blfb7coQFPpA0hvriFzY5GKbnQ+Fgqvq7qHGHI4dY=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=uS0kdg2an7yi1exOFxx17ND2CyQWYjWlgHTPfH7EdRQQLIRrwMWap1H2JzWXCm1OuYLwF1PsGQzxvxPZikysYQ5YkjYnPgbavuFC1WHw+/Sq0nNih0zDZWED6E/poeZqfPUGt4Fr5rC01gqvz/BGOncg845r3iUruC7MmeWiySU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ha3PNmCE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 595A5C32786;
	Thu, 27 Jun 2024 14:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719499730;
	bh=j9blfb7coQFPpA0hvriFzY5GKbnQ+Fgqvq7qHGHI4dY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=Ha3PNmCEXoiwoiuOAE/4Ya2BeSbOw5qfoFxlRDgTTZqIxVAp880kvPVQhD4DTtbVm
	 XqRYUUalQabyVi6RGBMxAUmReaQHkAZxEvAgJSNVURFic7v3uHob1f6cE7gm2vgElE
	 Rkwn7GdBQVaq0OHA5Vs7uwM3D1+ftO/5BzCFz3idv7LiXJoUc5AWj3NjlJXVhNRM9b
	 NKWdK0T3ikIrgYdgg3pQ1q5BAhDdLg5pXCWyYEJ1LmlMt3vXhl1KliUSoYAvviW49l
	 QcoSZsGGJ84yxuNxfzYFItUFhtl8PLiljTO5qOmlbcg0pTC29K/ILhYdSLNsKzaKdS
	 RIb9Li1tjKiKw==
Date: Thu, 27 Jun 2024 08:48:49 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Leith Bade <leith@bade.nz>
Cc: frank-w@public-files.de, linux-mediatek@lists.infradead.org, 
 matthias.bgg@gmail.com, krzk+dt@kernel.org, didi.debian@cknow.org, 
 devicetree@vger.kernel.org, angelogioacchino.delregno@collabora.com, 
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20240627075856.2314804-1-leith@bade.nz>
References: <20240627075856.2314804-1-leith@bade.nz>
Message-Id: <171949936716.3312392.7734746271986363667.robh@kernel.org>
Subject: Re: [PATCH 0/4] fix up pin definitions for BPI-R3 board


On Thu, 27 Jun 2024 17:58:52 +1000, Leith Bade wrote:
> This is my first patch submission to Linux so I apologise in advance for
> any mistakes.
> 
> These changes were motivated by a pin conflict with the PCIe M.2 connector
> and the push buttons. As a result I decided go work through all 100 GPIO
> pins using the public board schematics. As I need to acquire a M.2 SSD to
> test the PCIe pin change that patch is not included in this series yet.
> 
> Working though the pins I noticed a bug with with the MT7531 chip's reset
> line which was on the wrong GPIO. Since it was conflicting with the boot
> mode switch input GPIO pins I looked into ways to document the use of
> those pins with the switch. I ended up choosing a gpio-hog, but please
> let me know if there is a better alternative.
> 
> I also added some missing pin groups for some of the built-in SoC devices
> to clearly document the use of those GPIO pins.
> 
> I have actually written up a gpio-line-names list give all the pins
> names to match their usage on this board. If there is interest in this
> I can submit this as an additional patch. I see only some MT8xxx devices
> in the mediatek directory have a gpio-line-names so I wasn't sure if I
> should add it.
> 
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y mediatek/mt7986a-bananapi-bpi-r3.dtb' for 20240627075856.2314804-1-leith@bade.nz:

arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pinctrl@1001f000: 'boot-mode-hog' does not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7986-pinctrl.yaml#






