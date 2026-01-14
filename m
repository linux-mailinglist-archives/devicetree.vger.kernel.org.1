Return-Path: <devicetree+bounces-254848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B227D1D1FA
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A11413004285
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F04B37F10D;
	Wed, 14 Jan 2026 08:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="S0blBjPd"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980DB37F105;
	Wed, 14 Jan 2026 08:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768379567; cv=none; b=IWnu4LGsyG2EMY+rHcluRF/oc15D7Z2wnmcwEqzdGu/dgz97kyQ9lC3DHnpc7pCz+O+XeuhsjuTrC2nn6M84SYUT8tkD1dSEq/W0nzqnhE1JSIcjkQGO4zJIi4DAc4bWqEP6bwn7bT6LVCryRIZ98/C0yvuwirL/QDTglfqUA8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768379567; c=relaxed/simple;
	bh=hoxfy0ER/g+wAyeR3+r8k79uOE64Q3BdVvC8LlDiZg8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=oI1md36K88HbXSwh4Ds20V+0kPipx4dajl7+yU25xv0EaZbAjGLmwVXSCVAx5qkBa5tKPzIV9VueScqg79lz8wT/YKH1O5AGxuDXkcYEoyxFR0ZDtarj7UQ0J6+2ZfL9NcwufA6SS/qIChO5Ut7I6R+NAw9wFBgHJpuFxGFRo6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=S0blBjPd; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768379563;
	bh=hoxfy0ER/g+wAyeR3+r8k79uOE64Q3BdVvC8LlDiZg8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=S0blBjPd6ruf3r1TgKzm/WeFINixW9iY8V+LUMdVOBFMvFkCqLj6dYcloMepQpDA4
	 HLUvaOBD5w7ZFElVNuVUfcPk7NCinOHCm3yKsrFSkKFYjGt3aDdJq4FcucF8Xa+l+e
	 d/kHJZvGQLA4k2xNjq9Tb/4m3+B2x94rdD/lTniQBxHKU7TnehGnp/iUaDKkEvrxO5
	 ym3fmwPIh1L0eoC/GQYh1P/rm+6XrVVytlwx5OZhWjRwgI8pMqwHS8qnEwki3sjVw8
	 MPh1yJXdGzcNTz78aixoVt0anXKwUh7hhJqcTrop0G2UGB+gQyu3kfd9MERdjNJAnk
	 60v4glXUNkODw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B559B17E0456;
	Wed, 14 Jan 2026 09:32:42 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kernel@collabora.com
In-Reply-To: <20260113110026.37032-1-angelogioacchino.delregno@collabora.com>
References: <20260113110026.37032-1-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8173-evb: Add interrupts to
 DA9211 regulator
Message-Id: <176837956268.8998.2468559603116961084.b4-ty@collabora.com>
Date: Wed, 14 Jan 2026 09:32:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Tue, 13 Jan 2026 12:00:26 +0100, AngeloGioacchino Del Regno wrote:
> Add the required pinmux and assign the right interrupts-extended
> to the DA9211 regulator (PIO pin 15).
> 
> 

Applied to v6.19-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8173-evb: Add interrupts to DA9211 regulator
      commit: 093d6e332259583a94d630897bdb07d6141bff57

Cheers,
Angelo



