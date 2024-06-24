Return-Path: <devicetree+bounces-79241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9464D914711
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A0821F2331C
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF6713665F;
	Mon, 24 Jun 2024 10:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yDsYVtFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5081369AF
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719223648; cv=none; b=u4IDuEg92dTq0Agd8tJbQycXuTDn1pM4d/2+fU5tpjQxNUjyekcOFc6pXanBdBoLfiRzctVhBYu128A1w5f4srL2F8wkWmPUYy9stLITJdpgGN148x/QZqR2Pt7sg0m0qzPdK1szEX+hl4pzGCu7kYL4R5iVQmJIWr1KH63Xuu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719223648; c=relaxed/simple;
	bh=r7/1IGaMLyBX5FetvH0z0WAcr9gpDIyubqQI/9Qmf0I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SwTQpMj3qa3QpZqspsSsKDyqlmpUiWdg83zxXbl4WrPVU+TS2Zdh4dd+0v396jVhWNSB4toPNVOYx9LG1OfQFjnlhvrigbTx2jWMKtzhWkARPzwov7NaHPd6BGaf6VuOokmmf5q+IMkPkPzt1pd8dHGNXHqLWXs0XKEHqdS54ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yDsYVtFJ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42108856c33so29998945e9.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 03:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719223645; x=1719828445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DoIbdnv0I4lEFVQL9hNXgZOdZbepF06dTpWMDSVvSGE=;
        b=yDsYVtFJsnKMV1ZGPbgV3qmanV5P6ejmV8kdTa2RfDovEK69wXn92aApCAKFjoFyRS
         BolNkfOxzCQVMjzq/OzGMSg33bH3+ob8aFFtbHKYtvxdLAexfKFYkkDno2BWBbXeWSF7
         8ad1vQUQLfcnah3lx2dctJGEAU8Ic7Tu0Reod2CotxDyf0VDFS0BoxUrNMhLXKXMlUtA
         UmqOHA7cA/RvwZVcQ44862cq8cx0meD4AKbdeDHQhewapKxdTF5RMiWZFtahWFcdoEeH
         u+gH59SCXSAMb2YhABJjkZPpLtmtemC4cvmElrNTTveuaI2kDyFQAOQQjXYz782AMDlB
         wzZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719223645; x=1719828445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DoIbdnv0I4lEFVQL9hNXgZOdZbepF06dTpWMDSVvSGE=;
        b=UWa43T13+J+WLhJeD/wxxvhd41nV9Zu3KRzKv/yrcsYsqDsOOsl509SSMr6JaoFdgd
         cCraJQFXQwweAajEYzHspe8o4lDTQ/UXFTT8HdIk58cpUrIdrMFqhou7jcSbWq5pM34F
         NfxkbZTADe2zQbmvVYPFi4Cas7SGu1W9Jpd6+T7R54y62AXJRmcH/NWTyOKm+/M4PS+b
         Yygc8L4SRaV60cb0VUhgtUzEnWfV+fErxrvAzl8CjrXXBjEUzvcwYiB3/fqSUMeCXHkd
         gvbWVdK2yeeCy7xRdnr4URKI8Ta4q3QLgrdVLcEjflfTBz/uGy7tcdLIpMexUyu8arkm
         4GmA==
X-Forwarded-Encrypted: i=1; AJvYcCXbVaj8W8DW3srztc3fBvvf25KjNsCxIkUAO8YR+gOaFDb37sseZmbtIJWLSJYmknDCTWjBnjhMNJOYPv5V2+pTeejJCV7vl6yX9g==
X-Gm-Message-State: AOJu0YytlMh1QUOrI7Jb2qPQBejhAuiLzxjlvioM5ZCIRcyBInAxpJe3
	UKdvUxWZYTwK1J28nys61CJ6l0m23c1q95COawlamF9ivqD8AteK84rmx3AQxtw=
X-Google-Smtp-Source: AGHT+IGFuIz1PalP36Z34AYkGOztlJ2XlnnVZCRPHiKbW3qfaoF4mCxs+lp1GKv51ihPubiVU6YwPQ==
X-Received: by 2002:a05:600c:6a11:b0:421:8234:9bb4 with SMTP id 5b1f17b1804b1-424895fb1c5mr43871465e9.19.1719223645531;
        Mon, 24 Jun 2024 03:07:25 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424817b53f2sm134536635e9.25.2024.06.24.03.07.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 03:07:24 -0700 (PDT)
Message-ID: <18df8577-5268-4a36-83fe-7cd7a7bbb7d3@linaro.org>
Date: Mon, 24 Jun 2024 11:07:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] Add debug log info to camss_enable_clocks function
To: gchan9527@gmail.com, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-b4-sc7180-camss-v2-0-0dfecdc50073@gmail.com>
 <20240624-b4-sc7180-camss-v2-5-0dfecdc50073@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240624-b4-sc7180-camss-v2-5-0dfecdc50073@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/06/2024 00:22, George Chan via B4 Relay wrote:
> From: George Chan <gchan9527@gmail.com>
> 
> Print out missing clock's name when doing camss_enable_clocks().
> 
> Signed-off-by: George Chan <gchan9527@gmail.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 86ba80c47188..d50f98565531 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -1467,7 +1467,7 @@ int camss_enable_clocks(int nclocks, struct camss_clock *clock,
>   	for (i = 0; i < nclocks; i++) {
>   		ret = clk_prepare_enable(clock[i].clk);
>   		if (ret) {
> -			dev_err(dev, "clock enable failed: %d\n", ret);
> +			dev_err(dev, "clock enable failed: %s %d\n", clock[i].name, ret);
>   			goto error;
>   		}
>   	}
> 

Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

