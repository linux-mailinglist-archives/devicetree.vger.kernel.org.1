Return-Path: <devicetree+bounces-210203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCC1B3AC9C
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 23:15:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7003B1C803A4
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 21:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6917299927;
	Thu, 28 Aug 2025 21:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZOPAAATb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9180B288CA3
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 21:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756415690; cv=none; b=Slbh+SnwwFqP7GCYuvGHnXCp7e/q5sEbklLUTbmvpCHkpQqkM7faEa0SJiocB4+KMtnqC1lIE2qbVJXZr27wmapuOxM6vpFr6y9Gl9N67DIZlyrC87DdjtlxKI5MutyX9++fvkKVk3Cm9U53vp5FPL4I6Yo+p0uCOWwjf+fuR1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756415690; c=relaxed/simple;
	bh=OaBhTrkd6PegQRmhrQH9eXqW0rbCz4bUZXirlKFf4h4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PgZM5HqL3cBmVGPXhg+Otkgat1wjP65HEI0NlJ9Zf6DHqFaE/WY4GUa9ws2Es/x2S7Ub+DUjrAAW0j3x3fgg2+eAn8Rd3FEzYe4xc8MbSzqVCG2fcC6RZnFUrIbcAWYVhFuMRBCYRxRj7CpqzBta/eKbSST/Q0foMBFf+iJndSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZOPAAATb; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55f5cd36347so1425465e87.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756415687; x=1757020487; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6XEIlIk/bq6b/zmhQ7TTZFJvpGHTSwiqbqeiQPXe6GA=;
        b=ZOPAAATb81DyQN+PY3UHeWICXR/cXGLX5t3NY6QHiCc442MQHTrlTU1odEqVr/MlEC
         Jxn+lZnT1iaDFcVFo6TevbxmCP6AmnQ5XfQ6R/PXYp7mn9ij6FaxsOXNcqfaLTaHGvsb
         B5IfeIhzmSwrCE1jaZHWfsSDMqjC844PxBKWdg1Tz1PjEV2JPZiWXLUOYmt1EAjoQLJV
         6OJeaNcWBSSpiFS4UaKNcRSrwgXdtNvuc8dHp4wtreC1VlydhGRz68tSXinhkxUfC5ei
         nfgjzXFOsSaBIRImw7LNExV4+h2MjtYmvanej27G5pzactpoDOWMY01hX7A+8MgIUYCU
         A/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756415687; x=1757020487;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6XEIlIk/bq6b/zmhQ7TTZFJvpGHTSwiqbqeiQPXe6GA=;
        b=IWZbuwU4pmt2NG/hxpjgFlN2Y7HUZAey+hMkt4H/WqYx9Ge3BolnvIfRby/HY0Q/3B
         pQ1rFty3NkhwcS2uVV4P2VLfpSTqdC2/d+6qV6EjMq3gBDhEfMuoO2x0z7zgVF3RRi0I
         /Rl5BcangzqE3oLQd1my6kjTp566RJ6afPCi4pDFguQcr11vvk3llcWJEZjwsnIHs3Ql
         SDIH9TPPPkuaZhefcDcnLntJJkUc6qswcA9oguDfm7PRTv3cZGvWQkYuWncrfSwhsgtt
         VgQimhdnSoI3F5W2dAck/ye3SrBg33o3CdI6OcVmCkUm1k5gSLdg+89R2+Hz4SCY1s1w
         FW0A==
X-Forwarded-Encrypted: i=1; AJvYcCXwAblCpA+JV+9+ZnWXZLaePfizNzy+0qRPGlXr5LzdHPnS+2whW3piRcuamRSI3rm/0eNqutjf5TwF@vger.kernel.org
X-Gm-Message-State: AOJu0YzF7oAPk1sJk4d7dWGhuLcCkMXrALbQtmja/00xwaxopErFyfyA
	TWkBIQJfEI5lEK+VYEW9drZcLgqYio4LTMoo6CyZ9ds9yWlLsQ3XF0ZHy+fMWgEAZbKRzL9S7J7
	pp0WDk7ZywpmhBqhiqytBVwMH70VeYZ0WJVvqYdvpNA==
X-Gm-Gg: ASbGncsQ5J/zhHwC34wZuphRAHTll+RuGnuExQ/wG3TjLH3Drju6WqC0XBvD2+oi/Pa
	VBf+jIqPYhhjJCfPsxzq5MzqWF2RQhDW/+LtgtYY9ZuQtyBM25kuF00/rxaj2TzM9+pNUxgpHTH
	09Su870IfnWu147BxWw9GXHp1xIifWoQPBWCCETF9M6849eQAVfGsH3gmzIx+3uvW9JPr+10uHI
	t+pfpI=
X-Google-Smtp-Source: AGHT+IHnq5j9y/e9zgOn/W95LXDrsMaMJHjfFJrVjLLZ4xyDUaX1ZKKyMsyBeP8R0VmL3N5ZRmoTyZaiETxJgA8aygo=
X-Received: by 2002:a05:6512:1409:b0:55b:8aa7:4c1e with SMTP id
 2adb3069b0e04-55f64e2a401mr574939e87.53.1756415686593; Thu, 28 Aug 2025
 14:14:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756372805.git.andrea.porta@suse.com> <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
In-Reply-To: <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Aug 2025 23:14:35 +0200
X-Gm-Features: Ac12FXx3Zu25fmAofOtWqFPELRy7r2mWX-Zguu16p7nw27EDWZqR7HdQtxpXOKE
Message-ID: <CACRpkdYdzsVTtwsw813k0gbD-H7ue8iCNXOdWD8feJCSWZnSdg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] pinctrl: bcm: Add STB family pin controller driver
To: Andrea della Porta <andrea.porta@suse.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	florian.fainelli@broadcom.com, wahrenst@gmx.net, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, iivanov@suse.de, 
	svarbanov@suse.de, mbrugger@suse.com, 
	Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 28, 2025 at 2:45=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> From: "Ivan T. Ivanov" <iivanov@suse.de>
>
> This driver provide pin muxing and configuration functionality
> for BCM2712 SoC used by RPi5. According to [1] this chip is an
> instance of the one used in Broadcom STB  product line.
>
> [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@bro=
adcom.com/
>
> Cc: Jonathan Bell <jonathan@raspberrypi.com>
> Cc: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> Reviewed-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

(...)
> +static bool brcmstb_pmx_function_is_gpio(struct pinctrl_dev *pctldev,
> +                                        unsigned int selector)
> +{
> +       struct brcmstb_pinctrl *pc =3D pinctrl_dev_get_drvdata(pctldev);
> +
> +       return pc->func_gpio =3D=3D selector;
> +}
> +
> +static const struct pinmux_ops brcmstb_pmx_ops =3D {
> +       .free =3D brcmstb_pmx_free,
> +       .get_functions_count =3D brcmstb_pmx_get_functions_count,
> +       .get_function_name =3D brcmstb_pmx_get_function_name,
> +       .get_function_groups =3D brcmstb_pmx_get_function_groups,
> +       .set_mux =3D brcmstb_pmx_set,
> +       .gpio_request_enable =3D brcmstb_pmx_gpio_request_enable,
> +       .gpio_disable_free =3D brcmstb_pmx_gpio_disable_free,
> +       .function_is_gpio =3D brcmstb_pmx_function_is_gpio,
> +       .strict =3D true,

Oh! It's now using .function_is_gpio() and can be charmingly
strict!

Better let Bartosz have a look at this and ACK it, I will merge
his GPIO function awareness patches first.

Yours,
Linus Walleij

