Return-Path: <devicetree+bounces-132904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C03279F88ED
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E652189814E
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56751ECC;
	Fri, 20 Dec 2024 00:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wUVKBGsE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3A54A01
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734654022; cv=none; b=NrcbJ4uDSaj1WPWRGIVSiqlkuG1LxiFkt6lrRWanAPJ8nCORknB3AtB/ybJ8tkVFQ+kbnbFF9ZLZhx0FZMBVCxaOeBJj/sRObgcTsxmPtVguoGNmAoYQTv2WZ3jymPyEl2OP+k93lRa/enA5/Wkp6QqlOj9X9BrhfDaR7QAd6wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734654022; c=relaxed/simple;
	bh=Ca7kDoaB+339EG3z+IZK2A06s3S1CHplkcec8uH7sFk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LDfRlUDlaNu+oljusqw+HHMSJ8TPF8Y3BbRLZwyEFT0lz7vlwGt2udCFSJJ0U/WEhJR18PeiaTmvBugxbqx3fgTqg0gxpQVXPCzzJLZp6abPt+QFj2JzouAG18oqsbf9uiU64tVxx16u5n7xafes6QP6qH6dUwcmlOltVoxx/1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wUVKBGsE; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54026562221so1255947e87.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 16:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734654018; x=1735258818; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aGfaJoG1T2GqAeho5K1MGIVQ1DuQHl43bpzlBdelgis=;
        b=wUVKBGsEF8yeFeWNtsilJsAmH8MaRnBOdL0PM3J492x5J0Es54UMsWJluAk6vx2CS+
         J9IeVej1rv0dpYLhLp3OavL2km2TiqXw1QFk9RQQNnaeUgTY6jsnreZ1v7+eQyegy+et
         jVR5qWM4B7zIJaOekMZkNQam1XDiueBDwHSfOB28KPk5YSG0ePKlq43H7HLmpYMCSIs8
         aONNoW9Ti7NMyYW9fuq+nOigLB6PAQS1p+Z/HL8Ghc9va1wRfqGnsnYIjd+kafRxY8Zc
         KPAYj76ZF+YcpgOq61LZvKG3leXNKAVSJpIJiUSlALw6eDV0sxrVKQQeczMQLhumh0wI
         TRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734654018; x=1735258818;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGfaJoG1T2GqAeho5K1MGIVQ1DuQHl43bpzlBdelgis=;
        b=erIEt+7DEQKVat9veDkQ7ryb9uo+wLd7xePfDsWYOWdXWPFiLkMfLI5bxQg/0XjPrC
         4fFJrfOGbRjkPWzZSLcWOFGkzp4846JUcaqBptjM4cRiJxXGG6O7YOzzGktLdPwUvtSP
         eqs6ZoGdLQrwn5ExAePkeLi3YA0tL8jCErnI4hlkMr9/nJLbL8Pygxg5V5SPLP/idOoC
         AR0PS/RMjqTiX3g4zHBrdiq9oYDZfrc57VnNLpBvwQwXYYc+GL9LiNf+DLnWVxzqG1Ew
         SGrcJrN6uYGubl0SHEcynLMeMTBCpLHo3ZqULZ0JDHdBKUdxhaQyqKoOkzLPWUM4ewL7
         UEFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUpBrTD+KZqYWKLjT7BIybSctkL/bUIstuI+I6RGeiLQ3h9Vkp2QrPdW14bDmMnnrCF2y1KiGXHa+5@vger.kernel.org
X-Gm-Message-State: AOJu0YxLGxAtNYoq7hU1JWF1DMPQI8waXhpYSLu+XF6KltHQM07AlKlR
	IU3EKpYy2KUMgoLkXp+xiZS7/dNLoMmrfvPfOGXnYPJD/4HRLp0ce/Bijv+H8S0=
X-Gm-Gg: ASbGnctvCVEAgC6W5Cu1Nrp2xGUUYvdmmrSDXahjBE70l2y0PRwKcwpcrRtHIs9QI3t
	j1IqxhoMoBgJw3jSNbD7DvzrmE2OVaCCVEX9aJR3uCRJDi21q0kUyluj2l98gk9A+aBxBxXzDNn
	XsDE9xmB8isbtaHhIrM4T2taA0Atz3q+/NENvZu451aCdmBO5Qs1URI1hac5DQWnvlo8l+R4uZo
	K16lzjj5OQIAnpx4IvpIhNrZrTQQmgSUce3taVWYduFGxrGAXbB6kc/yAudE+Dgg7A1WDbwKwiD
	lzvH62dIWQ4rBeyxIIx4iZfXsScWwczWL6vm
X-Google-Smtp-Source: AGHT+IFre8iAJ8qmAC/GMNvKWBPlrLOwqvhJV/vx+wZq/0GVkU2u75qwt0RAs2Qd9uPRT+dmO47+yQ==
X-Received: by 2002:a05:6512:114a:b0:540:1d0a:5812 with SMTP id 2adb3069b0e04-54229533ad6mr159865e87.23.1734654018559;
        Thu, 19 Dec 2024 16:20:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238136a8sm317995e87.163.2024.12.19.16.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:20:18 -0800 (PST)
Date: Fri, 20 Dec 2024 02:20:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 14/15] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
Message-ID: <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-15-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-15-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
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
> 
> Changes in v3:
> - Use aux-bus instead of platform bus for edp-panel.
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..9547ab18e596 100644
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
> +	status = "okay";
> +
> +	aux-bus {
> +		panel {
> +			compatible = "lg,lp079qx1-sp0v";

Why do you need the particular compat string here? Can you use the
generic "edp-panel" instead? What if the user swaps the panel?

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
> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>  		};
>  	};
>  };
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vop {
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

