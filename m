Return-Path: <devicetree+bounces-135060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2DD9FF977
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 13:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 710C3162618
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 12:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327721B0F0A;
	Thu,  2 Jan 2025 12:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ldXWV4U3"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624A01B0F10;
	Thu,  2 Jan 2025 12:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735821993; cv=none; b=isHMD4ANlzmklFh/Dp9Yjw/bm/Q5+HcFG+zKBGnNcGUZUnKdXAGyM9oIBcQIXoEvt7A4oI/KZaW5t2+AaoVgVs1wcilwkgYuSv8YBcsXKbYs+I01RklPUA0V76wnaVLImENmXBLMJKpkIKOCydBzYAlJsAP1h6gBz9fsHBhQrWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735821993; c=relaxed/simple;
	bh=72FUVBWrQQnCtomgcxE42zRclUbcFxTmpog/5Q4KCl4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bmin7nCZd+vTUIvyHmJJZXRcQk7oYJ/9t1Y4ILx1O7Gls+Dx762woVhUmvictkMF5jwRUlSddHb4YnGNAx5w5cRajeiiOct3mrSBBnOyVnu/ecTW2UXrbrpvjNFPRv4twjeFSTbbzU8zVCFYKVuosDb0PxGdIZmMXKKngHCSDzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ldXWV4U3; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1735821988;
	bh=72FUVBWrQQnCtomgcxE42zRclUbcFxTmpog/5Q4KCl4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ldXWV4U3cIGQRbqjksatBKslAddDmHFOtczY35yI4KJyRl0CI9ALKFnzdbfb+WYZw
	 0de7V1DGbUtrQlGD/QeHe4Cfb8m0W+kkCHUnWnVWIYgQSv3dHh4ugtqdo35CL+w/gJ
	 RCRVHyhcPN3rwZ/BAqy9WczJiScMm+A/WvT89TdNU+rb7rbO//1fGfu5fdpXu+kywF
	 fRKrWf4hZzuKdVAWwKUg7UyodAYHvfO8mvreAoP04Ccxoeep+JkuYF9WqV4Mmo6+KJ
	 9B27YckRjZx3knoe0WIXsfq0hEJt3ntG8Yh4zE81hev1aH9/kwRe/n2gAWe8Dubq5O
	 GYy8SpERfZbEw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A4DE217E156F;
	Thu,  2 Jan 2025 13:46:27 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20241217091238.16032-1-linux@fw-web.de>
References: <20241217091238.16032-1-linux@fw-web.de>
Subject: Re: [PATCH v3 00/22] continue mt7988 devicetree work
Message-Id: <173582198760.163596.9230247633462116946.b4-ty@collabora.com>
Date: Thu, 02 Jan 2025 13:46:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Tue, 17 Dec 2024 10:12:14 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This series adds some missing labels and new nodes to mt7988 DTS.
> 
> based on pinctrl-series
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=918572
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[01/22] arm64: dts: mediatek: mt7988: Add reserved memory
        commit: d789c6aaefe9b23edcddaa736cd167b113171e48
[02/22] arm64: dts: mediatek: mt7988: Add mmc support
        commit: df6cfc7ce2c88943c9593a7034a18c2e16cf7b85
[03/22] arm64: dts: mediatek: mt7988: Add lvts node
        commit: c8368a5d7b990180a2f93a7f17695da23e317da7
[04/22] arm64: dts: mediatek: mt7988: Add thermal-zone
        commit: 38414fa65e38bffe64ed425fe2face87107e18f6
[05/22] arm64: dts: mediatek: mt7988: Add missing clock-div property for i2c
        commit: 4b306c10c902c61a6fedb5b36b6acd7dc7d94c3a
[06/22] arm64: dts: mediatek: mt7988: Add mcu-sys node for cpu
        commit: 6e8485a022deea5d18417af5d37354adeebb14df
[07/22] arm64: dts: mediatek: mt7988: Add CPU OPP table for clock scaling
        commit: bb90f43b8d3bc4214829573dcd001bd8a66aab9b
[08/22] arm64: dts: mediatek: mt7988: Disable usb controllers by default
        commit: 55c8d22c5b117e43be97ddde9b256301e598e6bf
[09/22] arm64: dts: mediatek: mt7988: Add t-phy for ssusb1
        commit: b5443e5080c57b07459873fa4a5287f4b2b2c464
[10/22] arm64: dts: mediatek: mt7988: Add pcie nodes
        commit: 8fa4fc0bb0e6cedec8c1c8e353323f7178b891de
[11/22] arm64: dts: mediatek: mt7988a-bpi-r4: Enable watchdog
        commit: 4242aa5ab0ad83d4379c4f189560a1766251db4b
[12/22] arm64: dts: mediatek: mt7988a-bpi-r4: Add fixed regulators for 1v8 and 3v3
        commit: 82af3f6028e6dbe3437539882b39c643c3c91d7e
[13/22] arm64: dts: mediatek: mt7988a-bpi-r4: Add dt overlays for sd + emmc
        commit: cf9b2081edcd8af513cfd11ccbb4c55b8cb10da5
[14/22] arm64: dts: mediatek: mt7988a-bpi-r4: Add thermal configuration
        commit: e945e2a9a1c507aa8b15e7282ae209c6507cc3ff
[15/22] arm64: dts: mediatek: mt7988a-bpi-r4: Enable serial0 debug uart
        commit: 070c7da3601987fcd9b301e9686d29bb00c80e3c
[16/22] arm64: dts: mediatek: mt7988a-bpi-r4: Add default UART stdout
        commit: c4329c5f5fccb7915db6ba2f38462262a361ee6f
[17/22] arm64: dts: mediatek: mt7988a-bpi-r4: Enable I2C controllers
        commit: 4ad665e1d614b48a5823cf8cd73c13ce1d958d8d
[18/22] arm64: dts: mediatek: mt7988a-bpi-r4: Add PCA9545 I2C Mux
        commit: 78397a31e333e1606d1e2a4720946c76ad8414a6
[19/22] arm64: dts: mediatek: mt7988a-bpi-r4: Enable t-phy for ssusb1
        commit: edfbe5e9809adc3c44869b4462ebb5dab08bf36f
[20/22] arm64: dts: mediatek: mt7988a-bpi-r4: Enable ssusb1 on bpi-r4
        commit: 80acfee3dc29bd5e3ca9a4d7cb645edd6441dee9
[21/22] arm64: dts: mediatek: mt7988a-bpi-r4: Enable pwm
        commit: ef3869173b931d4d400e3793764de99e953e87a3
[22/22] arm64: dts: mediatek: mt7988a-bpi-r4: Enable pcie
        commit: 16a2c22259d80579e1e495ee264d8797fda5b76c

Cheers,
Angelo



