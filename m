Return-Path: <devicetree+bounces-109197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5F19958E9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D056B2872E7
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A2E215F51;
	Tue,  8 Oct 2024 21:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HEIpgQim"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C6C213ED6
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728421657; cv=none; b=bzP/OAYtE1iX7d1Kud8A1i2Yhi0H3m/sO4nGTYx75U9oGP/+LNAo+5JnS5CANhCFBZiPiceW4Pjtos1AD1GNg4se/0cRJLCrt7F89e1xnrGWD/MVSrCNTxC4uz46YWb5NnbjbSEXE4kc25t0NAaVNCKkAxcdZXZEGvVcmZo0MGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728421657; c=relaxed/simple;
	bh=hdvV/f1cM1SqYCQ/KfHtJVVSe64ByztDzTP3QqDV7WA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CY4re2g0PNYPOet2mL+goO47yQtEPoLNaE/mN4304ldtE4TmerctBDjEeHgLA7a2osG1uBuUzHN9ZOtCikQBCS/L7DP0QTVEgE2QcohbutQCcq3zJAmlgHxwf8Nw+iw1jsgF/0TNNQKrX5mJ/Qn3aBeMuVzJcYlHjtuZgbue6S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HEIpgQim; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53959a88668so7698817e87.2
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 14:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728421654; x=1729026454; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rPQRQfiAaozI/z8/sXF+QKwWgYWvasAFIgnN8L6VyCM=;
        b=HEIpgQim5hjt5TMOItndmOyuCgbei+QbaBYg8sLzxWKCVqZ6cabLCgdKPfFXA+Fv8P
         xOLFv2rbCpvDSOGhUkIjoVJDB7zTYPjJthzGzjDUENE481oPrPUppTxmuzWJ/sZqazIR
         2vbTHH2cbMuXkOnA/X+6xDafVL8DhhAQid92O74+3mmnYxfmWBtt9XeSYH+xGzPHrmZu
         BnDQlitBRLDbyNnSTDedbXYVyg3XonLj9L10carZ7WOULD5iyZug/lfaVOFDVIOyKIj9
         WjZH2OHeSsoMqiy4yaaswzDBsm7xpQ8Hiy3xWFoD+EroPbUns5IplJg58R436MgaMzA/
         ZQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728421654; x=1729026454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rPQRQfiAaozI/z8/sXF+QKwWgYWvasAFIgnN8L6VyCM=;
        b=wMiZ14pMisalzhZ8riimRrgpDVJB+C0lXhHGjqWiMknkV3m3tQo07maxXmRGbHwjOm
         tux1jIqDES/oG1eskq7GJFh4lQRnXI/uPfh/B/yrUleaKDJTFg5UqUodB35c9VZ69Bxr
         FalYoXgrSWUeUuSWt5gMPE/JUw7yEWKMV0T5nb1shCzCwR+wtwuW1AzlQmLODVH85OQG
         a5SbgECPyMIpkynrHHSLeAkVXcCriDF4yHdrsF9Ozix8RXJL+sZc4vJ8wuau9qabY6Kt
         bqm1ZUwjO8A88UOjUT6kRzacA0l6m5rw6ZBzqfLzSti1XKpo++YV4gNfdeScFfTkXofw
         SJbg==
X-Forwarded-Encrypted: i=1; AJvYcCVSyCDnLjgwIHYz6zdmDTLPLKT8zwbRH4MbujhAWf5bux5kdVGirm9FHhJF9F3s5hQJcd/kcveh/nxp@vger.kernel.org
X-Gm-Message-State: AOJu0YzfeQ3suqPE9P5Ct+BsghzJc9JaOAEjrZieOQ3vYjUok5tR7EL7
	SOcDts0NNxxnLI2XgRvTr0YIWxqmU+8KhUGEnfnXil4Zk+/g6BJTuPHqdrqe2DH8CtBoA+hDS6k
	KhNdmhtmuub9nXasSQktNMjoFdXCMVIpim8zd2w==
X-Google-Smtp-Source: AGHT+IGCIm/ilo7jFS7ECpSD9Zg8i59jrDUKgSV4ZD+C+UPhwmq5Gv/wNp6MXOE8WHCNQydPNcrwj8Sg8rgorL4F61k=
X-Received: by 2002:a05:6512:6ca:b0:539:94c4:d9cb with SMTP id
 2adb3069b0e04-539c48e2719mr72011e87.31.1728421653605; Tue, 08 Oct 2024
 14:07:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241003211139.9296-1-alex.vinarskis@gmail.com> <20241003211139.9296-2-alex.vinarskis@gmail.com>
In-Reply-To: <20241003211139.9296-2-alex.vinarskis@gmail.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Tue, 8 Oct 2024 23:07:23 +0200
Message-ID: <CAEvtbut-boW2nrbUTXFkvZ8N7qA_OtNz0dMPzRq0OYu4oF+jmg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: qcom: Add Dell XPS 13 9345
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, robdclark@gmail.com, 
	peterdekraker@umito.nl, Bryan.Kemp@dell.com, tudor.laurentiu.oss@gmail.com
Content-Type: text/plain; charset="UTF-8"

Hello Aleksandrs,

[Again in plain text]

On Thu, 3 Oct 2024 at 23:12, Aleksandrs Vinarskis
<alex.vinarskis@gmail.com> wrote:
>
> Document the X1E80100-based Dell XPS 13 9345 laptop, platform
> codenamed 'Tributo'/'Tributo R'.
>
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 5cb54d69af0b..7c01fe30dabc 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1058,6 +1058,7 @@ properties:
>        - items:
>            - enum:
>                - asus,vivobook-s15
> +              - dell,xps13-9345
>                - lenovo,yoga-slim7x
>                - microsoft,romulus13
>                - microsoft,romulus15
> --
> 2.43.0

Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org>

regards
Stefan Schmidt

