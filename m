Return-Path: <devicetree+bounces-23747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F3080C3E7
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81CC51F20FA4
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46931210E4;
	Mon, 11 Dec 2023 09:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKjoJBho"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258E1210E3
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 09:02:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72055C433C9;
	Mon, 11 Dec 2023 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702285320;
	bh=3MIDGMg0DaLWUv6RyZ5Wp/wkaZERzjzt0+cUWZ37u4Y=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=fKjoJBhouqj6xZ8DXecBW6mjCEZcnD2IjP6ySCfwfwk+rjtps7mGto1WTW3r+PnUC
	 A419caE2Z7j2TO/01gKp4dHW77oxRuzEwD1g/PpVIP96PpZkNoVXw7VgJvT7dLGWMk
	 Mv/3E4SBSP1eG28ABNoFpAatuFmDICUrE94ZcA8ZzzZIaMylsQQeZFIDPmO524WeW7
	 kRwHPGwIwBscOWsW/hyIep2S6cAuz+FJKUYkLD6dRSu+QuP9+gK5tLxvS34KS5SUJQ
	 Pt+1yUxgaEkeFHIOQpJ7qtRpYIMzdSNdJTyrClyFiJ8zCq2EKRjQd4qUEDV/LrcxAB
	 N9wnodkuczA1Q==
Message-ID: <5fe1989eabc5b07faa4d8cafec29a61c@kernel.org>
Date: Mon, 11 Dec 2023 09:01:56 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Marek Vasut" <marex@denx.de>
Subject: Re: [PATCH v2 2/2] drm/panel: simple: Add AUO G156HAN04.0 LVDS
 display support
In-Reply-To: <20231209063714.1381913-2-marex@denx.de>
References: <20231209063714.1381913-2-marex@denx.de>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, "Conor
 Dooley" <conor+dt@kernel.org>, "Daniel Vetter" <daniel@ffwll.ch>, "David
 Airlie" <airlied@gmail.com>, "Elmar Albert" <ealbert@data-modul.com>, "Jessica
 Zhang" <quic_jesszhan@quicinc.com>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Liu
 Ying" <victor.liu@nxp.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime
 Ripard" <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Sam Ravnborg" <sam@ravnborg.org>, "Thierry
 Reding" <thierry.reding@gmail.com>, "Thomas Zimmermann" <tzimmermann@suse.de>
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

On Sat, 9 Dec 2023 07:37:00 +0100, Marek Vasut wrote:
> From: Elmar Albert <ealbert@data-modul.com>
> 
> G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
> a TFT LCD panel, a driver circuit, and LED backlight system. The screen
> format is intended to support the 16:9 FHD, 1920(H) x 1080(V) screen
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

