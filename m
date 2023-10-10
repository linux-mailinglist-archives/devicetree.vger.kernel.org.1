Return-Path: <devicetree+bounces-7069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6787BF015
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 272761C20960
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC1038E;
	Tue, 10 Oct 2023 01:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuUxzxtY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE7E377
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:10:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 298CDC433C8;
	Tue, 10 Oct 2023 01:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696900205;
	bh=kfMxmCMbkxtiTtMc84ct+6rsN8NA9rXL5TP6wRRTLP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nuUxzxtY/mcHFoxAs3VG+6yHUgiHFzUOhaTHZybDa3xuaCU25ndOxtjRfVUUfiHIu
	 t7aQLbq6wY85FtmOW2ZHrRj82BjL6qfYkNLWHh059YYO7xvxy5b5NVP9oa++ur0GJl
	 2xufRVIO/BNMoq9mH+tOJsYocng8InAZJF0x3D4VA9RdjuVvE+8cQhMr5l1XxE1E7c
	 pgijajv0BIDMxOV5Bg+5cBxXBco3Ds32+Dgr/BCurZm2T2RbwSEQcq/uyXcXRAJb5N
	 z8pVk8gyU3zAjZ9LXeDM3/RxsAJxmtCUwIjyBg9W0QerreBgeFQqYt6qAvr308TvJ+
	 J0fM62vq8CuhA==
Date: Tue, 10 Oct 2023 09:09:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, mirela.rabulea@nxp.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4] arm64: imx8qm-ss-img: Fix jpegenc compatible entry
Message-ID: <20231010010954.GK733979@dragon>
References: <20230926142736.390477-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926142736.390477-1-festevam@gmail.com>

On Tue, Sep 26, 2023 at 11:27:36AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The first compatible entry for the jpegenc should be 'nxp,imx8qm-jpgenc'.
> 
> Change it accordingly to fix the following schema warning:
> 
> imx8qm-apalis-eval.dtb: jpegenc@58450000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	'nxp,imx8qm-jpgdec' is not one of ['nxp,imx8qxp-jpgdec', 'nxp,imx8qxp-jpgenc']
> 	'nxp,imx8qm-jpgenc' was expected
> 	'nxp,imx8qxp-jpgdec' was expected
> 
> Fixes: 5bb279171afc ("arm64: dts: imx8: Add jpeg encoder/decoder nodes")
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Mirela Rabulea <mirela.rabulea@nxp.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied, thanks!

