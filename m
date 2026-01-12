Return-Path: <devicetree+bounces-253927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFE8D12CAE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:28:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E2B083004E12
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55B8F359700;
	Mon, 12 Jan 2026 13:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="a377KQy7"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6853596E6
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768224511; cv=none; b=AK6HwYJd3FaZjWuI47a6kk7gEclqR7oEZDQw5H1nM16S5EE4FE01evMpyT2fbyGwDFCUBDEAV/98Hf+OtnrYRiw5vH9NQc1l3mIVxaW7TY405lopjM7efKUb1XetGbYntHBPHki5oBMk1MCmjQ/CCTerGaRE72hv5A4GR3zuI1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768224511; c=relaxed/simple;
	bh=f78gp6boRiGgxdOsuYxB8AuLWAEzu6iYkpim1DtE1V0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fFswRbueXO+h9fQjBPrbGHnKl+S1v/rLXmIjhXbrxxqRmSKXqAn/Zxkncqn+8Bw9vjjKUDNJTf8S/T0JhSfrlk3lgaN7xfPlPxfBI52sdIx1tOcQljgXo8Jkvo7zFSvzGtxMVEa74GamWPg85gHo1vViQcL05444aJE2RVz2Blk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=a377KQy7; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768224508;
	bh=f78gp6boRiGgxdOsuYxB8AuLWAEzu6iYkpim1DtE1V0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=a377KQy7q7rvGs8Nkk9WTyVAVs/kmJNHq8rK8hC2yY2YRzmSNdRL67cG/4QTEhPmR
	 lkUPc8C3qUVFlIWsH3riOyHqQ5H41AabjGnupkDWTIMngVQaAH3GClDJB/lrN5Dg40
	 fjUm1w29uQaa6tYOevOWGtHV06/7dMI5NuljeBlZoX4wfHt/JyE7TQXCthfF/tS3qr
	 Mc89DfdzgrBjgV05y65cxjD86mVXBMsgNHxTwHQ5lCEePEb3Pg8tNkdizcaaQn86Vq
	 pLuEcHHzspKD1Lc+H3lXla1QatB+AMLpmGnAhWufkxFuNU98HAbJuvEy/U3HZSn72m
	 xt4FdQTN6B2Ng==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B397417E0333;
	Mon, 12 Jan 2026 14:28:27 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Macpaul_Lin_=28=E6=9E=97=E6=99=BA=E6=96=8C=29?= <Macpaul.Lin@mediatek.com>
In-Reply-To: <20260112085544.2959250-1-wenst@chromium.org>
References: <20260112085544.2959250-1-wenst@chromium.org>
Subject: Re: [PATCH v2] arm64: dts: mediatek: mt8188-geralt: drop
 firmware-name from first SCP core
Message-Id: <176822450766.38852.14968182973024481538.b4-ty@collabora.com>
Date: Mon, 12 Jan 2026 14:28:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Mon, 12 Jan 2026 16:55:42 +0800, Chen-Yu Tsai wrote:
> Arnd pointed out that having firmware-name in the device tree is wrong.
> Drop it.
> 
> 

Applied to v6.19-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8188-geralt: drop firmware-name from first SCP core
      commit: c3f6d533b76e27a6dd4264b0240f7742a4d79323

Cheers,
Angelo



