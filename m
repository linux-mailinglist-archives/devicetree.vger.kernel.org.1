Return-Path: <devicetree+bounces-40375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0878504B3
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 15:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40A321C20C8E
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 14:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AF7653E3C;
	Sat, 10 Feb 2024 14:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wrpaDEIo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB79353E3F
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 14:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707574998; cv=none; b=VzCe2WkLVqz1H1/0+/1yOhgojhOdJPFhB1qOaHXspwXNJ1xegLpkGISUaH52Scp9pHqfRD7NgrvPuWQXA8qRjDZOvfHRn/S4TfnyEyTrkdLpj6O40Uac0657Ib4I5gfM4uDuzvnfdOl2HwZWejOnmpclFx1+Xk9RjrBEFIP+r5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707574998; c=relaxed/simple;
	bh=DaI34cmoQ2TTjezX6O9uXpwQhRxq41aFstLGILeGAGA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pFWJAIJjEaLUdSzdTVut5X8hCe2SxL0iwu2qewy+UtYU9jY2wqHFMzxGwYvqJscs83O03EHAmgpGxDkJudiaHbKwzvf/m6eNrZA8B7h6vKGJb7CPmBeLpSFIr/9NSzA1p4FjvcRmBzi1NOn7ehtoh8VfaQf/OaXEBprSG9unNCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wrpaDEIo; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a381df83113so197352066b.3
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 06:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707574995; x=1708179795; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E4HO4hLAzbgJmOVEY8MO0LN738x8Cz2lxnox/JBlwZw=;
        b=wrpaDEIoEfZ6CvTreW7HMqeGmUiT+lNGKLlkeSu6zeFbdVZXXCdSLbO9zj37qc4aZF
         iqGi4Lh0iP98qA/13t25XNM3LKius6SP+9x4eBBCkDt4fvc8aX+OupO7v2ay1p5bzyTQ
         Ez8lOM82ntvl2ozKNYQHsb/jTLjdfnwLqXNBLIOuyb+GW9IB0uAgcHvAnE82OhF60fL/
         tLiXaVFhQygaZrxokbYPjGJp1CUYlw/S01ImyA3vic50aWYv4qm2JM4D0DXoU1qOPXbX
         1ev0Rc6+9yrt+G/CF4BHbo6iSzxJz3M6vys6VxdDnTpyxyxEu48k6Y2fUjvqvnEMpZAq
         DMlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707574995; x=1708179795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E4HO4hLAzbgJmOVEY8MO0LN738x8Cz2lxnox/JBlwZw=;
        b=aMa50ZiR/ZBpZdqYf6C5e6yuq2HWaBDZQ/S2P4MaCqJtt/fIWpr68SQd4zDRd0eysZ
         tlLTaD3QCnif5kwDb8uI8xsRgvo/67TCMgf2S0R723k8NTEAxkYac+gk8wABwFpFhgTh
         JB6f3sYO7VexnHFsRqyCY8wwUDpLRZYui/2x6eBWVmpPjkfOZzgFTeLyGa8mZ0vgYAQ0
         DuX6HtDiraFyN7SYpaMlaCb0R2XJCaYoP9yl8gZsv4r12PoA8Z9tvK56bE/L1ZcNOe9G
         gCz16RgFxYrYphACpxXf1Z8xRPMsgalgADS5vVSo3vqmi6OK/wMU2EdvitS/y/9dUt0Z
         Bi6A==
X-Gm-Message-State: AOJu0YyOnAnaifBWdoGKSh+lkPOK+GjXip2kR/+noG15KIoNPZ4POu+m
	Ry0+7S+RnvkJYSXlebD1e5+j75FV8+bgqH5eHcwX550Ut+WB8TDszupqcnJHBGE=
X-Google-Smtp-Source: AGHT+IEJZtlhHoDZ5lAeCtmu7+okxoXyvoQMZqadchssc7Ffm8NwFqahbNXqLhMwFKdEQU7UwQkTSA==
X-Received: by 2002:a17:906:2789:b0:a3c:4503:f72e with SMTP id j9-20020a170906278900b00a3c4503f72emr620585ejc.22.1707574995136;
        Sat, 10 Feb 2024 06:23:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW+CqreWMjIfkQHM7lVlY9oTvW1YpdcnimBkIIejPItqBzmLjSfvYQEj6mBODYLt8dPX2VmVbmRbWe8DYKIb9R6CbpHVV98CYSpcZPxncrMTyAf2t7hOOZ8qTtNX0syvlT/xq2EyLX5Op92EGljvqQ+cucSsaulV7BUJZOOIfKCVDEuf+eydSe03EkjNY4Mf5LtZvhdDmaQpR8a/ecLZ+HLikQ+wKJw6nv/WtoOYdkUzi/7sg3PhWhQD8ugQe0FB1ZZHaUCaX1eCd9Ab7gMjSVHA8RcVq+8ELQouZ8DTpqgvIfhFyNOyssY5q0516SX+lCmCDOflEtY5+u25QIbiNy4fLwLm7MuyYnFKgfvNuDdYbyxeyn5xHbFRCtsmpMZrGxrw+Q2Xa4ihNnNKU0fjWtDdTY9JHfeEW4aoiEElvMb7QnHGQUMa0V4HoZFijsqkViY83SygbPRIfkRfSKh8ohuXR/s7OBo9SvzeZ2O3uwBMg==
Received: from [192.168.1.116] (abyl12.neoplus.adsl.tpnet.pl. [83.9.31.12])
        by smtp.gmail.com with ESMTPSA id k6-20020a1709061c0600b00a387d9d6dc5sm1858412ejg.174.2024.02.10.06.23.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Feb 2024 06:23:14 -0800 (PST)
Message-ID: <38722fc3-b340-4ba0-9573-21eae476d2b3@linaro.org>
Date: Sat, 10 Feb 2024 15:23:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pmdomain: qcom: rpmpd: Add MSM8974PRO+PMA8084 power
 domains
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20240210-msm8974-rpmpd-v1-0-de9355e6842a@z3ntu.xyz>
 <20240210-msm8974-rpmpd-v1-3-de9355e6842a@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240210-msm8974-rpmpd-v1-3-de9355e6842a@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/10/24 15:12, Luca Weiss wrote:
> Add the power domains CX & GFX found on MSM8974 devices that use PMA8084
> instead of the standard PM8841+PM8941 combo.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Same comment as p2, gfx_ao may not make much sense on this
platform

Konrad

