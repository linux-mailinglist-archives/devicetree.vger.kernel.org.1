Return-Path: <devicetree+bounces-9011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3CE7CB30C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFFFD1F22735
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB08328B9;
	Mon, 16 Oct 2023 18:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmX1nmLe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3597D28DDF
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:55:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59EB8C433C8;
	Mon, 16 Oct 2023 18:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697482547;
	bh=2GBwzaXzbOKf0eg+w1BbmkVO8YmTa2dT8tq8q0TmPFw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UmX1nmLe6MIsX3kKW64YIwV/PnT2L45x0ehHU2o9ThY3MFQMhj0lEIXUvxyXTwHMX
	 kfCKHexqBbQdI9ERiWrewISCIcFST79xPlJgPdwlaV0G7sG74v/PXmTx9m3U5rPfWq
	 tSJ38eYjl3lGH6h/6U/Zp1rz+/6GemuZQCIhrYsTQUhT+OxLCjZbp1kindlhtwJaTc
	 b8bCXj4cNmfpcH5jeq0zClnzvp6Ua4bDle1m4IHggQD/3LgMB8Jd5TjqPon+TcCC3A
	 BKmtUUa0KSxBBri1eepWyp/YUQ82AunVJbo1gAxwbgXZIudopoqaeii5+THDvccxsR
	 asjFURJK760Wg==
Date: Mon, 16 Oct 2023 11:59:34 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qrb4210-rb2: don't force usb
 peripheral mode
Message-ID: <bynrxecoatjrnx7tpaqn5wv5szht5bjn23xtxdco22pywyndpq@apszoqkoxl22>
References: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>

On Tue, Oct 10, 2023 at 11:46:58AM +0100, Caleb Connolly wrote:
> The rb2 only has a single USB controller, it can be switched between a
> type-c port and an internal USB hub via a DIP switch. Until dynamic
> role switching is available it's preferable to put the USB controller
> in host mode so that the type-A ports and ethernet are available.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>

Applied, thanks.

> ---
> base-commit: 6465e260f48790807eef06b583b38ca9789b6072
> 
> // Caleb (they/them)
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index a7278a9472ed..9738c0dacd58 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -518,7 +518,6 @@ &usb {
>  
>  &usb_dwc3 {
>  	maximum-speed = "super-speed";
> -	dr_mode = "peripheral";
>  };
>  
>  &usb_hsphy {
> 

