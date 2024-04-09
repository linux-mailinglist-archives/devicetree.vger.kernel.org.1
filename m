Return-Path: <devicetree+bounces-57495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B41D589DAA4
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:41:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4C531C210FF
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 13:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36D0131E20;
	Tue,  9 Apr 2024 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlG8/J28"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D54B131BD7
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712669933; cv=none; b=LNIzJIA3U9Wzu/lH7uB8PZERyEOCtzwCdD7nHTx4BexEswY4OkM+nM3dsGtdon0QnA6Pammj5aidLeOZ7IolnMLTnF6RPy0rD6J83GS2K10pgGFsdTW4ron90jRMI3hl2yDHmDqSxpDuP9Hemvj26fyMV2ozui7ZK8vZ3T61zE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712669933; c=relaxed/simple;
	bh=MaNTo1TwypdMImDfu267HMVrFoa2Gv937RWDn+H7NYE=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=P6X0bkFUXPUAHenrS74dWxzTqPkjedCb4WfpizOWyU8QEPkXOFjHc6su/L87Sbj69tOQhLY43u3XjurhExetquHJ6I7snibCTu6P99ZH/+Feoh74s22Yz9RMTWj0L2B1XdFTeQ77rf7kImV1PPTILRtufcCPE68Oc6wozj+J5Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlG8/J28; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1831BC43394;
	Tue,  9 Apr 2024 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712669933;
	bh=MaNTo1TwypdMImDfu267HMVrFoa2Gv937RWDn+H7NYE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=NlG8/J28axE58KEH46XEcDmHy3yMO8Dh1UdJPlygPKqW10vSd5kumTqY8W2XHP8dY
	 k+XykDNyWpMmpkgR6bDATlazXoIXqKQHcsJzKVGoM9c8dFOcdUdXiwfVDyEEwumR3t
	 rGq218oUsf6/aYQjZQUJPKeRLUfssSxxRHab5F/YxzFkLD3U2l2z0h3fQAlariJesb
	 xgEj1zS5j/hY1ABgOLLLXKWZUzsFd8AzsvTw+1jOKD3p+uMVL8gmU/pF8zxeovg9/C
	 BVdYN4U5oLfeIsSry7VforNoEaqK6NuwLqqgCy+ihxoqLWgbnlczyICyq56dB/Gbqz
	 joEzMVXL89tWw==
Date: Tue, 09 Apr 2024 08:38:52 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Ryder Lee <ryder.lee@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 linux-mediatek@lists.infradead.org, 
 Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20240408100040.25997-1-zajec5@gmail.com>
References: <20240408100040.25997-1-zajec5@gmail.com>
Message-Id: <171266958436.1032546.17539975560250001591.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: mediatek: mt7622: fix "emmc" pinctrl mux


On Mon, 08 Apr 2024 12:00:40 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Value "emmc_rst" is a group name and should be part of the "groups"
> property.
> 
> This fixes:
> arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
>         from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
> arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
>         from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
> 
> Fixes: 3725ba3f5574 ("arm64: dts: mt7622: add pinctrl related device nodes")
> Fixes: 0b6286dd96c0 ("arm64: dts: mt7622: add bananapi BPI-R64 board")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts | 4 ++--
>  arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts             | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
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


New warnings running 'make CHECK_DTBS=y mediatek/mt7622-bananapi-bpi-r64.dtb mediatek/mt7622-rfb1.dtb' for 20240408100040.25997-1-zajec5@gmail.com:

arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: pinctrl@10211000: emmc-pins-default:mux:groups: ['emmc', 'emmc_rst'] is too long
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: pinctrl@10211000: emmc-pins-default:mux:groups: ['emmc', 'emmc_rst'] is too long
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#






