Return-Path: <devicetree+bounces-134270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B719FD1A1
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:54:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5C7918830B5
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 07:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EA6145B3E;
	Fri, 27 Dec 2024 07:54:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8012913BC39;
	Fri, 27 Dec 2024 07:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735286041; cv=none; b=EyttpfAvq9nN6sscCpdnn9Bg62jlIf1FZhNi/HjCoZwzx2Sf4Eq1zcaNEcv89pPqEVHK8vaC8fCAIP4Lazo8Mf/G2dDwb7aUw7FbAp6ClkQGOhKmsnP/lzXVfBQNL8pgDiqx7Jf9m6vquO8q1BdxOY/PP/iL7PILuSpkQefvlm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735286041; c=relaxed/simple;
	bh=mH8/oQPJMfUvZk1dXQ7U+eqyCYSa45Oo7LIFidIbSqE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X5DiWaT/SYXbS/4Fyb4Dy01ynusxrq64I3Hm25544bBxtd6hhbi0tt99fubCFmlolwBj6wKwkdgzRVoLq5nPDT2behFwRS5Gv2b0FL9gruGKOgt7LC2ctz7FEYWXk26bNmDig4i+VPAK3MbKzxyU+txob4so55t/0DHluRB8udg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C94FC4CED0;
	Fri, 27 Dec 2024 07:54:00 +0000 (UTC)
Date: Fri, 27 Dec 2024 08:53:57 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 10/17] dt-bindings: display: rockchip: analogix-dp:
 Add support to get panel from the DP AUX bus
Message-ID: <uwzrv4jgqqx6ge3lh3if37qvb6w7ubkusohunbn7ukmq5tt6du@e5fwoik4tex2>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-11-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-11-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:06PM +0800, Damon Ding wrote:
> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
> it is a good way to get panel through the DP AUX bus.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> Changes in v4:
> - Move the dt-bindings commit before related driver commits


Changelog does not go to commit msg.

Please run scripts/checkpatch.pl and fix reported warnings. After that,
run also and (probably) fix more warnings. Some warnings can be
ignored, especially from --strict run, but the code here looks like it
needs a fix. Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof


