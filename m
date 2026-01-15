Return-Path: <devicetree+bounces-255767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B07B9D28417
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A828730215E4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BD9330FC19;
	Thu, 15 Jan 2026 19:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsCBjpuj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE243112B7;
	Thu, 15 Jan 2026 19:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768506918; cv=none; b=OnHTwvb0/qWoQtb19G5G0U0m0COyUMYgr67y0DxG9wqNDJOd67ou8TCnCoyiyWj5fXUdddeTnu4N3b4Zf7zarKmsLSaUjAk8pdQFA78KLBdUz21dw+YViA2cHn4rkZPUdcuAZ0VQYY/+A01Bwwnc/8gqPf82DxqVXFl3IWEjtgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768506918; c=relaxed/simple;
	bh=XZncQ0dUakJFPgRU9hpqVTYJ5hxovVt8hAheLyZxs+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mi1pWFKM1RmDeaX+wfU0IK2t/be+C1ZLjYWFK9/5KK/DPN68eTzbMogmzSJDf1TOLSF1ynla5q0ABLaKcn1MGqJOMMPUHLyyN277g5E6mLU6LlJGxypq+Day7ukT64fuGfASHEMpRL1lzzAG13lgH7wAYL4Tpo7QCt5zgQ2IDZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsCBjpuj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F813C116D0;
	Thu, 15 Jan 2026 19:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768506918;
	bh=XZncQ0dUakJFPgRU9hpqVTYJ5hxovVt8hAheLyZxs+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rsCBjpujQ0YkwUNZT88VQxZTeJKv0aj3p6U3UzNLEvhie4w7hacgHCrHaNtkv1GWk
	 ibyOtVSI7ZS8sav/Zl+nDpW4t52WYtsweyhS+Pnrb72qMiN506D3b5OfKEjAlYRkzx
	 qFGtwvFqDURx1FZ2dkRZ83IN7iqhFe2Jpfv/o7bBBzoy6mTRFCRH7VoUv1HEpBD+eV
	 BwrWSoyL2BTOoWzF0a8lOTGEuVdwZ4zzEzUkma+mSdwRilbcs3U+IZhzruOI/I7D4a
	 rHaBGN/XveBAcXQgZRP1Eq7FHi5DPcSWMQiz2S56uY9YdVItSYPsxnmTzQBc130fnS
	 5uDMv1RCczQqA==
Date: Thu, 15 Jan 2026 13:55:17 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: Michael Walle <mwalle@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	David Airlie <airlied@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	linux-amarula@amarulasolutions.com,
	Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/4] dt-bindings: ili9806e: add Rocktech
 RK050HR345-CT106A display
Message-ID: <176850691645.1085868.8711955691654595696.robh@kernel.org>
References: <20260114161636.1076706-1-dario.binacchi@amarulasolutions.com>
 <20260114161636.1076706-4-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114161636.1076706-4-dario.binacchi@amarulasolutions.com>


On Wed, 14 Jan 2026 17:16:18 +0100, Dario Binacchi wrote:
> Document the Rocktech 5" 480x854 panel based on the Ilitek ILI9806E
> controller.
> 
> This panel uses SPI for control and an RGB interface for display
> data, so adjust the binding requirements accordingly.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> 
> ---
> 
> Changes in v2:
> - Restore vdd-supply as required for both DSI and SPI types
> - Dop useless settings in case of rocktech,rk050hr345-ct106a
> 
>  .../display/panel/ilitek,ili9806e.yaml        | 38 ++++++++++++++++++-
>  1 file changed, 36 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


