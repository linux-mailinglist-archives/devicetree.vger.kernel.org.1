Return-Path: <devicetree+bounces-19045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 149327F97A9
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43A6E1C203A2
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9DA1C16;
	Mon, 27 Nov 2023 02:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4TGevd0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5B717E3
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:54:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1789C433C7;
	Mon, 27 Nov 2023 02:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053650;
	bh=eZ3WpAPBx6kvrkV6Ye4GMDnOn030v7zZFgp5k5HgBEo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H4TGevd0kkEOI035uYyw3q3IgIckpUqAy8rJBi1G2rMl5sqdvnAfvLt5Nj6TMOgLM
	 h01qmMX77RTmTpo6B+4mkX6r9AfiKJcTvyilhjvScvyfAa2eW4QqqM2sdLminpTQ50
	 5KF3DdFy7drO71sSUxvsYiGNsve9hG5Fs4zXvp8JgIGTPS7cqDvPCgXge833muet3S
	 Z13a2TLeaNCbqnZrVT18AEkijgMqEeoWJR6uo5ecQKoFflQ7hitZtCGv7wCW9fX8xr
	 KLfkLzZUU9vZCqRi/2gsEOp97gohA8Cav0qR9BAYiNRgNHLm7PaquxltQXb3sfoZjR
	 ye7t/h2yTVBvA==
Date: Mon, 27 Nov 2023 10:54:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: freescale: debix-som: Add heartbeat LED
Message-ID: <20231127025402.GS87953@dragon>
References: <20231101104307.2207938-1-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101104307.2207938-1-kieran.bingham@ideasonboard.com>

On Wed, Nov 01, 2023 at 10:43:04AM +0000, Kieran Bingham wrote:
> Map the 'RUN' LED present on the Debix-SOM as a heartbeat.
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

Applied, thanks!

