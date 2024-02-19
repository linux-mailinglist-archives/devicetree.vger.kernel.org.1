Return-Path: <devicetree+bounces-43571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9B885AC8A
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 20:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A0FC281723
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 19:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89E8A51016;
	Mon, 19 Feb 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zlKLk5Bx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE51150276
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 19:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708372553; cv=none; b=UAQsiiu8+03Rgsd7i3nQ5AeZw6vYvdUL3AhPHrdYyBVfANPHuYTX3vrLpBhcTCGN7MgXO2CeH7Zrdka8QWiqd0/DvrsfiWyzvRocahqcMJXRF9fCTAVTzxdR4siREfsOO/7+a/WScNQNd6umeLiCj7LsmGXXPHi8z9xKPRsm/CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708372553; c=relaxed/simple;
	bh=8OKl41Wc+X80Yr8sNThOn8WRf/IkQK8EP6oDeYEVzfw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rF+LetVer/llok2HvVmqz6/JsPa8cALnLRwGBycVISC2nYsR8Z/KOLfyifeamEO9VZV9fYPrxNm0ORYSMW1FelKqISQGX104mwBGNPNm/wS4oHOmMGPHssTW2h+0Yd/ZNs/S4e0LqO85tO/6Wvo726IWAzJJ9q/JxPYj7cWLrgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zlKLk5Bx; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7874a96a01dso129126285a.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 11:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708372551; x=1708977351; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8OKl41Wc+X80Yr8sNThOn8WRf/IkQK8EP6oDeYEVzfw=;
        b=zlKLk5Bx5qV8ZRs9WwK799E2imjQoywr4LoZhjnL3NOaBAv2H4dnsTkaSw4yFGQ0VC
         gfyxL7jclaKOC6JGmIJRp3am5tfxYWciy4G/LjBT6d6ZjdOphH5O2+DuXtI93pjvM5Ki
         3bWejXzmNUJrQ3STIAN+CqoNW8lKbkCtznm9HzvP4ZR/XWSHveTVYsnoF1Ww6DYseAx2
         IWxMxvGblRuzyGdTqeL2GJUMV68b+kpzXQ5j89Asne3UVerkWi3fli8z8BL34P405ZzZ
         kuq0EfshsxtSQ0M2Dwz1POm/I2WyoaNqrUlS1nYyhgY0HVhfLJvvXKEiQnj9ys5DFg3q
         WQ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708372551; x=1708977351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8OKl41Wc+X80Yr8sNThOn8WRf/IkQK8EP6oDeYEVzfw=;
        b=Q4Ht91/XPki/AfsdHjQWsEw+dt+Zjpjl3Ta9IHe9tR/Z8vlbhPDKc9a4LVpChLvIaU
         /GFHG2F53XARnLceJOeawBZ4X6klNOQAbyxRy2tBD4iDLEWX4/Q7yxFuubteC+YscWuJ
         vEmDzQ5afKTHsJaS1Kd/2Re4RJE8TXZObYZbDFA7tijsuQDnjAR2ffwRVyhgnhIOlHSw
         prmthiyEn6L4mv1HC2dlKhxpOrSm/cQ87GI2yFSwRNE+rOINPwmtkCqK6z7cvVTwX9yY
         xrsg5tZX9MSNshOR+yz/NL3I2fHknSNG2CbX/SPRznAQ7rBEkGye4aQwg5LgeeKJ3iiO
         dwyA==
X-Forwarded-Encrypted: i=1; AJvYcCVex70rykwYIaIz5y3TlmpXo0VWMwHMOq4WrPRb9nZDEPAKGBIvXOp3uLeBzVEBs2ZYSuIYroAGatt2JLdRlQPIExoM8CnkC1VNUA==
X-Gm-Message-State: AOJu0YyHSpDlfNaUP60JkzmQ6VYD3R81b5HQZ6huQFZTUrGSBEf1iwbV
	pfz2BGb0F96dhKJp43/pJ/nkwF5SJshz5z6vqXQzQe7oAbSXKUzmCRY+jSwkjlALvXpRlY7JGpj
	TQi7TlQklZNxpKoDhLLNcuDadEPqAtO6hIE1AzA==
X-Google-Smtp-Source: AGHT+IG102p+3tJPXw/wv5GEecEGDJ4yNBwcwvEeNuhkzfGBOzbwgyL9AORHgu7VBoaPB3l8XOP6sTuKS6wMjWiNBq8=
X-Received: by 2002:a05:6214:2687:b0:68f:3c39:c63e with SMTP id
 gm7-20020a056214268700b0068f3c39c63emr10578054qvb.6.1708372550871; Mon, 19
 Feb 2024 11:55:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219125453.103692-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240219125453.103692-1-krzysztof.kozlowski@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 19 Feb 2024 19:55:39 +0000
Message-ID: <CADrjBPq1X2P7hTqSiTnZ03c_QguTQ4kbFen9MeWh5TaYn9fh-A@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: samsung: gs101: match patches touching
 Google Tensor SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Mon, 19 Feb 2024 at 12:54, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Maintainers of Google Tensor SoC should be aware of all driver patches
> having that name.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> This allows to spot easier such weird drivers (weird because they claim they are
> for hardware, but they omit entirely hardware part) like:
> https://lore.kernel.org/all/20240219061008.1761102-3-pumahsu@google.com/
> ---

Thanks for this, I hadn't seen the series you referenced above.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

