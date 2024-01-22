Return-Path: <devicetree+bounces-33817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FAD836A8A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 17:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9960FB22AA4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 16:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34DA131727;
	Mon, 22 Jan 2024 15:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m+pPdXxF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BB4130E2C
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 15:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705936407; cv=none; b=oOinejmKTCFe6kun3OJR64V3BY2g7IV3+U05IuflrJtKSj30YI2lFXB+iVUDV0C7b68bWLk+98wxCLdwVeyLwKqyTj3kRPy/qpcpSZdLuHtHQfJGrTswvSQqWfI+8nsi+0kvH7a6Xl2MVM+Xbs2DVfJw4CISsv6g9CBm166luoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705936407; c=relaxed/simple;
	bh=56AXuFbyDotBIe0zRySCPe31hcHy1morlPgUrVeQcq8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=swXmmmsKeqZwyB0Kx/qf5zmP5QCUwNCMX6hJE/bqx8sQvEzlwWiqt6cAzYm4BEmeOa+cGsrwXybhfcNSjZhFFtTE07PhZlxnPyutpR8+yPhK2JpOClQyIoVCsgmzYF3PxN4vYx/A7cumUDVKq9X/bTilz30dUsPWsSzko5QPQSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m+pPdXxF; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3392b12dd21so1587263f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 07:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705936403; x=1706541203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tlxi8b8oDDKokQlPnmcikOTjVRP/PxK9QnUm6yUSqlc=;
        b=m+pPdXxFwEUWzYHp79xR17vD6km0z/jVH97JPLEH9eRR9QPn9TfaxfCIvzIBdjIWzM
         S8fwQlxKNMcOBvTeAELGjZ0lg6w2BqkjUwJI188NpriVVkVcNY7tfJSJ4Q9C0vIj9Bja
         hjNbQ3G8JnxmfBtFURC8UZqkICOs9gu3ATnqKLEQU/ePu4nIGsYVDa2X+oMOszBFou65
         p8ppKraCyeIaHuuNOSn6nDbkpjvv6c9iWSanXF+fdStA50/u2b7tWxzpxKCWh5LftEw7
         XNoSi34QjwdTuqhMm5Vh/Xs9uNo7QHPf+PXDW1FqwYMZd1SveCeDZC0UyCdlwFpKIFnE
         1UlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705936403; x=1706541203;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tlxi8b8oDDKokQlPnmcikOTjVRP/PxK9QnUm6yUSqlc=;
        b=ASFf39IxxHqmGxr54cIRMkZHGJqphXQI11gUv3L7fnv+hkfrO2p3q3OM9nL/xvcax0
         o8sTxPWLBlLwxfYZEMuJhpzz5FsSkq1L9KSpNSeiw7FcG6OKO6bQxAxO4F7Rl9KKyxX6
         Kssq5R9wMX6mPYt92gPrbU2KzufTohajEATfQ6JPcMq+coQB4+j8NwbkGnLxXwKD9XYv
         W5vd/pl31gyfEDHmUAeI1gY1UZmPpNWtjh0OvSxHu5e/7SDTfcTvETZfaX1dlkFh6tKf
         17xJiOH0xAoGGr1NsvTmzgai7Rl7/CfrM+/pB2o/8CAmP9AWOcvYuoQeOd/tiwB75hDE
         kscA==
X-Gm-Message-State: AOJu0Yykx1Y+NGF3cDYCfyQCUdoutnYeZI5c5a8VTh3S3Jwcf7HEhAaO
	+5x94XHMo4/U329Hv9F1dg7mNqD5mw5F+jBZj7DqqtEIiAswEmFoc2Pf0HTfUZE=
X-Google-Smtp-Source: AGHT+IEM9J0zPraq2oeR7eo9w3rrNO8V+Yb011gp82GAmVJDBG8jXmExKleS8/vEVAFlRW83rHWPig==
X-Received: by 2002:a5d:5886:0:b0:337:9b43:bb4e with SMTP id n6-20020a5d5886000000b003379b43bb4emr2846308wrf.74.1705936403055;
        Mon, 22 Jan 2024 07:13:23 -0800 (PST)
Received: from [192.168.100.48] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id b16-20020a5d5510000000b0033924c2fadfsm7216881wrv.17.2024.01.22.07.13.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 07:13:22 -0800 (PST)
Message-ID: <3f68ee9d-13fd-4818-b6b4-b3c26bf998ed@linaro.org>
Date: Mon, 22 Jan 2024 15:13:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] media: venus: core: Add SC8280XP resource struct
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230731-topic-8280_venus-v1-0-8c8bbe1983a5@linaro.org>
 <20230731-topic-8280_venus-v1-6-8c8bbe1983a5@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230731-topic-8280_venus-v1-6-8c8bbe1983a5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/08/2023 21:09, Konrad Dybcio wrote:
> Add SC8280XP configuration data and related compatible.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/media/platform/qcom/venus/core.c | 45 ++++++++++++++++++++++++++++++++
>   1 file changed, 45 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index 5f285ae75e9d..32591b624a36 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c

Reviewing this series, I think my input here has not been helpful or 
correct.

1. Declaring encoders/decoders in dts or yaml is wrong, accepted.

2. We can make a platform choice to hard-code that here in the
    platform declarations.

3. Remove the requirement from yaml for sc8280xp to declare decoder
    encoder

3. Profit.

Existing dtb all, literally all do the same thing first block decoder, 
second block encoder.

Rather than perform extensive surgery to venus to remediate the original 
yaml sin - hard-code decoder/encoder into platform code and deprecate 
the legacy over time.

Yes that means fixing to block 0 as decoder and block 1 as encoder but 
that is the defacto situation we have now, we may as well make it dejure.

---
bod

