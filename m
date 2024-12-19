Return-Path: <devicetree+bounces-132652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CD79F7B23
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:21:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23A4F189051D
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A10A2236F6;
	Thu, 19 Dec 2024 12:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="exPgg5mq"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AD41EA90;
	Thu, 19 Dec 2024 12:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734610839; cv=none; b=YT6Y2rhiv6QhdJhbqSDydmc2Ejd6g0Xv/tThIomsRegbV/sDc8KpF5sH4VzEyNwWTVums7nVUU17a4Y63jSMum/PT+uCqql3OdOKICkaENz1vBNuRwIkD6PReTwIulsvIWJ285rmye5Z+emFfrlhnbOx0E6/qz9nXFVWZgUwM2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734610839; c=relaxed/simple;
	bh=6I5nC4pkzPQPTM76bNW5JcA9mDmtxzl0/S6e8Z9l9so=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Ry1AHJbZwoeAa4eEXGgYR1ASjlJjjaArmsNiRJZ//HCTDhgldG0dXDQsFp65ac76veb3/y+gfQXEMP/BGfGcWdiSGTBRirZy8Bvt9QFlmkGxJP9lcahrNR/DLvlvpFXLrreZ6GQtyWyl5TGdJqaAn12jQOGaqWn11htC49uRWDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=exPgg5mq; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734610835;
	bh=6I5nC4pkzPQPTM76bNW5JcA9mDmtxzl0/S6e8Z9l9so=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=exPgg5mqxnXefGuruwVmotBP2Pc1lYfflmOuK/oIfx+S2I6YDC9ACfpzXDit5wV7h
	 TLpWmq+IgbM9d8+BeygQL6eSnol/qiAHFB7VoeuDvQIlpwHwkWn6Z0RALfP7IwYLxV
	 9KZk1bAdq9Z7X2uQjKhrv7+gNpEw9a61x9KfGuH6jw6GCxUzClcke/5SJI8vUd3hsw
	 nAo2lH/V10k9wSf3aembiTCOdBcp4Vo4Ov1fhZ9G+sXJM89XtanujtiNfJj3A6Z9yV
	 aDdVvRcWq+W5bo3+pXDflvFmrS698L+kJNsABF2mx97tvi1rtC2LQqK58U4pgQ/5Pp
	 8simtcZrDKBsQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7FA3317E3684;
	Thu, 19 Dec 2024 13:20:34 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Jianjun Wang <jianjun.wang@mediatek.com>, 
 Tinghan Shen <tinghan.shen@mediatek.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20241218-mt8195-pcie1-reset-suspend-fix-v1-1-1c021dda42a6@collabora.com>
References: <20241218-mt8195-pcie1-reset-suspend-fix-v1-1-1c021dda42a6@collabora.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking
 reset from pcie1
Message-Id: <173461083442.58336.13259484924514720817.b4-ty@collabora.com>
Date: Thu, 19 Dec 2024 13:20:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2

On Wed, 18 Dec 2024 19:01:08 -0300, Nícolas F. R. A. Prado wrote:
> The MAC reset for PCIe port 1 on MT8195 when asserted during suspend
> causes the system to hang during resume with the following error (with
> no_console_suspend enabled):
> 
>   mtk-pcie-gen3 112f8000.pcie: PCIe link down, current LTSSM state: detect.quiet (0x0)
>   mtk-pcie-gen3 112f8000.pcie: PM: dpm_run_callback(): genpd_resume_noirq+0x0/0x24 returns -110
>   mtk-pcie-gen3 112f8000.pcie: PM: failed to resume noirq: error -110
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8195: Remove suspend-breaking reset from pcie1
      commit: 3d7fdd8e38aafd4858935df2392762c1ab8fb40f

Cheers,
Angelo



