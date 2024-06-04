Return-Path: <devicetree+bounces-72222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 207838FB27A
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51D0E1C21630
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8694145FF6;
	Tue,  4 Jun 2024 12:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="yjPIBp/I"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A904144D1E
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505032; cv=none; b=Qi2ljER7rUtRgbhqeCC4V+PfQWGAITlqyIS7OaYvC8D5f5yWe2cvq+artaBpwiomy5bTRfMv+6/WqGnwnxe3hGblsHjL9vlPDMYLgXV0vV5If6GXGM/hJ8otiRzcbSHgNN1KmOxm1FZXqCClc90QE5d02r+H2ERn+cz0mafdWtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505032; c=relaxed/simple;
	bh=z9VKastw0Fg3r+6oyJGCgZjdTXvNGn5BMn3Iy1JBTjc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=T7YmmLinHnJAt3ioIDBvfXlkelbS++K01d5ZiZUKIq8UWU487USyUx6KcucTvAYFrDRDqOObG2/JiyMwU9Sx/wHysjppyvhLP4OieKKqnecbfT/+GiDsErhSTJJo5cdigBwhUrk/cCWx59ByCUA+vZ4a2raqSV98ihqzI5NkJts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=yjPIBp/I; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717505029;
	bh=z9VKastw0Fg3r+6oyJGCgZjdTXvNGn5BMn3Iy1JBTjc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=yjPIBp/I/yrz++QRFFCWXo8sWUixFwRHmLtKp9+YqOn4lxHbQ+UAJ4XFt+oZ09pB+
	 7pDcsn4OD8OJbnm/sBKtQvkvC56bi8xV3VSN514lpc+aCyIxyhOFMxas9pTE6uSWpF
	 LxnVcIKIOswBr+AAIvcUDGv0BOs2h88ImLWXZ/MW7cSahxP54pqp2IHIdIrWIpo1ho
	 hCzbANG0up679nlLNH/UXeAn2CqO4agFwf308mdvzHkvN6Os25p2e132bEnORrLxS3
	 i5kuXyBsKj+sHXiGgE0BG1CViI72Tml9+vDbi6g9AR1HyWu4TtKlV1OqjLHvuSH/uq
	 ekGOPJvxkWLNg==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5B8BD37821A8;
	Tue,  4 Jun 2024 12:43:48 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>, 
 =?utf-8?q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Chris Morgan <macromorgan@hotmail.com>, Sebastian Reichel <sre@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 openwrt-devel@lists.openwrt.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240527115933.7396-1-zajec5@gmail.com>
References: <20240527115933.7396-1-zajec5@gmail.com>
Subject: Re: [PATCH 0/3] Add initial DT for OpenWrt One
Message-Id: <171750502829.333704.14436657931851729298.b4-ty@collabora.com>
Date: Tue, 04 Jun 2024 14:43:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Mon, 27 May 2024 13:59:30 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> OpenWrt project (https://openwrt.org/) celebrates its 20 years by
> releasing an OpenWrt One product. Early units have been produced and
> will be followed by DVT samples really soon. Then the mass production
> is about to start.
> 
> [...]

Applied to v6.10-next/dts64, thanks!

[1/3] dt-bindings: vendor-prefixes: add OpenWrt
      commit: 80468ed25791e9c749cd12117111650a7f014928
[2/3] dt-bindings: arm64: dts: mediatek: Add OpenWrt One
      commit: 33e9d52fd89c8101a72fd95f648c8094ef4488a1
[3/3] arm64: dts: mediatek: Add OpenWrt One
      commit: c8770738f12ac3eced96dd7768be62b6c5018ed3

Cheers,
Angelo



