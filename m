Return-Path: <devicetree+bounces-84730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 916BF92D4FF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C21241C20C3D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F8BF36AF8;
	Wed, 10 Jul 2024 15:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1xiXe8c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5EF10A09
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720625600; cv=none; b=N38MJMwgRhoXhBO5w1QuNaiR3mD/KEkaDLFRSOH5vEsuWRj2YU9ySwiL+5Rt3K/oAuNPavUIaEgiQVDAW3pi497JCrJrPUML2uW9iLNPqu3R1gmWVsGWoCqLeh9rC0DhnekS8W5uZ/WMpDntEI3y2gnFHNqoT17/oLnUPWAyzu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720625600; c=relaxed/simple;
	bh=zDVY8tB780k6z4UBCPdCtJgt9crXAab77/6Rj9QcuuM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I+tDCu5ROqzN+FAaLwLJ50v2ccafGBJdkRbCoUqR9Seer6CJvAFXdSs2yvZSt+qQLYuT4x4XCgBdstqrKGH9FUI5vVGyp8utNYVB3sKjfkc7zCBWf62yjU6+7/i/83nWLZYTybhTvPGACJymSDT+P6BzDFcF1KCeU8Q0DQhk4xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1xiXe8c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 105FBC32781;
	Wed, 10 Jul 2024 15:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720625599;
	bh=zDVY8tB780k6z4UBCPdCtJgt9crXAab77/6Rj9QcuuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G1xiXe8c6dikEOrQ6IdV0UJ2x0OhCKo3EqQPrKer8X1ZHe7UcBbAFXHEyVsXzk4rn
	 tebme7oVZk27Gy/21YNzWl0w6fE3YVnIE1WhtxyHj/p/ek3JF5P9SnJzD+FERUzYZf
	 lHIW0RfXO72ryZVjOM4sCQZCT9G0v3/sEB0/ktrZa0B3NbFKVk7Jyl176nKzSn7ZPB
	 9uqO4ICGlfAU1cf3lQ2jvir/hxviLP4ti20+Khfg1rcG3b7oobGyYWQHTryrDUiFn3
	 BoiUcml49KrL6Ed/ZJS/sdizx/4zOQU8FbrH9MeCSD7+gOC8ljETkmx+b/E881gt4N
	 iMFpEGOXI2Dlw==
Date: Wed, 10 Jul 2024 09:33:17 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	dri-devel@lists.freedesktop.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maxime Ripard <mripard@kernel.org>, kernel@dh-electronics.com,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Jonas Karlman <jonas@kwiboo.se>, Robert Foss <rfoss@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
Message-ID: <172062558439.3107707.14187355988690749078.robh@kernel.org>
References: <20240708150130.54484-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240708150130.54484-1-marex@denx.de>


On Mon, 08 Jul 2024 17:01:13 +0200, Marek Vasut wrote:
> Document default DP port preemphasis configurable via new DT property
> "toshiba,pre-emphasis". This is useful in case the DP link properties
> are known and starting link training from preemphasis setting of 0 dB
> is not useful. The preemphasis can be set separately for both DP lanes
> in range 0=0dB, 1=3.5dB, 2=6dB .
> 
> This is an endpoint property, not a port property, because the TC9595
> datasheet does mention that the DP might operate in some sort of split
> mode, where each DP lane is used to feed one display, so in that case
> there might be two endpoints.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: kernel@dh-electronics.com
> ---
> V2: - Fix the type to u8 array
>     - Fix the enum items to match what they represent
> V3: - Update commit message, expand on this being an endpoint property
> V4: - Fix ref: /schemas/graph.yaml#/$defs/port-base and add unevaluatedProperties
> ---
>  .../display/bridge/toshiba,tc358767.yaml      | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


