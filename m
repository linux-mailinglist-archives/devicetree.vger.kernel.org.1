Return-Path: <devicetree+bounces-7081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3847BF106
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 04:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10563281723
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0259238C;
	Tue, 10 Oct 2023 02:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjeNM0my"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FB9361
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 02:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADB92C433C7;
	Tue, 10 Oct 2023 02:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696905705;
	bh=wJyl+vl7uCX3sJfsgHZ7JIGdW4GsJzSvULqsNno3Xv0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BjeNM0mykjbK5Dn8eq8OViJUcKljkNpNa1ZkGIud8g+r9MKO4txVJl7rE/SotCswG
	 6NfngInyPICijb9pIaTVAvJ79fKVl1vBvCJHx9nStGOllWdqpXckXifYGtmiXRh+rs
	 3C1PTx/moqfPSkC20HQ2NNokrbgo4V0IOTN34wsbGSrNAZ8qvFy+aMIkVQYPvLAzDP
	 YgnAh5ML7sA5mw2ctm5Fq9eYqqGAUjYrLt8iHAEHxQHPt6Wn+IzFxOzfNh4uzY6XaU
	 Olq4eySG0Ble7btqwmye314zRRfftcwEcxNlNe0+bhXE7EkhhE+1X/b3/znpMYWh66
	 uZYMvgmYSsPSg==
Date: Tue, 10 Oct 2023 10:41:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 1/4] arm64: dts: imx8mm-beacon: Migrate sound card to
 simple-audio-card
Message-ID: <20231010024132.GO819755@dragon>
References: <20231008140239.6601-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231008140239.6601-1-aford173@gmail.com>

On Sun, Oct 08, 2023 at 09:02:35AM -0500, Adam Ford wrote:
> Instead of using a custom glue layer connecting the wm8962 CODEC
> to the SAI3 sound-dai, migrate the sound card to simple-audio-card.
> This also brings this board in line with the imx8mn-beacon and
> imx8mp-beacon.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied all, thanks!

