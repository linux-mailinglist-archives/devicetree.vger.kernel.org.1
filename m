Return-Path: <devicetree+bounces-178804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECADABD458
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 12:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 801D81BA0F69
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 10:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7343925E476;
	Tue, 20 May 2025 10:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="QB/ULZ1B"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903E7211497
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 10:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747736259; cv=none; b=l61MG9kA0D2OZDug/JU6tHD7WHuZxk45e3/ArWCKAXWsAoMbwHvftN0YYtOTgA7mS/+2YDfhETabYtrvU8sNXDuCLkQSWagw41bCENKOM4xMio28Mfm7l8MayN2K9xKtRuzePuZdo50MIiiAlQTYIwi78NoWdl8Fd89xZgWZAts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747736259; c=relaxed/simple;
	bh=8hgPJy0IXANIe9SWlDAL1LevAW3h1brtXJfLzCl37G4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KFieIYSkEaRv12Gs8v1rR/z3wjNXSCD/NuLQxdw1ZW6/0zYvFgRtsigYw/oBcu9NwKNFjVy/umoTvwWrWW9fkbEulI6B/tDmS1QcKClTGJxrJBrC4D6HvDRUL9aatiIgDQ/643f96M5BcBGf+/hov7TYWB1wBq7cCc+dSHqPJcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=QB/ULZ1B; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1747736255;
	bh=8hgPJy0IXANIe9SWlDAL1LevAW3h1brtXJfLzCl37G4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QB/ULZ1BgoDxrnppI9dWX9xAj4tnmFRrk0pdY5sd5lnE+ooKC54xWHTVgexggZtXH
	 tJpLUpvtJVw7YhNotrPYnAiEatRwwVB0hiqn6L7N49dM6/pJjDZvXIHZyZ2SM7k/uG
	 BsWqIMKdsOwLsZbZvdTYlkXCuG7WduaXI0EsF/2d2R65v1lXpT7BiV8FqJUCLRb8pd
	 TUbYGTxSaw02Gs3kotb6Gm4VMg6tMImJh5KOSsQcN6kBDi43GElpiVXJS+ASb25D1L
	 euTWLgd3f6nlZgSpf0HWtSoeIWW0kslUnmQmowD4GNMYsfgSc639ilFnF2A0lR+6Jy
	 tMvp6J+QCe/MQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5E0D717E0FD3;
	Tue, 20 May 2025 12:17:35 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20250517-en7581-evb-pcie-v1-0-97297eb063bb@kernel.org>
References: <20250517-en7581-evb-pcie-v1-0-97297eb063bb@kernel.org>
Subject: Re: [PATCH 0/2] Add PCIe nodes to Airoha EN7581 SoC evaluation
 board
Message-Id: <174773625531.3349397.17842206398806297808.b4-ty@collabora.com>
Date: Tue, 20 May 2025 12:17:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Sat, 17 May 2025 17:19:42 +0200, Lorenzo Bianconi wrote:
> Introduce PCIe controller nodes to EN7581 SoC and EN7581 evaluation
> board.
> 

Applied to v6.15-next/dts64, thanks!

[1/2] arm64: dts: airoha: en7581: Add gpio-ranges property for gpio controller
      commit: 3893ad42d371352ddc1aee8b28938618f5e06054
[2/2] arm64: dts: airoha: en7581: Add PCIe nodes to EN7581 SoC evaluation board
      commit: 0e94bee0b40ea99c0c874e99373f58a1b57e7433

Cheers,
Angelo



