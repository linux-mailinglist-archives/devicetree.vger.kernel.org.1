Return-Path: <devicetree+bounces-84377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F4692BE99
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C736F1C223BE
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B81319D07E;
	Tue,  9 Jul 2024 15:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KjNJ1Gz/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD04181D0D
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 15:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720539555; cv=none; b=eCo949vUwWt77237+8xq6o/QIjs2w349x1+hX6PEMmtTV3ETaX1CinuxnvlILq5xL/qrDvCi1HOo2HQk/lJOCT+rcOQkVtbXWywZ60rMY+TJ95bPlicJyMrjqiGNXeUGQ6DIw0jNi2ZgLh6mj+H/wdUuU2/l8cZluMlpJp441Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720539555; c=relaxed/simple;
	bh=iM7dP4+UBWQBZxTzBsXQgEJRsca+txEglysSJ98yCAs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MXDD4gQ6haWk/GCZWynwJV4etX5VClaoYyycDbmtIlcttJPYfqkD3kP380J35rNQRNa03OwueOcLUYGmzA0P4oCsHiX1Aco2tBz7WN4JRSZIE/XX9Wle8do6doI8JNuWy18gNfHif9/raEzD+NxAGZD01oS5mTdKrajRKMwoFSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KjNJ1Gz/; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-64b0d45a7aaso50394497b3.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 08:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720539553; x=1721144353; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Yf9OSDzYDVAe/q1Sw42NKjpmTZk3nIkNTh+ppL03zVc=;
        b=KjNJ1Gz/Wgbxl6/8xucIIB1ZotHtguC6thJahNV3n4IupooYfrg2/HIrRd2jgdIhtp
         zolPDQD08zsbQu4/rJ+a+Mg+/kcauSQGw1WN5uaFw2h+9Xt++v6zd+oGcLI4BkxG/QQP
         8fSibLSzgPW6y0kS/NXAEhibTb1bj2+Xou4WLZwUnd7oDIwWE3wd56Jhvv2lsAF4RlFg
         ArQiDTvZc7oNSYb+buDoLY7mgKAjrgAswYWU6iR7VpXjdmrc+mioEg+4vnuA4p+AzgLN
         DdnKQPW+iNBc2zyvKCKfbx471FPwGveQmaKOgBpXJcr29G3pehl70CbEMbuJ+9F+xKa6
         v77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720539553; x=1721144353;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yf9OSDzYDVAe/q1Sw42NKjpmTZk3nIkNTh+ppL03zVc=;
        b=xOhRknxjWMGm4Mc0ohzr2x0UQsSQG02BkJiRFye5qG/dwekwlmqZ6+4K9MHraefFGK
         7JxQHlE7xWU9mgpamIPYYzNYN6EJujN07Tp5V37d9S/WGmPbmg6Qzn0cOl7H2Zzs8hAq
         wHeIWPHPKB0TbFODU7FBCGIb5LMH9fB0QfvDJo+uAzw6jYkpe7eLOJ2FyTvZYRcxOnQ0
         4eVimGgGzrtCQ9cM8HnQX07wm1C6OWrEy50izG+9A4GL7czB/z6zP03wUw5W54W6i50J
         86hT70l2NWeOjEWDeWWWtApbkUq0JNUkWaUQTwEnFq9QuHVkHIgRsYkOab21lPUBCVzW
         c74Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwHMlp6FPuudh0eSTqxMxguBT9CgFF6YhuCNo+u8Sir2c7j5i4urT0pfMLOF9DmbFTVr4H6gbSL53Q9x1FmvdQoVaVk0mX0yEbxA==
X-Gm-Message-State: AOJu0Yy/+p/uden2nbI5RAOdjiYhl/yhel6SrOdmaqE9PTgMH6Jvtog3
	RCHdW6V6f2JL8MDrmhJqNXGNgBkU4fSTKReBGhDZxWWRAHByDbh0AOYFZvIkaYlLNEUhd/JFhFI
	UCiQ3oKxyQ3+s/WsnIxQ8tWL/RrAbw85eOBlqtw==
X-Google-Smtp-Source: AGHT+IELN6BrB1l1a+7hxJEdA4r49wyMBZ63w0/xGG40B6OA89/EbeiJJj84Igc7BT/S0i6zEg+VHQ94rm+Er6yb3lk=
X-Received: by 2002:a05:690c:6681:b0:64a:4728:ef1 with SMTP id
 00721157ae682-658f02f5ea0mr39620207b3.39.1720539552828; Tue, 09 Jul 2024
 08:39:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240709-add_qcs9100_tlmm_compatible-v2-0-d025b58ea196@quicinc.com>
 <20240709-add_qcs9100_tlmm_compatible-v2-2-d025b58ea196@quicinc.com>
In-Reply-To: <20240709-add_qcs9100_tlmm_compatible-v2-2-d025b58ea196@quicinc.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Tue, 9 Jul 2024 17:39:02 +0200
Message-ID: <CACMJSevpinkT+jFTK6ijpRF2ULEeAFiWLkWEmQ6bJfJdofyO8g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: add the tlmm driver support for
 qcs9100 platform
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	kernel@quicinc.com, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Jul 2024 at 15:05, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Add the tlmm driver support for QCS9100 platform.
> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
> platform use non-SCMI resource. In the future, the SA8775p platform will
> move to use SCMI resources and it will have new sa8775p-related device
> tree. Consequently, introduce "qcom,qcs9100-tlmm" to the pinctrl device
> match table.
>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  drivers/pinctrl/qcom/pinctrl-sa8775p.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pinctrl/qcom/pinctrl-sa8775p.c b/drivers/pinctrl/qcom/pinctrl-sa8775p.c
> index 5459c0c681a2..4687e11dfe75 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sa8775p.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sa8775p.c
> @@ -1519,6 +1519,7 @@ static int sa8775p_pinctrl_probe(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id sa8775p_pinctrl_of_match[] = {
> +       { .compatible = "qcom,qcs9100-tlmm", },
>         { .compatible = "qcom,sa8775p-tlmm", },
>         { },
>  };
>
> --
> 2.25.1
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

