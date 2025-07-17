Return-Path: <devicetree+bounces-197287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5708B08B91
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:13:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AD2D1A67868
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 11:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7029529A303;
	Thu, 17 Jul 2025 11:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qhin5PUK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC2B262FC2
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752750827; cv=none; b=CJMTi7sGrjqS6Q0VmY72s00dn9NZoZlORtHLPQ/1T/lH13Tv0653npemr54F7iSfZTcZOqo/r4Pwzae5g5Y9y2xXfoJjtRYWDajFSbtBc8yCJOpI3gGTH9803wK17I6wQLQ89al2td0LhDkbqKhA4UMepYKVwBnNf0Pr7LJeV2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752750827; c=relaxed/simple;
	bh=8BEpr1buf3sugXNSK4wSx0vYzrS29Wqh55cQMzLzVC0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CYs1+QSD0c+8+J03vRtLEnvKcxzd0y7YDXmCiaDsatDawC6giTLSCz0JCrevhQSikWa9xLV63ALujlW78/VWGxe9h6/x8rg/+VkGqgfygk43lbWPBmGPUMcAMEsc2Gaskk1oWsAyuI3Pogy0no0TSbYFMvkDA8p9aXU6swJp8Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qhin5PUK; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-adfb562266cso141936266b.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 04:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752750824; x=1753355624; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vOehkU9WNuG64pnlROhzfrP3AIYNO0QBlG+TsOM5T5Q=;
        b=Qhin5PUKzVMtGVo4rh8f598elbDyqjwm+VnOTC31NXT8XD8WRdwn0AE5dTa8gkZQIe
         qw5A5qy3mLFvlQ2Ja1gHfREovdMC+XXFNziXzjHheTv+K42cBXUc7MVwqwfsj4U0nKKH
         A0gIiiYfPIscwwgMsggMm/n2mT74mfxyiwcx0JyKD1pitwEcWIY4xAJ+WE8/liBal+he
         oepi1BB5Km6RHvjFT3XKNF201FdBTZVkbfO3vswrM9qXiwkQkmHeMmsokhhitFkPcCCc
         3o/YLaeezxvH8+hukj7WpuqxkXKNWg0tHIyrO4eA6/DuaezbwNAnzXnpUb8rkDyjAdod
         aS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752750824; x=1753355624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vOehkU9WNuG64pnlROhzfrP3AIYNO0QBlG+TsOM5T5Q=;
        b=aZz3StsD+uqJpuis0kws1VaLa0dK1XQaUxPpSxdDiExLvWzWtWpI0+E+KteOwP999I
         4vaFJk95SuA9kYXC8qAs2a9FPuTuzjCcBFmykQPvQtENlGBx8KpaugDVh3oh1BuELCQj
         ig6DmGHxD3B7VnWofscOAG+Y/KVpcPNZyYoQmKbPtHVhfpXmvMARTWFVuDkJiOKas2Z3
         45dxIueo05ruS7acN/n5PWDogheb8/jhpLge+Z+/yPNSR9viKmxbB/ly+r32O63WRHzG
         ZA4JOQgHtgUhrI8eddVr2AFnhkjhyZ8hjPNAriGKlpwsHERCvNwh6Vg8eP5uzt7BNyln
         pBdg==
X-Forwarded-Encrypted: i=1; AJvYcCVakAGsj68YghBgnyZAqKnHA9UWWwbHdwIgDNJng4j1xYc8t1HWDVvmJthrimkNqC8o/kJh7IxD1aqw@vger.kernel.org
X-Gm-Message-State: AOJu0YzFXMIDDrHjoIrgaOKZtBL9tQd8Fiz4Iigl4cbWHol8UX1AvoH7
	r42bO8nJ3LXhMo5q01qWPOzE+QKVpwEVHGtoEgZvrQNj8R6wvh+HpALzFpHYo9Jiu58=
X-Gm-Gg: ASbGncuO/IeREW3DyxYKF7jfqeZlw9LnzCzP/ERw3ljGzd0Xdq/zetpP6qxKrJgZUXT
	KY/QB/G+3I6AE+g6iXzJu5tcm77tPVuUVBV9MO+POZgtIsfbULmFCtrShTzdSeywyP1S4YiQ+Y7
	uajYVeAeb6kc2DDiG4t7ki/unr12TSK46eAloLOBWkFZqDQA+niEvTBETpwbigLGyNPbJiBgW/b
	ye1ihlRz9bmf7gV1otJmddBuW0kw/eOW2mmr0P/c7yohhiiPivJIUwzElez988igCzoGlDhYRwL
	4O1mX734QHhbiQfr+Vcq8yqjlpNG/SXjm1ON+YDpvIlGS0IKu0Bdg3i43b/bUxjzf+cMPqvHwfv
	DHGSzOEv4ORFI5kGUyoA=
X-Google-Smtp-Source: AGHT+IFndH4r5ylfIpMZuhJEN+t6RmbGJp26noeWsbrPyFdZ+6+r7xmc66l1gSyOJK7aFAE6hnyIZA==
X-Received: by 2002:a17:907:1c1e:b0:ae2:60ba:da91 with SMTP id a640c23a62f3a-ae9c99872f5mr670778366b.15.1752750823783;
        Thu, 17 Jul 2025 04:13:43 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294b6bsm1350689266b.130.2025.07.17.04.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 04:13:42 -0700 (PDT)
Date: Thu, 17 Jul 2025 14:13:41 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] pinctrl: qcom: Add glymur pinctrl driver
Message-ID: <aHja5a5m4Yt/we/t@linaro.org>
References: <20250716150822.4039250-1-pankaj.patil@oss.qualcomm.com>
 <20250716150822.4039250-3-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716150822.4039250-3-pankaj.patil@oss.qualcomm.com>

On 25-07-16 20:38:22, Pankaj Patil wrote:
> Add TLMM pinctrl driver to support pin configuration with pinctrl
> framework for Glymur SoC.
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  drivers/pinctrl/qcom/Kconfig.msm      |   10 +
>  drivers/pinctrl/qcom/Makefile         |    1 +
>  drivers/pinctrl/qcom/pinctrl-glymur.c | 1782 +++++++++++++++++++++++++
>  3 files changed, 1793 insertions(+)
>  create mode 100644 drivers/pinctrl/qcom/pinctrl-glymur.c
> 

[...]

> diff --git a/drivers/pinctrl/qcom/pinctrl-glymur.c b/drivers/pinctrl/qcom/pinctrl-glymur.c
> new file mode 100644
> index 000000000000..dc1b822538fe
> --- /dev/null
> +++ b/drivers/pinctrl/qcom/pinctrl-glymur.c
> @@ -0,0 +1,1782 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2025 Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>

Drop this one.

> +#include <linux/platform_device.h>
> +#include <linux/pinctrl/pinctrl.h>

And this one.

> +
> +#include "pinctrl-msm.h"
> +

[...]

> +	MSM_PIN_FUNCTION(usb2_tmu),
> +	MSM_PIN_FUNCTION(vsense_trigger_mirnat),
> +	MSM_PIN_FUNCTION(wcn_sw),
> +	MSM_PIN_FUNCTION(wcn_sw_ctrl),
> +};
> +
> +/* Every pin is maintained as a single group, and missing or non-existing pin
> + * would be maintained as dummy group to synchronize pin group index with
> + * pin descriptor registered with pinctrl core.
> + * Clients would not be able to request these dummy pin groups.
> + */

This comment style would be good for drivers/net, but not here.

So add another comment line before "Every pin", like so:

/*
 * Every pin is ...


With the above addressed:

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

