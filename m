Return-Path: <devicetree+bounces-42591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5195857D6A
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D2CF28879B
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 13:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82892129A68;
	Fri, 16 Feb 2024 13:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T1HYX+iC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDD21292D6
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 13:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708089244; cv=none; b=b3tizWz2IYOZTWGErL6Jc/hHULDipz/Sml9JwBligl4qhgGw9PPKYuIkWaICP+eraOCxkdeVjPVXtgioAMZ4aHw9N5B9bhH8pggfj1psCO/UQG2+ZepIfBmHtp7SgxsV5/pT6nKyH1H4OulyDiCV5Vr1dpGQ/Tad0TpD9tiee1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708089244; c=relaxed/simple;
	bh=nM9GaWKfFAoq+/qqTqmoUGUpnBAspUurESVzdl8uIJA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W3Gl2sVi/cCK6FS1Ws0M91ObtOKQ+C/NyXvn7nawgwLUIkyy7nYnXLQl8StF/6blvz/YGsKw/Dm8r1ovV9Z+WeSPqytJLf36NdQp19+Yi+9FLlKiKJb+xIEqwsadPtjkvi/307GJo4cODo63WHGhPqpGBqxOEMbXkPyCeMV9RVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T1HYX+iC; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-563cc707c7cso2395469a12.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 05:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708089241; x=1708694041; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EbSwL6nsTbc1tx6YWr9QAKsxz4e0BHcI/QIK8egHm0k=;
        b=T1HYX+iCtloa46Igr34lbcbUv0drNzfeqWaAkZdVia8xMlEP3enQOFay5tCPggcSg6
         ymOTuwUDlPMKE//PIt6bhDscjEYPuFi/wFdUo6UJi8ACQtAceRA7AioN504fgOt/PRES
         JcqTIF4tuokvzcnxsHH8Yl4vzEynFVBs9J9sf+bJK8gunT6KVUrHIyk+rLmnXkXV8Kjz
         3ib4ixeZsszhRJiBTJ+AALPHLbFvPp60x9SmsQWSC5RBCIWa8CccJjOW0iZYFj9i6QeU
         0tVVLao50spda7olpgEzpkzYCJ52kJhDiQzeDrLvetGMNmPbYMZs39CQXFm1MCC3UAYr
         6GpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708089241; x=1708694041;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EbSwL6nsTbc1tx6YWr9QAKsxz4e0BHcI/QIK8egHm0k=;
        b=mD/UDg7enyZXReS5ynkUaYuB8m6Khkf3cgctx9Mbu+HhdLB5HVtEqaRyDWxGGeXej/
         7z3r5Oyq1+3Ve0eFYzujiPtAGho6su4FsyXqHAjGUsq8P3AYvJrmX01mEq9zgt9b3HYs
         IlGgaNHjI62gD0r50tssxPkK00eDDH2EUnWFuHnrNMWnUMTVa0HErAlynhm4AR3HYzWN
         saEAx7Kco8nDOljHCz6WpT6l1HGAaKgJyxHjp7jPduFHx4mS3Jxqfq0TOFFeum9XtAS2
         Sm/woDZCDu5gpB95rrEbP2hOsbYZ+y4t8DjkDCvVlLAERpAEPlXHlPzoU21b9TLDqm98
         Fa6w==
X-Forwarded-Encrypted: i=1; AJvYcCXwcxtLFinRK8HsEQpcER9ULvJV+q+j+C9wwP9jCSZy8Xnnqn5uuV9uruMlJkgxbYwmQrdTH5mGQcWKcQxrv1+q8PJpjNsOFAyEbw==
X-Gm-Message-State: AOJu0YxCegdxDbi8hjr5tgoIQGBPjVEOeLLG1ezvtvVSR8mtK8+fuc0n
	+ybUeuoBl/fGMzVZVHAFX+7aukiZLD0fM19YQGJtrc0bfbbwcsAc0+l1TZZgLTY=
X-Google-Smtp-Source: AGHT+IEtxyXtiQBQSFUysXLDsk7ys/qDhXp0LyOf8hsqFZZ1LHheaM1oRROnTJZ7orzww/V6ue2T1g==
X-Received: by 2002:a17:906:c10f:b0:a38:107a:94e9 with SMTP id do15-20020a170906c10f00b00a38107a94e9mr8542900ejc.2.1708089240874;
        Fri, 16 Feb 2024 05:14:00 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id i26-20020a170906251a00b00a3ce36ce4f9sm1534655ejb.83.2024.02.16.05.13.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 05:14:00 -0800 (PST)
Message-ID: <153daeb9-5a53-443c-a3eb-c2282c8c6a41@linaro.org>
Date: Fri, 16 Feb 2024 14:13:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] clk: qcom: drop the SC7180 Modem subsystem clock
 driver
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, Sibi Sankar <quic_sibis@quicinc.com>,
 Nikita Travkin <nikita@trvn.ru>
References: <20240216-drop-sc7180-mss-v1-0-0a8dc8d71c0c@linaro.org>
 <20240216-drop-sc7180-mss-v1-1-0a8dc8d71c0c@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240216-drop-sc7180-mss-v1-1-0a8dc8d71c0c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16.02.2024 12:14, Dmitry Baryshkov wrote:
> This driver has never been used in the DT files merged to the kernel.
> According to Sibi, it only worked on the pre-production devices. For the
> production devices this functionality has been moved to the firmware.
> 
> Drop the driver to remove possible confusion.
> 
> Cc: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Thanks for spotting this..

It'd be worth to keep in mind this existed (+CC Nikita), as it may be
useful for people tinkering with replacing TZ..

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


