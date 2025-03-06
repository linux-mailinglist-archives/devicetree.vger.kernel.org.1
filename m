Return-Path: <devicetree+bounces-154934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BE03EA54FE5
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 16:59:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9585188AC2A
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 15:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7812116EE;
	Thu,  6 Mar 2025 15:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LD9CrNxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC5921147B
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 15:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741276745; cv=none; b=lbQCxaD1MjBIDSxg3M2B1jbe/IDfHw8X2yLLTZ7VzP67nrlg9+eNVZD/j9yocz5zrewQTFlwvVLtFi0A5uoEzFPkbVH6BM+ZLFhVPgWVhANgbU7f/JdWhvWJ2B6ESwCSicJi9eSL5526k53aUWaQeUVRi434+wuh/gW4+OoYg6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741276745; c=relaxed/simple;
	bh=1jz3wmvzLkfkl5PFGAa1pnV6apaxVdgRZACkDbowk8w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=YGzI2VWTYOwhPgR4rvsmvSiy6UtaB3QOsLewir67nxVsmnSkM/52UEEEeXTN1BvV/RZCHdAtrTtGELxAuBNmwFENx3Z92lpJgIErByIzBZv0JfrAFf0YMHcNQKiDvyFkbzxXaiDsiWmbAhF5zPtMJWcgAkm2JacUp5vBciF3+7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LD9CrNxJ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so443250f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 07:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741276740; x=1741881540; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rr6HJYrIFdh0rI3RgJKPVqyOkkzSUwbjgMWnVkXlprE=;
        b=LD9CrNxJLsn0xQe8Ti0/QLggnwQkcozZX97HRbp38cecmmTolLyrJhR5Lhoq6j3Xzl
         /AuyJr8+6nP5cRZ9KLUPBVYVf1jsy+HvsEq/8hsgU5W0pBGcRzcMfFIahiGDpCYq5ANp
         HINkZQw+Yl1BtXLd5mMgBtcnW/JqSpjhb6sZa0OVPsWVqoQqEobDczbvsHE6tQNDth+q
         dytHcuOXIGLComwrPyZiLJqxpeUqh/18bqTfDO68Yxe+al16qhMzWDilBJfz8IrRfQlm
         3TOLjOFVxj0Loomvwqk3BapIrJLFicWTLM7J34u0htkLG7zh2MscE95pcrXAEMSacQ0i
         8tBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741276740; x=1741881540;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rr6HJYrIFdh0rI3RgJKPVqyOkkzSUwbjgMWnVkXlprE=;
        b=I4w4e3a8dcAUMtf6k8DTDuC+EfBV35dLBGHsG/JpaJYEXZNfHlWYAvV1JXly6NzFj7
         wubFf2OqMHtmgu8oUnejS9kNPLu/zGwMODbf6QU7nhdF0Wk4BNJUaz7ArqYrWRLLGGKB
         KCw3rvLQ9v4+G25778ua9HmEd+4ps/pD+n3dkEoPG3RuZ1tJrHXNePNAYSvFvIYn8FyO
         MUPXORl1LZ6yXvF4pRspD4AD42lQo69uxGVE23f2Tws5sIIQ1Ub5k+KVBCCk2IbFwBjD
         WnU77CyVIhuzoapRDZH+qO6mbQ87cet10po9Qzw+tGA+nW823QVjrqaKnwAFjUcBgJ7R
         I5yw==
X-Forwarded-Encrypted: i=1; AJvYcCXRdZ86bIsTBI6xxDHdtAPtgUzorJ8ZrDiCsYGNG/bMc7pmMycTM2sxwPnR3d1JXOim9T+TWHgfjT8o@vger.kernel.org
X-Gm-Message-State: AOJu0YwRMyqKNZdCXU6UrQpBMDdQS5K++Dh5DFOPrlIu5OZrVy48bHDH
	JTEeM+4QYp3r7Z7ruvbNDPbiH3ih9+/upFVoQ/3/NoB0VE7qIkAN4CSihGsl7vY=
X-Gm-Gg: ASbGncvrTtQMIUTr8GW7P4RR6AoQz957hnr3wDUlwTHJveCXIgHJWNIpSSNtaFl4gJW
	2Au9C1mLsWdd6GTfCUnciIabeoaHz07fFgKnlzQRW4PcuJyc+/vCERMSrni06GAaltX6auFZ2Wf
	duR1VkBYDFdj5gONpKduNEPNyb5pnAvolSkFMB4SYm27NKZ5vgAXg3XoWr9ZbdkdKmaYlhsnyLx
	dFtcFA14Xl+0RhavcLE1tF8svjnU0wbwixwHAphN65rD/i08wQOfpIgRQTZsKGtf9HhP3bHwc4U
	TArql9eMDKhtzRXHoHVlls6+lS+YLONkcIVwJHj9Rc4=
X-Google-Smtp-Source: AGHT+IHVG48PQ3PbBxa6Pppm5OOQfY2250cBwz7kifepeP6HNmcBzErFykhRYqq1LVB1ReOFWmHCsg==
X-Received: by 2002:a05:6000:4020:b0:391:2e0f:efec with SMTP id ffacd0b85a97d-3912e0ff334mr1501348f8f.7.1741276740418;
        Thu, 06 Mar 2025 07:59:00 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:29d4:36d9:5043:acd])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3912c103f41sm2391111f8f.85.2025.03.06.07.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 07:58:59 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>,
  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>,  Jaroslav Kysela <perex@perex.cz>,
  Takashi Iwai <tiwai@suse.com>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,
  jiebing.chen@amlogic.com,  linux-sound@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,  linux-amlogic@lists.infradead.org,
  linux-clk@vger.kernel.org,  jian.xu@amlogic.com,  shuai.li@amlogic.com,
  zhe.wang@amlogic.com
Subject: Re: [PATCH v3 5/6] ASoC: meson: s4: Add s4 tocodec driver
In-Reply-To: <20250228-audio_drvier-v3-5-dbfd30507e4c@amlogic.com> (jiebing
	chen via's message of "Fri, 28 Feb 2025 16:04:13 +0800")
References: <20250228-audio_drvier-v3-0-dbfd30507e4c@amlogic.com>
	<20250228-audio_drvier-v3-5-dbfd30507e4c@amlogic.com>
User-Agent: mu4e 1.12.8; emacs 29.4
Date: Thu, 06 Mar 2025 16:58:59 +0100
Message-ID: <1jfrjq5ews.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 28 Feb 2025 at 16:04, jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org> wrote:

> From: jiebing chen <jiebing.chen@amlogic.com>
>
> S4 tocodec support 8 lane to input, It need to enable
> bclk and mclk control bit when work
>
> Signed-off-by: jiebing chen <jiebing.chen@amlogic.com>
> ---
>  sound/soc/meson/g12a-toacodec.c | 51 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>
> diff --git a/sound/soc/meson/g12a-toacodec.c b/sound/soc/meson/g12a-toacodec.c
> index 531bb8707a3ec4c47814d6a0676d5c62c705da75..41eef9980059285275f0189a06469fc694775955 100644
> --- a/sound/soc/meson/g12a-toacodec.c
> +++ b/sound/soc/meson/g12a-toacodec.c
> @@ -41,6 +41,9 @@
>  #define  CTRL0_BCLK_SEL_LSB		4
>  #define  CTRL0_MCLK_SEL			GENMASK(2, 0)
>  
> +#define CTRL0_BCLK_ENABLE_SHIFT		30
> +#define CTRL0_MCLK_ENABLE_SHIFT		29
> +
>  #define TOACODEC_OUT_CHMAX		2
>  
>  struct g12a_toacodec {
> @@ -129,6 +132,10 @@ static const struct snd_kcontrol_new g12a_toacodec_out_enable =
>  	SOC_DAPM_SINGLE_AUTODISABLE("Switch", TOACODEC_CTRL0,
>  				    CTRL0_ENABLE_SHIFT, 1, 0);
>  
> +static const struct snd_kcontrol_new s4_toacodec_clk_enable =
> +	SOC_DAPM_DOUBLE("Switch", TOACODEC_CTRL0,
> +			CTRL0_BCLK_ENABLE_SHIFT, CTRL0_MCLK_ENABLE_SHIFT, 1, 0);
> +
>  static const struct snd_soc_dapm_widget g12a_toacodec_widgets[] = {
>  	SND_SOC_DAPM_MUX("SRC", SND_SOC_NOPM, 0, 0,
>  			 &g12a_toacodec_mux),
> @@ -143,6 +150,15 @@ static const struct snd_soc_dapm_widget sm1_toacodec_widgets[] = {
>  			    &g12a_toacodec_out_enable),
>  };
>  
> +static const struct snd_soc_dapm_widget s4_toacodec_widgets[] = {
> +	SND_SOC_DAPM_MUX("SRC", SND_SOC_NOPM, 0, 0,
> +			 &sm1_toacodec_mux),
> +	SND_SOC_DAPM_SWITCH("OUT EN", SND_SOC_NOPM, 0, 0,
> +			    &g12a_toacodec_out_enable),
> +	SND_SOC_DAPM_SWITCH("CLK EN", SND_SOC_NOPM, 0, 0,
> +			    &s4_toacodec_clk_enable),

I don't see a reason for the user to control that.

A user controls if the component is enable or not, and possibly select
the lane ... but that's it

You could have to flipped automatically which dapm when the component is
powered, that would make a lot more sense.

> +};
> +
>  static int g12a_toacodec_input_hw_params(struct snd_pcm_substream *substream,
>  					 struct snd_pcm_hw_params *params,
>  					 struct snd_soc_dai *dai)
> @@ -228,6 +244,15 @@ static const struct snd_soc_dapm_route g12a_toacodec_routes[] = {
>  	{ "OUT Capture", NULL, "OUT EN" },
>  };
>  
> +static const struct snd_soc_dapm_route s4_toacodec_routes[] = {
> +	{ "SRC", "I2S A", "IN A Playback" },
> +	{ "SRC", "I2S B", "IN B Playback" },
> +	{ "SRC", "I2S C", "IN C Playback" },
> +	{ "OUT EN", "Switch", "SRC" },
> +	{ "CLK EN", "Switch", "OUT EN" },
> +	{ "OUT Capture", NULL, "CLK EN" },
> +};
> +
>  static const struct snd_kcontrol_new g12a_toacodec_controls[] = {
>  	SOC_SINGLE("Lane Select", TOACODEC_CTRL0, CTRL0_LANE_SEL, 3, 0),
>  };
> @@ -236,6 +261,10 @@ static const struct snd_kcontrol_new sm1_toacodec_controls[] = {
>  	SOC_SINGLE("Lane Select", TOACODEC_CTRL0, CTRL0_LANE_SEL_SM1, 3, 0),
>  };
>  
> +static const struct snd_kcontrol_new s4_toacodec_controls[] = {
> +	SOC_SINGLE("Lane Select", TOACODEC_CTRL0, CTRL0_LANE_SEL_SM1, 7, 0),
> +};
> +
>  static const struct snd_soc_component_driver g12a_toacodec_component_drv = {
>  	.probe			= g12a_toacodec_component_probe,
>  	.controls		= g12a_toacodec_controls,
> @@ -258,6 +287,17 @@ static const struct snd_soc_component_driver sm1_toacodec_component_drv = {
>  	.endianness		= 1,
>  };
>  
> +static const struct snd_soc_component_driver s4_toacodec_component_drv = {
> +	.probe			= sm1_toacodec_component_probe,
> +	.controls		= s4_toacodec_controls,
> +	.num_controls		= ARRAY_SIZE(s4_toacodec_controls),
> +	.dapm_widgets		= s4_toacodec_widgets,
> +	.num_dapm_widgets	= ARRAY_SIZE(s4_toacodec_widgets),
> +	.dapm_routes		= s4_toacodec_routes,
> +	.num_dapm_routes	= ARRAY_SIZE(s4_toacodec_routes),
> +	.endianness		= 1,
> +};
> +
>  static const struct regmap_config g12a_toacodec_regmap_cfg = {
>  	.reg_bits	= 32,
>  	.val_bits	= 32,
> @@ -278,6 +318,13 @@ static const struct g12a_toacodec_match_data sm1_toacodec_match_data = {
>  	.field_bclk_sel	= REG_FIELD(TOACODEC_CTRL0, 4, 6),
>  };
>  
> +static const struct g12a_toacodec_match_data s4_toacodec_match_data = {
> +	.component_drv	= &s4_toacodec_component_drv,
> +	.field_dat_sel	= REG_FIELD(TOACODEC_CTRL0, 19, 20),
> +	.field_lrclk_sel = REG_FIELD(TOACODEC_CTRL0, 12, 14),
> +	.field_bclk_sel	= REG_FIELD(TOACODEC_CTRL0, 4, 6),
> +};
> +
>  static const struct of_device_id g12a_toacodec_of_match[] = {
>  	{
>  		.compatible = "amlogic,g12a-toacodec",
> @@ -287,6 +334,10 @@ static const struct of_device_id g12a_toacodec_of_match[] = {
>  		.compatible = "amlogic,sm1-toacodec",
>  		.data = &sm1_toacodec_match_data,
>  	},
> +	{
> +		.compatible = "amlogic,s4-toacodec",
> +		.data = &s4_toacodec_match_data,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, g12a_toacodec_of_match);

-- 
Jerome

