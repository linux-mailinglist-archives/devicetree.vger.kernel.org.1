Return-Path: <devicetree+bounces-2903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C14597ACDBE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:57:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E340F1C203B0
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258ACEA9;
	Mon, 25 Sep 2023 01:57:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12949A2A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:57:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A4EAC433C7;
	Mon, 25 Sep 2023 01:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695607063;
	bh=7Q/X/oumvZ3DaBr6rWSt10U6ZuVrn41OcOGa5TWe0Yc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jhaFdNxVfFsrpdrtD9etsQ4xwDLfCnw54BXM33Dnnx8355urSejktUe7tgoWwZdbd
	 A7vgR5axRZuxDbEjwUQVI9c14eNvbOtSnTVHoYC2GWETK2JsCUxgQ13DJGfMXzvCmq
	 pQtder3K38oLOkjC10LwcnLZpWcWxC7w3Flen1ioEHaiCVOkxajAvj8PQ2i//2hyyq
	 eXf9pOUC2g29itwpqqk4myq3lX5m8wqZh6B9IjK1xy3dOYwNux03gHGaqVstMpqvTm
	 z16RPyargI3PCSdeoHIistAIm2yACUUmWuQd7mOC3FNgBF/VGpkeJk7L/yWkn6x9m2
	 jzMd9sQE0t48w==
Date: Mon, 25 Sep 2023 09:57:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-imx@nxp.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] arm64: imx8-ss-lsio: Add PWM interrupts
Message-ID: <20230925015733.GR7231@dragon>
References: <20230908164735.666655-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230908164735.666655-1-festevam@gmail.com>

On Fri, Sep 08, 2023 at 01:47:35PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The PWM interrupt is mandatory per imx-pwm.yaml.
> 
> Add them.
> 
> This also fixes the followig schema warning:
> 
> imx8qm-apalis-v1.1-ixora-v1.2.dtb: pwm@5d000000: 'oneOf' conditional failed, one must be fixed:
> 	'interrupts' is a required property
> 	'interrupts-extended' is a required property
> 	from schema $id: http://devicetree.org/schemas/pwm/imx-pwm.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

