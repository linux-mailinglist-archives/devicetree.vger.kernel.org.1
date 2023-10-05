Return-Path: <devicetree+bounces-6093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 257E37B9D71
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 5BE3DB209A0
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E491D552;
	Thu,  5 Oct 2023 13:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXC3PtM0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1D61170F
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:44:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1B7DC4AF79;
	Thu,  5 Oct 2023 13:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696513491;
	bh=IkFFhkoG9PJF/VPv6fzmdMzb5oO93rAmvsaj6PG/B9g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aXC3PtM0NeI+GTrAaFSjmGtk9oafrIJKdTnNPhgPs8GQDQ/DuZ/YMl5QmWy+2NFbq
	 ZFbptdQol44twgLZIJIISn4jnJUrLO9M38Vb4ElmNYqyPxUqPZIvsZxF5zWaNPh7S1
	 7lMnFQTWNg49zAhvlhFAYn50RcqM0XCWLlMZ6ZE4IIaykj8sZV9b3DCdg93N9amTu1
	 0wKhIQHNfa1M1kL3DKT8QuC1elcY/SkmEuVYOewZfAXQizbL/rVRi0uqUhC43k0nY/
	 jR810+V+Tp60Ry1rkg27nnodRtz2mUEF1xW8vucC/gDRhOpgCoxbnSPWe8Kt+40u28
	 w8/l/twE/kxqw==
Date: Thu, 5 Oct 2023 14:44:44 +0100
From: Lee Jones <lee@kernel.org>
To: Anjelique Melendez <quic_amelende@quicinc.com>
Cc: pavel@ucw.cz, thierry.reding@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	agross@kernel.org, andersson@kernel.org, luca.weiss@fairphone.com,
	konrad.dybcio@linaro.org, u.kleine-koenig@pengutronix.de,
	quic_subbaram@quicinc.com, quic_gurus@quicinc.com,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pwm@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v5 6/7] leds: rgb: leds-qcom-lpg: Include support for PPG
 with dedicated LUT SDAM
Message-ID: <20231005134444.GF681678@google.com>
References: <20230929003901.15086-1-quic_amelende@quicinc.com>
 <20230929003901.15086-7-quic_amelende@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230929003901.15086-7-quic_amelende@quicinc.com>

On Thu, 28 Sep 2023, Anjelique Melendez wrote:

> On PMICs such as PM8350C, the pattern lookup table (LUT) is stored in a
> separate SDAM from the one where the lpg per-channel data is stored.
> 
> Add support for PPG with a dedicated LUT SDAM while maintaining backward
> compatibility for those targets that use only a single SDAM.
> 
> Co-developed-by: Guru Das Srinagesh <quic_gurus@quicinc.com>
> Signed-off-by: Guru Das Srinagesh <quic_gurus@quicinc.com>
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
> ---
>  drivers/leds/rgb/leds-qcom-lpg.c | 95 ++++++++++++++++++++++++++------
>  1 file changed, 78 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/leds/rgb/leds-qcom-lpg.c b/drivers/leds/rgb/leds-qcom-lpg.c
> index a6cea6bd7167..910c7cf740cc 100644
> --- a/drivers/leds/rgb/leds-qcom-lpg.c
> +++ b/drivers/leds/rgb/leds-qcom-lpg.c
> @@ -42,6 +42,8 @@
>  #define PWM_DTEST_REG(x)	(0xe2 + (x) - 1)
>  
>  #define SDAM_REG_PBS_SEQ_EN		0x42
> +#define SDAM_PBS_TRIG_SET		0xe5
> +#define SDAM_PBS_TRIG_CLR		0xe6
>  
>  #define TRI_LED_SRC_SEL		0x45
>  #define TRI_LED_EN_CTL		0x46
> @@ -61,7 +63,10 @@
>  #define RAMP_STEP_DURATION(x)		(((x) * 1000 / DEFAULT_TICK_DURATION_US) & 0xff)
>  
>  /* LPG common config settings for PPG */
> +#define SDAM_START_BASE			0x40
>  #define SDAM_REG_RAMP_STEP_DURATION		0x47
> +
> +#define SDAM_LUT_SDAM_LUT_PATTERN_OFFSET	0x45
>  #define SDAM_LPG_SDAM_LUT_PATTERN_OFFSET	0x80
>  
>  /* LPG per channel config settings for PPG */
> @@ -70,6 +75,8 @@
>  #define SDAM_END_INDEX_OFFSET			0x3
>  #define SDAM_START_INDEX_OFFSET		0x4
>  #define SDAM_PBS_SCRATCH_LUT_COUNTER_OFFSET	0x6
> +#define SDAM_PAUSE_HI_MULTIPLIER_OFFSET	0x8
> +#define SDAM_PAUSE_LO_MULTIPLIER_OFFSET	0x9
>  
>  struct lpg_channel;
>  struct lpg_data;
> @@ -86,6 +93,7 @@ struct lpg_data;
>   * @lut_bitmap:	allocation bitmap for LUT entries
>   * @pbs_dev:	PBS device
>   * @lpg_chan_sdam:	LPG SDAM peripheral device
> + * @lut_sdam:	LUT SDAM peripheral device
>   * @pbs_en_bitmap:	bitmap for tracking PBS triggers
>   * @triled_base:	base address of the TRILED block (optional)
>   * @triled_src:	power-source for the TRILED
> @@ -110,6 +118,7 @@ struct lpg {
>  
>  	struct pbs_dev *pbs_dev;
>  	struct nvmem_device *lpg_chan_sdam;
> +	struct nvmem_device *lut_sdam;
>  	unsigned long pbs_en_bitmap;
>  
>  	u32 triled_base;
> @@ -253,6 +262,13 @@ static int lpg_clear_pbs_trigger(struct lpg_channel *chan)
>  		rc = nvmem_device_write(chan->lpg->lpg_chan_sdam, SDAM_REG_PBS_SEQ_EN, 1, &val);
>  		if (rc < 0)
>  			return rc;
> +
> +		if (chan->lpg->lut_sdam) {
> +			val = PBS_SW_TRIG_BIT;
> +			rc = nvmem_device_write(chan->lpg->lpg_chan_sdam, SDAM_PBS_TRIG_CLR, 1, &val);
> +			if (rc < 0)
> +				return rc;
> +		}
>  	}
>  
>  	return 0;
> @@ -268,9 +284,15 @@ static int lpg_set_pbs_trigger(struct lpg_channel *chan)
>  		if (rc < 0)
>  			return rc;
>  
> -		rc = qcom_pbs_trigger_event(chan->lpg->pbs_dev, val);
> -		if (rc < 0)
> -			return rc;
> +		if (chan->lpg->lut_sdam) {
> +			rc = nvmem_device_write(chan->lpg->lpg_chan_sdam, SDAM_PBS_TRIG_SET, 1, &val);
> +			if (rc < 0)
> +				return rc;
> +		} else {
> +			rc = qcom_pbs_trigger_event(chan->lpg->pbs_dev, val);
> +			if (rc < 0)
> +				return rc;
> +		}
>  	}
>  	set_bit(chan->lpg_idx, &chan->lpg->pbs_en_bitmap);
>  
> @@ -341,8 +363,15 @@ static int lpg_lut_store_sdam(struct lpg *lpg, struct led_pattern *pattern,
>  
>  	for (i = 0; i < len; i++) {
>  		brightness = pattern[i].brightness;
> -		addr = SDAM_LPG_SDAM_LUT_PATTERN_OFFSET + i + idx;
> -		rc = nvmem_device_write(lpg->lpg_chan_sdam, addr, 1, &brightness);
> +
> +		if (lpg->lut_sdam) {
> +			addr = SDAM_LUT_SDAM_LUT_PATTERN_OFFSET + i + idx;
> +			rc = nvmem_device_write(lpg->lut_sdam, addr, 1, &brightness);
> +		} else {
> +			addr = SDAM_LPG_SDAM_LUT_PATTERN_OFFSET + i + idx;
> +			rc = nvmem_device_write(lpg->lpg_chan_sdam, addr, 1, &brightness);
> +		}
> +
>  		if (rc < 0)
>  			return rc;
>  	}
> @@ -606,13 +635,28 @@ static void lpg_sdam_apply_lut_control(struct lpg_channel *chan)
>  	struct nvmem_device *lpg_chan_sdam = chan->lpg->lpg_chan_sdam;
>  	unsigned int lo_idx = chan->pattern_lo_idx;
>  	unsigned int hi_idx = chan->pattern_hi_idx;
> -	u8 val = 0, conf = 0;
> +	u8 val = 0, conf = 0, lut_offset = 0;
> +	unsigned int hi_pause, lo_pause;
> +	struct lpg *lpg = chan->lpg;
>  
>  	if (!chan->ramp_enabled || chan->pattern_lo_idx == chan->pattern_hi_idx)
>  		return;
>  
> +	hi_pause = DIV_ROUND_UP(chan->ramp_hi_pause_ms, chan->ramp_tick_ms);
> +	lo_pause = DIV_ROUND_UP(chan->ramp_lo_pause_ms, chan->ramp_tick_ms);
> +
>  	if (!chan->ramp_oneshot)
>  		conf |= LPG_PATTERN_CONFIG_REPEAT;
> +	if (chan->ramp_hi_pause_ms && lpg->lut_sdam)
> +		conf |= LPG_PATTERN_CONFIG_PAUSE_HI;
> +	if (chan->ramp_lo_pause_ms && lpg->lut_sdam)
> +		conf |= LPG_PATTERN_CONFIG_PAUSE_LO;
> +
> +	if (lpg->lut_sdam) {
> +		lut_offset = SDAM_LUT_SDAM_LUT_PATTERN_OFFSET - SDAM_START_BASE;
> +		hi_idx += lut_offset;
> +		lo_idx += lut_offset;
> +	}
>  
>  	nvmem_device_write(lpg_chan_sdam, SDAM_PBS_SCRATCH_LUT_COUNTER_OFFSET + chan->sdam_offset, 1, &val);
>  	nvmem_device_write(lpg_chan_sdam, SDAM_PATTERN_CONFIG_OFFSET + chan->sdam_offset, 1, &conf);
> @@ -621,6 +665,12 @@ static void lpg_sdam_apply_lut_control(struct lpg_channel *chan)
>  
>  	val = RAMP_STEP_DURATION(chan->ramp_tick_ms);
>  	nvmem_device_write(lpg_chan_sdam, SDAM_REG_RAMP_STEP_DURATION, 1, &val);
> +
> +	if (lpg->lut_sdam || lpg->lut_base) {
> +		nvmem_device_write(lpg_chan_sdam, SDAM_PAUSE_HI_MULTIPLIER_OFFSET + chan->sdam_offset, 1, &hi_pause);
> +		nvmem_device_write(lpg_chan_sdam, SDAM_PAUSE_LO_MULTIPLIER_OFFSET + chan->sdam_offset, 1, &lo_pause);
> +	}
> +
>  }
>  
>  static void lpg_apply_lut_control(struct lpg_channel *chan)
> @@ -1004,8 +1054,8 @@ static int lpg_pattern_set(struct lpg_led *led, struct led_pattern *led_pattern,
>  	 * enabled. In this scenario the delta_t of the middle entry (i.e. the
>  	 * last in the programmed pattern) determines the "high pause".
>  	 *
> -	 * SDAM devices supporting LUT do not support "low pause", "high pause"
> -	 * or "ping pong"
> +	 * SDAM-based devices do not support "ping pong", and only supports
> +	 * "low pause" and "high pause" with a dedicated SDAM LUT.
>  	 */
>  
>  	/* Detect palindromes and use "ping pong" to reduce LUT usage */
> @@ -1050,9 +1100,9 @@ static int lpg_pattern_set(struct lpg_led *led, struct led_pattern *led_pattern,
>  
>  	/*
>  	 * Find "low pause" and "high pause" in the pattern in the LUT case.
> -	 * LPGs using SDAM for pattern require equal duration of all steps
> +	 * PPG LPGs without LUT SDAM require equal duration of all steps.
>  	 */
> -	if (lpg->lut_base) {
> +	if (lpg->lut_base || lpg->lut_sdam) {
>  		lo_pause = pattern[0].delta_t;
>  		hi_pause = pattern[actual_len - 1].delta_t;
>  	} else {
> @@ -1517,17 +1567,28 @@ static int lpg_init_sdam(struct lpg *lpg)
>  	sdam_count = of_property_count_strings(lpg->dev->of_node, "nvmem-names");
>  	if (sdam_count <= 0)
>  		return 0;
> +	if (sdam_count > 2)

I usually prefer that all magic numbers are #defined.

> +		return -EINVAL;
>  
> -	/* get the SDAM device for LPG/LUT config */
> +	/* get the 1st nvmem device for LPG/LUT config */

Take the opportunity to capitalise this.

>  	lpg->lpg_chan_sdam = devm_nvmem_device_get(lpg->dev, "lpg_chan_sdam");
>  	if (IS_ERR(lpg->lpg_chan_sdam))
>  		return dev_err_probe(lpg->dev, PTR_ERR(lpg->lpg_chan_sdam),
> -				"Failed to get lpg sdam device\n");
> -
> -	lpg->pbs_dev = get_pbs_client_device(lpg->dev);
> -	if (IS_ERR(lpg->pbs_dev))
> -		return dev_err_probe(lpg->dev, PTR_ERR(lpg->pbs_dev),
> -				"Failed to get PBS client device\n");
> +				"Failed to get lpg_chan_sdam device\n");

This is less readable for the user.

> +
> +	if (sdam_count == 1) {
> +		/* get PBS device node if single SDAM device */

Capital - and the one below.

Once these nits are fixed, please apply my:

Reviewed-by: Lee Jones <lee@kernel.org>

> +		lpg->pbs_dev = get_pbs_client_device(lpg->dev);
> +		if (IS_ERR(lpg->pbs_dev))
> +			return dev_err_probe(lpg->dev, PTR_ERR(lpg->pbs_dev),
> +					"Failed to get PBS client device\n");
> +	} else if (sdam_count == 2) {
> +		/* get the 2nd SDAM device for LUT pattern */
> +		lpg->lut_sdam = devm_nvmem_device_get(lpg->dev, "lut_sdam");
> +		if (IS_ERR(lpg->lut_sdam))
> +			return dev_err_probe(lpg->dev, PTR_ERR(lpg->lut_sdam),
> +					"Failed to get lut_sdam device\n");
> +	}
>  
>  	for (i = 0; i < lpg->num_channels; i++) {
>  		chan = &lpg->channels[i];
> -- 
> 2.41.0
> 

-- 
Lee Jones [李琼斯]


