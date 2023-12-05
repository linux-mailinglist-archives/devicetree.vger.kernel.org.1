Return-Path: <devicetree+bounces-21640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 634B3804C2D
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:22:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 247571F2144B
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECFB13C063;
	Tue,  5 Dec 2023 08:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlezlPRF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD273341BE
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 08:22:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EDF7C433C8;
	Tue,  5 Dec 2023 08:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701764559;
	bh=+w4rpqhtSR+s5A03cf3EOv0DwUJgODGWLjcd0BmHnAQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GlezlPRFkDvK7uCFQ2fLhwkwWZ+jC56bkgyXn75X6ixNKdP/uxaR7+vxoyJHAaLzi
	 AwmIoFGbgq1L1EF/P2bfO/ffVoyPopfF83smXa2VTw67aJ3LGx4OLM2QbJHi6aXeIu
	 ik69THuD2A9C2iEP5rIrAV4kag4QHo8sbpxR1701UlBuKJi3FCpLxrdAHz6+7WaO4q
	 If9ZjRU2eeSzZJSjpME6o0KLPHwjS0vc0Rx1HML+qprJbktV87ZjoyXNUcQ9H+e0uu
	 +ldFacG7+wKSUPw9YdakurYHp1cVT+m8t+b6SKtGlB3Dw5xYAVI1bt4/7gDVIibbj9
	 M/boBUCVnNx2Q==
Date: Tue, 5 Dec 2023 16:22:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andrejs Cainikovs <andrejs.cainikovs@gmail.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andrejs Cainikovs <andrejs.cainikovs@toradex.com>
Subject: Re: [PATCH v1 0/2] imx6/imx8-apalis: add can power-up delay on ixora
 board
Message-ID: <20231205082233.GA236001@dragon>
References: <20231020153022.57858-1-andrejs.cainikovs@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020153022.57858-1-andrejs.cainikovs@gmail.com>

On Fri, Oct 20, 2023 at 05:30:20PM +0200, Andrejs Cainikovs wrote:
> From: Andrejs Cainikovs <andrejs.cainikovs@toradex.com>
> 
> Newer variants of Ixora boards require a power-up delay when powering up
> the CAN transceiver of up to 1ms. This series adds mentioned delay for
> iMX6 and iMX8 Apalis SoM variants.
> 
> Andrejs Cainikovs (2):
>   arm64: dts: imx8-apalis: add can power-up delay on ixora board
>   ARM: dts: imx6q-apalis: add can power-up delay on ixora board

Applied both, thanks!

