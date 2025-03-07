Return-Path: <devicetree+bounces-155523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D88A57394
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 22:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08AB0178B88
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 21:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC33F258CCD;
	Fri,  7 Mar 2025 21:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnHaMZ6z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73322586DA
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 21:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741382665; cv=none; b=OIFaWy/6As0Q4R74Kp2dChLog1xW1zcIFJMtg9ct1bfpj6pNJl8KXOozftgQIJwtgQ1VAhXrfl/k59VPR8ksGM+Ko0eilz2zXMAyMslQ+xusz5bW7tm1hLMR1R0gvNXPET3NoneUNg57AAhraNOFjg6m/XmmMMXSzyi4qRMqEQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741382665; c=relaxed/simple;
	bh=Op08E3EJ3jq2CjneWJsJoQaPOY3AxoOhvzYkKdG27Oo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JOM+GhQgTkuTGWv9hxluaavcLXf+LVuT4C1jDg4jnThlebCAffC7AE5ykJpGsaeoKFuI+T/QlglnNHcl9kMdcM0te4LuGKGj6BKG4Y1QcxXP8Ex82HOF/epPouzAbNnhTIglqMH+uuyhgY10gWm5YSHSsmRjSHlq5+kbS5lQljs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnHaMZ6z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA8DBC4CED1;
	Fri,  7 Mar 2025 21:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741382665;
	bh=Op08E3EJ3jq2CjneWJsJoQaPOY3AxoOhvzYkKdG27Oo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JnHaMZ6zq7F5KQ4LSCPCgRLg2uF26Myhk/oh0YiVL2MU5TwN2RK0kG50XLCfWyIDO
	 8+V4T9AiDVqPx689Nes/Eg1by9lPkZIM23B8VczAW80cTLhVfe8+FPAWhMP3I0EI4E
	 9nmA03QVvadYXfGDG/A0QzbJ0YQXfSiKvzkTTge+p92VjdmEMPQ0oRJrv1FaL29TiS
	 z7dUNRV6vEE8QrPAO8qK/dFDdLsJJjBfMSbyhCgY/PU8xEbJfChrOweOVsvlFT26pO
	 1Tw9aiuTGy0lj5dYSJkeRp8+BDgkM/3JAMcmKZ5RHx+opS7RUnipWEl14I5++ujRxQ
	 WTAFFQgBu1SLg==
Date: Fri, 7 Mar 2025 15:24:23 -0600
From: Rob Herring <robh@kernel.org>
To: "A. Zini" <alessandro.zini@siemens.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
	Andrej Picej <andrej.picej@norik.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/2] Introduce h/vsync-disable properties for ti-sn65dsi83
Message-ID: <20250307212423.GA630904-robh@kernel.org>
References: <20250306091133.46888-1-alessandro.zini@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306091133.46888-1-alessandro.zini@siemens.com>

On Thu, Mar 06, 2025 at 10:11:31AM +0100, A. Zini wrote:
> From: Alessandro Zini <alessandro.zini@siemens.com>
> 
> This patch series adds support for disabling the generation of h/vsync signals
> on the ti-sn65dsi83 bridge.
> 
> This is required on some panels which are driven in DE-only mode but do not
> ignore sync packets, and instead require them to be low-voltage level or ground.
> 
> A discussion (1) on TI's E2E forum confirms that this may be required for some
> panels.

If this is a property of the panel then it should be in the panel's 
endpoint or implicit with implicit being preferred. It should not be 
defined in some bridge binding.

Rob

