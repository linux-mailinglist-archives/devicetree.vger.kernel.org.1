Return-Path: <devicetree+bounces-185126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F99AD690D
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:31:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54F6717AA4F
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C745E1CAA76;
	Thu, 12 Jun 2025 07:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z62n9Jbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059DC1990C7
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749713475; cv=none; b=aJ8Au4G8r48dzC3BUHolLSKoFg/V6ZvC5Whn4vja5rC3DPjuFMenxwXpWjP1FarvKZZqRRf8TdmTSv1T6NhI4vutqYGpNY/U7VF83bb6co/Z1VcYElIeL7yRWfsjv7Dg+eMuIHTH9KKBuPy44gGTtyfDLUZqNG4BRmxRglcXGag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749713475; c=relaxed/simple;
	bh=DytnShO1ZkrY3YduQK7K2doyiHaoDr25jT842HjbEEY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MFP1s9APjmeDT9/a1tUwnTk8sIntBUELM6e7MDXGNmOqbqLo4KV7edPspH3E4wKumyvI1wv5BS4gcdHESI0LAuiX/JjQlvmtCu4D/MHgLoV+vipgtcbjM4GYGPIgamRKZ0ASltfe+xyjYwcSGmHVDSaIT/sZaIYoxj6e7bx/+MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z62n9Jbj; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so6874405e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749713471; x=1750318271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U2K4poWn7VnmnFJZFCsrOToJAaR9lYt8Pscwy57oCLI=;
        b=z62n9JbjNj57lgNLTqHYDqUcA2E5hz1p0bT5pOlSMm/940JpYGui4QE/bKc3rxkR6C
         13A6chw561xUBlbJtMXfJXqjGAW2LiHHj2ohXARBogXEc5fyVjHqx5jGNWWF37D+8+w4
         ay5q8yj5JCUjXQOFwDgKFBBuPMWoM0v4Ae5MtfqX1I5YHxLBVwwVWrT9oSo+Z0TmWHSA
         M5j3k35SEa+cXFL39lJwvizD2inAKMYVwptytz1QzZUb15X82Ll4TQw6R1L+MJX9hXU0
         ZqXHNmTibf7GPmzzNgkOnp0675P2eqVRIubYM9oEmHaYzsMrEmIgbCxfdhQRXf5TPp+T
         PWTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749713471; x=1750318271;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U2K4poWn7VnmnFJZFCsrOToJAaR9lYt8Pscwy57oCLI=;
        b=TMN6DRCDy5/Ho3hsdeVgj6FKlJfpLosIjsaIyp5Cd17W8yw+xGdju7VT1xyImCncaC
         06Kcnzk1knK9XyZJugkpYb06aeBLmIJHXpDi+pFbRschcw1kFq0uIklfIQwuYyNjnv03
         Obf1oPmeFYzC4o4LihK1b+8w0svYTAgrG9nrxbh1HSQa7LkhWlxyo+YGvLokTDMdjAUq
         GvTwBDUjcD8iAAKc5r4BFOma8DN7KfZKO32cUNDgG5Ne7fdqBcB9GC0VANlYFSttls7e
         IyIUJASiSOwkqTQaj3A0BqBlTEPMMFTUhsjr2k4LnKiymAO49v+L87AfuC0MxHtZw85n
         rrjA==
X-Forwarded-Encrypted: i=1; AJvYcCUv+8TdT/P6HRPmttVNg7CPFtZLj4BlfXCU3d4Ye9bYMDyiqYi6W69skW+ePfPjqR7beXW28pc10/wL@vger.kernel.org
X-Gm-Message-State: AOJu0YwF1oOXO/5uRtcC+j0osBxIhQczZ1A9uhts4dvroibaxep7SXS7
	8kXx1GM82Aa4r1xgHWIqAq0nHGSmieUUZ65fwviOY5nljtDmsfehADGBlwyNl7HDLhk=
X-Gm-Gg: ASbGncvWmSwWhVv064nsOT8gXUXUCB5hNa6lv27gJ2BHzbBSskFWCj7OXcTEmZHX227
	qOZ8KDcyzLfvEheFUDtF9UHsIMsmCv5xRd2D36HErPwjGtM35+n+FyQFnJbcNmWIEeXw/WR8vdF
	V4TQu3W78eGg9xGl2nk44+HeV1LpW2HECp/svgpBbRfXZvlYofvQlX7mREvCttC61GWpYfDa5Wo
	mx0XerPHUf/Oru/FZaCv4z5YiCzsXlHPEaYCY0f8MxylM0ecyDyVkQJ4MyYPU5Un+u0eDHap6H4
	v8vkRkpiJ4b/AhMNJXSjz9h1lqNMieBHO5aNPyr9jmzQnxRiLtSdWDZdSck9BKTsMm8YYCf4ZwO
	g3whdFRzvi0YGk/oN4GH+omDKiVglqpyNGdyExg==
X-Google-Smtp-Source: AGHT+IEI6CTfuVgQmq+MagvljGcEFTlXdLUrVUXXbzliGf2KA96uAHVIrBshaqVZXl/+EEK0ruOf/A==
X-Received: by 2002:a05:600c:5394:b0:43c:ec0a:ddfd with SMTP id 5b1f17b1804b1-453249a14f1mr54591875e9.6.1749713471293;
        Thu, 12 Jun 2025 00:31:11 -0700 (PDT)
Received: from [192.168.217.94] (31-187-2-249.dynamic.upc.ie. [31.187.2.249])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e176d30sm11614915e9.37.2025.06.12.00.31.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 00:31:10 -0700 (PDT)
Message-ID: <0944eab5-099c-40db-adeb-6bd80e9ebceb@linaro.org>
Date: Thu, 12 Jun 2025 08:31:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] media: qcom: camss: remove never used
 camss_vfe_get()/camss_vfe_put()
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250612011531.2923701-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2025 02:15, Vladimir Zapolskiy wrote:
> Two intended to be helpers camss_vfe_get()/camss_vfe_put() got their
> declarations in commit b1e6eef535df ("media: qcom: camss: Decouple VFE
> from CSID"), but the correspondent functions haven't beed even added.
> 
> Remove the unused declarations.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   drivers/media/platform/qcom/camss/camss.h | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 1d0f83e4a2c9..99831846ebb5 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -160,8 +160,6 @@ s64 camss_get_link_freq(struct media_entity *entity, unsigned int bpp,
>   int camss_get_pixel_clock(struct media_entity *entity, u64 *pixel_clock);
>   int camss_pm_domain_on(struct camss *camss, int id);
>   void camss_pm_domain_off(struct camss *camss, int id);
> -int camss_vfe_get(struct camss *camss, int id);
> -void camss_vfe_put(struct camss *camss, int id);
>   void camss_delete(struct camss *camss);
>   void camss_buf_done(struct camss *camss, int hw_id, int port_id);
>   void camss_reg_update(struct camss *camss, int hw_id,
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

