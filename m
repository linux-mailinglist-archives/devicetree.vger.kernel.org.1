Return-Path: <devicetree+bounces-252298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6AFCFD586
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5AD0A3014DDF
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A61213016EB;
	Wed,  7 Jan 2026 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Rmdze8LQ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4A52FB99D;
	Wed,  7 Jan 2026 11:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784373; cv=none; b=jRKuQalPIIKI70Kvn8mCFkIs1hFMESAldfzQTIIrS0TLrLHSrCxV1UOwEn/z/nt5fdI2s6f6zGaC2ALDOvKegfBAHlzAjQC/n4rrYzeS9GnjsAe5lw1QHrnjHkkcKd+tBkli2YQx6nDeLkG3qmv+SIbe9+eAb70nG5taqg/DJAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784373; c=relaxed/simple;
	bh=D1zpCI9Lk65yAbm0KzqI6gAuTY2FfWL12mKep/lVWzc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lwscgquswMQNcLlbRfKdgugjK3UgsMgshTrKy12cNNlNwdw987BmMa49/QEhE+FhsYmdmZ3yoGqjQRBfpGJmL9+PeMV6pPNRN0dbWTmxnemfxnOzcdW+WLZ4oDzcrGcv65f2cPl7+ifijiJmPhKjg9yEQ1quCuC+E9fCZdWob4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Rmdze8LQ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767784370;
	bh=D1zpCI9Lk65yAbm0KzqI6gAuTY2FfWL12mKep/lVWzc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Rmdze8LQZeeQcdgHpqrUozgTkd/PT8bMIATi3EV9dpCSGDA57g7hjl0xE2xmlsGau
	 BjyHSF3e8kqXpj02CTDVxx9EGkVuC47f8Ybo+Xdel8ST+cdODVszSH2SVz68jM7kYI
	 jWL5njxL1Fq9pK1fTJackmAPJzdpE1IAQcLy7o6SE06aJIWROZmkdCBPbb8qjPPuA8
	 ivVsWalPIkN6/q1owTqBhm1NTwu5qcBQTmaJ0Z4HTLiVbk02mjs5r/zYBajtPqMlRw
	 Lg+iNzcRhQ7xnhV86FOoRw1ARg9TcHbt/7hbi3jCDrUqAgPusi6PDfaxL3vJkANIq9
	 rvD8MRF2Es38g==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B4B3A17E13D8;
	Wed,  7 Jan 2026 12:12:49 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20251119175124.48947-1-linux@fw-web.de>
References: <20251119175124.48947-1-linux@fw-web.de>
Subject: Re: [PATCH v1 0/2] build full dtbs for BananaPi R3/R4(Pro)
Message-Id: <176778436967.39195.1901837532049373497.b4-ty@collabora.com>
Date: Wed, 07 Jan 2026 12:12:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Wed, 19 Nov 2025 18:51:21 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Build devicetree binaries for testing overlays and providing users
> full dtb without using overlays for Bananapi R4 (pro) variants.
> 
> It is not required to build all possible combinations, only for
> common usecases and to test if all overlays can be applied.
> 
> [...]

Applied to v6.19-next/dts64, thanks!

[1/2] arm64: dts: mediatek: mt7986: add dtbs with applied overlays for bpi-r3
      commit: 0516c548883bbe58a48d604e81e33b390986cdb6
[2/2] arm64: dts: mediatek: mt7988: add dtbs with applied overlays for bpi-r4 (pro)
      commit: d977b61d38030f50bae9f634049110af0a364d0d

Cheers,
Angelo



