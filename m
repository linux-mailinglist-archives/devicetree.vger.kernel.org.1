Return-Path: <devicetree+bounces-22523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA10808046
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 06:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC67C1C209B5
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 05:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9121170A;
	Thu,  7 Dec 2023 05:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="acjIDfvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EDA0D44
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 21:41:15 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5c6ce4dffb5so371647a12.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 21:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701927674; x=1702532474; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pbKB3KDCHyMmrCqIdSUXcNbNj3UTGK2AJVOLsxCphNY=;
        b=acjIDfvA8+lpgfU9JN/6NjOvOca/ztAsD2t5tdNvcMDcgE5n/7NuoZvtqXE+0YTcZv
         9c05bs+LJLzCxVEWoMXd+AjuQAklDV75BtveEz7J+ZhvIdWVJIeDf27lN1CDnWZqJyMX
         7NNh7KMYoaFxn7JcRjjE5rDlR/Z0Hmnr416hY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701927674; x=1702532474;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pbKB3KDCHyMmrCqIdSUXcNbNj3UTGK2AJVOLsxCphNY=;
        b=vwS4IWhSHOzWGlXMjYFaZBqdQch8+lHM7j6qpeW33vLxGgeSy55KFiEzz3c1PFqjQg
         u41BuDYVA/jcwZaRgfsCjWOyQVz4rLERGURUr8mp1iG4SYcckPJnY/o7t96hiKjnVcKy
         aM3ZgJYg7OunLGHwYRAZLAC1Zj8oK/StgiJtzQYx6xp+4nR+VVmlhdLubKFUc71dxTs2
         FfMGUtg9IEQKEvf1gA8hiw8yk25+JjsTK2rofx0OGQo+IbfYISeLPmSdWgz1iKnwSeZt
         1FF7nQoq8gTWkMprCplJpxIc6cI7qVkh07HZW9G1FsIzJESRObrjRZhyx5xR88/NfO+6
         52xQ==
X-Gm-Message-State: AOJu0YzGP3GKRW326HBOgqYCXPrpTRgVsgA22gnRLq8Nd/cxMVlObUVz
	TeEFO22n7uNKxvhRQC+f0NDaOg==
X-Google-Smtp-Source: AGHT+IHHosznfHApdXk8jYxZAt0sihG02bvRnehAM3xUMEk/MMegzZD6wM4oAv68dbfWDeAIqA3S4w==
X-Received: by 2002:a05:6a20:160b:b0:18f:457b:7ad3 with SMTP id l11-20020a056a20160b00b0018f457b7ad3mr2052550pzj.51.1701927674594;
        Wed, 06 Dec 2023 21:41:14 -0800 (PST)
Received: from google.com ([2401:fa00:8f:201:ae3:d021:818:26c8])
        by smtp.gmail.com with ESMTPSA id hi16-20020a17090b30d000b00286bd821426sm408812pjb.26.2023.12.06.21.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 21:41:14 -0800 (PST)
Date: Thu, 7 Dec 2023 14:41:09 +0900
From: Chen-Yu Tsai <wenst@chromium.org>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
Message-ID: <20231207054109.GA37230@google.com>
References: <20231204084012.2281292-1-wenst@chromium.org>
 <20231204084012.2281292-7-wenst@chromium.org>
 <4a7c0cd5-d705-4369-90dd-92d6a27c4723@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a7c0cd5-d705-4369-90dd-92d6a27c4723@collabora.com>

On Mon, Dec 04, 2023 at 01:55:06PM +0200, Eugen Hristev wrote:
> Hello Chen-Yu,
> 
> On 12/4/23 10:40, Chen-Yu Tsai wrote:
> > Tentacruel and Tentacool are MT8186 based Chromebooks based on the
> > Krabby design.
> > 
> > Tentacruel, also known as the ASUS Chromebook CM14 Flip CM1402F, is a
> > convertible device with touchscreen and stylus.
> > 
> > Tentacool, also known as the ASUS Chromebook CM14 CM1402C, is a laptop
> > device. It does not have a touchscreen or stylus.
> > 
> > The two devices both have two variants. The difference is a second
> > source touchpad controller that shares the same address as the original,
> > but is incompatible.
> > 
> > The extra SKU IDs for the Tentacruel devices map to different sensor
> > components attached to the Embedded Controller. These are not visible
> > to the main processor.
> > 
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> > Changes since v2:
> > - Picked up Conor's ack
> > - Rename touchpad to trackpad
> > - Drop pinctrl properties from trackpad in tentacruel/tentacool second
> >   source trackpad
> > 
> > Changes since v1:
> > - Reorder SKU numbers in descending order.
> > - Fixed pinconfig node names
> > - Moved pinctrl-* properties after interrupts-*
> > - Switched to interrupts-extended for external components
> > - Marked ADSP as explicitly disabled, with a comment explaining that it
> >   stalls the system
> > - Renamed "touchpad" to "trackpad"
> > - Dropped bogus "no-laneswap" property from it6505 node
> > - Moved "realtek,jd-src" property to after all the regulator supplies
> > - Switched to macros for MT6366 regulator "regulator-allowed-modes"
> > - Renamed "vgpu" regulator name to allow coupling, with a comment
> >   containing the name used in the design
> > - Renamed "cr50" node name to "tpm"
> > - Moved trackpad_pins reference up to i2c2; workaround for second source
> >   component resource sharing.
> > - Fix copyright year
> > - Fixed touchscreen supply name
> > 
> >  arch/arm64/boot/dts/mediatek/Makefile         |    4 +
> >  .../dts/mediatek/mt8186-corsola-krabby.dtsi   |  129 ++
> >  .../mt8186-corsola-tentacool-sku327681.dts    |   57 +
> >  .../mt8186-corsola-tentacool-sku327683.dts    |   24 +
> >  .../mt8186-corsola-tentacruel-sku262144.dts   |   44 +
> >  .../mt8186-corsola-tentacruel-sku262148.dts   |   26 +
> >  .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1719 +++++++++++++++++
> >  7 files changed, 2003 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327681.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi

[...]

> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> > new file mode 100644
> > index 000000000000..8726b2916ef1
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> > @@ -0,0 +1,1719 @@

[...]

> > +	sound: sound {
> > +		compatible = "mediatek,mt8186-mt6366-rt1019-rt5682s-sound";
> > +		pinctrl-names = "aud_clk_mosi_off",
> > +				"aud_clk_mosi_on",
> > +				"aud_clk_miso_off",
> > +				"aud_clk_miso_on",
> > +				"aud_dat_miso_off",
> > +				"aud_dat_miso_on",
> > +				"aud_dat_mosi_off",
> > +				"aud_dat_mosi_on",
> > +				"aud_gpio_i2s0_off",
> > +				"aud_gpio_i2s0_on",
> > +				"aud_gpio_i2s1_off",
> > +				"aud_gpio_i2s1_on",
> > +				"aud_gpio_i2s2_off",
> > +				"aud_gpio_i2s2_on",
> > +				"aud_gpio_i2s3_off",
> > +				"aud_gpio_i2s3_on",
> > +				"aud_gpio_tdm_off",
> > +				"aud_gpio_tdm_on",
> > +				"aud_gpio_pcm_off",
> > +				"aud_gpio_pcm_on",
> > +				"aud_gpio_dmic_sec";
> > +		pinctrl-0 = <&aud_clk_mosi_off>;
> > +		pinctrl-1 = <&aud_clk_mosi_on>;
> > +		pinctrl-2 = <&aud_clk_miso_off>;
> > +		pinctrl-3 = <&aud_clk_miso_on>;
> > +		pinctrl-4 = <&aud_dat_miso_off>;
> > +		pinctrl-5 = <&aud_dat_miso_on>;
> > +		pinctrl-6 = <&aud_dat_mosi_off>;
> > +		pinctrl-7 = <&aud_dat_mosi_on>;
> > +		pinctrl-8 = <&aud_gpio_i2s0_off>;
> > +		pinctrl-9 = <&aud_gpio_i2s0_on>;
> > +		pinctrl-10 = <&aud_gpio_i2s1_off>;
> > +		pinctrl-11 = <&aud_gpio_i2s1_on>;
> > +		pinctrl-12 = <&aud_gpio_i2s2_off>;
> > +		pinctrl-13 = <&aud_gpio_i2s2_on>;
> > +		pinctrl-14 = <&aud_gpio_i2s3_off>;
> > +		pinctrl-15 = <&aud_gpio_i2s3_on>;
> > +		pinctrl-16 = <&aud_gpio_tdm_off>;
> > +		pinctrl-17 = <&aud_gpio_tdm_on>;
> 
> These two above bring errors, as discussed

Looking at the machine driver code, it seems OK to remove them. So I
will.

> > +		pinctrl-18 = <&aud_gpio_pcm_off>;
> > +		pinctrl-19 = <&aud_gpio_pcm_on>;
> > +		pinctrl-20 = <&aud_gpio_dmic_sec>;
> > +		mediatek,adsp = <&adsp>;
> > +		mediatek,platform = <&afe>;
> > +
> > +		playback-codecs {
> > +			sound-dai = <&it6505dptx>, <&rt1019p>;
> > +		};
> > +
> > +		headset-codec {
> > +			sound-dai = <&rt5682s 0>;
> > +		};
> > +	};

[...]

> > +&afe {
> > +	i2s0-share = "I2S1";
> > +	i2s3-share = "I2S2";
> 
> These i2sX-share are not documented.

Looks like this got handled directly in the machine driver.
Will remove.

> > +	status = "okay";
> > +};

[...]

> > +&i2c2 {
> > +	pinctrl-names = "default";
> > +	/*
> > +	 * Trackpad pin put here to work around second source components
> > +	 * sharing the pinmux in steelix designs.
> > +	 */
> > +	pinctrl-0 = <&i2c2_pins>, <&trackpad_pin>;
> 
> While this makes things better, it's not correct. The i2c2 bus does not use the
> trackpad pin. I would believe a better way is to have a node that holds both
> trackpads and claims the pin for both at once. And that node not being the i2c bus
> as there could be more devices on the bus and the pin would be taken regardless of
> any trackpad probing , which is not right.

That is still a workaround, and it also doesn't work because there are
no bindings nor code for the extra device node level.

> Another option is to disable parallel probing for the trackpads, such that when one
> fails to probe, the pin is released and can be taken by the other one.

We thought about this but this workaround would impact everyone else not
dealing with second source components.

[...]

> > +	aud_gpio_tdm_off: aud-gpio-tdm-off-pins { };
> > +
> > +	aud_gpio_tdm_on: aud-gpio-tdm-on-pins { };
> 
> Guess have to remove these two empty pinctrls.

Yes. I'll try that. Looking at the code it should work.


Thanks for the review
ChenYu

