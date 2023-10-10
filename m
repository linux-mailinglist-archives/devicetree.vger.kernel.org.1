Return-Path: <devicetree+bounces-7370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7117B7C0328
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 20:10:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23386281BC2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62168225C3;
	Tue, 10 Oct 2023 18:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4tlVOXn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436A5225BF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 18:10:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A984CC433C8;
	Tue, 10 Oct 2023 18:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696961437;
	bh=fuUv/hXFNtI8qkkHLgstDIXDcQVXAaXWBEh1chCBBDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c4tlVOXn6Bc38D98V4HYYQ+VE0srU+yssoa3NJW6PXFBOK6SojwInAdcTmQQdu3zj
	 blbj8pyp57g4WlCr9PfIzlCQYLOVFh0Nhho600+AkdgCVh/3kNGP6roh/wYO1jXYcl
	 kuFobQ43LMJ60I5IqlT8NCBwH5RWsBVQLyLScniC/zg8UtHzwHcsls59o779A83LlT
	 +AIQau0AgLUD1NGDPcHtI6SEOb9VMZCDxg8s1jbczpLvU4IOAB+gPyxgz1s8oMTN25
	 tihYhFsjWbYfWWYMSq9oPFcJQ1EevCgKM9dui0ptcWbJw/to1oldR//Rhl5TaqvuPZ
	 rKn+RY3LX+x8w==
Received: (nullmailer pid 1182797 invoked by uid 1000);
	Tue, 10 Oct 2023 18:10:35 -0000
Date: Tue, 10 Oct 2023 13:10:35 -0500
From: Rob Herring <robh@kernel.org>
To: Jacky Bai <ping.bai@nxp.com>
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org, wim@linux-watchdog.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de, festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com, linux@roeck-us.net, shawnguo@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: watchdog: fsl-imx7ulp-wdt: Add
 'fsl,ext-reset-output'
Message-ID: <169696143472.1182561.15105900331518622505.robh@kernel.org>
References: <20231010081909.2899101-1-ping.bai@nxp.com>
 <20231010081909.2899101-2-ping.bai@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010081909.2899101-2-ping.bai@nxp.com>


On Tue, 10 Oct 2023 16:19:08 +0800, Jacky Bai wrote:
> The wdog may generate wdog_any external reset if the int_en bit is
> configured, so add a property for this purpose in dt-binding doc.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml        | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


