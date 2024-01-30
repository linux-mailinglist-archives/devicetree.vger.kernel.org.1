Return-Path: <devicetree+bounces-36843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8037C842D74
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B38221C20FE0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F212F71B24;
	Tue, 30 Jan 2024 19:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huW+FrgG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB536995A;
	Tue, 30 Jan 2024 19:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706644799; cv=none; b=XR7e5QiHZOBB6IIBr7Sd1ai0Erjf2UVoFq6z3fnZNHFlly4f1gQGw+lYDwZijIY708YFqjtds8HLRWbz8c3zPN7sC8HoinwZ+Nl3RIbtOGGemvnwhkSMFlSh23weO+nl6X2lertvy1+x+YWHbDoB23pxX9n+J+DyLXiRp0GdilY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706644799; c=relaxed/simple;
	bh=DLB6R95v5Kld/5URKjV4Xvg/XJ4NDDV4ZCrgbS55T18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R4/562kLIPQfUTG2kfEwAPr4Uvi7a5Guw+eZ7LIIf+jG1P4z3WYXjkrhu6knEtSfnrDECi6iReDubIGm4ugD0qRO61UWmdVVHibb7OneG+8UwWZJrHEi4VFZuXMQRu/rhwywNjyveTzDYGU5C/KnmR8xdYMm2xS4Tms4nj0E/cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huW+FrgG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0755BC433F1;
	Tue, 30 Jan 2024 19:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706644799;
	bh=DLB6R95v5Kld/5URKjV4Xvg/XJ4NDDV4ZCrgbS55T18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=huW+FrgGPDvXzbNGsyv0QIZyqg7hkmu3FC/PzcRaoEkDcU7BFV1gtrNU9JbHRunLo
	 SLMoQUsuRFLffpRS22+RR1aBpDuHqvpnZIgdGgAasZ+gD9JMdpGrwvYiCGvSQlTKpw
	 vuLGPIOqyYIOK4HzxK9KN0oyeyfPfGKORXeKmK4w+Jr19rc0G/2M0Q929Mewv35LtQ
	 eJw8fmORITKtHiBCl0Zv+rp1iUnXLeWoB3nIKdodS3UXvr6mwLTUFjBQMdAnLVIYoA
	 Y5wLeZaBL73vm6aI37k27nEz1LZtCXmig+aH8B2tVRoRWc+xKIG82PI74oCVPFQzSg
	 SZ93ue2gSrtEQ==
Date: Tue, 30 Jan 2024 13:59:56 -0600
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Robert Foss <rfoss@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: nxp,tda998x: Fix 'audio-ports'
 constraints
Message-ID: <170664479278.2235793.18378217102274241986.robh@kernel.org>
References: <20240122204959.1665970-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122204959.1665970-1-robh@kernel.org>


On Mon, 22 Jan 2024 14:49:58 -0600, Rob Herring wrote:
> The constraints for 'audio-ports' don't match the description. There can
> be 1 or 2 DAI entries and each entry is exactly 2 values. Also, the
> values' sizes are 32-bits, not 8-bits. Move the size constraints to the
> outer dimension (number of DAIs) and add constraints on inner array
> values.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/display/bridge/nxp,tda998x.yaml    | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Applied, thanks!


