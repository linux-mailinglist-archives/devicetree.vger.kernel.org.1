Return-Path: <devicetree+bounces-151043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06364A443B9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20D7B162D9D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 14:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2DAC2561B7;
	Tue, 25 Feb 2025 14:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoEg6Dy9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C20721ABB2;
	Tue, 25 Feb 2025 14:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740495516; cv=none; b=o3d1TijNwQTQy+I/OWmh1vuLfEbGgnQ8q6E9mlyEg3i4LffNH6Qjxz942FUDYwrgY+6o7c5+4Nv+TA8wyrXwG2m11rvkhQH57VUwZhIi7M0yHFZ75AQl9YSrbkbPqV3n9wZwTfs8PqQ3erjLqyK+8VoxeHG4KNHUMxygZo/zpcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740495516; c=relaxed/simple;
	bh=m6/bHr5qMtmuvpNdzrWxI7InaCfmMZcD30o8W4FzGWw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=upc9XPy+YTvENM+Fs6QMvbK9X2M+ZZFSx/RqN40x3xSQxpXInRYK7DaR+JKmgIAD6yLWe892SLr+VXi97iZpPK0vWqpnVghJDpUzuIc0JHoGbfLsYlJ7seqXaRIoZBb+AU/9/YvhR/nH2b5A3P6lsgT2KSElpj1wOYJQAzdHRx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoEg6Dy9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF7C7C4CEDD;
	Tue, 25 Feb 2025 14:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740495516;
	bh=m6/bHr5qMtmuvpNdzrWxI7InaCfmMZcD30o8W4FzGWw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IoEg6Dy9AUoWIhTSYy1iSWttqt8ldHXGQX0FBTfEgMQ3//HObKeQ/fFnhsJG9ll7r
	 7VCTC7sItDIKwFndnc/2W0Ykc8K5wIxepfMQPlDDvG9xcvC2rWOF6DlJGQuDJOEC4A
	 f6xziyFODt3M6uuFJi24GrJbXXUSwSYyF8OhDZeC6aWcBKnCL7Ys3bUaTSSNkRQ5Qb
	 krBMf47TiHxWk/5024VmIHmezFrdBuqpGWOxLgJaTFvlant0mHl5CJlYBgJHuU+DVm
	 BkW8/yv4+w9l0lZSLtxU69f7/wQVto0a7S8BzHR0I9iLx0lnAiptSpLgJF3f+Ir+wA
	 iLodTmwa9zngQ==
Date: Tue, 25 Feb 2025 08:58:33 -0600
From: Rob Herring <robh@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux@ew.tq-group.com,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 4/6] arm64: dts: imx93: Add LCDIF & LDB nodes
Message-ID: <20250225145833.GB2361434-robh@kernel.org>
References: <20250224142831.485159-1-alexander.stein@ew.tq-group.com>
 <20250224142831.485159-5-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224142831.485159-5-alexander.stein@ew.tq-group.com>

On Mon, Feb 24, 2025 at 03:28:25PM +0100, Alexander Stein wrote:
> LCDIF port 1 is directly attached to the LVDS Display Bridge (LDB).
> Both need the same clock source (VIDEO_PLL1).
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 77 ++++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 56766fdb0b1e5..2628e1e628ec2 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -1273,6 +1273,9 @@ s4muap: mailbox@47520000 {
>  		media_blk_ctrl: system-controller@4ac10000 {
>  			compatible = "fsl,imx93-media-blk-ctrl", "syscon";
>  			reg = <0x4ac10000 0x10000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;

Like the example, this is wrong.

ranges = <0x0 0x4ac10000 0x10000>;

Rob

