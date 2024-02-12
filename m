Return-Path: <devicetree+bounces-40699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F798513AA
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:38:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 24A7BB256A1
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847A4EEB3;
	Mon, 12 Feb 2024 12:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qFYXtEtC"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FB339FC3
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 12:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707741520; cv=none; b=CN5gRLW0UN3VK8oCS618kzflXtY/6rDTBnUL9jWiZ4Sw23Fcv7M/ZJlN9kCEg2gdjX+ZoNV7Brh5NW8cdEc22RTjUlPy4IRuURuNtxQgwhWSc9Mc4s12ynA9yqPLlNcAJXdDvpcYf/rOEmbnmtgupVsaDiyrlOCWQlbSFqPdQtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707741520; c=relaxed/simple;
	bh=IvUTVsbo56lV3dtecdoGbuErbMZ4t5DkqNFX6mOYD/E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fas1/C6e/MWW15DJJucCVhyUe7uTOTqKg1tKPuUb2PjNItASlYcD8JiYa3/cJWgvvcaQ+KEdUzRn+eAi24TBEiV6O/WDwF5ha2+oOjmj3J34bi8GKR08P655tFbgN9V8ixKUBejmnMlST3U7pVZJTiHn84iIigPB3KSLHJtSGnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=qFYXtEtC; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707741517;
	bh=IvUTVsbo56lV3dtecdoGbuErbMZ4t5DkqNFX6mOYD/E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qFYXtEtCaKyiVr66/KlNRmFlhC7Qp980tPZF73BGBt7wckcOuxnqGy45as+NtmSRS
	 8FhDhOQEDsohYyLNYwX+wLWGkBKnzwOQ7UYd0mB4NjmqQlErDj0m9bVkcc2jHLb7Dy
	 AspW1UtLcIH2SfdREBvFaGogSeU7A8qYqn/phzMBmILPyu9RI3ZcqC++oztnpD8+x/
	 khev1kS4FHnqqSwp7bv764P6+1t3NIQTXasd7k6icMu7yWIUWYJ1DGPpmhTdF8BjcU
	 QtS6NG7yN/nD//Bnru3wewS/QX1CqPygfQ1eJivArN0hdJdHOABjT+e4qi36Ldil3W
	 aFv0BO/ZXh+LQ==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3A24C3781FCE;
	Mon, 12 Feb 2024 12:38:36 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH REBASED 1/2] arm64: dts: mediatek: mt7986: reorder properties
Date: Mon, 12 Feb 2024 13:38:28 +0100
Message-ID: <170774149167.16640.16616243802900743288.b4-ty@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240212121620.15035-1-zajec5@gmail.com>
References: <20240212121620.15035-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 12 Feb 2024 13:16:19 +0100, Rafał Miłecki wrote:
> Use order described as preferred in DTS Coding Style. Mostly just move
> "compatible", "reg" and "ranges" properties. In two nodes also move
> vendor-prefixed props down.
> 
> 

Applied to v6.8-next/dts64, thanks!

[1/2] arm64: dts: mediatek: mt7986: reorder properties
      https://git.kernel.org/mediatek/c/7eb133c9
[2/2] arm64: dts: mediatek: mt7986: reorder nodes
      https://git.kernel.org/mediatek/c/3f79e8f3

Cheers,
Angelo


