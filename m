Return-Path: <devicetree+bounces-132631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 508969F7A6F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A64B1893EEB
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C313222D6C;
	Thu, 19 Dec 2024 11:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="n3ws50JJ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BE318CBFC;
	Thu, 19 Dec 2024 11:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734608049; cv=none; b=jud793fJh/THgHUqOej2xO6qg90Kh+lmIVrHg/73hTzlC4E5vgYfdfOuOYmaFzaNODVOlkOA91ksKaSeLduiNFjmzRqGpy1PPjBrMSsJCnSSIbGbq3/0bWGsUoRklhOnxqINMsGTAPmrLa1tOttb6az5Utw1bdOK1BK9ehIZkc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734608049; c=relaxed/simple;
	bh=E8Pz3cZSaSQzxDv8Kyi3Nwu9usVT/jxkhew+Y65RPhw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EqT4aZ55tevPazpeGpLvNM2MR1V6XxpF+wStIOaW1QF6Lxo/TD1hMfA2omv5sZwiY9Sej6udrvkDQiBIGo6tDRMOufLtSA4CHF1Zf4Pqx+r0UYovTL0uBoO6s5FbbQVqMZAy0AHpP9Zevgotd307qbY1u8e8/wj8AaigtcD/hrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=n3ws50JJ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734608045;
	bh=E8Pz3cZSaSQzxDv8Kyi3Nwu9usVT/jxkhew+Y65RPhw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=n3ws50JJm3JpJ9qmNc0ngym/Kd5Vlw0RQIEzK9l6vBKcZyJUg3gXSjnKLusrxmyzJ
	 vmYlz2MZteuP8Wnwi7y+Gg0FReQeTj4hMehP79f8SCwxBGr4VRRPxu4+/e45FWI+CH
	 JiU7oN/q/AHxnKRVIBWbDUErRh+jbtShVuxSFGCdScjfsZVyhAcfY1xqoWXs/uo+Xl
	 kbST+iYPM/zi5pXjsmyfzIW2UyWxLRymDa5cYJLBYcvYXGvmdCmknOS1oHJXVspaY4
	 mdNjs+e71QSkurs5jWJp3sMLF1fZ/felyoTyeYAKiMOvbTiQa/Su3ytXrY3iAIg2vD
	 k/gNEMNN5qJag==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 21EAA17E3628;
	Thu, 19 Dec 2024 12:34:05 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, wenst@chromium.org, hsinyi@chromium.org, 
 sean.wang@mediatek.com, dianders@google.com, 
 Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20241212062046.22509-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241212062046.22509-1-xiazhengqiao@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v5 0/4] arm64: dts: mediatek: Add MT8186 Chinchou
Message-Id: <173460804505.49444.13450128112085661822.b4-ty@collabora.com>
Date: Thu, 19 Dec 2024 12:34:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Thu, 12 Dec 2024 14:20:42 +0800, Zhengqiao Xia wrote:
> This is v5 of the MT8186 Chromebook device tree series to support
> MT8186 chinchou platform. It is based on the "corsola" design.
> It includes chinchou and chinchou360, including LTE, stylus,
> touchscreen combinations.
> 
> Changes in v5:
> - move sku17 here to keep alphabetical order.
> - do not use the MTK_DRIVE_xxx definitions.
> - Modify exton to extcon
> - Link to v4: https://patchwork.kernel.org/project/linux-arm-kernel/cover/20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com/
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[1/4] dt-bindings: arm: mediatek: Add MT8186 Chinchou Chromebook
      (no commit info)
[2/4] arm64: dts: mediatek: Add MT8186 Chinchou Chromebooks
      (no commit info)
[3/4] arm64: dts: mediatek: Add extcon node for DP bridge
      (no commit info)
[4/4] arm64: dts: mediatek: Modify audio codec name for pmic
      (no commit info)

Cheers,
Angelo



