Return-Path: <devicetree+bounces-61659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA1E8AD8A2
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 01:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAD5C1C20B56
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 23:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368F11C0DCE;
	Mon, 22 Apr 2024 23:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QMaRmnZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E5F1BF6F7
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 23:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713826854; cv=none; b=dlScT2X7QLa+733MSsWcZHQnSPcZQAaYpE+pQO//nqXVvan19/ddQtwkSOfSSlIo5def7F9ygAsAksZ4Q1skhXDKcDIxp+6noA4UUObJXewd73TnJ4eXoNLHyjzZGHO8CklF4oK80B0LQvpZ6MLxhEh/SIkNYWL1WdStO7C2dyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713826854; c=relaxed/simple;
	bh=/jci29mGzzIavqEL2qT00cRZYvwPd29ad4CaRDp8/n4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=nvecNzNz8OU/MAES2hPKmoRnTs1Fi94Xj4i/Gy2fgHKQjoThzXn0nROuIRJxOkG37gQ7X0dQbpZq+CPdQW4m45gT6dIoV4hIWzTzhhm42ICg+h/TOfanHas+1DU1MjAtA6DcXLNg4zX2DuEx/g9xSccoR4u0WYsKeyE686keAhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QMaRmnZX; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5196fe87775so5560199e87.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 16:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713826850; x=1714431650; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kk8RZ3kIPMume4l3zZttutOgAKIxylCidZY2eGmr83I=;
        b=QMaRmnZXt3PXtMtQbha0JxDPw5DCEdF7dazfdKvpRdh/098lw1OODIEPMIBqBkJgKI
         ViV6dNEPJ8i43Y8WXXhDGJN3yjMbdyljRD1HKpjmr/v/DS7cPL8pyTTYeDTonLN3dq2J
         iC0tmz8HApS4FJpvniTgH9UcfJ14wUc/9lnNRU4twe05eZeZdJEMCknmzmlTQzFiv1s2
         T5JNkR3SfZWjCM5QHA3Ndk9XOJGETWxDbFfN3rstOViq8Akbjr1o8khQyQyGHZtcYQEF
         ahNBoQ4eheCQt4qvTzkXov1vTil/ka0dDGquS09oOTzrdWcq4HNcrIEcmjEs5crjkNrU
         VzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713826850; x=1714431650;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kk8RZ3kIPMume4l3zZttutOgAKIxylCidZY2eGmr83I=;
        b=Ll3G9fp5h10cKWWhzoq6OMlMMPiQCbI+h1eDamkxTRFHcydiYLm2K9bM5L6RmRNR1X
         Kc5KMlk+Rs3lJ3vFEsCbnPG7Z/G/S6ehsunSL/F0Ji17rqU+rX6A1Z9TMTJTcVCPWUgV
         02hIrU9Ax4aKIlpdRlSjodFQFfEq6uPO8wlzu8g+u7N3wkEq+CSL8lKLJvgbCUu45va6
         R80n4hpRPHROez2iJabHjnbShT1WomIfwhowDllQHSEYgRvSSXtHdlrQ2SIVPF/7J7Sr
         5Zs5Z3Q9brYrx7V2hDkHN+W/+3EaeErzTrBhMFpqWZCFiUKWDoZjC6KOGcFXs42QwmKb
         xTag==
X-Forwarded-Encrypted: i=1; AJvYcCWSjUctRMYEkOxov76xNa1zkJPHA/WK3l1EyCt4rhC7Ev/xz9JKXDy2Y5CXMcVJrN4RneuyCU1Ak4j3WQ/sEXgx8lkD4bl98oWIgg==
X-Gm-Message-State: AOJu0YzqaIz2j0Pbsw9jYBqnQapT2rET+y+TATHJl7BkUhQiQBCUBoRo
	COUus7BaCEFV/akeQhbXXfndA9ZvXpSa3jziGd2dYqb+30yI2KgXLaH1cIJGndI=
X-Google-Smtp-Source: AGHT+IEQ2a2C6x5MBOQkua4NvRFyZgVGrHQKhZtpBWTuE/jycfIwqTASlvwYmTONiFAlMbc33a9Fsw==
X-Received: by 2002:a05:6512:e83:b0:51b:64c3:8cfa with SMTP id bi3-20020a0565120e8300b0051b64c38cfamr2469243lfb.13.1713826849758;
        Mon, 22 Apr 2024 16:00:49 -0700 (PDT)
Received: from [172.30.204.103] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651234cb00b00518c057e78csm1830167lfr.159.2024.04.22.16.00.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 16:00:49 -0700 (PDT)
Message-ID: <da8fc783-6b2b-495d-ab15-be297b0fa435@linaro.org>
Date: Tue, 23 Apr 2024 01:00:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/6] interconnect: icc-clk: Allow user to specify
 master/slave ids
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, djakov@kernel.org,
 dmitry.baryshkov@linaro.org, quic_anusha@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <20240418092305.2337429-1-quic_varada@quicinc.com>
 <20240418092305.2337429-2-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240418092305.2337429-2-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/18/24 11:23, Varadarajan Narayanan wrote:
> Presently, icc-clk driver autogenerates the master and slave ids.
> However, devices with multiple nodes on the interconnect could
> have other constraints and may not match with the auto generated
> node ids. Hence, allow the driver to provide the preferred master
> and slave ids.
> 
> Also, update clk-cbf-8996 accordingly.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v9: squash cbf-msm8996 change into this
> v8: Per review feedback, set master/slave ids explicitly. Dont autogenerate
>      https://lore.kernel.org/linux-arm-msm/f1b0d280-6986-4055-a611-2caceb15867d@linaro.org/
> ---
>   drivers/clk/qcom/clk-cbf-8996.c  | 7 ++++++-
>   drivers/interconnect/icc-clk.c   | 6 +++---
>   include/linux/interconnect-clk.h | 2 ++

How is this going to be merged? :/

icc-next? clk-next?

Konrad

