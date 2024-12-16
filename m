Return-Path: <devicetree+bounces-131306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B81389F2C92
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 10:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47C251885653
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB1D1FF7D6;
	Mon, 16 Dec 2024 09:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MZUwF9WV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50431C2323
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 09:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734339970; cv=none; b=Z5LCXYbxI7r4oG31Iin+3/tzbm1uKkViKWaMTCLtyB/abwx1q91dp2fghqcEWa8J9OQgazI+fNg3s6o/UOaTnDJiRv/yrFR/Gs4pRuelmIDx6Vr3dlah9TWpxXg2seGRAU+BrjSvZMxlGI23lcQAeuKtEEXyZ50xOwZFRJCr+Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734339970; c=relaxed/simple;
	bh=0gRc+cRlcmXePYNwpe02vLiHnaN3HnXgSYFkCLduIN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jLS+CC4wejm4q0t5T9BLPwcKN2d4Y2tpbavyQlxOQgU64nWW1Po04dLVK4RC/lomjcmRIbYGUAwReqjm5/15LxyNzG/ugFXtLfmgNtjXExuuHRYpTSNgAKJ+r5gzOt3/fNgMosLQ3c/iM3icorNXFC5WFsjJvQKU/6jzArHpEi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MZUwF9WV; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e399e3310so4646572e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 01:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734339967; x=1734944767; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ybFr+xBF+04SsTx9tZHOi4dPPshGyMog5vNkLi99Q50=;
        b=MZUwF9WVCpd8j7etf57HXRET7xvwNvKyckLUtVdLbLga8QU3NZle0N7bSMhRsJIaDB
         OQXhrySG8yAFgTkTB9A3bgtpvq2RKuXViy1i8jjMJXhkU9xKr8AdToIb9bArocIEbZ4a
         XLyTfVME91kdvPvHcoGouoMhsE1W1Mvn8qZgOaFQh4D6J1x5J5yicYgnDL+frr2Fod5A
         iEa4t1qd/+n/VABp3TOS9bFxLMNn0KU5dpZ75QZb1AHXZg1F+qN6MUSulFvzAmLrqp6E
         FO72+ztwkqIZZpY9ARyAmxv/mVPe9Zj4cP70/2Lgt2evE813SlwVVl/QoqDYmC2lEQE+
         GgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734339967; x=1734944767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybFr+xBF+04SsTx9tZHOi4dPPshGyMog5vNkLi99Q50=;
        b=opoP6sn/CdxsycZUcuu4CwUpvNCao/3XVTVyaBzIj19kmD5PCwhVyQLzgiwItJb9/X
         cycygf4wGaZmQJvVaRKidAiBSHozz8HZI69hdqJnNoK5cXg2t75fi+qe9oM1ioZrwRdz
         Ko5hxj/ovvsNlwFvtZRA+ulaZmMRQwvMseKTUyxPciVhgKf8XCvfyJS0+Zwf7rAwqclv
         YGxuNluqYKVPEi1yiju2R36CJD3KXucjcndB6EoNaAp8uH1+zgKqZMaTyyMm0HQRdY5R
         8r0YjtSkc/24UlQHZ8WglLntyQ3gaw+4XiQo7nrjqzEeNjWKM4O80NXZU9Qwkwv8/Dq+
         Kbvg==
X-Forwarded-Encrypted: i=1; AJvYcCVIqXAkyuAiQVCFH4JlkJHlCmkDGSHjosyPa37gnqs7+ONvkQDH5/dGL7H+Hk28kborMEgiHDRzFO3v@vger.kernel.org
X-Gm-Message-State: AOJu0YzZxI12pVjVplXF6TyWmdz1C0HYTPLvpBCFCNtC5+q4Bel1PZEB
	bbtG0AC6VYlV8LrZY2I034GOHZL06ni9U46p24PSvv03Ra6iIYhrR8r7sVqCAnM=
X-Gm-Gg: ASbGncsK+AwaaeDL6GdWrUHwtGVJJGObMp1xWSddBuX1/Mf7OrpZ9uxruzyPW+tFZT2
	U0AkiVW8rs7LF+ZdC0Q3mclHXH4CFfaPmujXhwehgQveSeJPjcdHLftKBoANesBKqFvDQpxTmVG
	eRMVr9hCjfg+SufGdbYBJd0B/mjTOTxk1jq15aMMUgp6PcyhmAdDJeD6DLdVrksdLm16fVDvEVx
	kfPcfWf+74Q0swcU1HBNw/SWEMGdrZn92ILtX1q0H9cY2uyEuYbOrzRSQO/TOuJyN/aRacdrgQH
	g9/b54w+vzGNeyLR40pWks1Ktducgv5abgz+
X-Google-Smtp-Source: AGHT+IE2z+Yrxqh/d+CbdTI/ZEFbpY0tdfpWkjP3iId/t6e4EaPLDgQ5n81rb49OUv0YGO/PEvgPOg==
X-Received: by 2002:a05:6512:b96:b0:540:2a6e:3882 with SMTP id 2adb3069b0e04-540905616b3mr3205171e87.29.1734339966797;
        Mon, 16 Dec 2024 01:06:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c00166sm768988e87.159.2024.12.16.01.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 01:06:05 -0800 (PST)
Date: Mon, 16 Dec 2024 11:06:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 10/11] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
Message-ID: <ay2im4itrj3k4p2ksobgsk77b7m4laaxctkfcpffqxj5ttxenm@mzdizmf3mlcb>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-11-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216031225.3746-11-damon.ding@rock-chips.com>

On Mon, Dec 16, 2024 at 11:12:24AM +0800, Damon Ding wrote:
> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> - Add edp-panel node
> - Set pinctrl of pwm12 for backlight
> - Enable edp0/hdptxphy0/vp2
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Remove brightness-levels and default-brightness-level properties in
>   backlight node.
> - Add the detail DT changes to commit message.
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..5c1ea25b6524 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
>  
> @@ -120,6 +121,18 @@ backlight: backlight {
>  		pwms = <&pwm12 0 25000 0>;
>  	};
>  
> +	edp_panel: edp-panel {
> +		compatible = "lg,lp079qx1-sp0v";

Please use aux-bus and a generic "edp-panel" entry for newer platforms
instead of declaring the panel on the platform bus. Placing eDP panels
on the platform bus has been deprecated for quite a while.

> +		backlight = <&backlight>;
> +		power-supply = <&vcc3v3_lcd_edp>;
> +
> +		port {
> +			panel_in_edp: endpoint {
> +				remote-endpoint = <&edp_out_panel>;
> +			};
> +		};
> +	};
> +
>  	combophy_avdd0v85: regulator-combophy-avdd0v85 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "combophy_avdd0v85";

-- 
With best wishes
Dmitry

