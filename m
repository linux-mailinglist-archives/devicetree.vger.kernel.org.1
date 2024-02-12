Return-Path: <devicetree+bounces-40700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A848513B1
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 646B21C216FD
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467BD39AFE;
	Mon, 12 Feb 2024 12:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="5YwFMP4D"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C056839FC3
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 12:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707741791; cv=none; b=AO7Ob/qtwy+EiyksQuMOrJGVBrXHI04h61Ihacft6h6EKfvriXlFuSvagxnJJUbb8v5kwWmn1phSy5MJ5YqLh2eCkv/q05xG9vTgIZLCSvP8QXQvOsKmD4Vpd0rCQR7eFHYqPIETLTkrc8sNRyGEO1ZOsPDlDa6QoeLl/ah/pto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707741791; c=relaxed/simple;
	bh=1dir5fid+1BGP0VzNCQXLya74RU+ai/AxGeDGbyKkeI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MzeBzHOk81HswjgXFNJBkGqnmuy3W02okutFkPiraCGEAXqah7+LNTonmRcbsu9tN6XJzaD6XxTmEau5zEMRKZNfIw9Dw42x2HhBEpyU8tXubnAeMwXaP1FeItxIrSzONtJV/80OnSzQLNg8efp/ajzoZAx5hN2keVeQc8I+r28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=5YwFMP4D; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707741787;
	bh=1dir5fid+1BGP0VzNCQXLya74RU+ai/AxGeDGbyKkeI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=5YwFMP4DeWXpV3MmppPdhv2otz0AfjEV7858thCkMLuKqGmypoif0Iz8KJeT+IfZ8
	 QGPobwUqn4zjrPBD5pWzblbaqnNK/l9gyQ6fQTc7RqJANoxKMitTv5YcXh3jy6enJG
	 EleRoF+czMspoV1lK+DQWuDPau1a54bnaSqzTdYB+wmAtU5XszxrGbNkI9w/CjuLAH
	 pDpaK4JXX1aH7gVglI5ZBeikBCVc5jqE3X1okUPernMgQ3T4dZBXWHfE3OXWx6eqSa
	 2gHQW9v1a0K4BOSDFRitrTSKxjyK5HtrIZn2lDqKpoWF4xdiLroqjZjHJbhAa+gtZ8
	 MKfxcgAKeYcNQ==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 105AC3781FCE;
	Mon, 12 Feb 2024 12:43:07 +0000 (UTC)
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
Subject: Re: [PATCH] arm64: dts: mediatek: mt7622: add missing "device_type" to memory nodes
Date: Mon, 12 Feb 2024 13:42:50 +0100
Message-ID: <170774176471.19382.17605326667599843858.b4-ty@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240122132357.31264-1-zajec5@gmail.com>
References: <20240122132357.31264-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 22 Jan 2024 14:23:57 +0100, Rafał Miłecki wrote:
> This fixes:
> arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: /: memory@40000000: 'device_type' is a required property
>         from schema $id: http://devicetree.org/schemas/memory.yaml#
> arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: /: memory@40000000: 'device_type' is a required property
>         from schema $id: http://devicetree.org/schemas/memory.yaml#
> 
> 
> [...]

Applied to v6.8-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt7622: add missing "device_type" to memory nodes
      https://git.kernel.org/mediatek/c/99d100e0

Cheers,
Angelo


