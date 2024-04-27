Return-Path: <devicetree+bounces-63321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 917248B4651
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 14:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C6F42838D0
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 12:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8547D4D5AC;
	Sat, 27 Apr 2024 12:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xrQ69ag+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1694DA12
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 12:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714219631; cv=none; b=AROKzTe4kvaU8HKM14EMkI0Gu/0zkUCTvyHbBchojiFABNNm7QFDj4KqizceirO/8ZKH4wzGFJZ91AKDfcCOT3SYeCSaGBkNDmgzmg+/b+4UQGkoEwCPrEC2FArMxhnM+hVgARbsk0ZIYtT/QcKI7eg0MluTKkVxB4Uvq6kX8II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714219631; c=relaxed/simple;
	bh=iE3DBih/Cymrw0+EjNunkEOTz0w7hJ4Pvr6ttTasJyk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ga75kkblNqGPcgOqEXBAU3t7NbJ9ZBokRHBq5I0Adcbd79eibng9SDOSVb+zRiw945lV81LV0Xk8zmq0W+vQ/8EdUukC+P6uOfFEBY8xMAdXM2SWRAUDNLOuah5cvSkCSFgT9nWzDQhM/kJxDGrJt0fEIC5L058dOqa/9mw19Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xrQ69ag+; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a58eb9a42d9so31204566b.0
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 05:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714219627; x=1714824427; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PrbE+t5vXk+4p9urJEPfJrnneWX6RpXxGGLVvvodNM4=;
        b=xrQ69ag+/S8jobrkcze60WCWXTVBG6B5oHASggsAUsE5EEXEouPEU5BPYBEZelry/M
         JTPbR8j1kvYnME5jxg3dammoz2GDCIiyRAqD95TvOx64kl6Spgp+6WUvv/9TRfMSSAPr
         188flfiKsO5hZNLWVbao9MJWmzZ/YrAtY0f+W/qlr+sQvqu13puq1oFYIgSixfKtWjMJ
         TPd9q0RxWORxWyCLYl+qUNbIapDpl33uICo8K03bPoVvYR2PmwTthljNmZc6nbNIGXG/
         d6ojENmDde63L9030H3PkIMIcE9Sk87wvrTIvI7s/5TXuu5uE1aHRr8MuCTZzRDhgBKE
         MUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714219627; x=1714824427;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PrbE+t5vXk+4p9urJEPfJrnneWX6RpXxGGLVvvodNM4=;
        b=AP5Rt8/EHej+RUNN2h5vI6m8vx1v900jQoaB18/o0OiK1IKm8xCaJhT0yrNwiyKzjS
         eCiw/Nkq91o8/CyU6m4C69ZRY3HeBV5yKiOdUeFUzS380KB70i5hamyF17c7ZTBvlx1v
         KGOyKDZkhUdGFgiuAEVD6IMrq4N6tDQ0PDhqvtqyHX+NrGYBEYeSyKlzsslKr871WIX2
         i5IUZj2bhoMuWxQrHXkT8VYAkB5jn8pJo33uCV4qM3tmjcHIb4jHCVV6pUvvgytA66Ok
         xflj0O2TEY3dpEBdmiC17ywpnLn7lpxrr7vdjcyUAxAR4wgMJ1hf5D4ThRa+LsOuLNkA
         cJzA==
X-Forwarded-Encrypted: i=1; AJvYcCV/QXzIwwD8gELZwTKhyjIkeXqj79+XyHkM5vjHoTaPafDRRV7NTZI9LkffoBxXONMRS50oO4FsqNT/DUgkKBQrTUORD7Fd/JRTSg==
X-Gm-Message-State: AOJu0YxRyCBYMnWVYH7qvb7JkbROHl6TPpytVbSTcFlTltnlw9DUqFO4
	ccV/UBUJOiupRNf34SY2RyYQmhSyyLFB0lwk3PPNLaFSRthWWHuSce10qee34E4=
X-Google-Smtp-Source: AGHT+IGWEIq13/SYnH0A5FMYlNSz/49GBjTn75rP60dRsoZD4mjdwaX/f0J19YhQ3yY6tVYJx3UpOg==
X-Received: by 2002:a17:907:1b27:b0:a55:b592:7e0a with SMTP id mp39-20020a1709071b2700b00a55b5927e0amr4267986ejc.48.1714219626825;
        Sat, 27 Apr 2024 05:07:06 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id m12-20020a1709062b8c00b00a58d438ed2esm1480096ejg.139.2024.04.27.05.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Apr 2024 05:07:06 -0700 (PDT)
Message-ID: <d729e6ab-338b-4ec3-bc42-5dd12e0e2636@linaro.org>
Date: Sat, 27 Apr 2024 14:07:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] firmware: qcom_scm: Add gpu_init_regs call
To: Connor Abbott <cwabbott0@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Jun Nie <jun.nie@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20240426-a750-raytracing-v2-0-562ac9866d63@gmail.com>
 <20240426-a750-raytracing-v2-2-562ac9866d63@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240426-a750-raytracing-v2-2-562ac9866d63@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26.04.2024 8:34 PM, Connor Abbott wrote:
> This will used by drm/msm.
> 
> Signed-off-by: Connor Abbott <cwabbott0@gmail.com>
> ---

[...]

> +/**
> + * Request TZ to program set of access controlled registers necessary
> + * irrespective of any features
> + */

kerneldoc abuse, please make it a regular comment

Konrad

