Return-Path: <devicetree+bounces-72983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4A28FDA3C
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 01:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F07F1C21870
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 23:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F0815FA6E;
	Wed,  5 Jun 2024 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnbQrubz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38236146599
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717629453; cv=none; b=pgGSDt+M1cWcdD3BhiraaShDL66qwxfaWNHr1W9Epj8/hNPRhnUivWI2bLXdE/1DhkzaVqNM0cws5uACww8iwUCUsWhY/wgo8AJHNj543IskK0TjiRIxA5rHnN2JYs2rpzf+0o2co4DZi5QlbvG9HiLStaxUYueTama1s4SFX9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717629453; c=relaxed/simple;
	bh=lnKIPd9m2BvNZ7dvrm5wJgabwj5He/raDitj+DX7stM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O0OHrj8VbosfhJjwbYTNhYzHytQcEMIDj//LOmh5Ili0vQ9yMgKjNfJgPxzC71IKpZwdQo5X693ZYAaz6zRvt5RuWkvTBsuttPPoHoMTwVglEKqWgCgIYfUDToUqjm0BDgU1VFeFkCZGhOrZDErz0fW34W0WuctAwEAK3WF17LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnbQrubz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6694C2BD11;
	Wed,  5 Jun 2024 23:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717629453;
	bh=lnKIPd9m2BvNZ7dvrm5wJgabwj5He/raDitj+DX7stM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WnbQrubzRxJ+nP15j+mEiTH/563m9To3n2zH3hrYhx5hYooX0CRNr2O0fYxpIEzXw
	 hLCY/hLWR3413UGw2LO7rZzbVK5MRTKUUEZycf7SPmle3kBVLPDCzKbyNsW3MjHglJ
	 1P5T72m2evygJCK8LtAAIex+HF/dVtFP8OYDw8gQuP2wYkZbzLeGpkxffhzU4OqO4z
	 NSzz7Ch9pmowZ705IuhoMZ3oqqZmTYs+23Tzj1wO6j3lX4LMFnpEG+gve9jL8cZDpB
	 ad8Ha1mvFzBRtyVKfPKet9fk6/sC4/CI2/B/EUKshiA8Jr2tEkox/QdZYb9AoX+Kg3
	 3Wwp9rflvh8MA==
Date: Wed, 5 Jun 2024 17:17:28 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>, kernel@dh-electronics.com,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	dri-devel@lists.freedesktop.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] dt-bindings: display: bridge: tc358767: Keep enum sorted
Message-ID: <171762944380.3344258.9847218157696028022.robh@kernel.org>
References: <20240531203031.277334-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531203031.277334-1-marex@denx.de>


On Fri, 31 May 2024 22:30:18 +0200, Marek Vasut wrote:
> Keep the list sorted numerically. No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
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
>  .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


