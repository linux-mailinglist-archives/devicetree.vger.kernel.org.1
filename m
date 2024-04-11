Return-Path: <devicetree+bounces-58254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4618A125B
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09B9D1C21E0F
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3171F146D76;
	Thu, 11 Apr 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bUGqGzKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7541D1465BB
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 10:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712833103; cv=none; b=Wng0aYFoPhHSJEpCn4cva+BPb4/LqiKolwkaK/w0lF+NPePdiTsQGWpnvqMHM3CKI2wwdAQpG8sq2zPeA47sfk5OB6nP4jSjr/H4Qu7foCHKu5eSQX5kP8EXYVBY2vsvYUOhV2mAscguN1mCMZooRmL/JBBppLveusFlGXCrBcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712833103; c=relaxed/simple;
	bh=Q2L9EqQaoahvi2kIOMCzAFWuv20QMpQLJXszbwCt9xY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LD+vUq+YZNUQUXflreR7o5Dt/zTtRfE5M8gu9Oq8RJGMfv0dh9iqciojX8ngIxlUm7gqfxjKV7Pg2orHhXSAq6T3vXbc60A9PcZ+l2pD78SHnRMTY99s+huVWcS2+jqfAr7mLi+AUO+EfNpEUWr7ON7WbAm28DcfN1cMrDDPedg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bUGqGzKA; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-de0f9a501d6so4140747276.3
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 03:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712833100; x=1713437900; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uNQToZQI+fIvP5425itrbp65fFbHh4czABdrVfrmfFw=;
        b=bUGqGzKAs4XLjE7uEDeAaNitiR1doaw5aznBMJuQ/QdwGjITtwcebuQuiG4DvaSt/O
         WnTWnJJgHPYQJtczSEdCTK6B6w6RZBpcOcblIPPG0VT4r8sFc9L+gO0gOEHO+ETY/fOl
         UhxUFbWLBgVMzkO2CtzcDnd1IW8nyh6ynmAEUxaXhmRG0AUYLr0L+JjgGhnQ5VS4iSot
         yxXRCFO8pJWgaE6ldT+u2zhq6zrrhnPNZAOqEWRKKZOB4I/gpPVHRWo+qoMWNg9MDHRV
         Oj+3t+XY7sFr9O8CcR5OzgPcplLwyRWAlKaVUuyQ3+c5YBuz6XDXcX1hP+ojbuNQFnpK
         sO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712833100; x=1713437900;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uNQToZQI+fIvP5425itrbp65fFbHh4czABdrVfrmfFw=;
        b=C8rliGy8lukKRnRrSzcZEpoMhTIlrP3cOUZrtE/7j2g3WOZMtifOZx6FWarsLvY6kh
         jBcMRU9AKfoP01FvdBRnDe2mrVMpi1iZWHcDJAkt2unPnBxd+m2WECqFk61o9RBhkMlI
         Uk9YcDG0Wsqll2IRp87UjdlGnFoJwZNYLzy7UYnQT5idWOLLrfkrsEAGM5mgvhP2QeWe
         O5EtgjewPnC+mFnPS5ovuiyj0heUkZ56rpvzgTaemrH9KqSMGSUujt/ck4IajxIE6fQB
         mgTmQQ8Qesjwd1oRkoSHaRxca/lUZS7TendGaxBnCE5c9fgCxYkjG4RCPZK3JbKqus03
         lCTA==
X-Forwarded-Encrypted: i=1; AJvYcCV95hT/AfDfRlXypKhw6JP/2OIoBnV+c05VM4avxTwmiWTw1/XV7bSO43WQVMJi1ElNW0XT29dKWblGHmZZxxI+n95wox2QGlQPqA==
X-Gm-Message-State: AOJu0YxA9nbVooE38T50d81RBJzIbSKI1ooneoZJooRa/0/l8cuFJL9t
	94+HinexXKL2pqAcZ8IfPw5easSXekO8j1SO90pPERCJQ2aOK0ycOx/WG6I4xwddEx+sTqdS3pE
	y3yhbYzu5HW+dogRbXGZYzdzWK9NvvNRV6e24Ew==
X-Google-Smtp-Source: AGHT+IGRZup25Jt5VsX1lueXFQlvsaNC+dGT12zK30dqQnowjBNlEgsCznI5kspsrHV74XEiR3WlBtWijFWknky5PiI=
X-Received: by 2002:a25:bc4d:0:b0:dcd:1854:9f43 with SMTP id
 d13-20020a25bc4d000000b00dcd18549f43mr4742934ybk.3.1712833100506; Thu, 11 Apr
 2024 03:58:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240411-pm8xxx-vibrator-new-design-v9-0-7bf56cb92b28@quicinc.com>
 <20240411-pm8xxx-vibrator-new-design-v9-2-7bf56cb92b28@quicinc.com>
In-Reply-To: <20240411-pm8xxx-vibrator-new-design-v9-2-7bf56cb92b28@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 11 Apr 2024 13:58:09 +0300
Message-ID: <CAA8EJpoL9vCAUgWmHcoxppo_gJqaw_xqdYqcJkS6Xza-5aSh3A@mail.gmail.com>
Subject: Re: [PATCH v9 2/4] input: pm8xxx-vibrator: refactor to support new
 SPMI vibrator
To: quic_fenglinw@quicinc.com
Cc: kernel@quicinc.com, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 11 Apr 2024 at 11:32, Fenglin Wu via B4 Relay
<devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
>
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
>
> Currently, vibrator control register addresses are hard coded,
> including the base address and offsets, it's not flexible to
> support new SPMI vibrator module which is usually included in
> different PMICs with different base address. Refactor it by using
> the base address defined in devicetree.
>
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---
>  drivers/input/misc/pm8xxx-vibrator.c | 42 ++++++++++++++++++++++++------------
>  1 file changed, 28 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/input/misc/pm8xxx-vibrator.c b/drivers/input/misc/pm8xxx-vibrator.c
> index 89f0f1c810d8..2959edca8eb9 100644
> --- a/drivers/input/misc/pm8xxx-vibrator.c
> +++ b/drivers/input/misc/pm8xxx-vibrator.c
> @@ -20,26 +20,26 @@
>  #define MAX_FF_SPEED           0xff
>
>  struct pm8xxx_regs {
> -       unsigned int enable_addr;
> +       unsigned int enable_offset;
>         unsigned int enable_mask;
>
> -       unsigned int drv_addr;
> +       unsigned int drv_offset;
>         unsigned int drv_mask;
>         unsigned int drv_shift;
>         unsigned int drv_en_manual_mask;
>  };
>
>  static const struct pm8xxx_regs pm8058_regs = {
> -       .drv_addr = 0x4A,
> +       .drv_offset = 0x4A,

If the DT already has reg = <0x4a> and you add drv_offset = 0x4a,
which register will be used by the driver?

Also, while we are at it, please downcase all the hex numbers that you
are touching.

>         .drv_mask = 0xf8,
>         .drv_shift = 3,
>         .drv_en_manual_mask = 0xfc,
>  };
>
>  static struct pm8xxx_regs pm8916_regs = {
> -       .enable_addr = 0xc046,
> +       .enable_offset = 0x46,
>         .enable_mask = BIT(7),
> -       .drv_addr = 0xc041,
> +       .drv_offset = 0x41,
>         .drv_mask = 0x1F,
>         .drv_shift = 0,
>         .drv_en_manual_mask = 0,
> @@ -51,6 +51,8 @@ static struct pm8xxx_regs pm8916_regs = {
>   * @work: work structure to set the vibration parameters
>   * @regmap: regmap for register read/write
>   * @regs: registers' info
> + * @enable_addr: vibrator enable register
> + * @drv_addr: vibrator drive strength register
>   * @speed: speed of vibration set from userland
>   * @active: state of vibrator
>   * @level: level of vibration to set in the chip
> @@ -61,6 +63,8 @@ struct pm8xxx_vib {
>         struct work_struct work;
>         struct regmap *regmap;
>         const struct pm8xxx_regs *regs;
> +       unsigned int enable_addr;
> +       unsigned int drv_addr;
>         int speed;
>         int level;
>         bool active;
> @@ -83,15 +87,15 @@ static int pm8xxx_vib_set(struct pm8xxx_vib *vib, bool on)
>         else
>                 val &= ~regs->drv_mask;
>
> -       rc = regmap_write(vib->regmap, regs->drv_addr, val);
> +       rc = regmap_write(vib->regmap, vib->drv_addr, val);
>         if (rc < 0)
>                 return rc;
>
>         vib->reg_vib_drv = val;
>
>         if (regs->enable_mask)
> -               rc = regmap_update_bits(vib->regmap, regs->enable_addr,
> -                                       regs->enable_mask, on ? ~0 : 0);
> +               rc = regmap_update_bits(vib->regmap, vib->enable_addr,
> +                                       regs->enable_mask, on ? regs->enable_mask : 0);
>
>         return rc;
>  }
> @@ -103,11 +107,10 @@ static int pm8xxx_vib_set(struct pm8xxx_vib *vib, bool on)
>  static void pm8xxx_work_handler(struct work_struct *work)
>  {
>         struct pm8xxx_vib *vib = container_of(work, struct pm8xxx_vib, work);
> -       const struct pm8xxx_regs *regs = vib->regs;
> -       int rc;
>         unsigned int val;
> +       int rc;
>
> -       rc = regmap_read(vib->regmap, regs->drv_addr, &val);
> +       rc = regmap_read(vib->regmap, vib->drv_addr, &val);
>         if (rc < 0)
>                 return;
>
> @@ -170,7 +173,7 @@ static int pm8xxx_vib_probe(struct platform_device *pdev)
>         struct pm8xxx_vib *vib;
>         struct input_dev *input_dev;
>         int error;
> -       unsigned int val;
> +       unsigned int val, reg_base = 0;
>         const struct pm8xxx_regs *regs;
>
>         vib = devm_kzalloc(&pdev->dev, sizeof(*vib), GFP_KERNEL);
> @@ -190,13 +193,24 @@ static int pm8xxx_vib_probe(struct platform_device *pdev)
>
>         regs = of_device_get_match_data(&pdev->dev);
>
> +       if (regs->enable_offset != 0) {
> +               error = fwnode_property_read_u32(pdev->dev.fwnode, "reg", &reg_base);
> +               if (error < 0) {
> +                       dev_err(&pdev->dev, "Failed to read reg address, rc=%d\n", error);
> +                       return error;
> +               }
> +       }
> +
> +       vib->enable_addr = reg_base + regs->enable_offset;
> +       vib->drv_addr = reg_base + regs->drv_offset;
> +
>         /* operate in manual mode */
> -       error = regmap_read(vib->regmap, regs->drv_addr, &val);
> +       error = regmap_read(vib->regmap, vib->drv_addr, &val);
>         if (error < 0)
>                 return error;
>
>         val &= regs->drv_en_manual_mask;
> -       error = regmap_write(vib->regmap, regs->drv_addr, val);
> +       error = regmap_write(vib->regmap, vib->drv_addr, val);
>         if (error < 0)
>                 return error;
>
>
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

