Return-Path: <devicetree+bounces-131341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DAF9F2E0E
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:19:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46CC3160FCD
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 10:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D9D202C53;
	Mon, 16 Dec 2024 10:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXTbB8PY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E582010EF
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 10:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734344383; cv=none; b=b2X1lXucHaxWFYVwkIr5sTK5Osl6Ux4kcXdqycqPJLbl1QDAsGnxIJYBqB0PH8t3cUdPukp3Kq50hOdOoEm0dpgswc6Z5J4wWKnBXa53X1DScSrZb2Lvh3hCEXbJZgN1qiHYzluTpfpeWIUDWN0QGKExUFC6aVTEbTb2dLKG8wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734344383; c=relaxed/simple;
	bh=UEm4ShSgPahfTN+vzjj0Tbu1bLz8SpIfJqSptniMBC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MI2zmxTA20w1jF+eIqYe6Su6glQjZucBk0KbAfvUi0APzmJ+ziI4tpntd54VzjyFDscIsR0klQrT1cjfiR2s0vmXZTcca5Evp38cS3DvR6w9G90PcvC6XfO3tTQ5YGJp+2L3YB5SvytgCvhAg5zPKzN8ta1TORXTEpDF0imEvgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXTbB8PY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66899C4CED0;
	Mon, 16 Dec 2024 10:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734344383;
	bh=UEm4ShSgPahfTN+vzjj0Tbu1bLz8SpIfJqSptniMBC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mXTbB8PYCDfw7rUmiizYy2cAX0z+qZaeZJsazMnRvXZ9FwXV5AKF17NDA5UixtpvM
	 rFx0l761xtMiTXeF7qCmVP/pVB19yqJyBt20TArW5R5NKHBN1OOFxVsGxbjE5h8w3s
	 HpcIbmSjjWyvxECordEA6eBxaePfpAYEZ6xYvU5iwGjnMZ/4JyOsCFKwbi0YXG2O23
	 kaRytLPbedyrfi6KFddNQuJZTRDn1Uj0S3mfSIRXzMEIDVtS9cjNIprAvCkjhBsqvu
	 BtUgOUP6W6jU75YcosVm7+ji20cYXSHGNwG1J2J4Nl2pxjWURn15y8PPO8C0+lYv2e
	 nFJWp0geDQZpA==
Date: Mon, 16 Dec 2024 11:19:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>, 
	Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Document Multi-Inno
 Technology MI1010Z1T-1CP11 panel
Message-ID: <ye6qeanenauh7hifouv4x7azgmf7anko5amy63qxemvaswws6e@trnq4dgbjdjt>
References: <20241212122701.25305-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241212122701.25305-1-marex@denx.de>

On Thu, Dec 12, 2024 at 01:26:28PM +0100, Marek Vasut wrote:
> Add Multi-Inno Technology MI1010Z1T-1CP11 10.1" 1024x600 LVDS panel
> compatible string.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


