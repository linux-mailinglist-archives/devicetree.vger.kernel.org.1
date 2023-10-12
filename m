Return-Path: <devicetree+bounces-8091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 062057C6AAE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:13:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AACC02827FC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B7C224FA;
	Thu, 12 Oct 2023 10:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdqooWmT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0684022336
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:13:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13077C433C9;
	Thu, 12 Oct 2023 10:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697105592;
	bh=rbJ4LU3lg9FN/OY/RyT0uz8T3OsnGRz8eJ8NhJbj4YA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HdqooWmT9UIG8td7aLQLiyz8FYE8dWEMUlf7dybBjCv3CRmVut4ZSx1yAQoLdYTSn
	 ROwSZVp8jotvDpFwTKXQtPcBnqh1MUqIkQqj3CT+tE53eleyxWdxFWwJoNhMw6SFsf
	 S4r6T7tHwB4SjTIkqVap3ECYX5t6J3Icvdng1dBiDs6vsD4kk1PPR4HJThmcN3w2CV
	 037Tz4m3OqPe9iByZ/u7eoEubSq1wDJ9hS3nWRZzXZGmGfvdzHWvPZ0v9qpOxWbUNb
	 JEkCRVtMyLtXUOEIVpSl/5/7qPRGca9CE8jO7Diq0a2Sp5BreEQXemAMqKXlSZeWGk
	 ldPDNd1gzQ/Yg==
Date: Thu, 12 Oct 2023 18:12:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Describe VDD_ARM run and standby
 voltage for Data Modul i.MX8M Plus eDM SBC
Message-ID: <20231012101259.GT819755@dragon>
References: <20230831181850.154813-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831181850.154813-1-marex@denx.de>

On Thu, Aug 31, 2023 at 08:18:50PM +0200, Marek Vasut wrote:
> Describe VDD_ARM (BUCK2) run and standby voltage in DT.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!

