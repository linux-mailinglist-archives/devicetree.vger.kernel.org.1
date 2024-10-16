Return-Path: <devicetree+bounces-111965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C8B9A06C7
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 12:13:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5AD1B25289
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 10:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42EF320606C;
	Wed, 16 Oct 2024 10:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m9W/hPY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76E329A0
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 10:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729073588; cv=none; b=EhSsxex23XXiH2e1WYB5Jh5drxfkd/TjFr8J11B5+9vx7IzxwqVTqzxD9Xon5J8yW2dEoBCAhR3Qi3X4aGKDiSSpRIJZFg1yeez+QqBRaQkHczPo67DYAISpOduY/9AMQ/XiR4i+LmgFGlwA/AjxBkNtTK3AhAW383jOn4pAR30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729073588; c=relaxed/simple;
	bh=kosfGqgbsmrPziE9kV+KR72ZR+ghK9krbvSRCLCr2No=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ge6XUikO+7QTa3aYWiMY0tnay2l9DngghX3mXtfD9975HEJH0e388ON2zMLeY8xNB8lTl2YNIZyYa96V6FFevH6OPyPxzkzitxrxwLjUHeIBaHf48g1948vm4jRlb2LXnC3f9VcTh3y6m+SJhUzgVt59//mftMdt6g0K6/RPzMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m9W/hPY8; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7db637d1e4eso4837326a12.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 03:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729073586; x=1729678386; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zGqaylQwMPncUgZAWjBSrfBO2NTDcUGb2SRsgnLhOxo=;
        b=m9W/hPY8ZdHxA14A5zzgPawDu1z+9gtGFg5Gl4AyZC5Smc3+th2kJ5jwepf7XSptb3
         F8sPiqiYIN57M++Hr4clI6pOniSRK+B/a6ZdRqV7okHD38Z+sEvFyzJbZFusjk1kFPxR
         xbFGNvVj9pcoYMhPwBRfrXJquz5b2w1M0mqp+VLoQdShvOicqTHuxKIvFYMXHE36ooRI
         jHLpRyFoaCAqo36+qFGbVN88nVqM9TyHD/jswuXFH+kmVLHRZW4zFeoCiJwD6ZnnaSMX
         1FjGw452wgmwANh3JjTnPW2btWIb9g/uKM7kfDSRLoXu7deLTuD4jx24A0u6WDdQ+Lhz
         B+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729073586; x=1729678386;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zGqaylQwMPncUgZAWjBSrfBO2NTDcUGb2SRsgnLhOxo=;
        b=Rlq2aWxGu9mL8ve7z57DZYIbrXxz9Oy8cLkYKscGW+T1HVkhJwNjbXboHPoY33NiSw
         P8/NvW8NnYB2PRdi5Ibp0SO+H6Wv/qPa9stU1XB4wTCukBd0JlRaOt04BMvifSG+eB6s
         z4QmkmYvR4g8Xb3fCO5yyBZcO/TTaLCYudT9/EPwPUfdG7kOODCJjPPebwZE6UJ4cMz5
         +M4rUrZN0mqZY6B2ev605dZQL9uljgPdMFpA9Uv9yJBqZ8DUZqncaBGrLaKW7hiOE51m
         Y9kdWGL1S+cr4OlnZwxEp7hBKXeX3pW+xRyE2FS+h4+h+wXcxbg8ESUXG3S28O8wH8IZ
         N/5g==
X-Forwarded-Encrypted: i=1; AJvYcCXjmVrA4kn60BDHinNVGkTfJ4vUQP1sBVns4hASwisKeNxvvHUfPBq2tVS0av6VEq2c++/F3DpAxdT7@vger.kernel.org
X-Gm-Message-State: AOJu0YxOM+gQu+r5GsRQf/9MWxVCYlNITleRbpvqsbQBWvfNMwNgtwOk
	vlkWFGJkZIjSCoRxJDDFvbjGlK+8vdvqRJs/R9jSzdvpRV+mNhxefaaj0j76qS14PZ7vGAC4awp
	5YDDJJelB6q1CyAFRvrRRbX1nqN7BnGtL0oK9Vg==
X-Google-Smtp-Source: AGHT+IEwd8MyH0+hSWZmYNw9ouU9HGb37kPhwSSchuPN6fwimoBy0iCQ0MBwEeyLx5gd0WMH5d1z8hura0zTDHH6+Ys=
X-Received: by 2002:a05:6a20:c890:b0:1d9:2a8:ce1e with SMTP id
 adf61e73a8af0-1d905f11a51mr4153381637.30.1729073586095; Wed, 16 Oct 2024
 03:13:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240729071414.5410-1-quic_jinlmao@quicinc.com> <20240729071414.5410-2-quic_jinlmao@quicinc.com>
In-Reply-To: <20240729071414.5410-2-quic_jinlmao@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 16 Oct 2024 11:12:53 +0100
Message-ID: <CAJ9a7Vgz7Nhm-6+=PA1=5B5WaRAVqt4fUvUPHawW2zjz1z9+BA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: Add arm,trace-id for coresight
 dummy source
To: Mao Jinlong <quic_jinlmao@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Jul 2024 at 08:14, Mao Jinlong <quic_jinlmao@quicinc.com> wrote:
>
> Some dummy source HW has static trace id which cannot be changed via
> software programming. Add arm,trace-id for static id support to
> coresight dummy source.
>
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../devicetree/bindings/arm/arm,coresight-dummy-source.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
> index 6745b4cc8f1c..ecf3ba9cdd22 100644
> --- a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
> @@ -38,6 +38,12 @@ properties:
>      enum:
>        - arm,coresight-dummy-source
>
> +  arm,static-trace-id:
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

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

