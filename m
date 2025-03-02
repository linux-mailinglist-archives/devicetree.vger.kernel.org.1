Return-Path: <devicetree+bounces-153012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E829A4B07F
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 09:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3710D3B573A
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 08:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E604F1D7E26;
	Sun,  2 Mar 2025 08:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VlRRSIX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185D51D61A7
	for <devicetree@vger.kernel.org>; Sun,  2 Mar 2025 08:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740903651; cv=none; b=j3ZLWL/AzOvEZGA7mg1Bu9exrOjOjTMBkGFzZ/yFDV8BQqjx9gG/APzZ+LyCk2gEnl2zdG1JRl2A5sit0dYYdM2uyDtSN0g18V+ucmeFdQWjkMQJklS1nxk2IZ4W3KXtwvqXAkD/TLHsEjHA1npa0YT2wMoMnSttHXj47z2Gefo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740903651; c=relaxed/simple;
	bh=dDu98QeMjbKfxBR7tJUCWsuZcwKiTkC6WMI4ZnynukA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JgrCVO8JL8kXuvlRPmDNFmJBaRzdmCgT/30p89Na9j7nUKWJ4WFjvtZH1NH9XYZhj9MWlzABdua1LAE9iOGlcDc6gXFJLCB23KkX8FbabstnsPHI+xdvtGKP2mLsZo8ff5GieuFdaQu5LCa/PZYNKCyifW5HJi+XwJkAa1HqqI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VlRRSIX1; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3061513d353so36215111fa.2
        for <devicetree@vger.kernel.org>; Sun, 02 Mar 2025 00:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740903648; x=1741508448; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NfKdwYcU8DQiF6AXOruyp9oIUgOHdVpgmFqLr+oBxX8=;
        b=VlRRSIX1MmRT6tvkrkKsR0kUqGvXsBo0Eu/wUoCL0J3T9XyylYOK6SLbcAUhlSXKYo
         SA8OV1PUytzEsKGnjk/DHdoPjyXWq5++qWaz4dAG/5bf4eApWh96s8cg1DvNFOIYbJUh
         kulELKBTTnUV/YGc50Mmp2Vu7faUnvIGXj8OoYr0iTvdG9CwyoQazIloltTaJkFKUCPo
         zWND4F2h9nC9AXnSCGUErsvRIDiwqJWNyXU8gszJVKl/8cVGVGTbOfNgTdWlwLVXhwt8
         0bygA1BlJ4fX9CY7I1DaUfG2eGKU3F0pdt5XxuCIiaqb0h0VZkLHyETrVQksjVUfXoDn
         UarQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740903648; x=1741508448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NfKdwYcU8DQiF6AXOruyp9oIUgOHdVpgmFqLr+oBxX8=;
        b=eNII+KSTsRRxY+3Iej8M6hwHMNIRstjT/RvqI5pNJAnW3GmZigB4wYPpp+kUGR4fVq
         G5pNycseHxTo5vh8xFMxRsSkHvrcx+nvHhcKJYaorDouT5H5LUdP0O0cXeIkeRzmbMhl
         tOkDHyBynIi5n/fm2Mfn7tyS43Nh/HmqxWBZfMJgoiis+mFI2XVe179Er3IxDjtjDUUO
         tBVdUbs1+34YF4G+cqXaXEFUuq6prFzBjEhviUF3h+ZVIB86UH/FfI9rQoH7yuJwqqTe
         NtGeluYElNBlauNYYxmaFYpwSFjE9XziQ1EpHa2hFFaZJ7BMePvyWAuCukXzq5Y8Jc9/
         nt4A==
X-Forwarded-Encrypted: i=1; AJvYcCXTxRC339d2No5S2u22Gm1W9WWtCPNsBGxWKwX2uP8qJ3cBzz7X8Xn/dd1elW/32mD/o0puxz3Ay5FP@vger.kernel.org
X-Gm-Message-State: AOJu0YygSC3t/Q/AYEi04uVlLUSfmcslqOjEWzLOg8qROGyz6AEQXQUh
	bnOQOf+Us2FATDy9R6voK4/UHWAuwRIYsoltRUJ3VqDe0Bx7kVQPQE/TJ/IMASA=
X-Gm-Gg: ASbGncvpX8Fg2mI2LlOQYhqv3AKVCQwp3dVbWvhohfjmlnOJr24bTyG1uQT0Qst9/gj
	4D2bCIchhPnZIx9D3AVg4kRfZJoCQB9HIXVsD48PF9ZRgPpu1NSDmK10SHqna3Et0yfYBybyuEL
	yfYhKeiqkyt2671gBktsytEtNir8SU4JJQw8L5YpDEmx4ULjP1dIbo2XOnmmCqgpK1XJUHkicLh
	e1zAIFc7XjHfOkR6FZfn8M4Bol1KlWGApj9OGAYKW5NwTuFOtPiPa91yoLxlNX1nJUV8L2VHpWr
	Kl7foas+3NpLDmxMlJSLtP67afc6sgmN1b9uVRP3+1mhS9BeFpOqpj6i2swCkpLEJPau9D3ou5O
	BvNEEGVqD5WsuOXMVPehgR8Ns
X-Google-Smtp-Source: AGHT+IHg+KAzyy0IsIZM7j3wFAcOrBBOIer88JW2kHinXd24Lajckl9FIBe+oKIlI8/bfiroAOYlRQ==
X-Received: by 2002:a2e:bea7:0:b0:30b:b852:2f77 with SMTP id 38308e7fff4ca-30bb85235a4mr2172901fa.6.1740903648125;
        Sun, 02 Mar 2025 00:20:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30b8de780a5sm8800941fa.4.2025.03.02.00.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Mar 2025 00:20:46 -0800 (PST)
Date: Sun, 2 Mar 2025 10:20:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: qcom: qcm2290: add apr and its services
Message-ID: <zh2hpp73bzylw5aomljqs62k2tay5cmltvgczo7bi4flmvgd6h@g5hzcax2aqd7>
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
 <20250302-rb1_hdmi_sound_first-v1-3-81a87ae1503c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-3-81a87ae1503c@linaro.org>

On Sun, Mar 02, 2025 at 02:49:53AM +0000, Alexey Klimov wrote:
> Add apr (asynchronous packet router) node and its associated services

Nit: APR?

> required to enable audio on QRB2210 RB1 board.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 72 +++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index f0746123e594d5ce5cc314c956eaca11556a9211..2c90047f7dd867580836284721c60ed5983f3f34 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -16,6 +16,8 @@
>  #include <dt-bindings/interconnect/qcom,qcm2290.h>
>  #include <dt-bindings/interconnect/qcom,rpm-icc.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
> +#include <dt-bindings/soc/qcom,apr.h>
> +#include <dt-bindings/sound/qcom,q6asm.h>
>  
>  / {
>  	interrupt-parent = <&intc>;

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

