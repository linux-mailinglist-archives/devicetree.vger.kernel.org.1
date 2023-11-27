Return-Path: <devicetree+bounces-19042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8387F979E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:49:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA8CF1C203A2
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD1617E3;
	Mon, 27 Nov 2023 02:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKVf1tq/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F65715CF
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:49:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B345CC433C7;
	Mon, 27 Nov 2023 02:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053354;
	bh=WzcUcUgYpgUwHfNLtibWN67BMbtYRgVxrQI3rWWcUQc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GKVf1tq/nSXsTPJVU8rIv0+3l1G37QF47x0lQiX4IBwOt+6E+DfAJRwQJPU9wFdRr
	 MxtYhodTH6mMiwXMCDMfAYWJUNmz5GfYM137rpOxZvwWw2Awdeig/t3sOMnIc7QkYe
	 mN7lNwXf06YBBGxRKCQD71rFEhZNVNDjchtVBx/rSOWiANUEN8Sb0Vb+6eC5EVziPz
	 zMY6/CeuvkDC7aZNirTfXsmhHu5zTqy+ZgwIa5SoU7tpeQ+uvUDLoA8rJpU5+ng0mN
	 JGUr6+CMwurpK4VCkQb36MYf9CEXsIYd7QSQgI3cKh7+4//WSKMpVT0H2GDG1bFCWC
	 73OxLJnUFSeAQ==
Date: Mon, 27 Nov 2023 10:49:08 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux@ew.tq-group.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: freescale: Add dual-channel LVDS overlay
 for TQMa8MPxL
Message-ID: <20231127024908.GQ87953@dragon>
References: <20231020130755.670762-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020130755.670762-1-alexander.stein@ew.tq-group.com>

On Fri, Oct 20, 2023 at 03:07:55PM +0200, Alexander Stein wrote:
> This adds an overlay for the supported LVDS display AUO G133HAN01.
> Configure the video PLL frequency to exactly match typical pixel clock of
> 141.200 MHz.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

