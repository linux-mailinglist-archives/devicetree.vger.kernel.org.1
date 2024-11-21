Return-Path: <devicetree+bounces-123588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 941259D551A
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 23:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 604F3282D67
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 22:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA491DC05D;
	Thu, 21 Nov 2024 22:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WqGHjc7W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CD81D9A54
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 22:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732226478; cv=none; b=TKraq7JJFND+gl8PZ9ZdSgX0n0wUqVL0BXYnUUufD2y1vI14EngYp6wei1t9Towb0Mx70Th+bMR6Cq19rhzSo7F2nE1T1h9sJaTaYJKiLOvtC0L+q8h8oqTrLDc3fJvEvC8ThGXHvYvZoD87bEVnW1NAWa7mr8FZ1I/mKYnucuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732226478; c=relaxed/simple;
	bh=oULDhTY9NKL7RUXhTGGxFaIwXHvE7IZ1UIswvh8QlU4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tiuOE29mumt9kaAzv3l0lipL1xJ4IgScyCZpaZkcjxN4zqxyE9dmoUcuHUt7i2dZnC93sD2xdHd+u3346ZA1iPAvUsrkED99/y/fMR4MdgATfxy7NgyFJU/wHxYE0MDNcBhl9QYvNpDemZYWyDrI1i5X8gT1+2e2dxLv3jGOr6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WqGHjc7W; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb49510250so17541291fa.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 14:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732226474; x=1732831274; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PypIErFyD/n0BNOpM458f7rPV3XZUhIzNxg2aBsXTpI=;
        b=WqGHjc7WJA77kBg4oS3H44MbbnPwmVQYq83522AaVel/GYU2VOp5kvlpquzNZyVYYP
         JxKXiEegpEcxst2sFX6DyIZ0RGUtJCdIuHBkuoaCe9xD54HtTqzZ5UKPfgXyKKz0ungC
         28MB94MY301/ZWVu3X7NhXDR4lwdTxJ2onSyS6whYP991AvlksYQn7clqahyXx+wwMZz
         CdskYLm0CCreKMEHhNTswwwfbhpKe6qowlDriWHKeMnFnkhw4F6ApmPr23ZWIT0lDuu5
         +Kr4PALqB9ah1gJUNwU/Id9FW7o5R511CJSKddva0735/Y68D5NGf4LN4nhxWN/xS106
         CCvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732226474; x=1732831274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PypIErFyD/n0BNOpM458f7rPV3XZUhIzNxg2aBsXTpI=;
        b=mHNzkwbZ5mdiFy8EWWe/li4kwD7sy5aIgH2aEZWz4uLvVbXdFR4FAC/aHriTyS+ZDn
         Drd6AdOytzugRG9d+FpY2U4ySQRxBy5g4H4p8pRWD4WojGpnAHbLQBi1f3rgqBCfS8pi
         iif9Sych2oB2PZqZw9YfabI/VJKScn/8hkx15LAjHnEIpLK+QCa6tg0CJCrgHaX6CbYu
         mVWWMymn5nYNSBpJ1wabiHCiKyAcgYXF+MFuKqamZRRp4qYO8yX37YA+QBFBDNjJGoqi
         NOAjdoPPK50h9noUR4AqntdjzlClJRWmRc0DNuvpurKFspcLJY1g+R7yXuvBSQoXEOZD
         WDVA==
X-Forwarded-Encrypted: i=1; AJvYcCWQHwC4fwl0Vfn1t4dNzAw5xEgh11vi3QDApTIOumGq6u1j6bIa03m5zHLbW8qAvEgOcqJP78DvJt1R@vger.kernel.org
X-Gm-Message-State: AOJu0YzpD52IScvxVtVhtTlzoFY6vVS3y5fIgvccncIm71NrY6X4PHd0
	LLAS5tRYy6D9RC2jkTGFQkPWZr8KKCkWQMDxaiu4ZViXjKRKmzj76FhZOEI7cC4=
X-Gm-Gg: ASbGncup/viV4L1Y871nq650dojoQzuuLV+KaeW7VojNiFXiktNJ/cbzBdKQgtwjDxy
	poORVCEV4+m0+pAwvZyWHE3KhMadrbLHrJsifXJVEMEHjk1sz0f853xwUZRDleI1X69bDrkGCcS
	Ku9kT2jB7paTAl3SM900tyTnjjDf51CUMcP0TCavrOzjlpVgN8/ESHvaZVo1oWCjuSk9NYWpx1W
	9fvfExmXfb1PdJTkNJWkzNbotz8NzKR2CSK+PLKQLirtmevgYXKpkoxC4HhVbOeboJMsspiA7nF
	+AS1DH7M7SCFD3wrMkiotRhswUitoA==
X-Google-Smtp-Source: AGHT+IFFL2q/vIMRHr/WtuLEdj4EJHjWtGPHoUZcmjYRAKu5VLoo+jdnHtTWOwZ8S+bh83TLTJUqqQ==
X-Received: by 2002:a05:6512:2382:b0:53d:a8d3:aeca with SMTP id 2adb3069b0e04-53dd36ad5e2mr186652e87.28.1732226474029;
        Thu, 21 Nov 2024 14:01:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2499fccsm89849e87.270.2024.11.21.14.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 14:01:12 -0800 (PST)
Date: Fri, 22 Nov 2024 00:01:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Mike Tipton <quic_mdtipton@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: qcom: drop QPIC_CORE IDs
Message-ID: <fuplqyfqvfc6foi4tdsts53kvdokfzprxwxedgi6hyxicedvvk@3rrx67vihbex>
References: <20241121172737.255-1-quic_rlaggysh@quicinc.com>
 <20241121172737.255-2-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241121172737.255-2-quic_rlaggysh@quicinc.com>

On Thu, Nov 21, 2024 at 05:27:36PM +0000, Raviteja Laggyshetty wrote:
> QPIC resources are modeled as clks, therefore remove corresponding
> defines from the binding as they're unused.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  include/dt-bindings/interconnect/qcom,sdx75.h | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/include/dt-bindings/interconnect/qcom,sdx75.h b/include/dt-bindings/interconnect/qcom,sdx75.h
> index e903f5f3dd8f..0746f1704ec0 100644
> --- a/include/dt-bindings/interconnect/qcom,sdx75.h
> +++ b/include/dt-bindings/interconnect/qcom,sdx75.h
> @@ -6,10 +6,8 @@
>  #ifndef __DT_BINDINGS_INTERCONNECT_QCOM_SDX75_H
>  #define __DT_BINDINGS_INTERCONNECT_QCOM_SDX75_H
>  
> -#define MASTER_QPIC_CORE		0
> -#define MASTER_QUP_CORE_0		1
> -#define SLAVE_QPIC_CORE			2
> -#define SLAVE_QUP_CORE_0		3
> +#define MASTER_QUP_CORE_0		0
> +#define SLAVE_QUP_CORE_0		1

This changes the ABI of the driver. If this intended, please provide a
reason for that. Otherwise you can not change the values for the
existing defines.

>  
>  #define MASTER_LLCC			0
>  #define SLAVE_EBI1			1
> -- 
> 2.39.2
> 

-- 
With best wishes
Dmitry

