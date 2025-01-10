Return-Path: <devicetree+bounces-137555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED90EA096FF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6542166D6B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7416D212D7F;
	Fri, 10 Jan 2025 16:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ors2iS9g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BECE212D74;
	Fri, 10 Jan 2025 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736525844; cv=none; b=XVnIYeyDAOrtYZgMuPb8bx4oE+zTQXhbkzrpOeFocD3h0mJbTG8Z+O7ptmOBrfXpn43kk704hxzqjW8+v0YpfnKaWMxsa2cdwMC8RZjRsx35PJV+X8IkB8F6uZrfNpPhvlqIWbUjzsvTebgAd4UlTTkkYwWOpq/T4lI/w6fNmFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736525844; c=relaxed/simple;
	bh=YvbumirxWILgmvy+inCR6UIp2Kf7DKZwj/fe/ZekRJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oZBqtaWSOFfJkKYgBaHRdUFv3AM7Tj9hRIeOtVihfFjrP08uLANBmOgSwMnf+mDiM6Z4TvpxmHuuN9HYBACVKcpiyEhBKExD97dsptSHPxzqTdHoZV4dif1XMnP2d1Nr01q2aGRvbpkF5sWnwD8j5aWUuln+4X9E/6SqDLHMWsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ors2iS9g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F559C4CEE1;
	Fri, 10 Jan 2025 16:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736525843;
	bh=YvbumirxWILgmvy+inCR6UIp2Kf7DKZwj/fe/ZekRJk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ors2iS9gsIACRja2hNd4mn1l82WgMyk8N7wsJpxIEDc/pbM14ZjDZQbBYkm8enK+L
	 n2R9IX06fpSVI3Iu8ak9mKNShEVOS8CVvIdm0e9OtLlMw/FutakI3BZCrdC+hR8QbL
	 XnOnLfZ6ljtERPdNfw9N613GBZrobS1tprB7UaSzw1n5mxDrgUULsc19JXqQaq3Sr2
	 ShFhqWyTKiX8T8hVeoXcND6LiiEAvNgIY7TLvr5rCL2W6IBtp3zl2qf2u7fV1+dVoT
	 4Exkv+brGTK6+CZ2pUR3SS/k3NMe0XkkqDTRbWE1f6iiz1cyiYxyW9rNY+z90WP4Lx
	 8StihB6ryZmdg==
Date: Fri, 10 Jan 2025 10:17:22 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>,
	kernel@pengutronix.de, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add DataImage
 FG080016DNCWAG03 compatible string
Message-ID: <173652584238.2975296.8031081380735324108.robh@kernel.org>
References: <20250109-panel-dataimage_fg080016dncwag-v1-0-0465603f6669@pengutronix.de>
 <20250109-panel-dataimage_fg080016dncwag-v1-1-0465603f6669@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-panel-dataimage_fg080016dncwag-v1-1-0465603f6669@pengutronix.de>


On Thu, 09 Jan 2025 12:34:57 +0100, Jonas Rebmann wrote:
> Add DataImage FG080016DNCWAG03 8" 640x480 TFT LCD panel compatible
> string.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


