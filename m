Return-Path: <devicetree+bounces-12045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EFC7D7AAC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 04:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A4E71C20CDB
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 02:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA24882E;
	Thu, 26 Oct 2023 02:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2HzjdfI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1443A50
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 02:05:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77420C433C7;
	Thu, 26 Oct 2023 02:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698285947;
	bh=wdYiEIeuPkKdvgg6KAstrOuZq1wQmLMrxjIDacgycTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q2HzjdfIB2JR79TKCvENv+dnDPOLofWHhaYzzZqKI1gg/f+gPD+YZHQv7l3KuqM8i
	 dRO5XB4RwIC5rbIcT8TfcnRQ7AFywresCW+ZkL1duWxzhIPl0fjcq1HKpCm1SYH+t/
	 Ln+YXk8DCKziltY+V8/GOq1Am8e3RzZL9QmtsPssRZ4UYcvATsYXO2MqVYafZmMcgf
	 bD7YtT2SMURo4oJIKrbaoJy9PTUDyY3XUwz0RnwNGybXdTWpvwxmL2cTgGGg6zWFV1
	 cYlPI2tUYnh7z2bxyy675Zy0R71zn1b4VTKqcvUmUNbIaWSUlQyNo3OVaS4ZAzkjwB
	 NRjABYoOT5lFA==
Date: Wed, 25 Oct 2023 19:10:03 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] pinctrl: qcom: handle intr_target_reg
 wakeup_present/enable bits
Message-ID: <vtr3s7fyrionospnmzvm2xl2plsue2jlrc3tjifqua3ihucxao@6hxi3i22bwxs>
References: <20231025-topic-sm8650-upstream-tlmm-v1-0-4e3d84a3a46b@linaro.org>
 <20231025-topic-sm8650-upstream-tlmm-v1-2-4e3d84a3a46b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-tlmm-v1-2-4e3d84a3a46b@linaro.org>

On Wed, Oct 25, 2023 at 09:33:52AM +0200, Neil Armstrong wrote:
> New platforms uses a new set of bits to control the wakeirq
> delivery to the PDC block.
> 
> The intr_wakeup_present_bit indicates if the GPIO supports
> wakeirq and intr_wakeup_enable_bit enables wakeirq delivery
> to the PDC block.
> 
> While the name seems to imply this only enables wakeup events,
> it is required to allow interrupts events to the PDC block.
> 
> Enable this bit in the irq resource request/free if:
> - gpio is in wakeirq map
> - has the intr_wakeup_present_bit
> - the intr_wakeup_enable_bit is set
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/pinctrl/qcom/pinctrl-msm.c | 32 ++++++++++++++++++++++++++++++++
>  drivers/pinctrl/qcom/pinctrl-msm.h |  5 +++++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
> index 395040346d0f..2489a9ac8455 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.c
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
> @@ -1196,6 +1196,7 @@ static int msm_gpio_irq_reqres(struct irq_data *d)
>  {
>  	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
>  	struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
> +	const struct msm_pingroup *g = &pctrl->soc->groups[d->hwirq];
>  	int ret;
>  
>  	if (!try_module_get(gc->owner))
> @@ -1221,6 +1222,24 @@ static int msm_gpio_irq_reqres(struct irq_data *d)
>  	 */
>  	irq_set_status_flags(d->irq, IRQ_DISABLE_UNLAZY);
>  
> +	/*
> +	 * If the wakeup_enable bit is present and marked as available for the
> +	 * requested GPIO, it should be enabled when the GPIO is marked as
> +	 * wake irq in order to allow the interrupt event to be transfered to
> +	 * the PDC HW.
> +	 * While the name implies only the wakeup event, it's also required for
> +	 * the interrupt event.
> +	 */
> +	if (test_bit(d->hwirq, pctrl->skip_wake_irqs) && g->intr_wakeup_present_bit) {
> +		u32 intr_cfg;
> +
> +		intr_cfg = msm_readl_intr_cfg(pctrl, g);
> +		if (intr_cfg & BIT(g->intr_wakeup_present_bit)) {
> +			intr_cfg |= BIT(g->intr_wakeup_enable_bit);
> +			msm_writel_intr_cfg(intr_cfg, pctrl, g);

If I understand correctly, the two modified functions are hooked
straight into the irq_chip, which would imply that nothing prevent
concurrent execution of this and the other accessors of intr_cfg.

If I'm reading this correctly, I think we should perform this
read-modify-write under the spinlock.

Regards,
Bjorn

> +		}
> +	}
> +
>  	return 0;
>  out:
>  	module_put(gc->owner);
> @@ -1230,6 +1249,19 @@ static int msm_gpio_irq_reqres(struct irq_data *d)
>  static void msm_gpio_irq_relres(struct irq_data *d)
>  {
>  	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
> +	struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
> +	const struct msm_pingroup *g = &pctrl->soc->groups[d->hwirq];
> +
> +	/* Disable the wakeup_enable bit if it has been set in msm_gpio_irq_reqres() */
> +	if (test_bit(d->hwirq, pctrl->skip_wake_irqs) && g->intr_wakeup_present_bit) {
> +		u32 intr_cfg;
> +
> +		intr_cfg = msm_readl_intr_cfg(pctrl, g);
> +		if (intr_cfg & BIT(g->intr_wakeup_present_bit)) {
> +			intr_cfg &= ~BIT(g->intr_wakeup_enable_bit);
> +			msm_writel_intr_cfg(intr_cfg, pctrl, g);
> +		}
> +	}
>  
>  	gpiochip_unlock_as_irq(gc, d->hwirq);
>  	module_put(gc->owner);
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.h b/drivers/pinctrl/qcom/pinctrl-msm.h
> index 4968d08a384d..63852ed70295 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.h
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.h
> @@ -58,6 +58,9 @@ struct pinctrl_pin_desc;
>   * @intr_enable_bit:      Offset in @intr_cfg_reg for enabling the interrupt for this group.
>   * @intr_status_bit:      Offset in @intr_status_reg for reading and acking the interrupt
>   *                        status.
> + * @intr_wakeup_present_bit: Offset in @intr_target_reg specifying the GPIO can generate
> + *			  wakeup events.
> + * @intr_wakeup_enable_bit: Offset in @intr_target_reg to enable wakeup events for the GPIO.
>   * @intr_target_bit:      Offset in @intr_target_reg for configuring the interrupt routing.
>   * @intr_target_width:    Number of bits used for specifying interrupt routing target.
>   * @intr_target_kpss_val: Value in @intr_target_bit for specifying that the interrupt from
> @@ -100,6 +103,8 @@ struct msm_pingroup {
>  	unsigned intr_status_bit:5;
>  	unsigned intr_ack_high:1;
>  
> +	unsigned intr_wakeup_present_bit:5;
> +	unsigned intr_wakeup_enable_bit:5;
>  	unsigned intr_target_bit:5;
>  	unsigned intr_target_width:5;
>  	unsigned intr_target_kpss_val:5;
> 
> -- 
> 2.34.1
> 

