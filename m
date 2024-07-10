Return-Path: <devicetree+bounces-84796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6299292DB9E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 00:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85EBF1C216DD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 22:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC72813D886;
	Wed, 10 Jul 2024 22:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eWAfO2w+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9C814387F
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 22:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720649237; cv=none; b=X5/qnx6FROJEoWOZOFMmMsM5WMaMjBbOs9lEzdslF0BwsS2tl21f1IL7TEAH9zaq4vQwvVWJTZnYB53aAvgJ/08ImLgkngrhgKd7iQZi5+xAFDTb63clGdtz2k9tYLUKuXGROYfC5VPArEZQuKo2N/NYzDd2fnYLmKz5tlP2DFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720649237; c=relaxed/simple;
	bh=8PdMT0Xa+IAWrYH5CqVad+0d9o3IwBxq8Utk8wkqAio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XJIYxw+NKpQTV/GD4fTSKkIATFUViqyPB6XXWZvkj33WcQHdvbqaeGnMxYJv744UHFQacNvPyIqLd8l2Bpfe5sTpqRmfh0qJbv6XeHvi81GAQP8MFY8NRfje5K3hhVI5F6NGfWuDZbEX+1H+A68LL1c4YfAVUtmtJ88D9DhbDUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eWAfO2w+; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-58b0dddab8cso436484a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720649234; x=1721254034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9H9KVdvsFZKQpaap3qbncNFDicrGBdDbDfc5aQ3qGYo=;
        b=eWAfO2w+B3TTlKK+zDr7cVeQDkCfYckokVfk7IRvNKqxgqvYc2d8Di1dlIP910FfZf
         1dVX7UUwTMr8G7pBeA3y450d0ESJSGMZB3qY0r3WG82IU1f5Xqb26fjH21yNAU3MNDwA
         oL1P9xvk+X/qYgWJ5AYS3iS96I5h/HIzz16XW67cJq1MqxYUptrDEMipvcLPhmypJFxA
         H79fjbo5Q6cA9WzZsEnwxIgeBjQyyUyYtuA/43HFzAsdO6uPyie+dsfFiP66K8iUZ10l
         KN8l8xs1rt/5HeCJEQe9wFfs6IsvFzsapr1JsehSe2j8hnuLBfd/O7hsbaE8V6aRT7tm
         U2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720649234; x=1721254034;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9H9KVdvsFZKQpaap3qbncNFDicrGBdDbDfc5aQ3qGYo=;
        b=odLULr5I82CjwO9bE30MRU+TSiKufCfpLp1knrIrh9zTdT1LK3ue7l8QXCocCU1FJ7
         s1SkVwrCNG8ZQdMroOm3pvOUbzxF62YzJ6Pq/9U2DHsavUlWxX9jrf4dgzYoTtPFkcIF
         Ig1mJ24rpbqfZZUNxJBvSgWzjEodeF0/avJioNWOSWxxzy88YasWQrihfbyflqVpxg6S
         xWADjhfHB+iiJ7TY99YoyPnhUZos7G6VQGzs1xj4t23V3vZEG1eZY+sS/Cff5xPF3S51
         1eeI0QGIG6qnL1Ca8ZLLJxauh1WwhfWd6bAH4keuQDe34JxNpzXk6ZXC6BtOzYhENo9h
         HtHw==
X-Forwarded-Encrypted: i=1; AJvYcCUTBheQCnK9CYiptFsl/KKvJaCpiaJEmADhO4odOsWZj4FxK/0/sQJftIvR7zKunVzFzAJnQ0vzLLM3A1Ch5K8cU9i74rvsLsrDGA==
X-Gm-Message-State: AOJu0Yz+MLgh4GGTKFPQAHJX3R1JYZUvdODRxGQUQKWJyRxFQfwYNfEE
	ThGnndCLkQyh9IPB/iG8L8yDSB1/DeM3y4GrUIXc5KZuGTj00kXTHh2HsnSkmZo=
X-Google-Smtp-Source: AGHT+IEro5tD1HRn9AyujC41uwXOu47HaADaQB9ttxw2u6NdKu7uNyCdC1pcI2Ix9Uz3iAKvZKcijg==
X-Received: by 2002:a50:ef01:0:b0:58b:a92f:2901 with SMTP id 4fb4d7f45d1cf-594baf9181amr3957891a12.17.1720649233561;
        Wed, 10 Jul 2024 15:07:13 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bd459aafsm2676284a12.78.2024.07.10.15.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 15:07:13 -0700 (PDT)
Message-ID: <58b1274b-1f53-4d10-a6e3-6334eb589ab3@linaro.org>
Date: Thu, 11 Jul 2024 00:07:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: x1e80100-crd: Fix backlight
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org>
 <20240710-x1e80100-crd-backlight-v1-4-eb242311a23e@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240710-x1e80100-crd-backlight-v1-4-eb242311a23e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10.07.2024 7:05 PM, Stephan Gerhold wrote:
> The backlight does not work correctly with the current display panel
> configuration: It works after boot, but once the display gets disabled it
> is not possible to get it back on. It turns out that the ATNA45AF01 panel
> needs exactly the same non-standard power sequence as implemented by the
> panel-samsung-atna33xc20 driver for sc7180-trogdor-homestar.
> 
> Switch the panel in the DT to the new compatible and make two more changes
> to make it work correctly:
> 
>  1. Add the missing GPIO for the panel EL_ON3 line (EDP_BL_EN on CRD and
>     enable-gpios in the DT).
>  2. Drop the regulator-always-on for the panel regulator. The panel does
>     not seem to power off properly if the regulator stays on.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

[...]

> +		power-source = <1>; /* 1.8V */

Would be nice to get the #defines for this PMIC instead..

> +		input-disable;
> +		output-enable;

LGTM otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

