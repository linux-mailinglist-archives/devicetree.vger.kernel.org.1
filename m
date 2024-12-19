Return-Path: <devicetree+bounces-132593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C47469F786F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B31AE18877E9
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B782C2206B1;
	Thu, 19 Dec 2024 09:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pF/ZpFsq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901FF15688C;
	Thu, 19 Dec 2024 09:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734600403; cv=none; b=pBEXz0fS5DVfo+yRmG1mmzlmFOwL+r19HLeM11solaXZnH2m+qpy5i/lYv65RYGuba9Hl6F5zZjo7SbxCU5PSpsw+YbWeyL83igPHrzWU4A31JdCwY0SOgH8sqAYiqNkgjkHShUKoqZLClDWoFUsajKb7b2CW+Le9d4fgukMhU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734600403; c=relaxed/simple;
	bh=wQBDpaQjZCnkXB1BSxzjDxCu44KM8w6eHUz1UWCbX8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iylMoUPXwr6pJ60AMsAgu38A9zd3c12Lvopvv/zT8bcYoMIlo62S0RP8XRshpR4r/Chpm+1bPv4h/xp5JjxNLSlIoTcjpORuSOssvtnj+3nygSgVzDNGnQ1JJXntIoUcwv+tEuWaKb2IlDmkhydpoksQiXf4v4hwEzhCUJhY2N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pF/ZpFsq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9718BC4CECE;
	Thu, 19 Dec 2024 09:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734600403;
	bh=wQBDpaQjZCnkXB1BSxzjDxCu44KM8w6eHUz1UWCbX8w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pF/ZpFsqzqxgfUYzrpRDjx7CcIorVOB+3825/Hij01crrh1Hktfc7ZV1TkSwmF88z
	 jN1FR3//fW/IWmQMjWnXRfanH4jduG++X40SKkyvIb4NVaN7oqPKwPZ3YFkFh+MVfe
	 uB+iHEJMGvEH3g3I3z8OHqwaCC9JIkbiDHa+ReLHkJgjrZ+2xUZR3D4pUavLA+9zN0
	 HRwwHODU6Me/auBvBFHMDnLn8w9hFkBCPvYnS0ZmF+gG9Qn8ZiWqQX+t6TtrQSy2mu
	 fHB03unpFBy5tiPUdPh1FAAwvPkaAQrhy+Wlxt4hYv97DQn19w7vc+j1Ima468MyFy
	 dxzykNS4hbAGg==
Date: Thu, 19 Dec 2024 10:26:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Thierry Reding <thierry.reding@gmail.com>, 
	Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de
Subject: Re: [PATCH 2/3] dt-bindings: display: panel-simple: Document Topland
 TIAN-G07017-01
Message-ID: <qk5ib6vmm75wbf43cgux2bp63xkzsti4klngualgrsle5vhcen@6cy7s3jp7pma>
References: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
 <20241218-topland-tian-g07017-v1-2-d5e411c199e3@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241218-topland-tian-g07017-v1-2-d5e411c199e3@pengutronix.de>

On Wed, Dec 18, 2024 at 08:44:59PM +0100, Ahmad Fatoum wrote:
> The TIAN-G07017-01 is a 7" TFT-LCD module by TOPLAND ELECTRONICS (H.K).
> Add its compatible string.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


