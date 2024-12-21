Return-Path: <devicetree+bounces-133267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F4F9FA18E
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 17:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D85D4188E46B
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 16:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA2B213C3CD;
	Sat, 21 Dec 2024 16:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cz1L/YfL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F2D2594B0
	for <devicetree@vger.kernel.org>; Sat, 21 Dec 2024 16:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734797094; cv=none; b=Aq71DQ0iCvuCYvv0d/Efnwa976KtbNgoMbMXT0h71m90P4TdgdGTbPTuRF8utl4BMy+EK2cGiYxqJp6r4i28vHKtBPsoqWORNYT4eJpmHQJg6xwf8bJjU+BgfrdTl8vZyqsinZrZ1dmbHfb3oi3xry69dsNmo93H0tif2ftO/xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734797094; c=relaxed/simple;
	bh=XprkMDbQVHB7HHnSWENBhj2WANzn+uQp8Is/IQD88PE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WjhqQzZgWL/FBZjKAEf2e4cH9M2YE2nsxKgwKSV0iB80zWWkq2PvLTTIl4MuQRrwcM4czLDuw8NYdkPGsJPsw4fkICk65UXzRxJA47MwkY7hwYGIschAB6uoJ40+fVZw/rD59Un2PKu/nu8l1Tu1AxvpE6JcOZdE7fCQrJ/PtME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cz1L/YfL; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5401c52000dso3138064e87.3
        for <devicetree@vger.kernel.org>; Sat, 21 Dec 2024 08:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734797091; x=1735401891; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YNN+KzKb+y822BYZ4quule9WMgNPlKOzcu4nY8Sav+A=;
        b=Cz1L/YfLDR5GPwgQgkWNsScfj5Y2o9hBwSWR2rdqR9DqJO5BAfUx9gK3YLO9ldZNE6
         1UAxr19LxBFXK/MZWF930xh1WW/qkFKXKnRP0ntYj0HOMqHby4MirU7l3flEVsjpAxo8
         WhmkO8fmskaiSx8ZvxIMNf+NK6RgCcGtimstyFpTAASlnModc++VtQIL0AN3U910gU1U
         lKo/nlndEKY6CbssmlIcl+HYw6MtMNmjUu/KyDeMnw9eUKUjqISufwYIjyJP3JP2ZBxi
         Ex6R3vgpbSwQ9MzB0HuJA8adAMWx73yS0H6USLFSQ3XfHDBagGwVB+KhSzzViWkKSFcR
         LIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734797091; x=1735401891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNN+KzKb+y822BYZ4quule9WMgNPlKOzcu4nY8Sav+A=;
        b=ilkR220T+jhEhcJoXrKiDZnQnaFdG2dKehRVx289DAXBgYH1vnGe4GuAh1uw+uE4LD
         +Q6XEzUOP5lpSLMhVON8YgzL25GWbhHg2bo84Yho46Uz/W0S21cyFLvz1MtlWwBX3R86
         mVfJ1v3H/r0yPgiOIaf8C+o+GriGiKv0YsZpyZQZTqB4HcSqUCFU2auV/Lwfr/aRS5Ox
         Rfk/CuVoqOFcMv3pvBHhseAvCaROxBNoqHfECBDNW+a1vzOjQ5z/6WQNb9e6ziV1zK7p
         769glm2cFVGtk1u3EbvVfTuCI1rF9pfkLnT4Ym4vhB/F91DZb/nZbb/3EyStO6OxO0bu
         3zDA==
X-Forwarded-Encrypted: i=1; AJvYcCVXsisfWnLR6obC3jjDn7GfbrU6HuE0g0PGpj8gkTpZp/lNXJKUK9GNceD2sTb1/I49z+WyGOL+owc7@vger.kernel.org
X-Gm-Message-State: AOJu0YwBrjNTJFUG7A+lSBpl7NgF3IQhsI0zCuetKb1hTe87tYSROJfk
	aI2ljDZZ0Y+otDzYXBhUZivH9kyAUynJRbOVewqbx/IvQcsUQh0+pQR7QM4CvaM=
X-Gm-Gg: ASbGnctq51UeUXgMJ65xQbVQl0ZiL9gjlYMonZHRrA+isxzHTvxQiHe/bBcPQhKbMyO
	0wYO3i9sFr3tQHj9uOGjSxNsXxAfXdzSmIiOikRDirweEbL5PMPgG2WAnq6IHoBfUB/gQA6cH9b
	kiVpEyKWbZTtAS0hiCNKuxdKNQ5eN811n3Yj6aXR1qFTsLqJUTBUYZ7lT+qVnUsm80IwJKPDMFk
	9qFuflmjKxeF4kzBm2n7Gu1HIdBmVnTFGP1UmB8t9WFpR9qYqzmHyEwPRr8MlhkuZissCmlU+kH
	5ftOwB+wX7eMiF+NgXA43cK7LkH7HQfjyfUC
X-Google-Smtp-Source: AGHT+IH//aDjXNbR0mGsQ0JGNuZxSXVKCn/a6qPh41FbBA3dmcjSII54QdsRwpfOXPqNzMHYHc9c0A==
X-Received: by 2002:ac2:4c48:0:b0:542:2906:786 with SMTP id 2adb3069b0e04-5422953c28amr2351592e87.31.1734797091129;
        Sat, 21 Dec 2024 08:04:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832c26sm762223e87.279.2024.12.21.08.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2024 08:04:49 -0800 (PST)
Date: Sat, 21 Dec 2024 18:04:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] soc: qcom: pd-mapper: Add X1P42100
Message-ID: <uarbtdd5t5nufdzsddv57eu67bogj45zqmpnhzl42z2sslgm4g@ahqunjasrauh>
References: <20241221-topic-x1p4_soc-v1-0-55347831d73c@oss.qualcomm.com>
 <20241221-topic-x1p4_soc-v1-3-55347831d73c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241221-topic-x1p4_soc-v1-3-55347831d73c@oss.qualcomm.com>

On Sat, Dec 21, 2024 at 01:36:02PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> X1P42100 is a cousin of X1E80100, and hence can make use of the
> latter's configuration. Do so.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/qcom_pd_mapper.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

