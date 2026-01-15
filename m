Return-Path: <devicetree+bounces-255612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A27D24BA5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9091B304BBCF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3DFA396B7F;
	Thu, 15 Jan 2026 13:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CZH4/vJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BD318DB01
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768483738; cv=none; b=twXJyA+9NPY5JNaFUzePsLHMyNOCNbCEHT7YfoBZXeQ2LqKITBy7xVqKb2dUQ/C9ite4brCt4DsOMpNw1xI2H7C8RLT8h9mwTGZ3wbMU6btiWuq0IQx1XtYMit7znZ3gBsEMgrIy8VZXnyHc5ZxzQtjyH4oY6HuMRL/JGmTL7ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768483738; c=relaxed/simple;
	bh=tKvhlUCBk+8pnj9t8JkQ5oMWdti7nzWkF20pThaGD0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ctiGZrJrcQoDXszr50ZCsl9V2rYeGIg+NbGXiUk4lbYRz9rYVUSHtwgYm6DCfXZrS1NqMfZQZu+0oAylawzyfAfxvHfWs0utBFMIAssXwUBzFuWvLkY9T3+UoOJYeeUem9dbcdKFMGImgTASUIfP5dU7fMUkjlmg6gBQCWpJ/rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CZH4/vJe; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47ee807a4c5so6714135e9.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768483735; x=1769088535; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iK603Yrl6cAoskvtZuzt5inDzVXwdlPWfjvT+cpZDag=;
        b=CZH4/vJeR2nVrMdgUKyFX/oeSxjyrF23jlAb8bKnGsjgl66E4fCieyULMa9ursWt92
         r5LruU1Sui6CFsh42Euy5mpjIjCubASSBygozdqaHIeUIDjyoUHgk5HoC84p5AATq3bO
         Ur/YY2zBwIEtz/G1YnL33YEiwflAJ/4lNpqSzcfAsWl+MhLQCI5D0TqvWevSrmqlWgh3
         +1zol86/sBRKCD6IJffDkJbewBKFggsZQvtwsvz8YV4xS/AK9hfqQtJ4EL00LdylQJxP
         /R1Nh5bDUvfLhjKW5rkw/oHtSCVqT8ZvRGxA0RNIzHXukbUCEvA8ZDdMwh93sMBy8jik
         1IRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768483735; x=1769088535;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iK603Yrl6cAoskvtZuzt5inDzVXwdlPWfjvT+cpZDag=;
        b=CbXXKH3q3zWyVHWZlemrAitA+Qcb+Wxj9aI1SryrvhNNjZCL4m/dfGHTPoB8AE6qyj
         AF3Z82uEWpQDDtj/RhDot2s1IxU9HEL+DpAYJr2rRO0Hx9RyiPgwwOq35bktkLApeRQ/
         ukPFBf0mWIFt1srdfj9h6j9bL1GTddFgK9RwWLwm6G22zRVYVbuSr37IR2LczijjarHD
         zb/UvsNFs5j8zDMYP5PLz3BKsoRwA9lfyf9R1TFZjVesgTlF2Nn6jf6dvktzK4M9V9yJ
         F6WHuA6VbG7gB1bb/8oS6nf+WN3JBzJc0klVfsj7o5vi7gqbHYpKjCofEGtG7G3j7j+0
         moUA==
X-Forwarded-Encrypted: i=1; AJvYcCUTP4CGtKbyXOv2OM+STEixD0KPWIvRWB0y6vQYcV8WZpUQAzGdt13olOEF6SE2tQirlwj6ZaPe9Hk9@vger.kernel.org
X-Gm-Message-State: AOJu0YzQoL0/UnWvT2urMuQYaNok5uH2H3AK8jFlkCR8ilGIP8o/Gzqz
	1tDGgIpdaZZuoMA9LdMfUN19BsQyIob/p2z1uTyM6AX6qlH0CwC/aa/XdKKCJjhyTy8=
X-Gm-Gg: AY/fxX5bTmqUwtlHyTkW+dCza+qBQ2Va0mzf8IKjaclrfI+F5JqiJPXY6htrnSp66iD
	QFEBssbxUjGeWG0MdNnkiYA3IBWAFnbX13Hq1dzbSXvHGhyC0oK+ErxgCm2gfGRZkLSq4hHpbZU
	zwnUSWmZ8vjkAfoUv7fxQsqB5I3QuyTInfpypZgLFLFgstIV4C9ROCbgddUctpjLHqwSWjwygI+
	cr6E2/A+ITfkHDolKAwYx6olBOoS075oG/27xXDQzkBd8B6zuWy5Gtk9LzFkUNRS056gPjWc0xf
	BvOHUTUtg/Axc1aZ2zzMnPxi/jUGostcYZcnQNfK+W7Bf+zHC5BeViC0qv2MhDFXujJk7Jokz53
	gnlvhV0GFmh/4ZDRpA8mBPatybqrgnyZ8lLNz69XqRp//islNmxM9NmQq3hGJ9LprDrsRy9M/9L
	o0NyjdbgKHdSLDDp33dfnfjSFCEqltCbNu7z8Vql/RGq76U4cPfFf2FOAoVudV1U14
X-Received: by 2002:a05:600c:8217:b0:47d:403e:4eaf with SMTP id 5b1f17b1804b1-47ee3311593mr71935275e9.10.1768483735319;
        Thu, 15 Jan 2026 05:28:55 -0800 (PST)
Received: from ?IPV6:2a00:f2a:e0df:cca0:40b7:95ab:607c:4e79? ([2a00:f2a:e0df:cca0:40b7:95ab:607c:4e79])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee0b488d4sm50415825e9.0.2026.01.15.05.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 05:28:54 -0800 (PST)
Message-ID: <e1ed2a68-683c-4235-890b-9b2c5ad93e38@linaro.org>
Date: Thu, 15 Jan 2026 15:28:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: mt8192-afe-pcm: Fix clocks and
 clock-names
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, tudor.ambarus@linaro.org,
 pratyush@kernel.org, mwalle@kernel.org, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, lgirdwood@gmail.com, broonie@kernel.org,
 matthias.bgg@gmail.com, julien.massot@collabora.com, jiaxin.yu@mediatek.com,
 shane.chien@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com, robh@kernel.org
References: <20260115125624.73598-1-angelogioacchino.delregno@collabora.com>
 <20260115125624.73598-3-angelogioacchino.delregno@collabora.com>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <20260115125624.73598-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/15/26 14:56, AngeloGioacchino Del Regno wrote:
> Both clocks and clock-names are missing (a lot of) entries: add
> all the used audio clocks and their description and also fix the
> example node.

Hi Angelo,

This does not really look like a fix, if it was a fix I would expect a
Fixes tag, otherwise, it looks like you are adding a lot of clocks which
were not defined before

Eugen
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 176 ++++++++++++++++--
>  1 file changed, 162 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> index 8ddf49b0040d..16ae3328f70d 100644
> --- a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> +++ b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> @@ -47,16 +47,118 @@ properties:
>        - description: AFE clock
>        - description: ADDA DAC clock
>        - description: ADDA DAC pre-distortion clock
> -      - description: audio infra sys clock
> -      - description: audio infra 26M clock
> +      - description: ADDA ADC clock
> +      - description: ADDA6 ADC clock
> +      - description: Audio low-jitter 22.5792m clock
> +      - description: Audio low-jitter 24.576m clock
> +      - description: Audio PLL1 tuner clock
> +      - description: Audio PLL2 tuner clock
> +      - description: Audio Time-Division Multiplexing interface clock
> +      - description: ADDA ADC Sine Generator clock
> +      - description: audio Non-LE clock
> +      - description: Audio DAC High-Resolution clock
> +      - description: Audio High-Resolution ADC clock
> +      - description: Audio High-Resolution ADC SineGen clock
> +      - description: Audio ADDA6 High-Resolution ADC clock
> +      - description: Tertiary ADDA DAC clock
> +      - description: Tertiary ADDA DAC pre-distortion clock
> +      - description: Tertiary ADDA DAC Sine Generator clock
> +      - description: Tertiary ADDA DAC High-Resolution clock
> +      - description: Audio infra sys clock
> +      - description: Audio infra 26M clock
> +      - description: Mux for audio clock
> +      - description: Mux for audio internal bus clock
> +      - description: Mux main divider by 4
> +      - description: Primary audio mux
> +      - description: Primary audio PLL
> +      - description: Secondary audio mux
> +      - description: Secondary audio PLL
> +      - description: Primary audio en-generator clock
> +      - description: Primary PLL divider by 4 for IEC
> +      - description: Secondary audio en-generator clock
> +      - description: Secondary PLL divider by 4 for IEC
> +      - description: Mux selector for I2S port 0
> +      - description: Mux selector for I2S port 1
> +      - description: Mux selector for I2S port 2
> +      - description: Mux selector for I2S port 3
> +      - description: Mux selector for I2S port 4
> +      - description: Mux selector for I2S port 5
> +      - description: Mux selector for I2S port 6
> +      - description: Mux selector for I2S port 7
> +      - description: Mux selector for I2S port 8
> +      - description: Mux selector for I2S port 9
> +      - description: APLL1 and APLL2 divider for I2S port 0
> +      - description: APLL1 and APLL2 divider for I2S port 1
> +      - description: APLL1 and APLL2 divider for I2S port 2
> +      - description: APLL1 and APLL2 divider for I2S port 3
> +      - description: APLL1 and APLL2 divider for I2S port 4
> +      - description: APLL1 and APLL2 divider for IEC
> +      - description: APLL1 and APLL2 divider for I2S port 5
> +      - description: APLL1 and APLL2 divider for I2S port 6
> +      - description: APLL1 and APLL2 divider for I2S port 7
> +      - description: APLL1 and APLL2 divider for I2S port 8
> +      - description: APLL1 and APLL2 divider for I2S port 9
> +      - description: Top mux for audio subsystem
> +      - description: 26MHz clock for audio subsystem
>  
>    clock-names:
>      items:
>        - const: aud_afe_clk
>        - const: aud_dac_clk
>        - const: aud_dac_predis_clk
> +      - const: aud_adc_clk
> +      - const: aud_adda6_adc_clk
> +      - const: aud_apll22m_clk
> +      - const: aud_apll24m_clk
> +      - const: aud_apll1_tuner_clk
> +      - const: aud_apll2_tuner_clk
> +      - const: aud_tdm_clk
> +      - const: aud_tml_clk
> +      - const: aud_nle
> +      - const: aud_dac_hires_clk
> +      - const: aud_adc_hires_clk
> +      - const: aud_adc_hires_tml
> +      - const: aud_adda6_adc_hires_clk
> +      - const: aud_3rd_dac_clk
> +      - const: aud_3rd_dac_predis_clk
> +      - const: aud_3rd_dac_tml
> +      - const: aud_3rd_dac_hires_clk
>        - const: aud_infra_clk
>        - const: aud_infra_26m_clk
> +      - const: top_mux_audio
> +      - const: top_mux_audio_int
> +      - const: top_mainpll_d4_d4
> +      - const: top_mux_aud_1
> +      - const: top_apll1_ck
> +      - const: top_mux_aud_2
> +      - const: top_apll2_ck
> +      - const: top_mux_aud_eng1
> +      - const: top_apll1_d4
> +      - const: top_mux_aud_eng2
> +      - const: top_apll2_d4
> +      - const: top_i2s0_m_sel
> +      - const: top_i2s1_m_sel
> +      - const: top_i2s2_m_sel
> +      - const: top_i2s3_m_sel
> +      - const: top_i2s4_m_sel
> +      - const: top_i2s5_m_sel
> +      - const: top_i2s6_m_sel
> +      - const: top_i2s7_m_sel
> +      - const: top_i2s8_m_sel
> +      - const: top_i2s9_m_sel
> +      - const: top_apll12_div0
> +      - const: top_apll12_div1
> +      - const: top_apll12_div2
> +      - const: top_apll12_div3
> +      - const: top_apll12_div4
> +      - const: top_apll12_divb
> +      - const: top_apll12_div5
> +      - const: top_apll12_div6
> +      - const: top_apll12_div7
> +      - const: top_apll12_div8
> +      - const: top_apll12_div9
> +      - const: top_mux_audio_h
> +      - const: top_clk26m_clk
>  
>  required:
>    - compatible
> @@ -83,23 +185,69 @@ examples:
>      afe: mt8192-afe-pcm {
>          compatible = "mediatek,mt8192-audio";
>          interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&audsys CLK_AUD_AFE>, <&audsys CLK_AUD_DAC>,
> +                 <&audsys CLK_AUD_DAC_PREDIS>, <&audsys CLK_AUD_ADC>,
> +                 <&audsys CLK_AUD_ADDA6_ADC>, <&audsys CLK_AUD_22M>,
> +                 <&audsys CLK_AUD_24M>, <&audsys CLK_AUD_APLL_TUNER>,
> +                 <&audsys CLK_AUD_APLL2_TUNER>, <&audsys CLK_AUD_TDM>,
> +                 <&audsys CLK_AUD_TML>, <&audsys CLK_AUD_NLE>,
> +                 <&audsys CLK_AUD_DAC_HIRES>, <&audsys CLK_AUD_ADC_HIRES>,
> +                 <&audsys CLK_AUD_ADC_HIRES_TML>, <&audsys CLK_AUD_ADDA6_ADC_HIRES>,
> +                 <&audsys CLK_AUD_3RD_DAC>, <&audsys CLK_AUD_3RD_DAC_PREDIS>,
> +                 <&audsys CLK_AUD_3RD_DAC_TML>, <&audsys CLK_AUD_3RD_DAC_HIRES>,
> +                 <&infracfg CLK_INFRA_AUDIO>, <&infracfg CLK_INFRA_AUDIO_26M_B>,
> +                 <&topckgen CLK_TOP_AUDIO_SEL>, <&topckgen CLK_TOP_AUD_INTBUS_SEL>,
> +                 <&topckgen CLK_TOP_MAINPLL_D4_D4>, <&topckgen CLK_TOP_AUD_1_SEL>,
> +                 <&topckgen CLK_TOP_APLL1>, <&topckgen CLK_TOP_AUD_2_SEL>,
> +                 <&topckgen CLK_TOP_APLL2>, <&topckgen CLK_TOP_AUD_ENGEN1_SEL>,
> +                 <&topckgen CLK_TOP_APLL1_D4>, <&topckgen CLK_TOP_AUD_ENGEN2_SEL>,
> +                 <&topckgen CLK_TOP_APLL2_D4>, <&topckgen CLK_TOP_APLL_I2S0_M_SEL>,
> +                 <&topckgen CLK_TOP_APLL_I2S1_M_SEL>, <&topckgen CLK_TOP_APLL_I2S2_M_SEL>,
> +                 <&topckgen CLK_TOP_APLL_I2S3_M_SEL>, <&topckgen CLK_TOP_APLL_I2S4_M_SEL>,
> +                 <&topckgen CLK_TOP_APLL_I2S5_M_SEL>, <&topckgen CLK_TOP_APLL_I2S6_M_SEL>,
> +                 <&topckgen CLK_TOP_APLL_I2S7_M_SEL>, <&topckgen CLK_TOP_APLL_I2S8_M_SEL>,
> +                 <&topckgen CLK_TOP_APLL_I2S9_M_SEL>, <&topckgen CLK_TOP_APLL12_DIV0>,
> +                 <&topckgen CLK_TOP_APLL12_DIV1>, <&topckgen CLK_TOP_APLL12_DIV2>,
> +                 <&topckgen CLK_TOP_APLL12_DIV3>, <&topckgen CLK_TOP_APLL12_DIV4>,
> +                 <&topckgen CLK_TOP_APLL12_DIVB>, <&topckgen CLK_TOP_APLL12_DIV5>,
> +                 <&topckgen CLK_TOP_APLL12_DIV6>, <&topckgen CLK_TOP_APLL12_DIV7>,
> +                 <&topckgen CLK_TOP_APLL12_DIV8>, <&topckgen CLK_TOP_APLL12_DIV9>,
> +                 <&topckgen CLK_TOP_AUDIO_H_SEL>, <&clk26m>;
> +        clock-names = "aud_afe_clk", "aud_dac_clk",
> +                      "aud_dac_predis_clk", "aud_adc_clk",
> +                      "aud_adda6_adc_clk", "aud_apll22m_clk",
> +                      "aud_apll24m_clk", "aud_apll1_tuner_clk",
> +                      "aud_apll2_tuner_clk", "aud_tdm_clk",
> +                      "aud_tml_clk", "aud_nle",
> +                      "aud_dac_hires_clk", "aud_adc_hires_clk",
> +                      "aud_adc_hires_tml", "aud_adda6_adc_hires_clk",
> +                      "aud_3rd_dac_clk", "aud_3rd_dac_predis_clk",
> +                      "aud_3rd_dac_tml", "aud_3rd_dac_hires_clk",
> +                      "aud_infra_clk", "aud_infra_26m_clk",
> +                      "top_mux_audio", "top_mux_audio_int",
> +                      "top_mainpll_d4_d4", "top_mux_aud_1",
> +                      "top_apll1_ck", "top_mux_aud_2",
> +                      "top_apll2_ck", "top_mux_aud_eng1",
> +                      "top_apll1_d4", "top_mux_aud_eng2",
> +                      "top_apll2_d4", "top_i2s0_m_sel",
> +                      "top_i2s1_m_sel", "top_i2s2_m_sel",
> +                      "top_i2s3_m_sel", "top_i2s4_m_sel",
> +                      "top_i2s5_m_sel", "top_i2s6_m_sel",
> +                      "top_i2s7_m_sel", "top_i2s8_m_sel",
> +                      "top_i2s9_m_sel", "top_apll12_div0",
> +                      "top_apll12_div1", "top_apll12_div2",
> +                      "top_apll12_div3", "top_apll12_div4",
> +                      "top_apll12_divb", "top_apll12_div5",
> +                      "top_apll12_div6", "top_apll12_div7",
> +                      "top_apll12_div8", "top_apll12_div9",
> +                      "top_mux_audio_h", "top_clk26m_clk";
> +        memory-region = <&afe_dma_mem>;
> +        power-domains = <&scpsys MT8192_POWER_DOMAIN_AUDIO>;
>          resets = <&watchdog MT8192_TOPRGU_AUDIO_SW_RST>;
>          reset-names = "audiosys";
>          mediatek,apmixedsys = <&apmixedsys>;
>          mediatek,infracfg = <&infracfg>;
>          mediatek,topckgen = <&topckgen>;
> -        power-domains = <&scpsys MT8192_POWER_DOMAIN_AUDIO>;
> -        clocks = <&audsys CLK_AUD_AFE>,
> -                 <&audsys CLK_AUD_DAC>,
> -                 <&audsys CLK_AUD_DAC_PREDIS>,
> -                 <&infracfg CLK_INFRA_AUDIO>,
> -                 <&infracfg CLK_INFRA_AUDIO_26M_B>;
> -        clock-names = "aud_afe_clk",
> -                      "aud_dac_clk",
> -                      "aud_dac_predis_clk",
> -                      "aud_infra_clk",
> -                      "aud_infra_26m_clk";
> -        memory-region = <&afe_dma_mem>;
>      };
>  
>  ...


