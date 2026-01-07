Return-Path: <devicetree+bounces-252300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E601CFD589
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5AADE30019F4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07018303A02;
	Wed,  7 Jan 2026 11:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ViwEgA4n"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C243002B3;
	Wed,  7 Jan 2026 11:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784374; cv=none; b=mGOW3Ga/Yt5VckRvjN3fcp1ffqVFZJr/cUD/SlBSmJoE4G0F7gsM63NcvC8fwASCu9GDnnctdLQDKNSVM8cvaNZadBlfgfcV1vSKbSDDF/Xil3yKYSrlNtJXUATXpWBwFZzPNROlPZ7iV6nNuwT5kK7iISdk4a2Zjxtjh14dLrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784374; c=relaxed/simple;
	bh=hMjy3lEeXeDO5nRVZQIN6TVF65B6g+XqBUFMamxA9q8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gaJ4kvjr23XGMM65tYEUvDT2GOi59k2gUEDLK/KmRjphPSuuUaVaVo6/V40rVFKS8aAZLdnDv9wTw9zy4tDOHmprzloyE6CwzYNCEdJTLj62piPjeRt/JXnCvCxvmCgjWMljb5Vp8cI1kdD6p3yZb01Gn31iaf1EPDuHlTuHfvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ViwEgA4n; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767784371;
	bh=hMjy3lEeXeDO5nRVZQIN6TVF65B6g+XqBUFMamxA9q8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ViwEgA4nWX8LGJFqhF/l4DDs5+k5XVSUTvKyHLm8lKzbynh8mV6PSQb8nrWm+ozer
	 W9XchbZWhbjTTdD0A5wQqHJ2IWw8f07iDGgta7Yr0q5qRPMzExUVR4PR0OiuGahz/B
	 /Y97kTOQUG2/EHp3TlirSHMKue6JAMtCsB16wtpwBhRDZSWQKOSZ0HH5P55gBJi2HY
	 N7+QZy5qDAMMOg7J5WNC2YvkfQjEQB1S4O4v4wBoAw0lGnvXAFPUSAdiRIxZl/kgvf
	 d/8lIyF2p4BOyCCZS5bLPpTt2bi4jzFkH8lU/4tMoW2h20ygl/HoN1bhdaWT/Up09P
	 dR4fOG81O5xbQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EE58E17E150D;
	Wed,  7 Jan 2026 12:12:50 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Evans Jahja <evansjahja13@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>
In-Reply-To: <20260106-mt8183-display-graph-v2-1-e7e56054eef5@abscue.de>
References: <20260106-mt8183-display-graph-v2-1-e7e56054eef5@abscue.de>
Subject: Re: [PATCH v2] arm64: dts: mediatek: mt8183: Add missing endpoint
 IDs to display graph
Message-Id: <176778437091.39195.13022724446632883232.b4-ty@collabora.com>
Date: Wed, 07 Jan 2026 12:12:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3

On Tue, 06 Jan 2026 11:11:12 +0100, Otto Pflüger wrote:
> The endpoint IDs in the display graph are expected to match the
> associated display path number, i.e. all endpoints connected to
> mmsys_ep_main must have reg = <0> and all endpoints connected to
> mmsys_ep_ext must have reg = <1>.
> 
> Add the missing ID to all endpoints in the display graph, based on
> mt8365.dtsi as an existing example that does this correctly.
> 
> [...]

Applied to v6.19-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8183: Add missing endpoint IDs to display graph
      commit: 6c9593bd4560750c7f862af5ce13b2802272c6ad

Cheers,
Angelo



