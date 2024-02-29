Return-Path: <devicetree+bounces-47325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D606D86CCD8
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 16:25:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 501281F24D19
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 15:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D65C13F016;
	Thu, 29 Feb 2024 15:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tVB0QxWe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F8513DB9B
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 15:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709220316; cv=none; b=h8tnW8KyNX0CcqErL7MtHjtw8e9fSHcJSkBXedvfz2YYk6c1b/7yfp4oDEexPV1fS3P0DQ5tyHYrdcKra4oGpsUa0Ntyo7yCH6pYXBeOBUdvfbIlu9qlN82cjRjVZLy7jQMR45xFCtRgk+s74jy04BVCBZdPD8Hj85aDXLY1gks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709220316; c=relaxed/simple;
	bh=xyMWg/lsRt1/tSYBxyHkY6pZYP+10KTC0iFaT8886zw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VD6rZWoOZES1dhPBym7REyEk5r46y/mykMPbfDrzB0m1x7p3YLmqhPWlZ0uBZjgChDv+o1Iy3LjG0QkWDKZf9/2Lz5nGQv1JHS/6XUzOqxkwvXEBjNwOLEsOAr5eaZENiQW/d22my0h5+j92/RW2RfIewM3O3OCJSgwY5jr2Wfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tVB0QxWe; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso887563276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 07:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709220313; x=1709825113; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uzMWoKlDMMLS8CYQyDkEOnyEHux+MlN8O+qm0UOvqjE=;
        b=tVB0QxWeX0cFONIemokbwb7whQYVjR5bLs974fLjKNTSA+IGNzF62BTIj13zUUTZDn
         VZb+8FMPdhYu5fs5OUEgDtdxHjtIVS1Gfbj9qYzBRakPKGS+MgyCK/S5qyTgSFKl8Alp
         7ZHu8oATLtT7fY8QGF4gjqBK1Mml1ajKyp4I67YGp2Vov34H2oPAaAr760AsfdnSXhIH
         +jIpkplhZdavJUwrdq55gNcliNPCgQD5TSeLApIPg8OWDs3jKwNk0a0RUQQrujW2hZhF
         YSq5M8viht4XQ+R7Nw/bevl28jH5eWaXz0Psr4Inhs3UwWxIB2yUPRkOD+QdLavPaTVG
         9D+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709220313; x=1709825113;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uzMWoKlDMMLS8CYQyDkEOnyEHux+MlN8O+qm0UOvqjE=;
        b=f2Hg0dNppZLPKL3R8gk4GZhFO+Jm0/d2xMn19hnPvj+LvS3oqGGKOsJ1QV2604a5cQ
         p2VJpwiXMaEB5yvlJe6XL380PC56iileJNse/oP1orLDk+6f3EBQXhs26Jq2yxF25k8N
         8SMkJ5bbkaApK1yeRgFJw/ybnIA0AHgSneCVMqbvsnaxTlHLTYCfFUwKzPwOQFw6Wgl9
         6CNXEQ/Qoi5n8lKhcg2v/DKQL88PiK2N3s+TF1DUYDliIvvB6xKk0u1zfH6GoeeT3Rtr
         0IYPoZ23ebm2CCSDvnOwT/keAHUoRsRdPtQs0O1Lsbc2uYD8dWQW6TNgAXPNRRspHGew
         FSBg==
X-Forwarded-Encrypted: i=1; AJvYcCXs5Dql7DrWBAT+juchK2JNHoBwk/07vsh942OrPp8OxneJOUbRE0c2E2rEToY7nUf99S0ywwggyiGqCbetp8J0xzu2LjS+KekLxQ==
X-Gm-Message-State: AOJu0YyjyxGfv46GqJ9SyXExAEbGdUgQgOjVijCAQC8BX5B+QGohC7g6
	CktllSwdjIMxXOaH45nXtIAD2rzaT2WP8cPpYxHzEFuXo+oLq++si7AUKscHhzG0935nfxqBKrK
	7VGY9650nAKTuuQnjv/wjUKEVtSEncszKuuKAzzxbPti+FeZ9spZyIQ==
X-Google-Smtp-Source: AGHT+IErTDqtWr/D6m6kf3Ky3S6RSfZ7VB4e2l8ocRKaKu2NzT5rJdZCEfK77WaU/F7nAGBSU9GbC98fAxqFesV0ogg=
X-Received: by 2002:a25:b309:0:b0:dc6:f0ac:6b53 with SMTP id
 l9-20020a25b309000000b00dc6f0ac6b53mr1651319ybj.15.1709220313372; Thu, 29 Feb
 2024 07:25:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Feb 2024 17:25:02 +0200
Message-ID: <CAA8EJpoZn5V8N3=4x4AfYM91XBuCZx47vSS8tB-nCP=LvVsD6g@mail.gmail.com>
Subject: Re: [PATCH RFT 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 29 Feb 2024 at 15:08, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
>
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
>
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.

I think this is not fully correct. Please correct me if I'm wrong, but
it is possible to switch between USB / USB+DP / DP-only at runtime.
See the Status Update and Configure commands.

>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 122 ++++++++++++++++++++++++++++--
>  1 file changed, 117 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index ac5d528fd7a1..b5fb6cbcf867 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -19,6 +19,7 @@
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/usb/typec.h>
> +#include <linux/usb/typec_dp.h>
>  #include <linux/usb/typec_mux.h>
>
>  #include <drm/bridge/aux-bridge.h>
> @@ -1515,6 +1516,10 @@ struct qmp_combo {
>
>         struct typec_switch_dev *sw;
>         enum typec_orientation orientation;
> +
> +       struct typec_mux_dev *mux;
> +       unsigned long mux_mode;
> +       unsigned int svid;
>  };
>
>  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> @@ -3295,17 +3300,111 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
>         return 0;
>  }
>
> -static void qmp_combo_typec_unregister(void *data)
> +static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> +{
> +       struct qmp_combo *qmp = typec_mux_get_drvdata(mux);
> +       const struct qmp_phy_cfg *cfg = qmp->cfg;
> +       enum qphy_mode new_mode;
> +       unsigned int svid;
> +
> +       if (state->mode == qmp->mode)
> +               return 0;
> +
> +       mutex_lock(&qmp->phy_mutex);
> +
> +       if (state->alt)
> +               svid = state->alt->svid;
> +       else
> +               svid = 0; // No SVID
> +
> +       if (svid) {

We should check svid against USB_TYPEC_DP_SID. Otherwise the driver
will mishandle the USB_SID_PD states.

> +               switch (state->mode) {
> +                       /* DP Only */
> +                       case TYPEC_DP_STATE_C:
> +                       case TYPEC_DP_STATE_E:
> +                               new_mode = QPHY_MODE_DP_ONLY;
> +                               break;
> +
> +                               /* DP + USB */
> +                       case TYPEC_DP_STATE_D:
> +                       case TYPEC_DP_STATE_F:
> +                               /* Safe fallback...*/
> +                       default:
> +                               new_mode = QPHY_MODE_COMBO;
> +                               break;
> +               }
> +       } else {
> +               /* Only switch to USB_ONLY when we know we only have USB3 */
> +               if (qmp->mux_mode == TYPEC_MODE_USB3)
> +                       new_mode = QPHY_MODE_USB_ONLY;
> +               else
> +                       new_mode = QPHY_MODE_COMBO;
> +       }
> +
> +       if (new_mode == qmp->init_mode) {
> +               dev_dbg(qmp->dev, "typec_mux_set: same phy mode, bail out\n");
> +               qmp->mode = state->mode;
> +               goto out;
> +       }
> +
> +       if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_powered_on) {
> +               dev_dbg(qmp->dev, "typec_mux_set: DP is still powered on, delaying switch\n");
> +               goto out;
> +       }
> +
> +       dev_dbg(qmp->dev, "typec_mux_set: switching from phy mode %d to %d\n",
> +               qmp->init_mode, new_mode);
> +
> +       qmp->mux_mode = state->mode;
> +       qmp->init_mode = new_mode;
> +
> +       if (qmp->init_count) {
> +               if (qmp->usb_init_count)
> +                       qmp_combo_usb_power_off(qmp->usb_phy);
> +               if (qmp->dp_init_count)
> +                       writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +               qmp_combo_com_exit(qmp, true);
> +
> +               /* Now everything's powered down, power up the right PHYs */
> +
> +               qmp_combo_com_init(qmp, true);
> +               if (qmp->init_mode == QPHY_MODE_DP_ONLY && qmp->usb_init_count) {
> +                       qmp->usb_init_count--;
> +               } else if (qmp->init_mode != QPHY_MODE_DP_ONLY) {
> +                       qmp_combo_usb_power_on(qmp->usb_phy);
> +                       if (!qmp->usb_init_count)
> +                               qmp->usb_init_count++;
> +               }
> +               if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_init_count)
> +                       cfg->dp_aux_init(qmp);
> +       }
> +
> +out:
> +       mutex_unlock(&qmp->phy_mutex);
> +
> +       return 0;
> +}
> +
> +static void qmp_combo_typec_switch_unregister(void *data)
>  {
>         struct qmp_combo *qmp = data;
>
>         typec_switch_unregister(qmp->sw);
>  }
>
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static void qmp_combo_typec_mux_unregister(void *data)
> +{
> +       struct qmp_combo *qmp = data;
> +
> +       typec_mux_unregister(qmp->mux);
> +}
> +
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>         struct typec_switch_desc sw_desc = {};
> +       struct typec_mux_desc mux_desc = { };
>         struct device *dev = qmp->dev;
> +       int ret;
>
>         sw_desc.drvdata = qmp;
>         sw_desc.fwnode = dev->fwnode;
> @@ -3316,10 +3415,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
>                 return PTR_ERR(qmp->sw);
>         }
>
> -       return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
> +       ret = devm_add_action_or_reset(dev, qmp_combo_typec_switch_unregister, qmp);
> +       if (ret)
> +               return ret;
> +
> +       mux_desc.drvdata = qmp;
> +       mux_desc.fwnode = dev->fwnode;
> +       mux_desc.set = qmp_combo_typec_mux_set;
> +       qmp->mux = typec_mux_register(dev, &mux_desc);
> +       if (IS_ERR(qmp->mux)) {
> +               dev_err(dev, "Unable to register typec mux: %pe\n", qmp->mux);
> +               return PTR_ERR(qmp->mux);
> +       }
> +
> +       return devm_add_action_or_reset(dev, qmp_combo_typec_mux_unregister, qmp);
>  }
>  #else
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>         return 0;
>  }
> @@ -3532,7 +3644,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
>         if (ret)
>                 return ret;
>
> -       ret = qmp_combo_typec_switch_register(qmp);
> +       ret = qmp_combo_typec_register(qmp);
>         if (ret)
>                 return ret;
>
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

