Return-Path: <devicetree+bounces-202350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B50F9B1D287
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 08:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76348722C98
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 06:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2246521A931;
	Thu,  7 Aug 2025 06:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lIxgQMWr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF84BE46
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 06:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754548540; cv=none; b=WhCuvumdf8lZhFZSYZX182r90Qyzkep8mc5Tm4OZsNEZUXPMq0h847ZjRpLTaQ5uzEydJDcjd0Z76pecx5EkSlL6gaBsMeRa0kfVxN1W39DfiKlMlkeTxr8AepCGi8yLj4LDHi2K/RjMRTNJsrcvhFxQay/w8Pyjba0++2KVdAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754548540; c=relaxed/simple;
	bh=BFDv8KwOdxE5b9FJvxGKqE2UTyIruoDsFRiENIG9Q+Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bhLy9gsrXOTIcyp9JCLHeN1m8uSwrs5mL1eKHQTrkMLx78liy34pPoSZPxb91r5DL+6mLrxUeIYvYvpfpGGIx7LsxOgGlHzodhcA9MHxAfEKUxNxBnMye5p09PdOlGmo1rgvExQ9zAcdg6XlTaVXstu4LtJ3ahsKoNRRmhakAKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lIxgQMWr; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45994a72356so4824505e9.0
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 23:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754548537; x=1755153337; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R87XAIEmPfqrUnpUN7cuFO3Ri3HR4f4oxIPKr+mmdB4=;
        b=lIxgQMWrE/7IJj45biPk+YrbgBjz/x9MOf9EQK8H7azA3vxio72tu3SHuQhJnzDWjq
         r6q/Ftyq7c3O2TuvysUGLgqfzR+N7wBLcA3boh0qnGvH8PzngM3UauEfOvJhb7FRJqvv
         eFZ264lC5fWS2NFJo/cdUmezrj8ir59fZqxLD1McOLCwW3qVzZcsU24nzPmBQpPShpDD
         kLrfpjo+B2P3I1ytu//kX4QvPLsn8QXuiuSSQERWh/7TDQ1oj4wc7e3kLyEfab8mVJem
         Mz0x8PrnQyEgVFp+iI4ODNv0fzC1oXVbs0PCkqD0y75LN9kjlxBVUQLWJ5bcHwBXdNQT
         D+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754548537; x=1755153337;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R87XAIEmPfqrUnpUN7cuFO3Ri3HR4f4oxIPKr+mmdB4=;
        b=pQdHuWadQvW2OmnpjoKpt9TuTFJ+I3zN6d9wzNOe9qKyd+jegQMLFzuJYPSibItTa1
         yqFpP8FfK/znsLUyEa72Fshy+pqR3aEQgGhHdWy3cqvKDjqqFSK0u0oK3WRMs7ZApWUp
         Jic5J7y0/ZLKc8T3T2V0KgyKiTnxYXONM2hkO9I16SoIS9mVMWW7k9JWD+xN485Tgl6l
         ygtAO8eqiUEM3XLOyD7X0ZLxaxsKjqVxCPArPqX0p0E2nPthgvxACa1DccFTHkkG1RGl
         D2kLXNuFMlf+e7X1t7HQwx0YIB2j4rg13gma8jwC8tTZugWkrmSj0pOguwtClX4Cqu2h
         gr5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUnUE32uxdG0WXfymw5XVrN4eDWU3/TfxLLIJOv20PexKimZHk8Q+BwKhMFB0Uh1hZSOE4dDEXF1mX4@vger.kernel.org
X-Gm-Message-State: AOJu0YxzSLQvZMytb+Qnpo9+IIUNYTH/Za2+OXVpgJWyXfezrZn9f73i
	ioxR2uSbaxHM7xZHXx9URymf259V84yF9At9gnHJ4JF6GDmjQoDSM6cavN4N9l+X2LY=
X-Gm-Gg: ASbGncv8/wmrlm/x3fsdOmq9w0062ViyczG2i9y7mhgngYPua0mUgBMpwWhZcgwzIpw
	EQ/NT3IFF1UNMoahb9BR+nYTWoDdvYXIsTaP4f7FLdDFdO4QWkKqmhdXb2GMZx6wUT4ZDJn+Cy8
	Ab7sZsSDpsRHm/nNbyRUl+9M5BtMcytKXqb+P2QNI7qvMfTzm3Gbhm0e/5YZWy32av++yKnyX2a
	J+WSPGP65R/mrT9kqzMEz88fHQjMz8TQ2T6FtObUlUexTCHYSoVPCIj+3QnPDg8IZ4AcwYTIceA
	DT9+CyFxhMKtrD6BV+boOjuZhLwrQk4bFBjaNzqYgVf+awjtYSJqusIUDP8vVKoETdtgERgbddC
	Ma0upvcxYarnE7OXB7a1QrsvM/u+uXDA4+V1jUkBDE+0Q2oMJ0wMNzwgkVpACRorh
X-Google-Smtp-Source: AGHT+IG/0hVZUCxEE95MZHpW6pcKniy4zaPb2rML34xuy+jP9E9jyGGasF0CZWrS36AX5D4SzgV2BQ==
X-Received: by 2002:a05:600c:8593:b0:459:e002:8b1e with SMTP id 5b1f17b1804b1-459ee0c729dmr16878855e9.13.1754548536626;
        Wed, 06 Aug 2025 23:35:36 -0700 (PDT)
Received: from [192.168.0.13] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459db13fc9fsm151255515e9.7.2025.08.06.23.35.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 23:35:36 -0700 (PDT)
Message-ID: <ce9cf017-5447-457c-9579-700782f9f0c2@linaro.org>
Date: Thu, 7 Aug 2025 07:35:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
 konradybcio@kernel.org, krzk+dt@kernel.org, mchehab@kernel.org,
 conor+dt@kernel.org, andersson@kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <aJHgh8mon9auOHzi@trex>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/08/2025 11:44, Jorge Ramirez wrote:
> yes, in V7 I did implement this functionality plus a fix for EOS
> handling (broken in pre 6.0.55 firmwares).
> 
> This added some complexity to the driver. And so in internal discussions
> it was agreed that it was not worth to carry it and that it should be dropped.
> 
> I'll let Vikash and Bryan comment on the decision.

TBH I think there's not alot of value in supporting a broken firmware 
which only does decode.

There's not alot of value to the user in that configuration.

Provided you have done the work to get the fixed firmware into 
linux-firmware just cut at that point and have the driver reject lesser 
versions.

I as a user have no use-case or value in a broken old firmware which 
supports decode only, I'd much rather have the full transcoder.

Its Vikash/Dikshita's call though.

---
bod

