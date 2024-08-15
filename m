Return-Path: <devicetree+bounces-93835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B46A39529C9
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 09:20:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F0AFDB21EA4
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 07:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24C217AE0A;
	Thu, 15 Aug 2024 07:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q6v2IFkf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D793017A938
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 07:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723706406; cv=none; b=g9oArvdpSJlDgGw8AHkYu4LbNGEhK807N7cEkjvZd6ydYa6plzQsOM0T/ZZP1T8UQjyNdFHBSrn/2rsODk0dEGst9tGKHFJmwIAOwc2UdBf7Gl/BUUfySjJI2n3pyOgsxLrqvo2VMuvALz2dpN6QW3EtniWEj4AeWeBJO2gkURw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723706406; c=relaxed/simple;
	bh=jsPdeOnIlJPuMPjLCro5SKmZvXAl1puLv+RSKZxyf4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cnYCJiK+afxWJ8UonXMxguLPny7+IBdhBSp4oWSBheErIdSh6q/YyhglHJzydC8ykY0u1yXDMQyGTbpUVFg/HFBRUv7QlY0hpe2RPC9r5RfdvXhoEfbbMusY/vD4EQGf7OZ4GrNLZpKUI8+4DtY3aCPcmkb7DFp/UH58Wq0ccBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q6v2IFkf; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52efdf02d13so951629e87.2
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 00:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723706403; x=1724311203; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BYyfFXtm6C6RsJuLWVzh6ZAxLrDVeC9/C1JLKXigeWI=;
        b=Q6v2IFkf7k7L9fubJwBqKefqSfn90S2qms5+DaT2JxgczViT6Es+DeRK1363k2PE5X
         qn4i0V7lDf8GsPC0Iz4/+5LNzq5MZGeiyEtswOq49K07sSZf43eYXpIkjMOMIlvm+zuh
         lh/qOJf9bZFLirddGmO5FsXXUtoBYlU0O2XTEWAsSgJ3Qg6bFYZxEdcYmrBj3hKyL5qj
         M6SoJ8mi3rIomzACC3vWeJmgiMKaVYszUV0waM13WD2BQuaYyBGNXRPX9iC90SuF+5cK
         KR93XdR3aanYyc01SI1bkr9ng1EbixKMdFeztV4/8sfFdzV0TU8AtRpGG/ew/X0GUIkn
         RSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723706403; x=1724311203;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BYyfFXtm6C6RsJuLWVzh6ZAxLrDVeC9/C1JLKXigeWI=;
        b=dDO6u/yvVhgYnQlEp6irJteAc1HOcsiqVPqT0G8UWFByhsu7IvuHLWN69S4ebGhhYg
         yta3BO/NSXXxHjkZoqCjvZT0RXBh8MBTDPD3pKyxjWiA6Pj0cDf8wTF6xfZ2UcBm2Jcc
         bKeubXRwTXwjLLb5pn3SGj5VunkASDaqDPcCrSaVlF9ZdSvsDZz2t7WEZwogKbHXkDtl
         +3/BfTUIySPnumpeY9jCk1+sBi7qCHnNnFyFkMjCYjyBIMSJFm8JTtUFpZK2rwlCvFue
         jAAfsr+qIZ/e3YgC7epciHO5UvzFdvIskVGwR46EjiIt+toHUW4FNg8O1AD53WJIj1kE
         VUPw==
X-Forwarded-Encrypted: i=1; AJvYcCW6H7ovve/21FJS/YDeKLvmc5Q/5wC+TehzSh3QkSGTeHPLwo0S3UjILTSdIQCkI0hPQh2+ZjVjAg8vT9n+I7TwpfxdOI7LSULARQ==
X-Gm-Message-State: AOJu0YzsHr7Z9EapyQBxqJx/hBMPAcw8siT5Vk+4z3U2+fP61jOk09Lb
	iCf8DQlvS/DzhRNwokW+mczhv52Wrsm5TlAUVX/kdgD6WrjQFdflZ2QM9dHAGTU=
X-Google-Smtp-Source: AGHT+IGjAIXc3LM1HfHMtHToUbYecK2vDjK6Pc4pBkKHI9xD09PLovIkzA3HfX5+XUcVIhkIkzuY4Q==
X-Received: by 2002:a05:6512:12c8:b0:52c:df83:a740 with SMTP id 2adb3069b0e04-532eda8a993mr4211925e87.30.1723706402380;
        Thu, 15 Aug 2024 00:20:02 -0700 (PDT)
Received: from linaro.org ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83839693ccsm57192266b.190.2024.08.15.00.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 00:20:01 -0700 (PDT)
Date: Thu, 15 Aug 2024 10:20:00 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Marcus Glocker <marcus@nazgul.ch>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: Add Samsung Galaxy Book4 Edge
 Makefile
Message-ID: <Zr2sIAhB1i7akCCc@linaro.org>
References: <qv5pz4gnmy5xbxxjoqqyyvn4gep5xn3jafcof5merqxxllczwy@oaw3recv3tp5>
 <mtyjmbhqv5otvxhxyyvkxg6tubmtkeouwibmsmywmjdamnqnus@mow2w5trrmok>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mtyjmbhqv5otvxhxyyvkxg6tubmtkeouwibmsmywmjdamnqnus@mow2w5trrmok>

On 24-08-14 23:14:51, Marcus Glocker wrote:
> Add the new Samsung Galaxy Book4 Edge to the Makefile to compile the
> DTB file.
> 
> Signed-off-by: Marcus Glocker <marcus@nazgul.ch>

This should be squashed into patch 6.

> ---
>  arch/arm64/boot/dts/qcom/Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0e5c810304fb..77a48a5780ed 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -265,3 +265,4 @@ dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-asus-vivobook-s15.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-crd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-lenovo-yoga-slim7x.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-qcp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-samsung-galaxy-book4-edge.dtb
> -- 
> 2.39.2
> 

