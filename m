Return-Path: <devicetree+bounces-133530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B504D9FADAF
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:29:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F074164667
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E50199924;
	Mon, 23 Dec 2024 11:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="AEo3/1gk"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29C11990DB;
	Mon, 23 Dec 2024 11:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734953363; cv=none; b=P9POBcVwKRWmaUXEJiwpTVNq0nvb5h8IRmd4VeNzBXxvvp061pIuje1V63m3FRCQc8jCTGlg+XrzMOYBHZfGf7p+eS2pwIiKnlEmzWjC22/XKMQU327WIGoIDPQZ7Pm4vOCKClxxEJ+Od26xRO10cMfJqVz9EPP416iw4KMRt40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734953363; c=relaxed/simple;
	bh=XOPtTvgUGmse9HYA6g645mQ7/aXPjfWD4Xe/QesJL3c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WwlqvKVBhAn1++4qjOAJvwBZRJsalIPSmkfBOVfTj0BVRIuRxiwJhyD9WwGHifZuvvJeHUcBxaA1aPYzNMyv4Cs+ar9sz/l1gLGauT/Y3l6CEBY6RXsTaSLXzJULIGv9P/zaDzOi52aDTRD4KC5zetph+36aXY+/hCxIEHz+fYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AEo3/1gk; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734953360;
	bh=XOPtTvgUGmse9HYA6g645mQ7/aXPjfWD4Xe/QesJL3c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AEo3/1gknag3uZKjeMVGGrNmhPkPMzsAf7xIhXtZbWwKIzKI+4P1LymWj8w7AQgi4
	 DnCpKbco4ewg5Bg2GWNdGPnOg3KCDa0m2qWR7eBhklI8dkDiBx61Jrs9OciY6LpCgs
	 xcfMOVelrAVWcF3Moak1Wlhh6xa+jdmno2YcWtNkql09Ma/EDcQvIDJh4cd3tEUvKs
	 ulaiabVIlYLvpDqQP9sQFUFZHPNMHmWHeXDuMoRwPE0/CeEh2cwkfF0JTt7RqcfHpC
	 bmKbrEckj9HpyGCKGRajRDqzCxZQVdLfat6KGTrD9lI82u9z2IBUmXBIiQp9WdJe8F
	 v+qxFHrjh2WlA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CDDA417E3683;
	Mon, 23 Dec 2024 12:29:19 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241030070224.1006331-1-wenst@chromium.org>
References: <20241030070224.1006331-1-wenst@chromium.org>
Subject: Re: (subset) [PATCH 0/4] arm64: dts: mediatek: mt8183 cleanups
Message-Id: <173495335977.39294.15680283704993365440.b4-ty@collabora.com>
Date: Mon, 23 Dec 2024 12:29:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Wed, 30 Oct 2024 15:02:19 +0800, Chen-Yu Tsai wrote:
> Here are some cleanups for the MT8183 Kukui and Jacuzzi device trees.
> These just fix up some names, add missing supplies, and drop redundant
> regulators.
> 
> Please have a look.
> 
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[1/4] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Drop pp3300_panel voltage settings
      commit: 0b5b1c881a909f17c05ef4b1ccb421e077f6e466

Cheers,
Angelo



