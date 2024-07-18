Return-Path: <devicetree+bounces-86627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F5393504C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 17:58:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E000B237BF
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 15:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07771144D23;
	Thu, 18 Jul 2024 15:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w6MkYYW6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE35144D1E
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 15:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721318275; cv=none; b=AEA/Z61qHsiga9FHHBgUda5KLCFkfeGE8rC1jQ8TXjLRnS2I/FzsDvH9JUlp931jZRebk/aPwZ38yPtXr6O6aozr8RDcm+maTh0IsP6KA9Q8L7+xh3+2d8UDVdh4OZdlpnzoQoZYUxxNTqROAEek/+2JWHROPSybbWktpfDJ2Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721318275; c=relaxed/simple;
	bh=pEoCcyP8SmbTARKtqj+yZyS8c0B/jW2B05S8wHRAb/0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RQio7VEOy4c8OEzwCpFWZE79cJMxhwVYqT5l48MtkhO7LC0O4frnQlDjVJdu5xwiMVW3EWEGxNOFQXjq2WtLPfmPrtAW7PI5ycwjcJ4oG64NSncfWbITiAMACVLQlIcMGbrTThAYfqocz/ehGZ0cznitYHsrW5pF6JN9fuV98Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w6MkYYW6; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-70af8062039so2571b3a.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 08:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721318274; x=1721923074; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aMIVUi1+XtyWiv2jSx6v0C/sfNX/sBiBYCcujxRlArQ=;
        b=w6MkYYW6Pj5AJaHc7GRDubgJkaYhQIbJLJEb662r1mPe5WPmspO6ItGRMKylIeATA7
         MAEfl1JSxgOs9ZVqP+bJuYLQj05Il7CU6P6jDJOUdEqqe70+MEHXroz/oDBAvv+WlJIK
         inphK7/VA8/D6DY1HpBlFrE3ZcTH1vSS9TEVB14DoQiTGl352a4fPxyu0LszHoOq5X5g
         gj1JhtCbjT6x6zI5LSVlm8L337duQ+1NzbjdqGAhE1xCBVk6Tp1FhS1W5azo4kf4A0dZ
         3y8yLDwbG6A95gb70wx6P9yF2W7EtLx52YB03GXvcOuCFA/iYhJsGDri5VQtGrDpNB9F
         Xe4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721318274; x=1721923074;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMIVUi1+XtyWiv2jSx6v0C/sfNX/sBiBYCcujxRlArQ=;
        b=qtyg0z53sY39awKMedRkEwAlmqHARCLzf/UXAk7ExN3rWQoo1g0+V0Auns0kIYYpwZ
         VgkEJ+26G9swV4GT0OtteQmXaoIRrAgKSuNPyZ7J42nd44VSqmCtqgw/SpN7qKwIPLTJ
         q7YDn+dVaK9cYqjqbvk5YdTr9Gurf1LghBOjprufzYwiGm3277vaP7nM7x8cBuIsrLI/
         Zntr7zMhSULg/hmUqkzgeUSsL2fPEYj2IwQ1t4tqdPlSUjlAM57TQe6jDN9b29/cL/5T
         9wPgadMFQoE3C88xc0Sf/7x1WoqhsYeP+sOEOQbUPlYGxdpk1HIb+0cyXvBjncu1Z/ZZ
         OYuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqsxT7937tR6WC02jfgg7pLH09Z9lrJu233HPaYQLsKExl3wYWrbyO3+jYMr/TBjZqVLMtcskMWB71JU7Q1syCSoz/cF7VnS1jTw==
X-Gm-Message-State: AOJu0Yzvj5Y716cAt5amL8EX5zFnu37XaRgepOlONfdT8dY7TpBtQrxt
	Kb8R/fhKh3XyXB7/AnfIo3E5Py5aAFMHqg/kY593VvhT5E9iYFfFkugdhkIiDY+IItxVh4G9FIr
	fe6hKdWWK+5dkj2Jn90lwWaaGcgdf42zZ9db3GA==
X-Google-Smtp-Source: AGHT+IEpHrWCkUrpjxLliS2sFNiblUo99rdj9g5ppHtWWSZUzyR/mtO39VJ9j9yZKVcVcLEtg/ErSmtMwZdr3DV6WDM=
X-Received: by 2002:a05:6a00:3e10:b0:70a:ffa5:41dc with SMTP id
 d2e1a72fcca58-70ce507b90bmr6287948b3a.24.1721318273873; Thu, 18 Jul 2024
 08:57:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240626060724.28862-1-quic_jinlmao@quicinc.com> <20240626060724.28862-2-quic_jinlmao@quicinc.com>
In-Reply-To: <20240626060724.28862-2-quic_jinlmao@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 18 Jul 2024 16:57:43 +0100
Message-ID: <CAJ9a7ViUyr5YiGT_KfM0LjaifJ9RysfkLZER64z36CPy_fEPJA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: Add arm,trace-id for coresight
 dummy source
To: Mao Jinlong <quic_jinlmao@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Tingwei Zhang <quic_tingweiz@quicinc.com>, Yuanfang Zhang <quic_yuanfang@quicinc.com>, 
	Tao Zhang <quic_taozha@quicinc.com>, songchai <quic_songchai@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, 26 Jun 2024 at 07:07, Mao Jinlong <quic_jinlmao@quicinc.com> wrote:
>
> Some dummy source HW has static trace id which cannot be changed via
> software programming. Add arm,trace-id for static id support to
> coresight dummy source.
>
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> ---
>  .../devicetree/bindings/arm/arm,coresight-dummy-source.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
> index 6745b4cc8f1c..b18cfd8e137e 100644
> --- a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
> @@ -38,6 +38,12 @@ properties:
>      enum:
>        - arm,coresight-dummy-source
>
> +  arm,trace-id:

Could we name this:-

  arm,static-trace-id

This is then consistent with the terminology used in the comments.

Thanks

Mike


> +    description: If dummy source needs static id support, use this to set trace id.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    maximum: 111
> +
>    out-ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>
> --
> 2.41.0
>


--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

