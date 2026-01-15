Return-Path: <devicetree+bounces-255715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC6AD26F66
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B14E310B665
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 022D03D1CB7;
	Thu, 15 Jan 2026 17:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiNZPDv0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38DA3C197D;
	Thu, 15 Jan 2026 17:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768498017; cv=none; b=oUeOqs5T5NZbyIxn0XTuKUJTPuLchYJK5N+xvneJWnGyaspKghk9zScsuyPmMhPrJ2hKAvfWrT6iVIGbbLv3H1G+CT+qHHTQVRwHqRQfhXk4TfYB1uJ/aJ2so2Hfk6he09o0g44Ke/gaZ5PKF3+vcYZBHgjq35k7iGv5XR1/dr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768498017; c=relaxed/simple;
	bh=rxtUsKJLIbTkjOuK4B8HWZ1hvRnwTbMEmg8MB28cTn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YQbSZVP6UboecJ+UHHYKcfQLvA71kY95lwBD918cznfAOsTZ1qURXlShAhPX/FgWmwgQT76bsHDPu745PjTETYMMYSLt0GbXEi91VwMwiilmO/sIXNwNWoCmnRve3xDcXPR5/nVl/xCXgNPd4UZgHPrJFZIi4z1BnScEncPjAd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiNZPDv0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77F35C16AAE;
	Thu, 15 Jan 2026 17:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768498017;
	bh=rxtUsKJLIbTkjOuK4B8HWZ1hvRnwTbMEmg8MB28cTn8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OiNZPDv08Wo2MHuqzRQxIOzTh/YJHkmwfmg5fzLuEql2snf+kRxZ2IzmjtGWloF9e
	 UmL1j5uSRatEjGHhYEWBgF4HCixlAu3SDZ623gVAza6X9F9Hz4ocO29Qu+C0DhVXA8
	 Q1aoxsywIfB8gsU9b9TS0AXEUlBhZQCDWGNvGAOfjSbE4hFrkLIoR06hqnTDupyuMx
	 a0EmXuT5x7495meaaNJGeOYyX1GeJ7IXRA8Os7N3KLH+iPIx3immaXhrAtFXyTzoKg
	 7JfQcdazBC9oY/CU0RsXDP2G0C4E6xL54Rkm7TCcpGlrcPjR2hqxnz/9uRgMlWE65v
	 Afe/ednTHX82A==
Date: Thu, 15 Jan 2026 11:26:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Val Packett <val@packett.cool>
Cc: Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	David Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	linux-kernel@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/5] dt-bindings: display: bridge: simple: document the
 Algoltek AG6311 DP-to-HDMI bridge
Message-ID: <176849801599.918454.4274355104031576041.robh@kernel.org>
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-4-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111085726.634091-4-val@packett.cool>


On Sun, 11 Jan 2026 05:35:10 -0300, Val Packett wrote:
> The Algoltek AG6311 is a transparent DisplayPort to HDMI bridge.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


