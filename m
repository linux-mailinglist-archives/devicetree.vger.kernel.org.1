Return-Path: <devicetree+bounces-34433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE32839B27
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 22:28:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1315728C4EF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DCB38DF4;
	Tue, 23 Jan 2024 21:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VAebUlZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AB34643B
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 21:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706045240; cv=none; b=L4bULYwyEMC9IDjpv651qcPU5T2f7hlcQDmFD+4gSwAP8JdC64mzmEQD99a18WqM6MhH9rBgEXnyZ5h2UxuIVllVYvGi6ZJ73gVpGBCw9T4OrghJzVj7KuAYtdrHSxMlad4j5mlGAMOzkeyKlYygeWbxSRwsmCp1WfdgGH4tgYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706045240; c=relaxed/simple;
	bh=GfX7Qi7SEnJEwOUVlrGwqc0uCCVhYLarpE/q7PrsPHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SNfD1LOl1FTb/X+Ou9E5iqhxQV6CQLK0qKX5ZvS8zdaIDFsEW4oqc87AGYuevmjmDOE03vh+R7Cw0XRR0uy95boISur/3mKHBUcwG6cEEysZKH/lfRHL+t0O1ZYrrvzQ6/qolVJJ7WYyHgKwb4oNJdPVhZhnJpXrpsO3iRaA1Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VAebUlZl; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40d6b4e2945so57231915e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706045236; x=1706650036; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SsPFNicsRzcVeR0kjRsnPEk/NMOqj3G3Xl498xm7tPs=;
        b=VAebUlZl9zUigZ7z7QH8Fm+YeofxbQe1ZDp5tSYBQPTCWq/FWykRJWOHIFVb4KLcEi
         48f3vEsD8qK5Z5WCZOo3XIvaSIRmxQnM6toqaKjHjolkDeC5yFzB608/PXkwojQmGRtN
         Sv+dQW2Yc7S8wb4i0SDjFwtM4edNkf83ksF8cXEyZYGv5CBk4p2XPg4GQRdr7wn8d+0W
         oGOA0K87NBz0ivlUSp6hCk5BNa2PGawfNzJYLUGzYbfacXqZHB1M3tWvq0vRPZCp1Fzo
         iWqn7jjUShtTWI+EGAUD2ctqs8ycRRYHM/+l7W+Jf39JJFoy+AJT0tJtMhiCDcKvBrTy
         Y8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706045236; x=1706650036;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SsPFNicsRzcVeR0kjRsnPEk/NMOqj3G3Xl498xm7tPs=;
        b=J1v/r5XQ/rvl0ZuLyD8UCM1BxEstB5S/t4gUfzlfqyeOosnDRCNOUxpp8K/8pWwuy6
         Mpw05F+dSzAPJngCJ4QhlhQVqV/z1WeJZ0TL9bynup5zWv1K2ICLN9s0dAyDVESZxuhg
         NSY0ROUXSS8lVF4K1b/xsE6aqwABUw8a/obJn6bSvjHY0Z9iEkO2hmiYgaf3Pt+hVzjM
         TR0W2vy57TROrewVj2zajKh3Zy+jm3+dydlMgoU6scXmL/GKibVJQ2s3W9ZimY7xYiRE
         Bm/QjvECDNJtb60bOJCTg8lhQqIH+e95THxNDg+BtcBRrCMYTs+D7cp3arqO9jkQZyAy
         gGbw==
X-Gm-Message-State: AOJu0YyaWdi57JmQ91e171zh3DJ00dDcrVXc326sQM4b1smtMTsZbInH
	wU00eN0SfaVkdqXxBw0UyiGOVGXs2EwWDNkncuQX/CYudxV1B4bzPLnnFYrkS+w=
X-Google-Smtp-Source: AGHT+IFRvctKnY6OuHBRe0qLqdSp5NbxUd+MHzMy9wOKSxDBDO8OSOZJ02+w81ngdYKrMB78EBOAZw==
X-Received: by 2002:a05:600c:6544:b0:40e:bedf:c10 with SMTP id dn4-20020a05600c654400b0040ebedf0c10mr348118wmb.262.1706045236422;
        Tue, 23 Jan 2024 13:27:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id t5-20020a05600c450500b0040d6d755c90sm43768183wmo.42.2024.01.23.13.27.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 13:27:16 -0800 (PST)
Message-ID: <f46951b9-36b0-4155-b6ac-3d3f7cc8ef37@linaro.org>
Date: Tue, 23 Jan 2024 22:27:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] dt-bindings: memory: additional compatible strings
 for Broadcom DPFE
Content-Language: en-US
To: Markus Mayer <mmayer@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20240119215231.758844-1-mmayer@broadcom.com>
 <20240119215231.758844-4-mmayer@broadcom.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240119215231.758844-4-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/01/2024 22:52, Markus Mayer wrote:
> Add versioned compatible strings for Broadcom DPFE. These take the form
> brcm,dpfe-cpu-v<N> where <N> is a number from 1 to 4.
> 
> The chip-specific strings have been kept for compatibility purposes
> (hardware is in the field). For new chips, the properly versioned
> compatible string should be used.
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> ---
>  .../memory-controllers/brcm,dpfe-cpu.yaml     | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> index 3f00bc2fd3ec..42c8160d95d1 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> @@ -10,9 +10,28 @@ maintainers:
>    - Krzysztof Kozlowski <krzk@kernel.org>
>    - Markus Mayer <mmayer@broadcom.com>
>  
> +description: |
> +

Drop blank line.

> +  The DCPU (DDR PHY Front End CPU) interfaces directly with the DDR PHY
> +  chip on Broadcom STB SoCs. An API exists for other agents to retrieve
> +  or set certain DDR PHY chip parameters by JEDEC.
> +
> +  Different, incompatible versions of this API have been created over
> +  time. The API has changed for the some chips as development progressed
> +  and features were added or changed.
> +
> +  We rely on the boot firmware (which already knows the API version
> +  required) to populate Device Tree with the corresponding compatible
> +  string.
> +
>  properties:
>    compatible:
>      items:
> +      - enum:
> +          - brcm,dpfe-cpu-v1
> +          - brcm,dpfe-cpu-v2
> +          - brcm,dpfe-cpu-v3
> +          - brcm,dpfe-cpu-v4

I don't see my comment resolved - except more unusual order of
compatibles - and nothing in commit msg explains my previous concerns.

I think my final comment was pretty clear yet ignored completely. There
was no follow up:
https://lore.kernel.org/all/3fff866f-fbe8-4d23-87f3-275380adf3d4@linaro.org/

so with ignored comments: NAK



Best regards,
Krzysztof


