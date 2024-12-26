Return-Path: <devicetree+bounces-134171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CC93F9FCD97
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:27:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E9131882A4A
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E40B1474B8;
	Thu, 26 Dec 2024 20:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f6A9NtQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD6D73176
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 20:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735244826; cv=none; b=pEllPVnFah+G/pdLJRo+Jq+oTbJmur/bH3IovgFuaaVwEON1IJvjyNzrJjT5SpZlP5Bwcwp5ls55BMlr9p22Ec7pAMXnzTQEoJcCXp28K2jb3eK7Yat9K0sGsUiPB7mhoxeeDrHemnlnsJGw/7XDaCCBRoZ7hPhCGS6WSinVj1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735244826; c=relaxed/simple;
	bh=fOnGd/KqLI/VumzZaGSVaD53CMMxz6ONRyDe1NtDwek=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G5cFLZokCJCETRUFzIeCH7hgNylTYFedPLxfpnbzM0AqLr/qd2UVfY3I/ZFCfp9Lm916eINVhIwSDtKzv4q3B4LSWiVrTFC6sjtXwSnIGPf2rb4KE9EkjdJujsZhOsKTIFQMImUcd29Chb3d+QSq3W/5Gdiv9s9FaBj4rv4KIJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f6A9NtQI; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e3a0d2d15adso6714886276.0
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 12:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735244823; x=1735849623; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FPKRoDpify9h+IqEe2EG1BoGb8mJ4mV8pWzFyX2ts3w=;
        b=f6A9NtQIIe8b4ESEZIcH6ZtBl+Y5LXmzKjJ41enbwAQQpJmyJY6CI2+gcnPGwQIaAL
         BHqIh1JBgCjqYCvvB5SyHO1XZOXG1BVG0FgJNHHuzOoFrd2IGA2v0zextl/9fpWi9CvH
         V1mlmG5Iwqc4amuUHYTIh0zCTm6KWaD7gwOE3AEOevbDMtFS7zt933iHKdvn2hcOucn8
         X8sYbsMSj0gVSQvyN402F8Swl8bXoj1fSl955kGwhrIOOPrwkZ+GPp2qgJfhD/Tso+qb
         7fWJ+Cl6r2bO3glLeCuNjOIDhJuGNX5kv89wl+ej2Yj1gtgBN74o9Z7tlJQq403l1lT3
         TgfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735244823; x=1735849623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FPKRoDpify9h+IqEe2EG1BoGb8mJ4mV8pWzFyX2ts3w=;
        b=dKQTCLBLr+F/SD1G1Ran6i5OmOzTNUC+gjZTB5nnXST56MZ9yY+lMYBHhCUqKeJEz0
         Jr1qwZemGnBQrdlZvIjv19Bh7+OjtM3kInIQPTHMB8svQjiPOkNr6VoiO9Dl2vG6g2mx
         HsBx/S24qK+dTOH67jGQnIEcHIetaDuTxiXbi3gwTUktzMsNo1h2pZu270d1XBwXUpFw
         cBx8D0Ycx89hFCMNFU1aB9mvzMQWlf+LD7ih08dCq4juvaRI3Znr7bfqDK7mM1r8ZsIE
         ZKZXYc/SufCpXs/rGdwxIOt7z0uK23s9jOOmgw1NNJDxf42imZgFbBj2Z5Q/I9tWnyeg
         ngZg==
X-Forwarded-Encrypted: i=1; AJvYcCUvuyQUTujBDOcfhU6MnuBnNNHz6JXAnLANsCu/pIBuQuBQs/7zilojEBiYDwrsW3Iwuju7V0NRRWhq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp0PY3ALbyBZNeC4cO0AvQ0dh+HsXuDz66p2gWfCyLgDVZ0bS8
	jdVbIT56Ar71qrEKP4Kafy4Yx5QTD5mZj6G8rBuAcwpfxnEDR6G7mdBcSXPDYBIMbau1SBGI+XU
	62qp7cQxulCOx43aGtdu4CbYxEx1I8+B62HmN1A==
X-Gm-Gg: ASbGncv9rlt1faKQ/4CTjFXP2G6qVEvINPN9sNmzrYFDFP4D+uKG+fWgKDk/Suf1vvQ
	cWGzNNROM5aAYB/9+BSNSqgJajo1dv9wDXv/CJe88QVXI30BIy0ptR0LX4VUyoU6DmEh8Gw==
X-Google-Smtp-Source: AGHT+IHDUZL5Eg2UGPvFlhghbyzwMvFDpOHMklFDUf4MZxRXkdzrV37grJ0wXkgFU3RiQ0B52ASFNrZDlpN/T8sXHhM=
X-Received: by 2002:a05:690c:7489:b0:6ef:8122:282f with SMTP id
 00721157ae682-6f3f8134f5emr177842837b3.24.1735244821935; Thu, 26 Dec 2024
 12:27:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-15-damon.ding@rock-chips.com> <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
 <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com> <CAA8EJpp0Smtqx7VQ5zdg9x3EhuLpk4u4vGv=rv8DHJ0rhei18w@mail.gmail.com>
 <32c7ef0a-8da6-449a-8f2d-59965aa622ec@rock-chips.com>
In-Reply-To: <32c7ef0a-8da6-449a-8f2d-59965aa622ec@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 26 Dec 2024 22:26:51 +0200
Message-ID: <CAA8EJpqFwQGT=wYWuSf8izw9V=zJJ-YVA40i3f8L7wnZfPjyTA@mail.gmail.com>
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

On Wed, 25 Dec 2024 at 11:34, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/20 13:38, Dmitry Baryshkov wrote:
> > On Fri, 20 Dec 2024 at 04:38, Damon Ding <damon.ding@rock-chips.com> wrote:
> >>
> >> Hi Dmitry,
> >>
> >> On 2024/12/20 8:20, Dmitry Baryshkov wrote:
> >>> On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
> >>>> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> >>>> - Add edp-panel node
> >>>> - Set pinctrl of pwm12 for backlight
> >>>> - Enable edp0/hdptxphy0/vp2
> >>>>
> >>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>>>
> >>>> ---
> >>>>
> >>>> Changes in v2:
> >>>> - Remove brightness-levels and default-brightness-level properties in
> >>>>     backlight node.
> >>>> - Add the detail DT changes to commit message.
> >>>>
> >>>> Changes in v3:
> >>>> - Use aux-bus instead of platform bus for edp-panel.
> >>>> ---
> >>>>    .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
> >>>>    1 file changed, 52 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >>>> index bc4077575beb..9547ab18e596 100644
> >>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >>>> @@ -9,6 +9,7 @@
> >>>>    #include <dt-bindings/gpio/gpio.h>
> >>>>    #include <dt-bindings/input/input.h>
> >>>>    #include <dt-bindings/pinctrl/rockchip.h>
> >>>> +#include <dt-bindings/soc/rockchip,vop2.h>
> >>>>    #include <dt-bindings/usb/pd.h>
> >>>>    #include "rk3588s.dtsi"
> >>>>
> >>>> @@ -238,6 +239,41 @@ &combphy2_psu {
> >>>>       status = "okay";
> >>>>    };
> >>>>
> >>>> +&edp0 {
> >>>> +    force-hpd;
> >>>> +    status = "okay";
> >>>> +
> >>>> +    aux-bus {
> >>>> +            panel {
> >>>> +                    compatible = "lg,lp079qx1-sp0v";
> >>>
> >>> Why do you need the particular compat string here? Can you use the
> >>> generic "edp-panel" instead? What if the user swaps the panel?
> >>>
> >>
> >> The eDP panels used in conjunction with the RK3588S EVB1 have broken
> >> identification, which is one of the valid reasons for using a particular
> >> compat string. So the generic_edp_panel_probe() can not return success
> >> when using the "edp-panel".
> >
> > Broken how? I don't see such info in the commit message.
> >
>
> The log related to the broken identification may be like:
>
> [    0.623793] panel-simple-dp-aux aux-fdec0000.edp: Unknown panel ETC
> 0x0000, using conservative timings

According to [1] the ETC / 0x0000 is a correct identification for that
panel. I'd suggest adding the timings to the driver instead.

[1]  https://www.elecok.com/data_sheet/107657/LP079QX1-SP0V_7.9%22_a-Si_TFT-LCD%2CPanel_for_LG_Display(EN).pdf?download=true

>
> The eDP panel used in RK3588S EVB1 is indeed the LP079QX1_SP0V model, it
> should be also reasonable to use the "lg,lp079qx1-sp0v".
>
> And I will mention all of the above in the commit message for the next
> version.
>
> >>
> >>>> +                    backlight = <&backlight>;
> >>>> +                    power-supply = <&vcc3v3_lcd_edp>;
> >>>> +
> >>>> +                    port {
> >>>> +                            panel_in_edp: endpoint {
> >>>> +                                    remote-endpoint = <&edp_out_panel>;
> >>>> +                            };
> >>>> +                    };
> >>>> +            };
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&edp0_in {
> >>>> +    edp0_in_vp2: endpoint {
> >>>> +            remote-endpoint = <&vp2_out_edp0>;
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&edp0_out {
> >>>> +    edp_out_panel: endpoint {
> >>>> +            remote-endpoint = <&panel_in_edp>;
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&hdptxphy0 {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>>    &i2c3 {
> >>>>       status = "okay";
> >>>>
> >>>> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
> >>>>    };
> >>>>
> >>>>    &pwm12 {
> >>>> +    pinctrl-0 = <&pwm12m1_pins>;
> >>>>       status = "okay";
> >>>>    };
> >>>>
> >>>> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
> >>>>               };
> >>>>       };
> >>>>    };
> >>>> +
> >>>> +&vop_mmu {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&vop {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&vp2 {
> >>>> +    vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
> >>>> +            reg = <ROCKCHIP_VOP2_EP_EDP0>;
> >>>> +            remote-endpoint = <&edp0_in_vp2>;
> >>>> +    };
> >>>> +};
> >>>> --
> >>>> 2.34.1
> >>>>
>
> Best regards
> Damon
>


-- 
With best wishes
Dmitry

