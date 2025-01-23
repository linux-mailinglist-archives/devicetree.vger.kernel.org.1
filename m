Return-Path: <devicetree+bounces-140550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9C0A1A302
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DFB3161E60
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1745E20E335;
	Thu, 23 Jan 2025 11:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="grGrAoBv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231FF20C48C
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737631970; cv=none; b=l8oXkGtKP/pvllO4/xEva4k3tGuCn7jKSerng/iJP1AICmdBnbOFfJcpNmo6tX5Zkgr7MDIPL3eESVjPWNCtaPU22sLss6t+LqH9Cexj25GP84CWnnWfdPFZ0ZZUHwEbqsxjqcK/IFnhjGDIZ7iYL0NeVZwcsLBeuYC9XFpOeBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737631970; c=relaxed/simple;
	bh=QEzcg8uivcio35VuRgmwVQTAo5uwCgRgDz0NO/F+M3s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jZNiybiRhpPDc8ECjPQxCiBdFAeddsG3Euxoi76dvzZI1nJkTnhQYSGV1ZJi2CVaNf8/gzBQQho0AtlQFjImQvuRYsloWDwD/gyZdho6ZAjLrj/0BQ942/SFQuN2UqdoOjTytvHrbwYdp5RdL13rRI2YjVu3fOHzz8IRpPGiRb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=grGrAoBv; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30229d5b229so7452141fa.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631966; x=1738236766; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+zMurHlZ7uGtqY8vr+C9le803uP9XgfHXwzvJheucbI=;
        b=grGrAoBvjqsYtUZimaXJDnO+rCt/WJcvOjpHE10qwEGcwSP0UnqZPdWEBQPN+MFSWx
         Tl+o227cFXgveqfVwfbkn93tKndnJB9ALcsEz5CyQtZrc9UgD6BbW1ZTGx62krl5nOpt
         vrG93lGwuPwaPRYIQ9zEmr5S1woNsrqkLValS/kVX75ybMMXGB5fuNRvGV5XTV9YYZzQ
         Ef/lPZCXS01PNvM1NxvIQXNrNlO3sLup8IQKj8ypZNp6gksQourDYJUi8KdZFfkTwAx1
         Hb9QmjqktENbHZd8uT0kH34chmmF4XZpn9IJvrkVzUbRrAXMuUjCvkPKEHgPN9EhRcy8
         aoCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631966; x=1738236766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zMurHlZ7uGtqY8vr+C9le803uP9XgfHXwzvJheucbI=;
        b=ItFppEyMZpo1SIJNiaAkzLnpXpqu9DBh9Fz5reNrYAAeuYlrxVecXn+NdRjG9sHquP
         K4wQzzmyTBUt0Jji9ArcGpAEPJRFEB0rAnnQ2BRlL9m9E/qYOOUGkZFn4KlQ+CrCPnHY
         iwoyElyi1GAi2jEX/Yl8TAYnoCqalrW1saNTL2jI182n/FwUWzsbpUTH0kHl7SnXu53I
         eJ5a8bNAiWMhIoDRwIPZkcUrgu5r9fB70QYa7jFzYO4GLRNHMYgWUnNPzc9L3QjNz2QB
         nip0TKTmro2vmxv+tZAuwnjdgUrQ4SsG51oDNUeCajjvZcRmXXnvAQyoXWEQV7y98B1b
         uMIA==
X-Forwarded-Encrypted: i=1; AJvYcCWP35Ljnpe6P1vBINDNfDaeIC/EXvgoS4ugtI8yLmacnWswSBvDMnEGE4B2+ky+TqQ+LbTphj+uNSsA@vger.kernel.org
X-Gm-Message-State: AOJu0YyKkdvpYT+Eux5jx/uTpR4RzXusk1Yw6MJA8qH8ZwKslJxzqwcc
	m09HsvEgK8t5TTqdd/F9CRRkWz7InuyG1YfjqDmY7QwFQgIAhbtJgGMfLAOL0l8=
X-Gm-Gg: ASbGncusC+RbRhXoBPQn4hWVnMwK9AksRoFU3VcV5zMXVMiTBFw9LmFqIuxqtt3x2Lg
	FBgD+kT1nZrz/kScAp5ebG9QVEUtDApDygTk3zScQM5Ig3LheWSZvJ7q6+4QfwRkbQzzGSeCXc1
	dHHbCYieGY3s3tU8iN5bCXLZHkhPMyVwmi+MNH3GKDOPz0AN/OlIxFT0yOHyzX2hNlmU4y7wstm
	+Bp5aR+pJl4oiLHJfrFIs+QZvuu0OsAqtxpcS/5Y20scd5s+H+d5tXXaaO8t4G9qg+Od0Jb/gNq
	gWfuLLSG3fTP86IhgS/jilIIM6pC9LafAKMI96J2fzsXGPwrJ2MlOxdAH0vz
X-Google-Smtp-Source: AGHT+IGv3eRW1iX8AGSWOKHG3VFmFTMTVFcrPCnNhNO4BTbpmlhnROuDMhCvalg4dPHCeDzpS5d6Ng==
X-Received: by 2002:a2e:b90d:0:b0:304:4cec:29f9 with SMTP id 38308e7fff4ca-3072ca60ef9mr67919831fa.3.1737631966038;
        Thu, 23 Jan 2025 03:32:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a330764sm30489481fa.3.2025.01.23.03.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:32:44 -0800 (PST)
Date: Thu, 23 Jan 2025 13:32:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 14/14] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
Message-ID: <u3qiasthay5xrtu4bfu5ihag7x2wajrpbktrcs7bxutvc2iwrk@on5ymtwq5vwx>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-15-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-15-damon.ding@rock-chips.com>

On Thu, Jan 23, 2025 at 06:07:47PM +0800, Damon Ding wrote:
> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> - Set pinctrl of pwm12 for backlight
> - Enable edp0/hdptxphy0/vp2
> - Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
> - Add aux-bus/panel nodes
> 
> For RK3588, the PLL_V0PLL is specifically designed for the VOP2. This
> means the clock rate of PLL_V0PLL can be adjusted according to the dclk
> rate of relevant VP. It is typically assigned as the dclk source of a
> specific VP when the clock of relevant display mode is unusual, such as
> the eDP panel 'lg,lp079qx1-sp0v' paired with RK3588S EVB1, which has a
> clock rate of 202.02MHz.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Remove brightness-levels and default-brightness-level properties in
>   backlight node.
> - Add the detail DT changes to commit message.
> 
> Changes in v3:
> - Use aux-bus instead of platform bus for edp-panel.
> 
> Changes in v4:
> - Add comments related to the use of panel compatible "lg,lp079qx1-sp0v"
>   in the commit message.
> 
> Changes in v5:
> - Use "edp-panel" instead of "lg,lp079qx1-sp0v"
> - Remove unnecessary comments in commit message
> - Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
> 
> Changes in v6:
> - Add PLL_V0PLL related descriptions in commit message
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..a8c151b41e21 100644
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
> @@ -238,6 +239,41 @@ &combphy2_psu {
>  	status = "okay";
>  };
>  
> +&edp0 {
> +	force-hpd;

Why? Please mention the reason in the commit message.

> +	status = "okay";
> +
> +	aux-bus {
> +		panel {
> +			compatible = "edp-panel";
> +			backlight = <&backlight>;
> +			power-supply = <&vcc3v3_lcd_edp>;
> +
> +			port {
> +				panel_in_edp: endpoint {
> +					remote-endpoint = <&edp_out_panel>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&edp0_in {
> +	edp0_in_vp2: endpoint {
> +		remote-endpoint = <&vp2_out_edp0>;
> +	};
> +};
> +
> +&edp0_out {
> +	edp_out_panel: endpoint {
> +		remote-endpoint = <&panel_in_edp>;
> +	};
> +};
> +
> +&hdptxphy0 {
> +	status = "okay";
> +};
> +
>  &i2c3 {
>  	status = "okay";
>  
> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
>  };
>  
>  &pwm12 {
> +	pinctrl-0 = <&pwm12m1_pins>;
>  	status = "okay";
>  };
>  
> @@ -1168,3 +1205,20 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>  		};
>  	};
>  };
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vop {
> +	assigned-clocks = <&cru DCLK_VOP2_SRC>;
> +	assigned-clock-parents = <&cru PLL_V0PLL>;
> +	status = "okay";
> +};
> +
> +&vp2 {
> +	vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
> +		reg = <ROCKCHIP_VOP2_EP_EDP0>;
> +		remote-endpoint = <&edp0_in_vp2>;
> +	};
> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

