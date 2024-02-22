Return-Path: <devicetree+bounces-44670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5904A85F39C
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:56:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECA061F246D1
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C860A2BB13;
	Thu, 22 Feb 2024 08:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tt1SuvTc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18FA37152
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708592184; cv=none; b=OhxhJU/QyIqDj5OXQIlw2EiPII5CIhXP355TRn2y1s/0xTDymUYB5Vi5PtGgzB3X5SxsMlQgPDNRi+po3oVMqP0JserKUzXQzFUoOtdYbpaJYY/DOnJN2x+/yhmoaGUvEH4y/ulVYQQ5bSlygWtq2pn8PpGEiTS+yTCIoXxdHrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708592184; c=relaxed/simple;
	bh=PzWYmYYSNCTetX2Me8zFPVyu3GzRmF0jBDFkhc1OSIs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=liipGIUhVY/HzReXsQ885qHrqaMPJZydAO8TOYc5QmIYwnhHf6dSk2n/dbE26KGFDfx20JX5iNVe1njPmX6ilRgSGzGrFmVjL1XWMm4N7xlZyoKxnqp5g2eNxfUV5yN7tKHUkAobDfE7QPbesLCBvhzw0zVB/3Sv0Ug0nkPyKCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tt1SuvTc; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5101cd91017so9912822e87.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708592180; x=1709196980; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/rbknJKtPFhf19eCJkjQJRk7bzdoJAzars+eP6UgUck=;
        b=tt1SuvTcmhX/UCXySUqYxJbudDk948Hmzl+sIzZcSIf7A/hX0ljPaTjcSxcJU3CPvs
         cuAdC4YWEfZQxW4bJOtVE41OEpZ0i1C1QbAPtZuHp1Vv7eMTb6qEokwuFMvHA176k804
         Q3RyUZ0CeRbRFWHH0lAfk030GkeDs5nQlRBV7bknNVzAIrMIpKYo1eh8kBWlw8ArJfKW
         3gf3A3MEVvyLlq2B9HERojsq93aC2E2vx7jB5Y+Y6etVkNj49zNifBEnCRWLrzTW8gPL
         2XsoiB9+hPWh5q4jwbF/7+AwxeBC7wik+kVlOym0KIktL6lBzQhhzClJDxfMUsshsENh
         BrLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708592180; x=1709196980;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rbknJKtPFhf19eCJkjQJRk7bzdoJAzars+eP6UgUck=;
        b=GweCt7YKE/gkDd/HSnry0rWsXg8CRK81EPUqjH0TRjmpYqdXA1nzkVO04oQrgYpSI8
         GZVnzi+jNIDXsKFAJxhFncXexBAfWXD0kV+oOJssnQTNDBBsII+7Kc0jtJFxbP9v/2hV
         /efzsoKYrKz36g42nEpYAhGfc6rqZwEyHyg0y7d6lDoV+tig+WuI3PE0bsAXLyTrRngW
         cC8tD8WXrltKliNMZzyaReN54SUQI0F6ESHhKtdQ7JOTHv77rOqxhYANP8niR6kyQQGV
         qAu2oJqRCtfWKVOODldiOwws6icZVIJVPB7+ihaHNR9i3SzIeyZagzgjIFNcSLTK7iOm
         aKAg==
X-Forwarded-Encrypted: i=1; AJvYcCU7rkIhHxpUfwUB6MloRXBrmDTBL/sFccrvCxoeCHd6hWNvimeW/cs1UgjnClTJMvrJRM/4kt6+u1zFX19H1lQfLRSakgeQWzab7g==
X-Gm-Message-State: AOJu0YxOPl9NFcE15pOoRm85Rf5IKETdtUMaHInogZX2TOmquzCDbwiy
	0ULR+jYCoR8AcgszwUwreNxpiFcWBoro2/MIq/hu2c1dwiEOxhAKT7OAdtVBhBg=
X-Google-Smtp-Source: AGHT+IHI8kwr2TPMWaQcsVFQfDZ5jtmRdq5MbORSZf5eQi7OWgR6bfpA0ultcao4TPa7mA7fVEj4RQ==
X-Received: by 2002:ac2:4e08:0:b0:512:b935:c542 with SMTP id e8-20020ac24e08000000b00512b935c542mr8260265lfr.59.1708592180008;
        Thu, 22 Feb 2024 00:56:20 -0800 (PST)
Received: from [87.246.222.6] (netpanel-87-246-222-6.pol.akademiki.lublin.pl. [87.246.222.6])
        by smtp.gmail.com with ESMTPSA id b6-20020ac24106000000b0051176ff32c1sm1992022lfi.62.2024.02.22.00.56.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 00:56:19 -0800 (PST)
Message-ID: <080d8b12-ef88-4f45-860c-826c1b1b5895@linaro.org>
Date: Thu, 22 Feb 2024 09:56:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] arm64: dts: qcom: sc7280: Enable MDP turbo mode
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com>
 <20240221-rb3gen2-dp-connector-v1-3-dc0964ef7d96@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240221-rb3gen2-dp-connector-v1-3-dc0964ef7d96@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

	

On 2/22/24 00:19, Bjorn Andersson wrote:
> The max frequency listed in the DPU opp-table is 506MHz, this is not
> sufficient to drive a 4k@60 display, resulting in constant underrun.
> 
> Add the missing MDP_CLK turbo frequency of 608MHz to the opp-table to
> fix this.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

