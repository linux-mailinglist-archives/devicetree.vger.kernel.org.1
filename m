Return-Path: <devicetree+bounces-41427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 242E2853A53
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 19:56:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4E7528B4C7
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 18:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCCCF10A2D;
	Tue, 13 Feb 2024 18:56:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73E410A1D
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 18:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707850561; cv=none; b=joak+GK5nbT5mOyE9TU5c17ctEd+hyLT7negSrStIVWEvvGR9OPj53XvpPKBeYliVn9F0G3JPcGl6FL/LGcXVc+GkJW++KOq9kCC3ZoLwMpJ9PIoaKPPTDw8gTDkjfDiHv5/jqLcb2AXIrLSMCrLT1wzeKhR/nyT/ONm0w30h0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707850561; c=relaxed/simple;
	bh=PaTXZwZDS1lF66mmHElO+4ULlv3v/f0KCGoODaWOcMU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tJ9umP+LmZFu7Adt4kYsK8nUXfQkuC10b/2jaNGmrbOoF0yv5AW82nYZFN/I1/XQa0e6McPtDp5llr1Zva6dYu6QHzOcgvUSD2AclJ1kXjnHq2ORKT1s8TAzYHeLunYdLtbP4ihWz5JE1CTdN+ztw99a9BrnhRYp3nLIfDyUW2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZxwC-00086B-1v; Tue, 13 Feb 2024 19:55:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	quic_jesszhan@quicinc.com,
	tzimmermann@suse.de,
	agx@sigxcpu.org,
	Chris Morgan <macromorgan@hotmail.com>,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	dri-devel@lists.freedesktop.org,
	robh+dt@kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	devicetree@vger.kernel.org,
	sam@ravnborg.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: (subset) [PATCH 0/7] Add Support for RK3566 Powkiddy RGB10MAX3
Date: Tue, 13 Feb 2024 19:55:20 +0100
Message-Id: <170785046231.3338864.13569806071230599737.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 12 Feb 2024 12:49:43 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RGB10MAX3 handheld gaming console.
> 
> [1] https://powkiddy.com/products/pre-sale-powkiddy-rgb10max3-handheld-game-console
> 
> Chris Morgan (7):
>   dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
>   drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
>   dt-bindings: display: Document ST7703 panel rotation
>   drm/panel: st7703: Add Panel Rotation Support
>   arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
>   dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
>   arm64: dts: rockchip: Add Powkiddy RGB10MAX3
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
      commit: 9913a60f318b6c88ea8385048952e3557464bb84
[2/7] drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
      commit: e0c732291250e205fb834881ad7ecf9ee3ffef45
[3/7] dt-bindings: display: Document ST7703 panel rotation
      commit: 20b18c2be4f3dcb5448ecc122484bef6c2852fdd
[4/7] drm/panel: st7703: Add Panel Rotation Support
      commit: 762195e5c26936b891fb54ba0183aa3ef366b41e

I've adapted the binding subjects to poin to the rocktech,jh057n00900
panel that gets changed and also dropped the one added newline as
requested by Guido.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

