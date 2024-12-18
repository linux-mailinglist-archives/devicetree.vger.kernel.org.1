Return-Path: <devicetree+bounces-132309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7130B9F6802
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C07CB162BBA
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 14:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 985FC17C219;
	Wed, 18 Dec 2024 14:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qLhSZOgv"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90533156879;
	Wed, 18 Dec 2024 14:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734531016; cv=none; b=iTrN+7y0ChvjhHfcCJZ+ORLqoTQWpfGRRIDTVgdw+DZ6sKHJzrktHck3DV6P9r1cAx6xcaBQY+IvrBYKcbKRAMombNFkKhNqEHRaKatAn5XMPaKNd8u672tA5TqA8KJTbip+D2JcJjfcwQeqHx5DIAT+n8fINy6esJF3Y4HCUD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734531016; c=relaxed/simple;
	bh=Hq8XhkGLRdrugfZkK+fMbG5+AQ2uVsKhamccg/HdDPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QXa/FgLlPkCC2bQMyx0DDuMPirUowRfr915rbXbxODpzUBx2OZklYF9fEalVj3UCekWW1wuomMq8sPTTqhB7xGBR7qjne2rYx3Zefiuhac7/P5ExXaA0tEiDXuAY/tD5cfvixU+asrJWGxvVscnOOFTCUY52UulJQNlya9qY6Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=qLhSZOgv; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734531006;
	bh=Hq8XhkGLRdrugfZkK+fMbG5+AQ2uVsKhamccg/HdDPw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qLhSZOgv1NUWmpOq5jY9QS05o6TRhLsp0k5bG98DdwLqHjgGQmztQvvuirQ9NAeie
	 lGImKftK04TlWgWpiqtn8pSce/yTul/hoIMOP9BG2cKP1byuX9XeVh9rxaGT4jMWYF
	 0CEWBBTWDuOVUSNcJvkhWm6icsgvVZ5j0LiNgyDotmGKahfhrEgOqohGB6XUVE0zCO
	 cshu8H56QHLuw0KkDIXnXphI0HyjggHPf0YsVNJ6HC1AFvg9aJNEmtgY9WnCN+bcuM
	 ZGz50r9ugnfVIURZkkSZYt8migf4df3tHfmBMgZOZvHNoYvGFe+RYMQGfTUQezGHKJ
	 /8vv+tgzkcD1Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 43B4517E3770;
	Wed, 18 Dec 2024 15:10:06 +0100 (CET)
Message-ID: <1b10a0ef-b6fa-4758-b3fc-0a44d840bce9@collabora.com>
Date: Wed, 18 Dec 2024 15:10:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/22] continue mt7988 devicetree work
To: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20241217091238.16032-1-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241217091238.16032-1-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 17/12/24 10:12, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This series adds some missing labels and new nodes to mt7988 DTS.
> 
> based on pinctrl-series
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=918572
> 

The whole series is

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Good job!

Cheers,
Angelo

> changes:
> v3:
> - reorder
> - small fixes
> - add some new patches (t-phy, pcie, mmc overlays)
> - dropped pmic and proc-supply for now because we found a mismatch compared with schematic
> 
> v2:
> - reorder and squash label-commits to where they are used
> - add some more nodes
> - add changes to bananapi-r4 board
> - moving some nodes from SoC dtsi to board dts
> 
> Frank Wunderlich (22):
>    arm64: dts: mediatek: mt7988: Add reserved memory
>    arm64: dts: mediatek: mt7988: Add mmc support
>    arm64: dts: mediatek: mt7988: Add lvts node
>    arm64: dts: mediatek: mt7988: Add thermal-zone
>    arm64: dts: mediatek: mt7988: Add missing clock-div property for i2c
>    arm64: dts: mediatek: mt7988: Add mcu-sys node for cpu
>    arm64: dts: mediatek: mt7988: Add CPU OPP table for clock scaling
>    arm64: dts: mediatek: mt7988: Disable usb controllers by default
>    arm64: dts: mediatek: mt7988: Add t-phy for ssusb1
>    arm64: dts: mediatek: mt7988: Add pcie nodes
>    arm64: dts: mediatek: mt7988a-bpi-r4: Enable watchdog
>    arm64: dts: mediatek: mt7988a-bpi-r4: Add fixed regulators for 1v8 and
>      3v3
>    arm64: dts: mediatek: mt7988a-bpi-r4: Add dt overlays for sd + emmc
>    arm64: dts: mediatek: mt7988a-bpi-r4: Add thermal configuration
>    arm64: dts: mediatek: mt7988a-bpi-r4: Enable serial0 debug uart
>    arm64: dts: mediatek: mt7988a-bpi-r4: Add default UART stdout
>    arm64: dts: mediatek: mt7988a-bpi-r4: Enable I2C controllers
>    arm64: dts: mediatek: mt7988a-bpi-r4: Add PCA9545 I2C Mux
>    arm64: dts: mediatek: mt7988a-bpi-r4: Enable t-phy for ssusb1
>    arm64: dts: mediatek: mt7988a-bpi-r4: Enable ssusb1 on bpi-r4
>    arm64: dts: mediatek: mt7988a-bpi-r4: Enable pwm
>    arm64: dts: mediatek: mt7988a-bpi-r4: Enable pcie
> 
>   arch/arm64/boot/dts/mediatek/Makefile         |   3 +
>   .../mt7988a-bananapi-bpi-r4-emmc.dtso         |  33 ++
>   .../mediatek/mt7988a-bananapi-bpi-r4-sd.dtso  |  31 ++
>   .../dts/mediatek/mt7988a-bananapi-bpi-r4.dts  | 143 +++++++++
>   arch/arm64/boot/dts/mediatek/mt7988a.dtsi     | 303 +++++++++++++++++-
>   5 files changed, 506 insertions(+), 7 deletions(-)
>   create mode 100644 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-emmc.dtso
>   create mode 100644 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-sd.dtso
> 


