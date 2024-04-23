Return-Path: <devicetree+bounces-61944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 093248AEB3E
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3ADE71C21C8A
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 15:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0FBF13BAF5;
	Tue, 23 Apr 2024 15:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/v0Pqjy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0EE17BA8
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 15:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713886705; cv=none; b=eSILunwiFmTkTPcqVNwXV9hHIiSFmFP+O6VYl1j3BCGlfT0v4E+ZvRS1DDeG+7ejtODqGqX1ouxv6Y4sjtUKaYhhRqIrTo19HpNiaJF0TVPvQkvDTg8iCEYXc2Mg3+yoiWwdiczM5tYUzK0NTI8cvZmj734cyLoERCRfwMKHCZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713886705; c=relaxed/simple;
	bh=MpUeJX8ffb4u+FjT+llCRbfgNL5taVVPGqoxL2U9JmI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=G/di6+k+WjNQMALQyRfqmLY118u1rs/QEfnmZqJilSPG6debFaTVgHutsIBmYtj3ERFQTDLEKlBDI4ZQRMYSmTxtGe6Gg+6hQ/D58ni3AOrJhQqZvkoYHcWh9fOB7F3KKsBrdmdwUt9D4iNrGLBfo7cbMIZXdW+wTChEsmlMaeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/v0Pqjy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 659DDC2BD10;
	Tue, 23 Apr 2024 15:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713886705;
	bh=MpUeJX8ffb4u+FjT+llCRbfgNL5taVVPGqoxL2U9JmI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q/v0PqjyczJtqEgG+JUcLV84YoFgLJidGcK4RsMz/RmACT6tmbL7BgySrfnPXo/yI
	 Gu8UI+2a/rjJi221QPl60E7DW//v+o1CHj5xs/ZoUl48oBR0TsyK0kmpBQEUlLFCpe
	 U0wpDqE+KCA3vFLMmRUlsEfTvIuGbslV1Xds9LNGb2ZPMd5BFrf2AUSjRpMCqWrb31
	 N71IruaSA3LCyy5XHKNkx4RAevELxRiNPGf7bNbFB4VFEUXZXQ6dmYBAOzsn2WlsfQ
	 K/M0Igsry36sb+dE2FHPvmEjdsyJMj6DsPNi1/m3WDaMgvAgBf1mMM/GK9JmVkXmfa
	 2yEkDr8/16DaA==
From: Robert Foss <rfoss@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>,
	Rob Herring <robh+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Tony Lindgren <tony@atomide.com>,
	Simha BN <simhavcs@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Robert Foss <rfoss@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 00/10] Improvments for tc358775 with support for tc358765
Date: Tue, 23 Apr 2024 17:38:14 +0200
Message-ID: <171388665771.1455301.34959660424269300.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240225062008.33191-1-tony@atomide.com>
References: <20240225062008.33191-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 25 Feb 2024 08:19:29 +0200, Tony Lindgren wrote:
> Here are v5 patches to improve tc358775 driver and add support for
> tc358765.
> 
> Regards,
> 
> Tony
> 
> [...]

Thanks for the really nice series, sorry about the delay in applying it.

Applied, thanks!

[01/10] dt-bindings: display: bridge: tc358775: make stby gpio optional
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=51debb6d4a21
[02/10] dt-bindings: display: bridge: tc358775: Add data-lanes
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=497f0a1bdc06
[03/10] dt-bindings: display: bridge: tc358775: Add support for tc358765
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=efcfac3e8e37
[04/10] drm/bridge: tc358775: fix support for jeida-18 and jeida-24
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=30ea09a182cb
[05/10] drm/bridge: tc358775: make standby GPIO optional
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=733daaebe250
[06/10] drm/bridge: tc358775: Get bridge data lanes instead of the DSI host lanes
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=005102727d9e
[07/10] drm/bridge: tc358775: Add burst and low-power modes
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a4ed72e85c46
[08/10] drm/bridge: tc358775: Enable pre_enable_prev_first flag
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e2ee8e82cf42
[09/10] drm/bridge: tc358775: Add support for tc358765
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ce2196dbba66
[10/10] drm/bridge: tc358775: Configure hs_rate and lp_rate
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ec710af54a1c



Rob


