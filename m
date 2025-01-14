Return-Path: <devicetree+bounces-138405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2082A10435
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B03863A15F6
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBCA6229636;
	Tue, 14 Jan 2025 10:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="piQEL5bU"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB46E22961E;
	Tue, 14 Jan 2025 10:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736850747; cv=none; b=bFtXLBu1l7hiOxoY+9ijzqZbg8TDm9ca/0nv2PDyZw+o+uKev+Pl1xNzgVAkYohif7ooIzI43vgJQaC7pb6vdVXs6HtbSEe5An59cw5c1P4DpIna6wlpEauF9cOHpf9Ynv0tdiWCBdIg4NZaDNYnIFKaKszDF7br7IeFeHQLMxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736850747; c=relaxed/simple;
	bh=gTTeMn+E3DCHVqMg0J3tutnrD2qfrPRaA0W7YuCj0IM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ck1ZF9YXTG1OQ7DGox3y+Fa08ywAfnq7ZJJfVJoHi8PA+4KHRcVvGfzHGrf9g6L6XwlVWTG1p8BgIxGTvQRR4T/xSG36fXE8Wxaz54zv9N3dlT27cAfVtTFHmEbFkpfY+7r0TRd2eFeQE/bVVb56uBYzzeRadXSWf9EL6WV6thA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=piQEL5bU; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736850744;
	bh=gTTeMn+E3DCHVqMg0J3tutnrD2qfrPRaA0W7YuCj0IM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=piQEL5bUhPfSBzn3AY6sjpcce2ovZfwpw6ndr++u6Y7Leip4eFx9fyiOoBPXyCB2L
	 3w9xXgdsRkpMRzlqpVQA08rQN+kAYlhzW0qbvQqsPg0+ALqWqZs7BsrHP+yHmQRSx7
	 w0tvzuvyLWFIh/u738JruOHdafsSvUK4400HK6qOSP5xHR4fWqUEv+Fd8ASCciqT93
	 M3cexzcwr89PrseHWxdXtKnY+MIr4yuJ4BHZBTpJFxmsQDQRUJHqChKqpBM5aA1VW6
	 4B322pDxCug3415pZyO+BYusNF8RXhEUKKkwEqkhtamW1XA/JzunpnozN3oQGE3kBC
	 tlrQc17h3HC9Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 67DF717E0DB7;
	Tue, 14 Jan 2025 11:32:23 +0100 (CET)
Message-ID: <c041b875-23a6-4e0a-a31a-40bee27b62b5@collabora.com>
Date: Tue, 14 Jan 2025 11:32:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: add device-tree for Genio 510
 EVK board
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
 <20250114-dts_mt8370-genio-510-v1-3-8517ee0fdbe8@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250114-dts_mt8370-genio-510-v1-3-8517ee0fdbe8@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 14/01/25 08:38, Louis-Alexis Eyraud ha scritto:
> This commit adds a basic device-tree (mt8370-genio-510-evk.dts) in
> order to be able to boot the Genio 510 EVK board, based on MediaTek
> MT8370 SoC and very close to the Genio 700 EVK board. It also
> splits mt8390-genio-700-evk.dts file in two to create
> mt8390-genio-common.dtsi include file, containing common definitions
> for both boards.
> 

Please split this commit in two parts (and rename the suggested commit
titles as you wish):
  1. arm64: dts: mediatek: mt8390-genio-700-evk: Move common parts to dtsi
     (in preparation for introducing support for genio 510 evk, blahblah)
  2. arm64: dts: mediatek: Add device-tree for Genio 510 EVK

This makes the patches a bit more readable and, if anything happens, whoever
looks at the commit history will be able to more immediately understand what's
actually going on :-)

Cheers,
Angelo

> The Genio 510 EVK has following features:
> - MT8370 SoC
> - MT6365 PMIC
> - MT6319 Buck IC
> - 4GB LPDDR4X
> - 64GB eMMC 5.1
> - 12V DC Jack
> - Micro SD card slot
> - Push Button x 4 (Power, Reset, Download and Home Key)
> - LED x 4 (Power, Reset, System on and Charging Status)
> - USB Device Port x 1 (Micro USB Connector)
> - USB Host Port x 1 (Type-C USB Connector)
> - 3.5mm Earphone Jack x 1 (with Microphone Input)
> - 3.5mm Line Out Audio Jack x 1
> - Analog Microphone x 1
> - Digital Microphone x 2
> - Gigabit Ethernet with RJ45 connector
> - HDMI 2.0 TX port with Type A HDMI connector
> - eDP port
> - 3x UART with serial-to-usb converters and micro USB connectors
> - M.2 Slot x 2
> - I2C Capacitive Touch Pad
> - 4-Lane DSI x 2
> - 4-Data Lane CSI x 2
> - I2S Pin header
> - 40-Pin 2.54mm Pin Header x 1
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>   arch/arm64/boot/dts/mediatek/Makefile              |    1 +
>   .../boot/dts/mediatek/mt8370-genio-510-evk.dts     |   19 +
>   .../boot/dts/mediatek/mt8390-genio-700-evk.dts     | 1033 +------------------
>   .../boot/dts/mediatek/mt8390-genio-common.dtsi     | 1040 ++++++++++++++++++++
>   4 files changed, 1061 insertions(+), 1032 deletions(-)
> 

