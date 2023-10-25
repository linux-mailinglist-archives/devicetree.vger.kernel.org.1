Return-Path: <devicetree+bounces-11587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A594E7D6320
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:34:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C88851C209AC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952CA1865B;
	Wed, 25 Oct 2023 07:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gOymOnkw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D224A18623
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:34:07 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83FEF1FD0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:58 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4083f613275so43294245e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219237; x=1698824037; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jL0GAIv51E8i1Rgut/968eLsYs46SyOe4RrSyOW7IbI=;
        b=gOymOnkwqdS77Uj2ZEnzVDGIPhESmp1d3wisDudirZlZRhyVYtdcovDNPyM15PNZDo
         7rPTvDp6vaLnIRmWIenZ1/K88EfDJ4iCxHhclMVQDkOj+qS+c+DBlWCoZcQL+zNyUjMh
         mvBlqz0D0T9buqP8+TJDppyrWIBOeo8qEL49hj4FA5RKvSlTGtfVWdi1vRUM227xzxBZ
         +uViLga8aHhIjlLw0CZvxqFCBq7e1enkR6iEtiCuxD6d9m6LXi8U7s2jijXqA3bssYqp
         O/CnxB2+I6emCgg76/qTL2A60FPx+fnvQCAae9I1LTErhvLYdb2gi8NkoJS9u9MZ9T3y
         sCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219237; x=1698824037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jL0GAIv51E8i1Rgut/968eLsYs46SyOe4RrSyOW7IbI=;
        b=HwhaMfwkDDjbPyXczIUUNhX7fWx7hNualcGjmjmSOqQeaU2wj2+YvIeZY0bkEyMgA/
         NzslLzKBQKDq/bKMtqRi4EkYZqoK/m2/hrAcrfhNXDWUq3jW8teJEs/SvVL/2eMqThQ/
         32yzmN9Nnu9UDZR1sqgco4KzSj+vh3Lb3G0T4wdQzNg+FtyJ2Pl2sptuZHpMUnakdpc6
         jw8RpWDnldeeGrCSFBt180MASFxgloXprpu0mwniP4g6pfY/dc9BM4elq0fih3mzW5gx
         Du+GDCtMGUt3A2RQlklH+g/3Hk7j6ZRCZiAKHljaOXHfI/xahCU8v6ddp7/x4iVBIwlk
         jT1Q==
X-Gm-Message-State: AOJu0YwJLeS7Q/6StIwZoqdzV5eO7YAZZo+owitq0IwMwkUpKoRZicDb
	caJSYDPfeutM8hL7ZXUYCKj9dA==
X-Google-Smtp-Source: AGHT+IFWdL3nU+qYuom/LgYp0A69FSTpYgHuWMW/16CiiHejHfPCpY2tfnbVzul/uEn28ICntLo5vA==
X-Received: by 2002:a05:600c:1d9b:b0:408:3f61:cb4f with SMTP id p27-20020a05600c1d9b00b004083f61cb4fmr10508030wms.23.1698219236754;
        Wed, 25 Oct 2023 00:33:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d66d1000000b00327cd5e5ac1sm11546605wrw.1.2023.10.25.00.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:33:56 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:33:52 +0200
Subject: [PATCH 2/3] pinctrl: qcom: handle intr_target_reg
 wakeup_present/enable bits
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-tlmm-v1-2-4e3d84a3a46b@linaro.org>
References: <20231025-topic-sm8650-upstream-tlmm-v1-0-4e3d84a3a46b@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-tlmm-v1-0-4e3d84a3a46b@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4135;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FENURLLzGbJikxH5dpkSqXNdnYEc9XYTdgeAVW7PxGc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMTgFY4Gim1/6HtPAPqzitw0IMeQ47Wwiempa65J
 rzqoBYiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjE4AAKCRB33NvayMhJ0Qv+EA
 DJ4M7BjQBBNiTGsHL5NlyWtmB5/A5jDxAyXtToFtZlQQ5HZJbakY2BqVuc9n98eCzAdVj4kVttWyuw
 gqr3vIHLi1RUTEEOaxPVpR9laNh6WPEf3n4nNH2/xRVUA57vaOKankMMYuUKrMKZDwFp/CR91eH3fI
 48TMFUt6bEnMO6m12BTGcu785t0RPEIU85cUQwkIxFVlMyfyXk95xvkfwWxG5sWRkyVPGAQ0DeMx8X
 MrhRrRmwWUHkXNkH+V1rqMEI8pFNcZLcuebJTz5ZmPz7aArVTCkFuc87PzRfrpi/NXbKeCoVatHrQU
 gYc4zlCPtZ/ChCPmG4LXfR1BBbkD0Z/xIKOzuiSd9W0dcBVjttP12rCud79F6mdKd6+ZHzeM3cqT6r
 yMDKQ5b7toyeZZlqM53FuXPSL5FKPsBsyQpDNzJBdR63AkcpmPUoy0bdZsooYDcI3djC1HmoDV22mI
 J/Kmh116nKx/AuvSdY4pQiqMWbEC2bn/sXfcD0L+GmglrjNOzo36pEQdlFuSil6shFQlcUjkAlgiIC
 5PyVI97qKmBe7qOoagV0SmQYc9cBT2w72Yco3sQzchOf1L2mCbl+XdA/bL11usFu+aY7TbwvohnYtL
 dnyOqipd8Acv+fq/FhyVi1VCE3L5dDq6Ba9HernnvwxbHAUqpcfbXz/VhFAw==
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


