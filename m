Return-Path: <devicetree+bounces-95209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A233958616
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 13:51:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8936E1C242A5
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 11:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3C518FC63;
	Tue, 20 Aug 2024 11:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C9cObCYO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C87A18E74B
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 11:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724154641; cv=none; b=fqP6rvInBWV8l8kAhDaXICID0lxXrLLDKQZjXXtAwxVPzC8BCbjnewqQFDbuLVBXa0UrKx+rD2f2N+9VptJ268SYkaXznWL/n7+VXvEZSoTkCXDVpadNwt6ZMXsWWe70r02UmufhprjNavpQLnzSKASb3JzMcaZD2GqyaJU30Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724154641; c=relaxed/simple;
	bh=mqu+zUl6X9D6f93sxCCJF2mnDHiCXHlm2Mfc68Fo06E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iQW4xPjJDHskZJqjd1i1hx+lpJervhPuICjUMU5Y4q4wqIVBsXUqjTE48GiE0LHuLXuXb7hYlMg6YZOigjhBxQ6wAAnj4Mp5m4I2xDdAC5ICxPxOn6eh3v0TBt//8nnObVkCCLf+DfZfVNKJYm4xROc0tLPiEFa2yzr7G8qaV9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C9cObCYO; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e1654a42cb8so556462276.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 04:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724154639; x=1724759439; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FlNvcC8AuUIcreI5Mnui6pLZVwffrglnnBdB2303BJE=;
        b=C9cObCYOexsF0MXxhSQ0JRTIMKIIv5mdti3CJzI4VYvEIipsxnJv+/c+uy3eCT4a7y
         9leXHG+m7fRVXpBni/UBkreNaWquGe5pXyzRvVfWQQU4kYB/Si2eni/hRkczi9tseGf0
         uSo2dZUpgUj7HR9nKx9A0J5vC6BVgjIsu7y4xqdDhjT8cPOxrauHuom1wl7CllxeDcyr
         lfRQ7dIXU/0PQRD1hmECFUKumgVvjaGvDHchw1BLtgCITLpAJAP/5NlJjg0QCQQJxsAE
         B3fhcCLTbHqzlLC5aFfu/tNR6JGXuNWvMuEFsBaah4tFI7nfsh+NrHH1Hcc3QqhEH954
         1LRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724154639; x=1724759439;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FlNvcC8AuUIcreI5Mnui6pLZVwffrglnnBdB2303BJE=;
        b=oeb8tG40tXyPyv2/OXfXuNwL258THn/yFshV3Wj4rmLwj7+PV5VKZuxH+huTGnANcc
         esEiOi7FDHx4V4d05C09wrWt0fJ+Meb9kZJ9VRfi37fYk0bVy1BL2Bhf75+t65JnVW/m
         GhOCA6bV80DY6IX856tNX9Id7Rw+1zi+yGqMlLRK4m/G9N5lLGlp2mAl6eGbHjiZbQSk
         rUzizE8gMfXj6KCI6AhqbDAUrsqI27jyoBODUDqXfti1FHND5DhEAs5sDXDnejnshd3f
         roD7z9/uKNg2b92kAHqgE3QtkKMz1KDf+bPfb+u+V9BwjzMt2XkrdWYzlRn98yOPOf+G
         t60g==
X-Forwarded-Encrypted: i=1; AJvYcCWPvJO4P2gFTwDhrTkEFwdN2VxpqVcQ1wEV3xf4/Ml8qjQZZpuG55uqvkr5utJ3tylDjuUjRNYL2pLi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/37rQjkekmdL6Kfq0ObsGcf3tPc2eDYJmwfLOWLFnmrUH3JqI
	Ix42mQuIEz+jcPz7AXxjyLDCcJTwmV4WcLGf/jIHrQYWAdWeyEkFyHg8UM+Cjhw8tGonsUSDRcE
	XZb59J2LL1eH4Rh8WbZQ/0jnWOeZAKMMJgqUnsA==
X-Google-Smtp-Source: AGHT+IF+VTVxHiNVj6hPP3k5Ib1ma5eJfAGMXGeEZ5yHCDH3TQ72vmA/Si0268nLARdDdIAk7TAtRCsPfyEdSpUHw4k=
X-Received: by 2002:a05:6902:2612:b0:e16:1747:732a with SMTP id
 3f1490d57ef6-e1617477734mr7970816276.38.1724154638960; Tue, 20 Aug 2024
 04:50:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240818172923.121867-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240818172923.121867-1-krzysztof.kozlowski@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 Aug 2024 13:50:02 +0200
Message-ID: <CAPDyKFrcdk76CPCVRLLfRVT4BKMRQFJjZVV8ss-u1NegSf4fkQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: renesas,sdhi: add top-level constraints
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 18 Aug 2024 at 19:29, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> index 1155b1d79df5..6d4a1faa1c4b 100644
> --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> @@ -77,9 +77,13 @@ properties:
>      minItems: 1
>      maxItems: 3
>
> -  clocks: true
> +  clocks:
> +    minItems: 1
> +    maxItems: 4
>
> -  clock-names: true
> +  clock-names:
> +    minItems: 1
> +    maxItems: 4
>
>    dmas:
>      minItems: 4
> --
> 2.43.0
>

