Return-Path: <devicetree+bounces-76324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B790A2AB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 04:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79AF4282B10
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 02:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70A0761FE8;
	Mon, 17 Jun 2024 02:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="mv7hJShC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE373D27D
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718593111; cv=none; b=GtXnE9O7n9JrlXbmTlbWNMOkb33an51GXd+GF48T/czF2BJInB3QauvEcjJovPb05Tdp0ShTZL3guHYkyPsmLAdLTZbD2gnP8DaupU3YFr9LCRGohbtJMKCd7zRkNOipNldJ+1g/5dQsmtnFAnG391qzJejeByWPye1DP01UMI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718593111; c=relaxed/simple;
	bh=TcOJV777CqewcTwq8Xrsmai2O2uhOx9c7h9IwJtfwhM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jCEWkSXxEty6Gnyntl34W0mplCNeFhVzZ8kgwk0M1s0MDLx8j20hq9pBE5Z93Q5Ea6SIl7AycG3JPvc7pjCKnB4jZizJ0VVyvhWnxKDNGQ7k3Xc+xAjJ8egQQJfD3hWKr8aptZe/ZdiFrIC70gaN6vWMRAutfFJPhSb0ZPtuR24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=mv7hJShC; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=uGlvEUfJRk4BjNM6OARiu/sXXhArMwx69gsQTdbWF0E=;
	b=mv7hJShCc6L8jh7sM1jBhgzdHKtrUB+Vq1M3eeqWe6cXfSuY+b2DYFUf/p2kiv
	mBcv5t82aOispbiVswGht8UMmXtAnbZ4msX8o4fFutCpbyeu+N6hXAM7z2oJLEEe
	dwh4h0q+X0QjC8+Tk4iOqVVlxKzdfgT6jGeo8L6iTk20Y=
Received: from dragon (unknown [114.216.76.201])
	by smtp1 (Coremail) with SMTP id ClUQrAAnjvo_pm9mR68MCA--.41965S3;
	Mon, 17 Jun 2024 10:58:08 +0800 (CST)
Date: Mon, 17 Jun 2024 10:58:07 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: fsl: Document Compulab
 IOT-GATE-iMX8
Message-ID: <Zm+mP0/tEhwv9Jw7@dragon>
References: <20240616172149.2542621-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240616172149.2542621-1-festevam@gmail.com>
X-CM-TRANSID:ClUQrAAnjvo_pm9mR68MCA--.41965S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrWr47Zw48uF47Cw48AF18Krg_yoWxXrcEqa
	1rXrn7JayUWrWDGws8JF4FyrWS9w4q9ws8Jr95Kwn7WFnrKws3uFs3Xr48Gr4fZrW3Xr43
	Zw13t34rW3y7CjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnzWlDUUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDwMBZVnxc0yuJQAAs0

On Sun, Jun 16, 2024 at 02:21:48PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Document Compulab's IOT-GATE-iMX8 board, which is based on Compulab's
> UCM-iMX8M-Mini SoM.
> 
> Board URL:
> https://www.compulab.com/products/iot-gateways/iot-gate-imx8-industrial-arm-iot-gateway/
> 
> SoM URL:
> https://www.compulab.com/products/computer-on-modules/ucm-imx8m-mini-nxp-i-mx-8m-mini-som-system-on-module-computer/
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied both, thanks!


