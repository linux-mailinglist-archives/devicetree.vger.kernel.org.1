Return-Path: <devicetree+bounces-72225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DEF8FB281
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24F0E1C22614
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B97145A1E;
	Tue,  4 Jun 2024 12:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="o4cjE1Mc"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273E7145FF1
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505120; cv=none; b=W2Me3lJXOBo81ITJl/BVL+WLfzjXntNE6fDEu5kSJokAS9sbvwFXcgg793WaMAFn5RzrqyU0sp/XZ2TbFhlxrqdsSOOa/lS3GGxV/shnXfh1UBpO5Z6Zb6pd7CBxS6Zm5NR7kjmnid1SwB4hQsQsytYJ9JZfvMXEFfI0uZZq9jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505120; c=relaxed/simple;
	bh=E0za82wH+riKSrkW3okeafFzOvq6hMFAmSi0fUjeKEE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CdMCY8PletQRfidiOSxDRaiPFxMVfKJAy6Rmn+j10C9lI0okB1vytp7sMYFSdH8sOfXH6Uj1cQo2Q1AFIILVq+QfLd4K0DwZV0W8OWxypr4AQr59KMFx4oqvP5S7kJxBVIeAV2PLCAZSJja03yyi8n/jXbQsewSSa2aq5x6x8Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=o4cjE1Mc; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717505117;
	bh=E0za82wH+riKSrkW3okeafFzOvq6hMFAmSi0fUjeKEE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=o4cjE1McS9mpp5GD+Q/oBe2XCS2yuJ6i5JW9sI17vwR1gV3i/NnXK8ku2bj7QqWEV
	 +v5PuMI+k81OyilqjFXk9JCzeA42RUeKpiUlWgoVfe5GeFiZcchQFtbYINc/Ki8gc0
	 hwsmozZ0s5qIHgvADblwgOArYAdBrAiUHKwJ6lfVziVQzmgNcA+TP5TWXbRzHuR8iA
	 lPbb6LD9UmvNyV9noz82fRm4txB0aOBZV0kGMyCiFbUTP3QTrk/GOlKpODP1avp6aZ
	 ThWTUsyfkwyZJtfhrwTRxnlWtysCUFrbklhzVeVqwoDiHEbuBayoNJ3tY9hHVbPT/P
	 Nzry+gyOb5Iag==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1499C37821A8;
	Tue,  4 Jun 2024 12:45:17 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@mediatek.com>, 
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240604074916.7929-1-zajec5@gmail.com>
References: <20240604074916.7929-1-zajec5@gmail.com>
Subject: Re: [PATCH RESEND] arm64: dts: mediatek: mt7622: fix "emmc"
 pinctrl mux
Message-Id: <171750511699.334676.15228989792130052568.b4-ty@collabora.com>
Date: Tue, 04 Jun 2024 14:45:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Tue, 04 Jun 2024 09:49:16 +0200, Rafał Miłecki wrote:
> Value "emmc_rst" is a group name and should be part of the "groups"
> property.
> 
> This fixes:
> arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
>         from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
> arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
>         from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
> 
> [...]

Applied to v6.10-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt7622: fix "emmc" pinctrl mux
      commit: 0175890e2b71cbd2afdda85578475bf6a626dcd8

Cheers,
Angelo



