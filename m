Return-Path: <devicetree+bounces-46019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA08F867B46
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 17:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83392285CF4
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 16:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BD112CD83;
	Mon, 26 Feb 2024 16:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BoRS2yBQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D2E12C554
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708963945; cv=none; b=l3hTlOyZ9q9497u4QSLSrLgh9/0j1xZbL5ZwMlxD18TEnNdR7kbKLJEanFEdKMijTxlsV79DT8GyRvPEPvZX15MBQIVN7ebxawLqFe/MWKbubC+1nwlU4PqaYyFYWMk8C0tFW0HTcjrvZtcOsnDrQu15OZkRF7u3Vc8tqaMV2Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708963945; c=relaxed/simple;
	bh=a6f7tH+OqrI8hsygIm05fQcRkKGxUj/pum2GnIuoRvs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cldg30fzDtOeMeCXzxXUhksc/wIrOBxkMHdYrWisJvvqBe8Wqgb3NqbLJsvx0zrSjDyLxNV0x7vFTCNXAn0Z7yeR9AL8/I9OHlzA3GvwkXcn7VKbUrEFMxCuV35FF868JxyMAotRzXpDIVepJAZ+cKhm/0Jl7QkuoJB3x/i7Fhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BoRS2yBQ; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-599fc25071bso2166922eaf.3
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 08:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708963942; x=1709568742; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5sH6z9nrzqVNTL38OQhoDAwWJzK93pXYFPgmQuEUCcY=;
        b=BoRS2yBQ1FIjCzXe3Am2ozDjd3R7N9NAiJC1hWk9JYXOnorAh5dgaVcrrCuX3qzaAb
         bmOWwsK+A4uJnnUfIEoe4BYki7CgvY/ejWPgaB7Dw02NDMsmqwRenfzVpUmm/H/EpDW/
         I/PjgplIDH5Ld/WFgRp/hihvBa3mwqwiS6Iyizq1zvc40oE/ir1RsVddHzl1cQFMmXDE
         WOA1XJqA+nMW8KNueKX64MqlWrHnP4kl2Z/aHcRIVOau4X7G4RbMAqjdDlHLH6lsPK2+
         XqMRfNbdIDn0WS5LBRF/wndbTKXPEA6gl1UaIbQw1XRHQ8tZh8rgTkweQ8qKV6cpzPhA
         +0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708963942; x=1709568742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5sH6z9nrzqVNTL38OQhoDAwWJzK93pXYFPgmQuEUCcY=;
        b=di1ePOtyXEPp2Qet41GvQvg4wms7uB47cLnfHbSW2WxeSYYNu9XumGT1yreg/FFf6i
         YFYj14g4elmWahYm/6xjhpFZx3tQwXZmomffZjWxylwzLaY/yYu1degOnS41kCvtOtOW
         1qtKflf4O/Qxsjhdjs/bDpvdVffYvsyjkGXiyvaLraSyTwtexcw9vSkR6y475HvV5dyx
         0F18ZEEFyuXraNxBxY+jqDPRe6H6p8DBkevoyQvRVU8nAe3PVk6sXHlqWaWal0WQpwE2
         5N0U7lJ2Uu/rnPH5EDe1+9YqpCS7EuaFnYQM9s/GBsfLbzzjUbUtFay6c0O+moytaDOi
         MKBg==
X-Forwarded-Encrypted: i=1; AJvYcCVtj2Xejonb2gMvTS4cJy4aU1QSJgxYr73Y1cMCTxzghdxqnVzvItU2KLkgPft6XYE6Nrg5HufpHB6wnRkBNWvYvFcvJdc0aHIXGw==
X-Gm-Message-State: AOJu0YzHI2aUmfqHy52CfvxLo6kHzZihxv/+kBULvsHgpXphSgVd1MbC
	eqffchEteBVLhfNlrXjyl3c7K82fgQm5EDvZyfcyPHSXHAUn4q5NilJbHffdXmI=
X-Google-Smtp-Source: AGHT+IFjUb+c/fFWRXoZFCN25O2SmDpaUNvFqFasQHJGd7CEyCqvLCJr1Pd5sypoEjZ6QljgaKYLNw==
X-Received: by 2002:a05:6358:6f0c:b0:17b:b532:80be with SMTP id r12-20020a0563586f0c00b0017bb53280bemr1375921rwn.25.1708963942241;
        Mon, 26 Feb 2024 08:12:22 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:360c:e16d:91ef:5fec])
        by smtp.gmail.com with ESMTPSA id d18-20020a63d652000000b005cfbdf71baasm3591736pgj.47.2024.02.26.08.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 08:12:21 -0800 (PST)
Date: Mon, 26 Feb 2024 09:12:19 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: remoteproc: ti,davinci: remove unstable
 remark
Message-ID: <Zdy4YwD9LNmq7hth@p14s>
References: <20240224091236.10146-1-krzysztof.kozlowski@linaro.org>
 <20240224091236.10146-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240224091236.10146-3-krzysztof.kozlowski@linaro.org>

On Sat, Feb 24, 2024 at 10:12:36AM +0100, Krzysztof Kozlowski wrote:
> TI Davinci remoteproc bindings were marked as work-in-progress /
> unstable in 2017 in commit ae67b8007816 ("dt-bindings: remoteproc: Add
> bindings for Davinci DSP processors"). Almost seven years is enough, so
> drop the "unstable" remark and expect usual ABI rules.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/remoteproc/ti,davinci-rproc.txt        | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt b/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt
> index 25f8658e216f..48a49c516b62 100644
> --- a/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt
> @@ -1,9 +1,6 @@
>  TI Davinci DSP devices
>  =======================
>  
> -Binding status: Unstable - Subject to changes for DT representation of clocks
> -			   and resets
> -

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  The TI Davinci family of SoCs usually contains a TI DSP Core sub-system that
>  is used to offload some of the processor-intensive tasks or algorithms, for
>  achieving various system level goals.
> -- 
> 2.34.1
> 

