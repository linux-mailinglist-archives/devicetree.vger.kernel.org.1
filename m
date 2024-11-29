Return-Path: <devicetree+bounces-125489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFA19DC19F
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 10:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2570280FC4
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 09:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5CBD177998;
	Fri, 29 Nov 2024 09:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wm9gViXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EF0158DD1
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 09:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732873542; cv=none; b=Q7FuUNdkuiOpbSmEO9oglEGBptK5O75gPldRjkC9IR+nqhfAHMQMYXL3aTFHvM7xl4P0QnNJDy4mOnTC+vak0nSRqxy0+xPaeJ7WvEboToyaWMQ4xEavA6C/y5/VbtJ8zvl0RbRI0kXpDsNA/X4geLxuK97httSszl82DZCGVck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732873542; c=relaxed/simple;
	bh=kYTOdYLfumByQtT4lm725ivrBjreeVTVPxGOeWmX+/k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=brhRk6SSIqub9ilkYcnMr7BdPxIlXxyxxbNsZ9yRv/R4g3f4Z+Rs1uplMBX3o/YjmXHFUSo031+HgN6qxjLu3tC4g2ZSlX732Re7/dLpCXSElRF3W1eHmDYF5DkRsD9nncHLEa/fbBHO0JvoZRUgs2sO4gtXeD7eW9pNWg00H4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wm9gViXh; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5f201a932b2so677864eaf.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 01:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732873540; x=1733478340; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v/VnXj0xSm64G+xnhmGLSxnRi7eiVgvL2X5pSK2r9No=;
        b=Wm9gViXhsZyJNbf9g5OwcrHY/H7XIEoTUjZf2h5O+fnnA7yi/TbH3WGRkSUZZ18+7/
         7uiNhWnhTbpTr32Uy4Pw8A0a81GWTAemukRRYQbWiNIFy+oSgqVj85s6lqeiW9oJWAAb
         zaEy4Ww9p6uErf/4DLAFgKXyU318c1GTj88lACZmIwytsco45J+G/cr33NFG1tiXGT62
         z+h1/TVzl59xKQQInqdGfEHuI5l5O/SQ1LlRLYgQCDofC81A9ATWxecwtpDBG+IID/YG
         QkpNsSabIy08xx+l75sVe0/li+2oAaCgxlTfWFAAsww1YLRvt9pbPFDQj7+BarRhuNaE
         Jxmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732873540; x=1733478340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v/VnXj0xSm64G+xnhmGLSxnRi7eiVgvL2X5pSK2r9No=;
        b=s/Rvg90gb7EzlJa+dAMpaJpId2wZfYrfxNwCIrj67FG3Yhx/oO2i9yz006yP3VIYmX
         i8BNDvJ47kqneFs0sTRZgMPGTPJnAnveQji09DhySZgxVwQ2q3NMjo84rrSI+3GubUlW
         6m3IKIOJJy2zk/w1ulnr2GVvAfcSUf2K+GLsaYw6vM5JRd6MXjYAL8hruF19ooftyoHl
         V4o+apjiwhGqwlTZkPwNHynceoopvR45biHvpoGRaQspurfaFQPdjGCT2SHlw3uWARi7
         POI2yok+IOg4Tkx2CE/yOy4Gva0DFvlmrZW+c9Lrc/I8ZvcPb8zgUjcTFipKVzlsojy7
         2xfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpFwyDe3H/Hsd5iihQDmCx4p/gLp9s9E5uXEOKX4AxZQ0flSgiMVtgWHO1f1zLrc9VsAHp+VOP0Zhq@vger.kernel.org
X-Gm-Message-State: AOJu0YyWKmkdQXtu2mSaqZOnx9Z0bcWpJDw8J1u0OGjD+4d1Ub6ZwMVV
	jHOhNPkqm/cd+ncQwA9vi3Za9RtjOIT+SluehgYRuyuXRRrkt7nOzMaqnJYaIKDqHiORU1HDGUZ
	lKU8pdoNXxUyPKRBNvSzPycKgnRW9C39ZBVjBEQ==
X-Gm-Gg: ASbGncsTtpdPkKbfmXqpk+df3z20etHlC10uMmGA7vPj3jVf7ir4EisOzgcguIeSoE4
	avHgzPI8Bl68aYnU87kEaqEUs5cCzDkmz
X-Google-Smtp-Source: AGHT+IHnxS6dF7DDI6r75yOFHU8KPB1OwTru3sBOUtig1dAA1cBoVlmH0MuchExTRQ+k+9Oap9bXnNBRkMu1gCqUvYY=
X-Received: by 2002:a05:6820:2183:b0:5ee:ebcb:e6e9 with SMTP id
 006d021491bc7-5f20a168f5cmr5503129eaf.5.1732873540094; Fri, 29 Nov 2024
 01:45:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-7-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-7-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:45:29 +0000
Message-ID: <CADrjBPpZgmE-rwRmbB3BFAL+s0G0rwBiPJ-ZMEVF8BNQ=tviVg@mail.gmail.com>
Subject: Re: [PATCH 7/9] phy: exynos5-usbdrd: gs101: configure SS lanes based
 on orientation
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Wed, 27 Nov 2024 at 10:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> USB SS lanes need to be configured based the connector orientation -

small nit: "based the" -> "based on the"

> at most two lanes will be in use for USB (and the remaining two for
> alternate modes like DP).
>
> For the USB link to come up in SS, the lane configuration registers
> have to be programmed accordingly.
>
> While we still need a way to be notified of the actual connector
> orientation and then reprogram the registers accordingly (at the moment
> the configuration happens just once during phy_init() and never again),
> we can prepare the code doing the configuration to take the orientation
> into account.
>
> Do so.
>
> Note: the mutex is needed to synchronize this with the upcoming
> connector orientation callback.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 72 ++++++++++++++++++++++----=
------
>  1 file changed, 51 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsu=
ng/phy-exynos5-usbdrd.c
> index c1ce6fdeef31..1a34e9b4618a 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -23,6 +23,7 @@
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/soc/samsung/exynos-regs-pmu.h>
> +#include <linux/usb/typec_mux.h>
>
>  /* Exynos USB PHY registers */
>  #define EXYNOS5_FSEL_9MHZ6             0x0
> @@ -209,6 +210,10 @@
>
>  #define EXYNOS9_PMA_USBDP_CMN_REG00B8          0x02e0
>  #define CMN_REG00B8_LANE_MUX_SEL_DP            GENMASK(3, 0)
> +#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE3      BIT(3)
> +#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE2      BIT(2)
> +#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE1      BIT(1)
> +#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE0      BIT(0)
>
>  #define EXYNOS9_PMA_USBDP_CMN_REG01C0          0x0700
>  #define CMN_REG01C0_ANA_LCPLL_LOCK_DONE                BIT(7)
> @@ -383,11 +388,13 @@ struct exynos5_usbdrd_phy_drvdata {
>   * @clks: clocks for register access
>   * @core_clks: core clocks for phy (ref, pipe3, utmi+, ITP, etc. as requ=
ired)
>   * @drv_data: pointer to SoC level driver data structure
> + * @phy_mutex: mutex protecting phy_init/exit & TCPC callbacks
>   * @phys: array for 'EXYNOS5_DRDPHYS_NUM' number of PHY
>   *         instances each with its 'phy' and 'phy_cfg'.
>   * @extrefclk: frequency select settings when using 'separate
>   *            reference clocks' for SS and HS operations
>   * @regulators: regulators for phy
> + * @orientation: TypeC connector orientation - normal or flipped
>   */
>  struct exynos5_usbdrd_phy {
>         struct device *dev;
> @@ -397,6 +404,7 @@ struct exynos5_usbdrd_phy {
>         struct clk_bulk_data *clks;
>         struct clk_bulk_data *core_clks;
>         const struct exynos5_usbdrd_phy_drvdata *drv_data;
> +       struct mutex phy_mutex;
>         struct phy_usb_instance {
>                 struct phy *phy;
>                 u32 index;
> @@ -406,6 +414,8 @@ struct exynos5_usbdrd_phy {
>         } phys[EXYNOS5_DRDPHYS_NUM];
>         u32 extrefclk;
>         struct regulator_bulk_data *regulators;
> +
> +       enum typec_orientation orientation;

typec_orientation is defined in #include <linux/usb/typec.h> so it
should be added to the includes

Apart from that

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Validated that a super-speed USB link is established between Pixel 6
phone and my laptop with this patch applied and that adb works.

regards,

Peter

