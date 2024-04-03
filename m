Return-Path: <devicetree+bounces-55917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DC1896D9B
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 073981C20FD2
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 11:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775F71411ED;
	Wed,  3 Apr 2024 11:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U4aKXYUK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82F1139588
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 11:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712142299; cv=none; b=MMlTAHhGqzLGKLM8OUefhA/T7wyDm4TK3pP+6+X7NeuKL0etr6lYvfmnqRivc11T4qNIC7CMqLbB8npYUf7DYLRVAG482Z4XQhOWPD/vkcIsxBWKKgrDJgJj99HCj/iR3gYNbE5yeWiq1MYYimLGVCwPDxXYNjrktc0EXIb75s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712142299; c=relaxed/simple;
	bh=qAXDnAQ20/ngldFN/9GzwB90qcvOX2UPkxSdCsBXvdg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mCCEzpK51k7FZoGKyaH7aJxHSQH5ItBFTvXojJE8zZ4DUQKhLLUYKk9sWkWQFXhULh+cpUswbVIiGFv9bk8VCxRricJMTeXZuUXKkKJQFxrWO4sJX9MXJa56e6YO6MOsTRsOG+xm1WfTGECtzanfIzykkhsIYAqdJq+vRI+dCoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U4aKXYUK; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso5680071276.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 04:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712142297; x=1712747097; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N5/oaXGaDXSfCFWNRLUlqUFokKx3b3oa0E7IyM+4V0U=;
        b=U4aKXYUKDOHk18ss2xfkB6ISdDfnhaV9M7b/qOQlpjYaUxCQ8Z9xdxnEbE8ISrklqE
         o1AvkV02jyN6pFhV4Rk/eNEuMRJBijGolfPUFqN+HeNZlYTURFiBVmntK/eAFviWFH/H
         lxCjbd8gmovR/rvPJKEaB9+FCtT6xN6bwRFBlBWIw96Ixlo4Gb8glBQycRfp5J1zFPT0
         BguljZeFh/83ZRPbLTR7ihxEwpku+mGY7H8afma2zt0A6SEHUtgCfWeThJqM7jSDi2nK
         +zjDXZ6PhpttoqJHowhzxgAW90fsovNJ7H1UZL+HR4B9hbPmMV9cjC+6gMgz8v0Dhy9M
         O2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712142297; x=1712747097;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N5/oaXGaDXSfCFWNRLUlqUFokKx3b3oa0E7IyM+4V0U=;
        b=DNax2oR7ydzYaQ8GHaAJr4rVY5V8LAHNbtCMLbBayQyrHm/1znfv6swRZIeDV2TD73
         ymcJgizumlQockDb24wcy4XRFrEZt8UQlET+ZInCULUM1KUlftva882z8zgynquxBubR
         nEMIgg+OJh2awkJYjlydsAZFFeVZ4JoYHzr6e41sb88Wu5aBvVAT3kx0pOD15uIA1prq
         HpDDG8J7oNrvp3wzH4XZ0BoSgGQQJYLEvoKO/bHwmYJEOapDFOqdCv0yw4jz2+tTqc84
         WZj5WaA0AjlNqLH9xXgENaefp6558LaYVoglvy4lGH0aUHvGcdA7VS49le8uUfjqPW2f
         u7IQ==
X-Forwarded-Encrypted: i=1; AJvYcCU32BDgU8v1aOWFqxJ9Fm+GoQsAOhBz5eO3Id3i+sQmAAjKAafkygH6q2Y3vYtP3ziCE5pVuOwtvPRKX2byczutFmohqE3sFFdFog==
X-Gm-Message-State: AOJu0YxLsV3qCZm42mI4ge6BVNt5Vw6qgeMEoEWZcDzpq+N7AFd8Cesw
	EoOeusx69pEmTc51YdPXNnVisNnRnU9ifqFLXa4dvU+FiS8RxKUE8f1DyvsavXq9AJXZyqXoMxN
	AlFhhd2Meu3WZA3A+X9TL+zwQMkahMxJQruIWEQ==
X-Google-Smtp-Source: AGHT+IE12sfKk+/XM1kPq4dc8JVlzR2lCkXFu/Nv2FXb7Fs+ZLOsbaq4fFXjYhjHFZTi4dzZn/QBvEeU9aiC510tGYo=
X-Received: by 2002:a25:3c42:0:b0:dc2:234d:214d with SMTP id
 j63-20020a253c42000000b00dc2234d214dmr8359198yba.40.1712142296721; Wed, 03
 Apr 2024 04:04:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240403104220.1092431-1-quic_varada@quicinc.com> <20240403104220.1092431-3-quic_varada@quicinc.com>
In-Reply-To: <20240403104220.1092431-3-quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Apr 2024 14:04:45 +0300
Message-ID: <CAA8EJpox3EmmV9o6HqRJkTwDHTwAYQ8kaiJr1PacGnwLPSweQQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/5] interconnect: icc-clk: Add devm_icc_clk_register
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com, 
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	djakov@kernel.org, quic_anusha@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Apr 2024 at 13:42, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Wrap icc_clk_register to create devm_icc_clk_register to be
> able to release the resources properly.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v7: Simplify devm_icc_clk_register implementation as suggested in review
> v5: Introduced devm_icc_clk_register
> ---
>  drivers/interconnect/icc-clk.c   | 18 ++++++++++++++++++
>  include/linux/interconnect-clk.h |  2 ++
>  2 files changed, 20 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

