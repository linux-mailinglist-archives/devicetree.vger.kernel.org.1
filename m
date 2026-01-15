Return-Path: <devicetree+bounces-255644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4DED2524A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:04:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D5DF301411A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCD19379981;
	Thu, 15 Jan 2026 14:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn8Wmsp3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996D434E75D;
	Thu, 15 Jan 2026 14:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489012; cv=none; b=LrxZ2c8IRFYzDlb4jvKFF61Mi0d8+1nq8D7epRMRiBYZIrbuS7sCjwcKPS04skjMEeV1MzpLL9AJYixmA2DkSdxgf467auhJFN0+8/TaeIo9IIy0fJLnZqL1sYglltdQr86POwvgeqWKPjP35bm46u6AN2SDGxvKVl9LYdP6aR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489012; c=relaxed/simple;
	bh=pomdXiTLxr/2XtCrCaKVDuxPsXlBYLkeUhFF6+dFURk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BpRzqEReZ1vTedw8Gy4f3DLY/c3oAi+udQ6GYnorPj0bPICYz/8EnTVgLLLzP1mTBlaK8vZ4Qobnu+xSlPUGEdBs1IjoCgb6XWWBnOONSHzb2QLML39PsIU6IH1U87Fe48b6NsRuoH6XBlTRlx1xJVk/AQQvtoEaJzwioNwj92I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn8Wmsp3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E586C16AAE;
	Thu, 15 Jan 2026 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768489012;
	bh=pomdXiTLxr/2XtCrCaKVDuxPsXlBYLkeUhFF6+dFURk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pn8Wmsp3qVeFKqxCX7WF6/ajJkpXAkXD9YotsRGfQPpRnaw6pPqdBqDdIkNNU0XB0
	 PFv/mfXYIRCir3udnL7Qe7iHFrey2kLqxZdmCT5WHpbQYSjRUsCnajC8yRcBcYN2Eb
	 Wmksr0LnFlQdUaDQ978WT7DMewbQFO9bbGnGAxKJoszt7x8BOnwCpPk3ENYbU015Ka
	 n/6E3tw/UxtCNdmkBEwBzctfnaCkRxPN4eXXp5PNzNj7GhN+n60PexcQqHotlNnASS
	 v047wEdFVHFF5y3kKtBzFN8Y6TPNeCYxLRNJg/071ZK5G/g/sObCeDqbCL45HQypBr
	 heLsXkE95UwwQ==
Date: Thu, 15 Jan 2026 08:56:51 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Simona Vetter <simona@ffwll.ch>, Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Subject: Re: [PATCH] dt-bindings: display: bridge: tc358867: mark port 0 and
 1 configuration as valid
Message-ID: <176848900568.627313.556775837566927230.robh@kernel.org>
References: <20260107213546.505137-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107213546.505137-1-marex@nabladev.com>


On Wed, 07 Jan 2026 22:35:21 +0100, Marek Vasut wrote:
> Current binding document enforces presence of either port@0 (DSI in) or
> port@1 (DPI IN/OUT), with port@2 (DP out) being optional. This bridge is
> capable of DSI->DP, DPI->DP and DPI->DP, it is therefore perfectly valid
> to have both port@0 and port@1 described in the DT, because this is fairy
> standard DPI->DP configuration of this bridge. Replace oneOf with anyOf
> to cover this configuration.
> 
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---
> Cc: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


