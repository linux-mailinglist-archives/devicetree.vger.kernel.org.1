Return-Path: <devicetree+bounces-87559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B118939E60
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:59:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72100B21BE6
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 09:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D242814D6E7;
	Tue, 23 Jul 2024 09:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SJrAiroV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA0414D45E
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 09:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721728752; cv=none; b=TM2IF5nmW/opwk8TFYckk1NKq3dIgZtlj6o5lt4ySZx8c9Xa3YOX2MsqT2dv4YRN4lBQjZ92PqE26XfdzSzO2a640/v6kF63G68atnMVXfB+G6q8a0OUr3Muqh4y41nqTvBRbLJmn5ROWWb/Vg8gTOniNEQ1X/LxNkkTGg0SfhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721728752; c=relaxed/simple;
	bh=bvJ/V8SlikchuVhLQzJWgH8A1IfAWpQ0f7s3rIf3xC4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=adde7WaFZVX7m6dBRXzCZhnH5FsjuNTchuyTrOeng0QttHnV9q1+gtZZtgMt4wU1MbhGO56mL5kTKecjuhwjBVnxCvbpEIcgffeWWImpICaf3YL1q7xOX7LI6XsttCLmRmb554WrzSWaY535ZIOLJJE4gpJlUg4ojVLSPaBL85I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SJrAiroV; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a7aa212c1c9so22991666b.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 02:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721728749; x=1722333549; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9Jr7wCwGPz2qRouGbdq1kHEhFEtUVEW7njuWPJvwyGk=;
        b=SJrAiroVXXTPGkz/UoP3zOo4UVfXVVS7k2fNxoV0WdiaiFYiqdqb4tvEKrVFFTOtU3
         w7fYqoCc6MwbOqAd9nPzlzQZmZZggSbtIQE9Wviv3WkobHFakZa4p9ZySldTHkSL5BHB
         6+ZAjF0GuTH143nbrB0qFa0hdZlJ0X9MMcN2710WbtZlIlSTJpD9WQ7dF+6CkKHvUdU/
         5aiQf/JGWtdx7M6algYPRD+f+IM8nW7oPp3YzH90zPJaICqDSMgYVvGTOsHitbpJ/j0L
         Jo55vtNrMyuh0FPt5ilhU7LKD6CQKNu2D6Jh/iHDQ6LWITjJSJy0AnN6mohiHjptlwUk
         lGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728749; x=1722333549;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Jr7wCwGPz2qRouGbdq1kHEhFEtUVEW7njuWPJvwyGk=;
        b=xP17UYN5ctQUhq0U90/BquBFN3okWGDKbuxzNstrGXUkD3DerzXdF0hkYXCWR275x5
         GUTEzgxj2JVxvK+wixkM0KgtAgr34OT1KmvA98yQtDRaYL7T6vAwHfyP30GhAjAATAOV
         deEgRBIwJgvTp1IcwZW24mBIIUUx1NDHRyErGeBzCJ6GjY8rmlFh2vjoO6vNOoHMHZtR
         ZprRzfhk4bRnjAGTCQjzpK9dUqNPz4+8T3lV4+X1lvsIHrl7J4gfJ5ZgL/5nvoOsoBwU
         Yo0eCe+G5+iJOhp7PMnBtIkBcEpLb1UHePL4nwH9ypzyCWI2vXE2SdAlcNcDbBDKgneI
         nUDg==
X-Forwarded-Encrypted: i=1; AJvYcCXhIMkcD4yHyA17rw8krNTcwyEMd26P/jCKCIHRvwGXrqFLlH4Svu7pC4mcX+1IJBtFh942NjfeRJVNOtHFLmWOVNDD9VcQXCHPeg==
X-Gm-Message-State: AOJu0YzV+Cz55pO9S+Pq0f5/uIWMfzVrV0x4YT375WTtT/JHHU/jc7/m
	Wc9jf0D3w/i1LJ1Msq3hMy32fspp8O85V9D+u+C9YOU5hBKwES0NWv5Xkz0sw0A=
X-Google-Smtp-Source: AGHT+IHxYJpIFOZVspziWC5sI67ynZam+LwGyhOnzS2XjEnf+vX/gvykrzl4jI1gKQdmIGDOgg49AQ==
X-Received: by 2002:a17:907:940e:b0:a7a:a138:dbd2 with SMTP id a640c23a62f3a-a7aa138e3c2mr62216066b.50.1721728749246;
        Tue, 23 Jul 2024 02:59:09 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c785e97sm520612366b.39.2024.07.23.02.59.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 02:59:08 -0700 (PDT)
Message-ID: <8c442424-e439-420d-9bf0-ccafaa990dac@linaro.org>
Date: Tue, 23 Jul 2024 11:59:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: add rpmh-stats node
To: Rajendra Nayak <quic_rjendra@quicinc.com>, andersson@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240723081357.1521942-1-quic_rjendra@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240723081357.1521942-1-quic_rjendra@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23.07.2024 10:13 AM, Rajendra Nayak wrote:
> Add a node describing the RPMh shared memory that can be used to
> retrieve statistics for the SoC low-power modes.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> ---


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

