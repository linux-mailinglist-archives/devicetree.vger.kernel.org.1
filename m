Return-Path: <devicetree+bounces-189471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8ACAE7E3F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD6D31888ED6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99A61EA7EC;
	Wed, 25 Jun 2025 09:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WdXpS5PP"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8DF4286436
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750845399; cv=none; b=Cp/o93cqD8ryUcNUBeKu4ZIovfBgpVnCz5Vz4rtsaisTU2LcrSXZgfL5HH5PL4Z6nUqmYX8Ee3jElvpZSFfqk+lUwCxwRmfQ9ilBbmBbNegb9wZacLFdfTpYYb7M8xyu880HNVb9sSkvUxTerqsI/gecYMapqXDb+EULpwp8314=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750845399; c=relaxed/simple;
	bh=4xm4c13qx8idD1PxG/L3wpwYyNMMWRmKlcFlDq52U5k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nwW+2vx20Xo+NmqSDzqLWyiYf6cZ9Zgt00wZ+kBqN0rHZFE1C1P4QSvE8oorX/5u2RfS9fGjWR4yKmViitvW8DfLXRLAInHwU3ja4t2+eTfXMU5xbpbKHKDYxYGiC+NVBnbS/ytkf3dhQvyKLl4a6Rg7QU77SMiL36JeG0NBk/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=WdXpS5PP; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750845393;
	bh=4xm4c13qx8idD1PxG/L3wpwYyNMMWRmKlcFlDq52U5k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WdXpS5PPPTIiIaoqFVj5y1vTb//tmgQC2R/tV/xLrxtk3pU8M0Eh7cdaIqJF7Wyss
	 kJeB3crnj6hiXOnmidIzo7ag7KxtJcE/ZCUY8Z2he8A4y2257zSIgmlhLSGnmY9BwX
	 +m7p00yI191UDTo1b/8B7IDPl/rUEtZsjpYwIV1LbnukwMIheKzc53cMCpCeqhd8gC
	 Hn0fKvoXtXeBflrQJyP8iTKiLUAUUVHlgzBQFPQfPGNd5p6lmd8VG1pBcRNTzza+Ey
	 m2RlNlgKWCVIuHY5RYeZQcgUyAjwfKAonV7qo62XWD7ct2NeYB/28CnPDLReXZ9Ubv
	 sZC1xdcMPCyIQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5D4D317E10C7;
	Wed, 25 Jun 2025 11:56:33 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20250520-en7581-net-v1-1-5317f8e829ad@kernel.org>
References: <20250520-en7581-net-v1-1-5317f8e829ad@kernel.org>
Subject: Re: [PATCH] arm64: dts: airoha: en7581: Add ethernet nodes to
 EN7581 SoC evaluation board
Message-Id: <175084539329.84221.11886997318219077095.b4-ty@collabora.com>
Date: Wed, 25 Jun 2025 11:56:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Tue, 20 May 2025 15:41:35 +0200, Lorenzo Bianconi wrote:
> Introduce ethernet controller nodes to EN7581 SoC and EN7581 evaluation
> board.
> 
> 

Applied to v6.16-next/dts64, thanks!

[1/1] arm64: dts: airoha: en7581: Add ethernet nodes to EN7581 SoC evaluation board
      commit: a40b35819ba9fce0e942bd89600cbd78da8304f0

Cheers,
Angelo



