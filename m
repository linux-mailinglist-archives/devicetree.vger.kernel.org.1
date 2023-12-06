Return-Path: <devicetree+bounces-22028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E904F8063F3
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 934AF1F21823
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E664D651;
	Wed,  6 Dec 2023 01:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcBQTLeu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C880462A
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:03:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB43AC433C7;
	Wed,  6 Dec 2023 01:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701824602;
	bh=0vLsY6u2UoxJlbnKoMmD/RQTZH8jVMu/7QKA/18Jqgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hcBQTLeu4y1WjBDbqOFbfqDN9Wv8SUEa/G7Yd5L0yELcX9QHjkWj6UwcL7d27bY/t
	 YO86+dGkn4o+7uGWgVzHzxqJ0oR/SDeYk6c8kLh/9mwdAoJGaILtkK6PVy1tiyhLVX
	 HKprU8cvKywLUmxcR4wBjHidrZXUGZQe5K/98vXCDIPwrvRK2f1Wo2gDK9ouzbqEhc
	 vmI/B3Ad8udotta/K8dp9SoZV0sWeCZHBC1RnAXK0Sg/RRR9PwRtDA5wJ+7G2DOBIH
	 ZujvipcSZ07MsQ4mNPnLwbNzfvCpN76K+pcRsuyjoO0eiDHdxX7WZRfqQSZZte/oxh
	 ZL3jJtHXe64lQ==
Date: Wed, 6 Dec 2023 09:03:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?iso-8859-1?Q?S=F8ren?= Andersen <san@skov.dk>,
	Sam Ravnborg <sam@ravnborg.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	kernel@pengutronix.de, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	NXP Linux Team <linux-imx@nxp.com>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: Add compatible for SKOV i.MX8MP
 RevB board
Message-ID: <20231206010316.GN236001@dragon>
References: <20231113113855.4076151-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113113855.4076151-1-o.rempel@pengutronix.de>

On Mon, Nov 13, 2023 at 12:38:54PM +0100, Oleksij Rempel wrote:
> Add DT compatible string for a SKOV i.MX8MP RevB climate controller board.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied both, thanks!

