Return-Path: <devicetree+bounces-248709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2863FCD52FA
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B532530146C3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A60930F94B;
	Mon, 22 Dec 2025 08:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIknjdVb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4F030E0E5;
	Mon, 22 Dec 2025 08:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766393419; cv=none; b=h/6kEK5qgAegUeMKp+MZq6DEecVItFUHUg9tFC+xenzQSJkmKUVe3jIcBgxDqwVViIbXk1BLcf6xeWczWrwRcLR3WImNq9WKKI6ZdANWxcC+3hfmT8V8IvgDz+osFiCfJJP+iJr6ISOYcmnrq194oN7vkPzvS7yyzrfKxWuZ7o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766393419; c=relaxed/simple;
	bh=/bsBl2MzAkIZMLL18XUVSb6jEQQ+/TaQ9ObI+wn75r0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p6liHuyIHGC8QrmRFTc02cc8d8w8zI1R1LcLnrk8MFSKAREmJoHuiRjk1nLwiKTrYGFTFOisZNfjth4DjCuSjiTJ12LkKIZpDOlF0rrpigvgayHmtGY/tUdAxoueSujS2KDELpNZFOKdGb0Fa7ewXzScieH/v4XOpwu9JpnKfyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIknjdVb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B0D8C116D0;
	Mon, 22 Dec 2025 08:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766393418;
	bh=/bsBl2MzAkIZMLL18XUVSb6jEQQ+/TaQ9ObI+wn75r0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OIknjdVbIXSCxLkd8+DonR0h/9ggW6yigkD4k54tG3YeDJDOSD8ogdgd/j1pm6Nux
	 +ItFpJSa0BYUos3Cj5i63RkoCUnd83P9pml3uGWzHz4uFFD7w4wLPftBDYgg6k1v72
	 a3E/kDiU+96EX8xnTFPZF2DRwLrqVDvZXH3uIQeY8Wv/qxR5vU8SDXzACnePSOn3Pd
	 +Gd14Er3/YVg4Zir5Z522AKbQErP/Hg5BIQ2711THUj9W0LgA0qN6CEo1RJLcp0R9/
	 qvjeuPFpYxRYoRRbseXNKgXWvBx/N+zXrPwTtBkEIiI+hu5K2CYoAsrjkMI4dXbPY/
	 5u0kD1OrAYexQ==
Date: Mon, 22 Dec 2025 09:50:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pet Weng <pet.weng@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Hermes Wu <hermes.Wu@ite.com.tw>, Kenneth Hung <kenneth.Hung@ite.com.tw>, 
	Pin-yen Lin <treapking@google.com>
Subject: Re: [PATCH v5 1/3] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Message-ID: <20251222-melodic-lemming-of-bliss-7a4bbb@quoll>
References: <20251222-it61620-0714-v5-0-afb6479ad3ca@ite.com.tw>
 <20251222-it61620-0714-v5-1-afb6479ad3ca@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251222-it61620-0714-v5-1-afb6479ad3ca@ite.com.tw>

On Mon, Dec 22, 2025 at 11:10:12AM +0800, Pet Weng wrote:
> This chip receives MIPI DSI input and outputs HDMI, and is commonly
> connected to SoCs via I2C and DSI.
> 
> Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
> ---
>  .../bindings/display/bridge/ite,it61620.yaml       | 142 +++++++++++++++++++++
>  1 file changed, 142 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


