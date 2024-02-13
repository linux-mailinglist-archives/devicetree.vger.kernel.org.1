Return-Path: <devicetree+bounces-41433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A75853AAD
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 20:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1C8D1F24800
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 19:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58DA1E49E;
	Tue, 13 Feb 2024 19:16:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DED1D69C
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 19:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707851799; cv=none; b=Z5DpzU9vlFAdjkjxtBYBwMLsB9dh8z2jZQpY4IoUWmwXUw1amwUR+zAUnPMEZSUC6zoQ2quKncQZYsb0W/ZPVVO3bJln6BoAPJXjBI5e34fs3+Dvor1VcmCg4nWi7n3AQtv567Md7CIyRNy1r0/SIYeHJ4qEokGx2czAbSFhMYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707851799; c=relaxed/simple;
	bh=SNpNk50fFazFz/73bCg1XaywSYcekgXdEAqnGgu0Iyk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hOciwB5khJOWvPLfq6St3pc53Ob0ohEPMmCxINOwTMxamgrpwdcxDzi2kL5zCBTxizGWv+yDgBWk71QgzE76u3qeVhPy/XlSa2JGwNWy8gQxE0Pkc1bLI633UyvnhSSUqkv0zsYkSyOt7uikJM8HJ/s3ppSBmvfPyuuHSlvFhoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGW-0008FY-Mi; Tue, 13 Feb 2024 20:16:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	sam@ravnborg.org,
	tzimmermann@suse.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	kernel@puri.sm,
	quic_jesszhan@quicinc.com,
	conor+dt@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	megi@xff.cz,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	neil.armstrong@linaro.org,
	mripard@kernel.org,
	agx@sigxcpu.org
Subject: Re: (subset) [PATCH 0/7] Add Support for RK3566 Powkiddy RGB10MAX3
Date: Tue, 13 Feb 2024 20:16:20 +0100
Message-Id: <170785172856.3347621.11895258422824672515.b4-ty@sntech.de>
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

[5/7] arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
      commit: 039a03c377d64ec832a8fb1b8f8b5badd404989f
[6/7] dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
      commit: fbe7823623a8c02759afdfb521709f4fa216849a
[7/7] arm64: dts: rockchip: Add Powkiddy RGB10MAX3
      commit: 4b325c0d4f539b553a4529f16476f08757779293

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

