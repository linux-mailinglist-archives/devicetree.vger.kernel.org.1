Return-Path: <devicetree+bounces-254902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9EED1D998
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:38:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A946B309A6DC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C54A38759E;
	Wed, 14 Jan 2026 09:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Beo1AHPN"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34D73803CF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383157; cv=none; b=u6ok5Z382tlQg+XRTAE8eYiw5ETZoL7AYjqQ4geAnfQZ+sefGs18T9FjRU3h/RqZoDMsSEQLqzITGgjOHM/MO5UXUKYRIu0aX42STnY1lJt6i91c9RvgXzbaArkJ1GDUXWV0v5JszFAJOdP3QIEOH2cu0mkKCjfQJTr+xxnZvWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383157; c=relaxed/simple;
	bh=RQZW8N3E4EpxjaX/E336krRniaaouBTQ7ZoD68DziUM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WsYnB/DYneHcQQ4t0FQnwMPZSxOmEG00cyTI6uYSmlHlIYSPeEOAx819J2Qp0fnnPCdrbuw02zmXPtZK+AUfuURy4IfyrZfjFHEOrJQHZKKaNd06RDh/fFWed9DyysNjdWtfgtyuxGVY9+AkIKKBB4CUBXMSAhiKLuN92AOh3MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Beo1AHPN; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768383154;
	bh=RQZW8N3E4EpxjaX/E336krRniaaouBTQ7ZoD68DziUM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Beo1AHPN648OlmZMqfNKSiAawQOs1X2tQQ+JnS52QD0N/CSA6TXlI13KX3LaUXrZQ
	 ZlemAD3JoS2qvMu+xyjJfhvPnz2HRBvARFoNprqC/Kfg+0/2KdtYk5HEiBgXANBp4W
	 s4DQydLjrYf/8hD39Ua9g7s7MTM+Onsd7TKL+cmFufB82HWX+MuxRKWFk8ZRWn17Dv
	 lGPgbLGW1OJs7tqXo6omN9IfGgwqDUqBxxNzyNi3IkNPSHRztR+Q66QtJsXw4vBPPp
	 lx6Yyp8owuuMG3df+ImpL/MKRyUkiViRnj2idnPFfWgwWv+ORRqx7FgIN9eeCSKFWA
	 Xa/qylgMW2tgw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E4A8917E150E;
	Wed, 14 Jan 2026 10:32:33 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260114092605.3916367-1-wenst@chromium.org>
References: <20260114092605.3916367-1-wenst@chromium.org>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183-kukui: Clean up IT6505
 regulator supply
Message-Id: <176838315384.13786.449316758672672364.b4-ty@collabora.com>
Date: Wed, 14 Jan 2026 10:32:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Wed, 14 Jan 2026 17:26:04 +0800, Chen-Yu Tsai wrote:
> Align the name of the regulator with the design schematic. Also fix up
> the gpio property to the new "gpios" property name, and add the
> GPIO_ACTIVE_HIGH flag. The flag is actively ignored in Linux in favor of
> the old "enable-active-high" property; nevertheless it is the correct
> description.
> 
> 
> [...]

Applied to v6.19-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8183-kukui: Clean up IT6505 regulator supply
      commit: d33d77044c37aa97f24e3e3adf2f781aba774db2

Cheers,
Angelo



