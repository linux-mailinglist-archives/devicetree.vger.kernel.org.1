Return-Path: <devicetree+bounces-19030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADC37F9750
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E92CD280D3C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 01:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE8DED4;
	Mon, 27 Nov 2023 01:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7GV5OME"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F87B815
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:53:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B805C433C8;
	Mon, 27 Nov 2023 01:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701050013;
	bh=OEqKK0tbtP/SkoTJhodkC5NQeA23JuN3NIViCovSEwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L7GV5OMEh/b0RR8GjNvcbyBdHHfvNnLsbtAzZnQkUsFKL86mDwQUB/T8mRRaQJXVD
	 /J9cUuym+hStubiyaQh5qtrr8tn+cvCMWMBt6MFJw17KtYUNRoKZ0utGQ1xMtMa2iR
	 sMlksf0adXwoY8DxJymFZ71GQBUUmj6GjKhiZpdwWxBrrr8IibwUL01m9K0DTXAUpv
	 bl0y58FJbmT4yXErn+iavIV80+O26TzJ4PSRfRi1/PrKJ7XWIeFkeuGGtJq/UzdPRX
	 sjcT9dI6xJRrKkCDpyz/pOAg0l0I1T4aTxadXdSbjGI0ZnsB0FwkxJ9zad8+XWHFcx
	 x4XK/tNnVKk/w==
Date: Mon, 27 Nov 2023 09:53:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp-beacon-kit: Enable DSI to HDMI Bridge
Message-ID: <20231127015326.GG87953@dragon>
References: <20231013014117.124202-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013014117.124202-1-aford173@gmail.com>

On Thu, Oct 12, 2023 at 08:41:17PM -0500, Adam Ford wrote:
> The baseboard of the Beacon i.MX8M Plus development kit has
> an ADV7535 DSI to HDMI bridge capable of stereo sound.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks!

