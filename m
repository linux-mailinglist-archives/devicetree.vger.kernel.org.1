Return-Path: <devicetree+bounces-18217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3787F5B28
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2B25B20FEC
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 09:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874B02111A;
	Thu, 23 Nov 2023 09:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="xklR3hXX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26148BA
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 01:38:36 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5cc7966e731so6047697b3.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 01:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700732315; x=1701337115; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9Cq2uvOez9cvoP5vKajshu6haOx7AM5LMNaL0dM3kCo=;
        b=xklR3hXXxYD1/dsfxI65Ft68lS1FG/Mrc2y5FlpAuC77X9PVJdqt4EzS6WVLIIh/A/
         tViaCuJSoylQaqZq9P1esQ0xiipf3N8mttSH1B6hm29k+cEaLu1TCB/I7bsVRIwFyndn
         QB7jTmJYiGGh/IhvLvRJDPG2FpyYND86PiyLUwIIcAuxwcV8PMwK5dlPR0nAcpIAOh1K
         cJdiEPPhRZGN/DDisIZdhEIlqw6ut8ihYvva7tKU28FOPcFiMy1cJirZtq+s5oThd7Cj
         csdYLo/Ii8aLcSFF6YVJ3jpQNDzwd39Pi+lCAlvN1YkEUMNFx/ktEk9C/Sj1WaSqaoZg
         N2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700732315; x=1701337115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Cq2uvOez9cvoP5vKajshu6haOx7AM5LMNaL0dM3kCo=;
        b=Sl6gsw9Ok24JYmf+x+4HwnbHyM6Yx9x33gMiCE4yCKTFx4KArF8aS7D2j27JJ0Aw4b
         CvsUdBNfzBu+rLtMO876ovM3ic7u57nh4Ia0XQFxcNWX3Nqg039JfRxc4osmkJl7Hh8F
         yIFOM8vB3KXuNGdwGQuoEhwhLX7J2L1Emxcn+QgXF8wtogG6NqYJ3KBKTIfSblEXiDgp
         ++udwoL6xOqSiXhnz4Me4W/WcAZzQgedrCjjIBro5eVSn1Qtt9kopLqse8/lCwnliE7G
         693J5he73W8r0jeslZ65oCVHizdsRsiZP5irYBHMQjxdMLzj286DeO2ucr58V7aPhze8
         78Bw==
X-Gm-Message-State: AOJu0YyJbt2sLfasQXCcSOp1VjNdbvXiiS7Ocl0zm9UklVkfNBOJIsqV
	jmKe/E1SHkCdaq9ct6F9ttfwzfE87G3TQekqYVeYiw==
X-Google-Smtp-Source: AGHT+IHUNZ/Kpf46s2OJno2HdyVz1WDaY8aTV/gcTXwP0fy9aTOY2/fgpkJJBKzSzB6foUUtbUHTXljX7Tki6sR+KVY=
X-Received: by 2002:a0d:f485:0:b0:5b3:3eb5:6624 with SMTP id
 d127-20020a0df485000000b005b33eb56624mr4241289ywf.46.1700732314987; Thu, 23
 Nov 2023 01:38:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018061714.3553817-1-s.hauer@pengutronix.de> <20231018061714.3553817-27-s.hauer@pengutronix.de>
In-Reply-To: <20231018061714.3553817-27-s.hauer@pengutronix.de>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 23 Nov 2023 15:08:23 +0530
Message-ID: <CA+VMnFz__fdzm-N-jFX9L+n5znqeopD8B3tZN4FiH5fWtzUu4w@mail.gmail.com>
Subject: Re: [PATCH v8 26/26] arm64: dts: rockchip: rk3588s: Add DFI
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, Chanwoo Choi <chanwoo@kernel.org>, 
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de, 
	Michael Riesch <michael.riesch@wolfvision.net>, Robin Murphy <robin.murphy@arm.com>, 
	Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 18 Oct 2023 at 11:47, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> The DFI unit can be used to measure DRAM utilization using perf. Add the
> node to the device tree. The DFI needs a rockchip,pmu phandle to the pmu
> containing registers for SDRAM configuration details. This is added in
> this patch as well.
>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Notes:
>     Changes since v4:
>      - new patch
>
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 5544f66c6ff41..e693a341f6f27 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -443,6 +443,11 @@ usb_host1_ohci: usb@fc8c0000 {
>                 status = "disabled";
>         };
>
> +       pmu1grf: syscon@fd58a000 {
> +               compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
> +               reg = <0x0 0xfd58a000 0x0 0x10000>;
> +       };
> +
>         sys_grf: syscon@fd58c000 {
>                 compatible = "rockchip,rk3588-sys-grf", "syscon";
>                 reg = <0x0 0xfd58c000 0x0 0x1000>;
> @@ -1329,6 +1334,17 @@ pcie2x1l2_intc: legacy-interrupt-controller {
>                 };
>         };
>
> +       dfi: dfi@fe060000 {
> +               reg = <0x00 0xfe060000 0x00 0x10000>;
> +               compatible = "rockchip,rk3588-dfi";
> +               interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>,
> +                            <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
> +                            <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
> +                            <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
> +               interrupt-names = "ch0", "ch1", "ch2", "ch3";

Look like the names never documented and nor supported explicitly in
the driver. Do we have any patch for fixing it in the mailing-list?

arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb:
dfi@fe060000: 'interrupt-names' does not match any of the regexes:
'pinctrl-[0-9]+'
from schema $id: http://devicetree.org/schemas/devfreq/event/rockchip,dfi.yaml#

Jagan.

