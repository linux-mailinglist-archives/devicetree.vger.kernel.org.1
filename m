Return-Path: <devicetree+bounces-132925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B68669F8BE9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1114C1657F6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 05:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36A386346;
	Fri, 20 Dec 2024 05:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ck/9QVVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC0F182B4
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734673105; cv=none; b=UPuMS0I8qmYpDot5I5Ql0TcMCe9EBDSXxsaMsXEpPuGyWuGgvJe32hz2n0oeqEw4DKWjxpxk66/XeyOJiUZ3bnZXRjNUS+a46aRG8bHaAUE3T+1P/mHg9OW+W3iNYXDUE13g9Tie7f4ZsRhGix8lqasKVih7nKrE9aysrf00wc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734673105; c=relaxed/simple;
	bh=zeQOV3E9wlcWWFvbcl0ckzYaZLfw6mjbr1tRODi8N+8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SlUb8ZNfpVQ9IZv1kSngkGxxzHmOOLoZ/VhWPuk8vVOI6jsqFapEZwt8Oq9BmhVEYGlVlucSPgjMGbjCjK7yGmL/iJKxf7HTKes28m37o23PIvM5DJ0o2eBMpDTVptRIaYDkwG6HfQsWMYzYq+bCT3D7INpo9Lvrxq/J/ChlYHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ck/9QVVT; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6eff5ad69a1so13919677b3.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734673103; x=1735277903; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rIKarjSguBzb5vvGdGEBWsVx805GOCvvnK6El20HXXg=;
        b=Ck/9QVVTcPaJz5F/7BuBuLcrADWWP9uy7jtX/Cvuu2A3WXgxKqrlytGANoryEJQtDd
         4aMrXheF7RB1Yw/TK6UNc+Xr0dEyPDhaboOUcEtVzQXDamFkN/UCcRGMORockBFA10Za
         j9NSEgEuQqRbKZoROtmv4DiegnBsr6Jina4g35qhR9KKL2tDATx8ZA32Es2x1YSRbJK1
         dCw7NvIZ9UFp8cuQUhb4wTAqNfuwgL82iPxgkREtbClERAcu4rHdOrOxfoAR2k3S3MfL
         PgTz6df2kgvW71ooty1N3/YMtJ/IVF+i49O1hbnRjFBRAoJ4caTNgOw3+YqSVr1b1doC
         AFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734673103; x=1735277903;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rIKarjSguBzb5vvGdGEBWsVx805GOCvvnK6El20HXXg=;
        b=Z8biXsHPWcGyGzst9uJyNXf15SoFU2fU21w7Eb9x8sYX2gy9ozNXuC1mGTMe65d7og
         m2IMMgiRgDXR4AnSccmpueOB5qUpJbbDrC2ulykKoHrbl39DQGXoAn7mdgbbZGMsb8rb
         E48fdYuO4RCcrmUksdqMsFNMV2wPNE0WYQQqYb8QxklnWwHF8fTeDHURZJ462fIW9RRk
         J6cQkfZVDRr3vVVNnf8aPATO1pa7ShqtUWI989LIckUg4M2rD6oP3pLrlZX1Dc5mKQP+
         YahBv0wKsf93CXskWkO5fpVizVGyhE3vTbGwhMbZobQJNxlrULjLN+QBym+ixlAlbM6r
         D/1g==
X-Forwarded-Encrypted: i=1; AJvYcCXt5EOm6v59sd9OXdphRJ0ocIPC2PLZvpOtle1ygsTrCId2Jd17kgK5pDWY7XK1t3nV8Q9R1xgf0iZl@vger.kernel.org
X-Gm-Message-State: AOJu0YzloYuN7NRzSon+F3kwKwU2zm4GPcLCVnB/xsv+eB/Ua+yQfyM3
	M7sKEcZIvy14jJOTqasnXrK0yoOErr6c+D/LKgxEUZ2EP+pNXGOixrpfdthfe23P7aeefBTGBIn
	zkkFM+be2Ew0yKuXL3jatTJ91FxLUHF25QA6ORw==
X-Gm-Gg: ASbGncuZ6yQeHZw6pkv1F+rEwocxu/jRFjmdX9SPkFBnpSbzyDKBl7I6GOA5+qiv2bv
	MiqkkPlHuvKSHgO5PC7AUK4tPmN9LsEM9HyUeOmoAlSkUyF0J9k8g
X-Google-Smtp-Source: AGHT+IFzw4UTk3bYJjTLjWStSiQBoWV4fWweBYuliIxs6rVCPb45P2NhqG9sK5ndMaNn705CQufJ7trl8MkIav7ihTk=
X-Received: by 2002:a05:690c:6e0d:b0:6e5:9cb7:853c with SMTP id
 00721157ae682-6f3f822204cmr13331197b3.31.1734673103176; Thu, 19 Dec 2024
 21:38:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-15-damon.ding@rock-chips.com> <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
 <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com>
In-Reply-To: <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 20 Dec 2024 07:38:12 +0200
Message-ID: <CAA8EJpp0Smtqx7VQ5zdg9x3EhuLpk4u4vGv=rv8DHJ0rhei18w@mail.gmail.com>
Subject: Re: [PATCH v3 14/15] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 20 Dec 2024 at 04:38, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/20 8:20, Dmitry Baryshkov wrote:
> > On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
> >> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> >> - Add edp-panel node
> >> - Set pinctrl of pwm12 for backlight
> >> - Enable edp0/hdptxphy0/vp2
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>
> >> ---
> >>
> >> Changes in v2:
> >> - Remove brightness-levels and default-brightness-level properties in
> >>    backlight node.
> >> - Add the detail DT changes to commit message.
> >>
> >> Changes in v3:
> >> - Use aux-bus instead of platform bus for edp-panel.
> >> ---
> >>   .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
> >>   1 file changed, 52 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >> index bc4077575beb..9547ab18e596 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >> @@ -9,6 +9,7 @@
> >>   #include <dt-bindings/gpio/gpio.h>
> >>   #include <dt-bindings/input/input.h>
> >>   #include <dt-bindings/pinctrl/rockchip.h>
> >> +#include <dt-bindings/soc/rockchip,vop2.h>
> >>   #include <dt-bindings/usb/pd.h>
> >>   #include "rk3588s.dtsi"
> >>
> >> @@ -238,6 +239,41 @@ &combphy2_psu {
> >>      status = "okay";
> >>   };
> >>
> >> +&edp0 {
> >> +    force-hpd;
> >> +    status = "okay";
> >> +
> >> +    aux-bus {
> >> +            panel {
> >> +                    compatible = "lg,lp079qx1-sp0v";
> >
> > Why do you need the particular compat string here? Can you use the
> > generic "edp-panel" instead? What if the user swaps the panel?
> >
>
> The eDP panels used in conjunction with the RK3588S EVB1 have broken
> identification, which is one of the valid reasons for using a particular
> compat string. So the generic_edp_panel_probe() can not return success
> when using the "edp-panel".

Broken how? I don't see such info in the commit message.

>
> >> +                    backlight = <&backlight>;
> >> +                    power-supply = <&vcc3v3_lcd_edp>;
> >> +
> >> +                    port {
> >> +                            panel_in_edp: endpoint {
> >> +                                    remote-endpoint = <&edp_out_panel>;
> >> +                            };
> >> +                    };
> >> +            };
> >> +    };
> >> +};
> >> +
> >> +&edp0_in {
> >> +    edp0_in_vp2: endpoint {
> >> +            remote-endpoint = <&vp2_out_edp0>;
> >> +    };
> >> +};
> >> +
> >> +&edp0_out {
> >> +    edp_out_panel: endpoint {
> >> +            remote-endpoint = <&panel_in_edp>;
> >> +    };
> >> +};
> >> +
> >> +&hdptxphy0 {
> >> +    status = "okay";
> >> +};
> >> +
> >>   &i2c3 {
> >>      status = "okay";
> >>
> >> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
> >>   };
> >>
> >>   &pwm12 {
> >> +    pinctrl-0 = <&pwm12m1_pins>;
> >>      status = "okay";
> >>   };
> >>
> >> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
> >>              };
> >>      };
> >>   };
> >> +
> >> +&vop_mmu {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&vop {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&vp2 {
> >> +    vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
> >> +            reg = <ROCKCHIP_VOP2_EP_EDP0>;
> >> +            remote-endpoint = <&edp0_in_vp2>;
> >> +    };
> >> +};
> >> --
> >> 2.34.1
> >>
> >
> Best regards,
> Damon



-- 
With best wishes
Dmitry

