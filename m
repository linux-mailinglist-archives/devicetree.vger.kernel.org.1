Return-Path: <devicetree+bounces-12779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E88A7DB6B2
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:50:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80E01B20D5D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FDEDF67;
	Mon, 30 Oct 2023 09:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qC6QOEvq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8841DF60
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:50:36 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17BEA1727
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:50:21 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4079ed65471so31167515e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659419; x=1699264219; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0FF7cW+ozRPUvx9An3HlvGz6A6qQX0D1LLS+rxcZDXo=;
        b=qC6QOEvqECRoBcgy2BE3fOnLx3JhVFwSPwZNwV0noqoH/rBpZJD5Ixu/BQixrvcs/w
         3XQ4AgJFVRvB2Yfr0jMlHjxKeXH5mzyM7976efE6143FwkNiHN/xhev/iFaQDfODCkyk
         rAgrmyuKe9ENjkPYeHQh0bPVZ1kF3ycnZldAu6HA/mgrqMayHeVLmPldAjr3pbf4E7/7
         4NNA2B32Quzfl6R8LqHXZ+i4yQ0ZTdUB2jwNGDMrmha50W4HGPgFjaAoVotjSAg+R+M/
         jZldcWnhadxIvizy3o9Tut+U9hFQ0x8f1M4aGNaXbqHsMyN1bh9X7dCPypDknMt5kyN3
         c0uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659419; x=1699264219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0FF7cW+ozRPUvx9An3HlvGz6A6qQX0D1LLS+rxcZDXo=;
        b=bi5bknf1lOVqJd2hgoCbbSpGAlnlT5J9PFprlpnWJMBX7ATmj73lmgmpGZed12jy1j
         d2UxLLFrjqglFKoi2dENePNLPO55BepUa84MKextXhAAbkI8v/4g0Hls/6wOh4ryTmy7
         YoLTU710SBatYSjwpeTMJ/vpFBuBlzDLFiprWLTh2e/ePozbg3EfpTMI+gIY+y8WUe1K
         oXyUe/1tL8JaevGyl9rTOdfKt61PZ5rZNPpbImqtoE6hI65Sn3EMasTIjm2/g+mXilb5
         o3sC7e1VvrzM5HDneCYkHUKan0OtMkSaHETQ3NBsHKuQke5yAo85aborrLmSskTq7d0G
         J4SQ==
X-Gm-Message-State: AOJu0YyY2fik4OfuEwHTuD1cDsv4mesQ0d5ssJUnChRO3KDfoRt5eUpD
	H/twEY3oJU1jsRtQX0QTeX3qfQ==
X-Google-Smtp-Source: AGHT+IF1NnpBsODQpXgf3Ec87j6APNc0YiQ4zQMmT2Zi+PFFpSUPVXezyujsWWAOmKDJ9vgH+7g1hg==
X-Received: by 2002:a05:600c:164a:b0:409:1841:3f42 with SMTP id o10-20020a05600c164a00b0040918413f42mr7497127wmn.13.1698659419350;
        Mon, 30 Oct 2023 02:50:19 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id hj19-20020a05600c529300b0040841e79715sm8625242wmb.27.2023.10.30.02.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:50:18 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:50:14 +0100
Subject: [PATCH v2 2/4] pinctrl: qcom: handle intr_target_reg
 wakeup_present/enable bits
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-tlmm-v2-2-9d4d4386452d@linaro.org>
References: <20231030-topic-sm8650-upstream-tlmm-v2-0-9d4d4386452d@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-tlmm-v2-0-9d4d4386452d@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4202;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=1ptatJKyH9pPJofFc+dvgUmFtmeWDbCxro0Ibxu4dPM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3xWQEf4C6zQlRwBR7iiN6KiqrNvqlAX+iLrMSz6
 5B5sKuyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT98VgAKCRB33NvayMhJ0bm0D/
 4570X4t2BzMHuPBPz0UI0l8Z0vR0cExtkk0TJ6WuWERivburP/MV1XsdTtqlbovgjVE4CMqmcqDwBM
 rp1mQIIgvgRQPD5MqtBBYmET48uv/r0YxXdxpJbUNWbHrLgeIYuUaaiX2TZgXzbiV9AyfJ5XWFNd+s
 z418vjs72otL5LKLpSlEAlQCr2Dufj4MA8N4cIQFeF4RM7IewgygpFO0VzbSN0Z3cm70GyZnztfDvY
 ddkmCyWcvJi3dyraKvZcHP+ZrSZwoPCqVZ17smcNzRFOWONNRYLaZ5fvW0QR4vJY1+fCGV5PWA5Xnr
 GHZcrB/U7VeMcDjRIzl4sy3l5y42JHs8rApT/1ESaMKju4tJCRioECM/TkPQL7w+iMSe0o4pS9hGAs
 mFQKNiym7i1GTTNGFASlLK1dGd7c4F+0SobCF3MI2calBTgYCvpNRm+vjfgrVwQTvwngeVgSkIcBiF
 XoT5uSVoLn4lD0PxaZjhys0++nO0/rlfQee00SQf6/U4b/xvB7C+1TItHLCKGbtpZqN2LC8EZZzEmL
 x3hkzo2nnzAPzFB88lLyxLU2l2QMzT8vfGz+aBpff5xTIUGJUxOebEdcL5UlHo3/aJ81PuadxW26Kn
 qwzF2Ta5wyQQZ7dT/bo4jS2eHjLU+lD7KLt6q1yLUvsHjGeNidR/j6GdTX4g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

New platforms uses a new set of bits to control the wakeirq
delivery to the PDC block.

The intr_wakeup_present_bit indicates if the GPIO supports
wakeirq and intr_wakeup_enable_bit enables wakeirq delivery
to the PDC block.

While the name seems to imply this only enables wakeup events,
it is required to allow interrupts events to the PDC block.

Enable this bit in the irq resource request/free if:
- gpio is in wakeirq map
- has the intr_wakeup_present_bit
- the intr_wakeup_enable_bit is set

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/pinctrl/qcom/pinctrl-msm.c | 32 ++++++++++++++++++++++++++++++++
 drivers/pinctrl/qcom/pinctrl-msm.h |  5 +++++
 2 files changed, 37 insertions(+)

diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
index 395040346d0f..2489a9ac8455 100644
--- a/drivers/pinctrl/qcom/pinctrl-msm.c
+++ b/drivers/pinctrl/qcom/pinctrl-msm.c
@@ -1196,6 +1196,7 @@ static int msm_gpio_irq_reqres(struct irq_data *d)
 {
 	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 	struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
+	const struct msm_pingroup *g = &pctrl->soc->groups[d->hwirq];
 	int ret;
 
 	if (!try_module_get(gc->owner))
@@ -1221,6 +1222,24 @@ static int msm_gpio_irq_reqres(struct irq_data *d)
 	 */
 	irq_set_status_flags(d->irq, IRQ_DISABLE_UNLAZY);
 
+	/*
+	 * If the wakeup_enable bit is present and marked as available for the
+	 * requested GPIO, it should be enabled when the GPIO is marked as
+	 * wake irq in order to allow the interrupt event to be transfered to
+	 * the PDC HW.
+	 * While the name implies only the wakeup event, it's also required for
+	 * the interrupt event.
+	 */
+	if (test_bit(d->hwirq, pctrl->skip_wake_irqs) && g->intr_wakeup_present_bit) {
+		u32 intr_cfg;
+
+		intr_cfg = msm_readl_intr_cfg(pctrl, g);
+		if (intr_cfg & BIT(g->intr_wakeup_present_bit)) {
+			intr_cfg |= BIT(g->intr_wakeup_enable_bit);
+			msm_writel_intr_cfg(intr_cfg, pctrl, g);
+		}
+	}
+
 	return 0;
 out:
 	module_put(gc->owner);
@@ -1230,6 +1249,19 @@ static int msm_gpio_irq_reqres(struct irq_data *d)
 static void msm_gpio_irq_relres(struct irq_data *d)
 {
 	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
+	const struct msm_pingroup *g = &pctrl->soc->groups[d->hwirq];
+
+	/* Disable the wakeup_enable bit if it has been set in msm_gpio_irq_reqres() */
+	if (test_bit(d->hwirq, pctrl->skip_wake_irqs) && g->intr_wakeup_present_bit) {
+		u32 intr_cfg;
+
+		intr_cfg = msm_readl_intr_cfg(pctrl, g);
+		if (intr_cfg & BIT(g->intr_wakeup_present_bit)) {
+			intr_cfg &= ~BIT(g->intr_wakeup_enable_bit);
+			msm_writel_intr_cfg(intr_cfg, pctrl, g);
+		}
+	}
 
 	gpiochip_unlock_as_irq(gc, d->hwirq);
 	module_put(gc->owner);
diff --git a/drivers/pinctrl/qcom/pinctrl-msm.h b/drivers/pinctrl/qcom/pinctrl-msm.h
index 4968d08a384d..63852ed70295 100644
--- a/drivers/pinctrl/qcom/pinctrl-msm.h
+++ b/drivers/pinctrl/qcom/pinctrl-msm.h
@@ -58,6 +58,9 @@ struct pinctrl_pin_desc;
  * @intr_enable_bit:      Offset in @intr_cfg_reg for enabling the interrupt for this group.
  * @intr_status_bit:      Offset in @intr_status_reg for reading and acking the interrupt
  *                        status.
+ * @intr_wakeup_present_bit: Offset in @intr_target_reg specifying the GPIO can generate
+ *			  wakeup events.
+ * @intr_wakeup_enable_bit: Offset in @intr_target_reg to enable wakeup events for the GPIO.
  * @intr_target_bit:      Offset in @intr_target_reg for configuring the interrupt routing.
  * @intr_target_width:    Number of bits used for specifying interrupt routing target.
  * @intr_target_kpss_val: Value in @intr_target_bit for specifying that the interrupt from
@@ -100,6 +103,8 @@ struct msm_pingroup {
 	unsigned intr_status_bit:5;
 	unsigned intr_ack_high:1;
 
+	unsigned intr_wakeup_present_bit:5;
+	unsigned intr_wakeup_enable_bit:5;
 	unsigned intr_target_bit:5;
 	unsigned intr_target_width:5;
 	unsigned intr_target_kpss_val:5;

-- 
2.34.1


