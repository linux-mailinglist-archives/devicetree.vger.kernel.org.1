Return-Path: <devicetree+bounces-122191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F86F9CF102
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 17:06:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B7101F2145F
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32EE21BD507;
	Fri, 15 Nov 2024 16:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oKqPJApF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3BA2F29
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 16:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731686787; cv=none; b=kRrcFSrjQeBcY7RXAXMoqMpnwJN0OeZ3RE4nqoVgRL0so3s5lFG8W3wYUGZtARlhVu6TkfMtOK6YG+++Ui2bjaH3T3UfNisLbdfMhmY4CKTdz7cr1oO5BetmkU5D9HW0HczuDo8yukNH759pFREatupOYBaxzyviP+3Yw+awMs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731686787; c=relaxed/simple;
	bh=ZbTFOQ0tu9jpLuN3aOlmQmhywJfbuOazqfG8l18HUes=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tJxy3Ufb933y1Ntzd3ETsQUcBT9UsGStQAdgqZ4DDidk+ASSgh9a7AAwJ/QnWJjr9SeedTokzGN7JxfF6Jlk5pUFG2acP4wyAtQdQm6hd9I0tjzOE8TL/5SSwcjMbs9TFdkDUjXwmyoosruaqDaIpRjrdPtMlvz5ejx/XQE5UsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oKqPJApF; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ff3232ee75so21342421fa.0
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 08:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731686783; x=1732291583; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RkOpglpa6RYq7HagW+3ltYZgbYvD8bQG1K6VYv8lpyI=;
        b=oKqPJApFW6bVz5I9ZamP0GvqQqIQyhGL1A+PChoup+77poF0Di4tuoPfq3hywDJrrH
         DU/s13zKsnzgAH4LwDyGeTedflheU0cWVGvgn+pj9iDDkLQ4VkFb+9x+pdi3fFFOBgYP
         aSlot/Upy0/WtB/ymx94nGQ7EaIrc5q9lrA5Rfc9e8ZA9whAivvs1A2iMP3g2TBVvHdt
         aOAJwe2miK9CX34hcda11eK9itxBWf9ndy3OfswlWHQleaJSjOxxtLAh/Yh78HQNjZCx
         g2xzxBMaVdWc5KQq56TTJkkuu3bAFTxJRG4XLFZEcVhSJJtTV8Q/0wLI81fYuVVhIXJ5
         IIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731686783; x=1732291583;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RkOpglpa6RYq7HagW+3ltYZgbYvD8bQG1K6VYv8lpyI=;
        b=WIoyzyslz+qyJpI6Pm/djwzpsp+y1/qJTO0SALKeodtqF995BqG+EsjRbZC1wEvh5X
         NIuTOfyvm+0q7EbOsZR5rV2lSDWk4TOj8USi+M14rYLgfwfEFuaC5VDip1roY6X5DYRK
         S4D/ZujVmYH2ztWv1xdCsMP+KyBT5CjCZ5iHmPBdfa7zeKTMbD1P7Id21mgIQbvxT/4k
         ksTCN1uNv2cAyMeRENhkaF/14L/rdjzYRrxxb66upI9tp0Iwx/qKf3pYtmrTfHQjojBD
         VLhivAU5yu6Wkzm3PVWVyQ/DDbkepl6CwYSBW7KyWawZiC+qexR47+MLZusXo7boSqCx
         sNUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUw35Zb/vWjd93uwwP1YShYztiI1Oy1Bd4xD/0PhG5t7Bc50x4Pk8YwlKfBcUNhR2YF0Q8fGlYiuNg9@vger.kernel.org
X-Gm-Message-State: AOJu0YzfJuc+p4vw0on+p1WvX7QwnckTtsGhiYNelqWUkgArV1w8GI9z
	IGNzuUonODFs9n7sIMPsFkgGY/0P2GoT9eaqcBcvdyFINwmFLDTvUCPA3z0uny4=
X-Google-Smtp-Source: AGHT+IElnUOputmitANVcZV1TQDDXbsTqGLu9jNL2IXWhSe3IF2xUaBXBxHzE9YdvSxevJ2eJMge0g==
X-Received: by 2002:a2e:b889:0:b0:2fb:5014:aca0 with SMTP id 38308e7fff4ca-2ff609b4c8fmr20448251fa.25.1731686783497;
        Fri, 15 Nov 2024 08:06:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff59859fd5sm5846881fa.71.2024.11.15.08.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 08:06:22 -0800 (PST)
Date: Fri, 15 Nov 2024 18:06:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: Add support for QCS9075 Ride &
 Ride-r3
Message-ID: <w43u62ikaixw6pkianhnnmlqutkkzsjomhnj7szgxriuh3jvvn@x5mhnnigrnls>
References: <20241110145339.3635437-1-quic_wasimn@quicinc.com>
 <20241110145339.3635437-6-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241110145339.3635437-6-quic_wasimn@quicinc.com>

On Sun, Nov 10, 2024 at 08:23:39PM +0530, Wasim Nazir wrote:
> Add device tree support for QCS9075 Ride & Ride-r3 boards.
> QCS9075 Ride & Ride-r3 are similar to QCS9100 Ride and Ride-r3
> boards but without safety monitoring feature of SAfety-IsLand
> subsystem.

What is the difference between Ride and Ride-r3 which requires a
separate DT for the -r3 variant?

> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile            |  2 ++
>  arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts | 12 ++++++++++++
>  arch/arm64/boot/dts/qcom/qcs9075-ride.dts    | 12 ++++++++++++
>  3 files changed, 26 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-ride.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 5d9847119f2e..91c811aca2ca 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -116,6 +116,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9075-rb8.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9075-ride.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9075-ride-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts b/arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts
> new file mode 100644
> index 000000000000..a04c8d1fa258
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +/dts-v1/;
> +
> +#include "sa8775p-ride-r3.dts"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. QCS9075 Ride Rev3";
> +	compatible = "qcom,qcs9075-ride-r3", "qcom,qcs9075", "qcom,sa8775p";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-ride.dts b/arch/arm64/boot/dts/qcom/qcs9075-ride.dts
> new file mode 100644
> index 000000000000..9ffab74fb1a8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs9075-ride.dts
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +/dts-v1/;
> +
> +#include "sa8775p-ride.dts"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. QCS9075 Ride";
> +	compatible = "qcom,qcs9075-ride", "qcom,qcs9075", "qcom,sa8775p";
> +};
> --
> 2.47.0
> 

-- 
With best wishes
Dmitry

