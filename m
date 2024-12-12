Return-Path: <devicetree+bounces-130067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B78A19EDCEA
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 02:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B80B1283163
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA821225D7;
	Thu, 12 Dec 2024 01:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uc9uDMOI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F2D1CABA
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 01:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733965622; cv=none; b=MDUwT+F++SbqV5LjnhYVEsHUatYvkpWE3GLiXqqqK9kYw4giTXR6uT4y+Vjcfg3XMte6L4HFVTLf4uYVmHsSqA/QMQi6Zfb0r9ECyFkC18i9FcY5y1+JoVb7TTLLj9E+HIlMrxMBJ1kbJU8PIgLUe44hV5MdRoKiDLygQG6/cbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733965622; c=relaxed/simple;
	bh=gJ1t7jFV9t3JAZ44S7dAGAuFRDkQYiEA9nywpShlryo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lIMjs1+Yq6TSIbVnYDADMjJU/KpFc5r4+a+FgCDp8F9ih/XZM/RmNI/KolrvZgViRqmCR9tDHMC/jXSnBitkVosV8mBqNIbPOHHEe21OfJ3HNe9XiazKxsY6djhgA1hK5y8OBXgHzOCwaq0GDevemml/iBrNhfKfjVjRSeFQJwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uc9uDMOI; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53e38838026so10903e87.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 17:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733965619; x=1734570419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i+woOY8TwWcN5XSeyhfjDCS7hZ8p+Y2VZWaYuLrMvp8=;
        b=Uc9uDMOIf0vUP6Sc85rbtXLFe7SF4L8WzXyRw/Iu6d+pXwtE53Rz0U0wT/JnlWupVe
         Klrz7h16ibZsLx3E2u8wEMAszOfBiT96jWzU/Jfsi4rS37SsG12qh+ghFsiLCTXqLlx6
         83hzhGzBGvtAe9M9+BOGjg8peGvedyd+7GpRWo00GIf86WvV78M29Z2DLGaY6nD7zLFQ
         V+ehlEHRVOBTZ8ZpxmqWpsVpmmUSmbnpzgVG6PYSQGp2Y39ac30xPFpJgxF9RZf8CQX5
         JYVsr9ssh46tlYnXZi/NwaedwE3zQ7KzqpQbbAR1U79kUYARG4CrbOU5vwORbtTcnsbG
         41Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733965619; x=1734570419;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i+woOY8TwWcN5XSeyhfjDCS7hZ8p+Y2VZWaYuLrMvp8=;
        b=oyeYIOZm3i9VoVGIOu1bkGiBAfGkA3tBgPWvJh2pp1Z/pp3FO6NdstwuMUjoIWDvuv
         WkvFCHGvubYcClTo3sE/9E6/GCFFxRazo6qkVbDS9U+e5kqQc0UKnhkosdfAEQFV1G91
         NhqcyEf1y+ZM11ATnGkoJdTLISwjLUBQFz/IJcb8NfW0NuwX0yFx50xqaCt776HwIgO9
         F6XOAEQW4T3JW6V9CO5nX17aQozW4Y0QMgGH4HPLT+GkFbzMS0sq+s1eei0Zx+llU8+P
         yzT8kmtV0In8hiRCWB2vNTGe3xMLw5+PRrR19wVmKwJ6fLeGbY8hTvY/UPwTE2YFTbVm
         uM1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUSCRjzsYBv8Ld1lcwCI/2OGLEPOxjPYC4xGNbsqS8fVnjsJA2LYLtcO5aMGaJGEuTV32K2CJ6lVIhP@vger.kernel.org
X-Gm-Message-State: AOJu0YzpXczwpdKSduWBtZ6uqdtiSQnAuVBeZXoAIui4MXdlG+UtBxjz
	AQQHAK5tEvTXTa/sCDNLxicSzC6QCNjqlyB4naKf3T9Eh+LY7Lk0tjGmaZODEIA=
X-Gm-Gg: ASbGncsKZKMwXzSvxfNMQ89w5q0R4RjmYkbMmeZU8b6OxkK8GKHuQMlTU+j/nLZdzTL
	kdt6QmLNHZ6HiGHnW6mG4lS+lr/HH+pF1PZRjgIu2FRGHuTdl9EAiGJyC+KV/0t28lHKBsLU7L0
	VG3FdVkWlNUGP5ldCir5AJBj9m0FqSqLQjH+nD40NodGx+tvDjDAXUAl5TtCzkK8EyLDARJEX6H
	bepM021i/pRrT5Rh0Vp2t2eoY2P/ByhC/WJ+6viK3W0PxdaVMNoYj3Ue/PdMBLflUJXFguXaGoX
	hDZU+hylDF59jznSQllYUPhLJUxjK4pF
X-Google-Smtp-Source: AGHT+IGYDFFDuvEn3S5kjDIQpMD7AfzDjFeKfQ1ro/dx9kV4l9MhXuvGNQD+2H1a8bnVqwoSvbDeaw==
X-Received: by 2002:a05:6512:2207:b0:540:2f74:e826 with SMTP id 2adb3069b0e04-5402f74eb92mr149898e87.5.1733965618907;
        Wed, 11 Dec 2024 17:06:58 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e2297441esm2191877e87.61.2024.12.11.17.06.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 17:06:57 -0800 (PST)
Message-ID: <79fc669d-999f-42f3-948a-ee5f3a91ddfe@linaro.org>
Date: Thu, 12 Dec 2024 03:06:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] media: qcom: camss: vfe: Move common code into vfe
 core
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-9-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241211140738.3835588-9-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Depeng.

On 12/11/24 16:07, Depeng Shao wrote:
> Some v4l2 buffer related logic functions can be moved to vfe core as
> common code, then the vfe driver of different hw version can reuse them,
> this also can avoid adding duplicate code for new version supporting.
> 
> Suggested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> ---
>   .../media/platform/qcom/camss/camss-vfe-17x.c | 112 +------
>   .../media/platform/qcom/camss/camss-vfe-4-1.c |   9 -
>   .../media/platform/qcom/camss/camss-vfe-4-7.c |  11 -
>   .../media/platform/qcom/camss/camss-vfe-4-8.c |  11 -
>   .../media/platform/qcom/camss/camss-vfe-480.c | 301 +++---------------
>   drivers/media/platform/qcom/camss/camss-vfe.c | 276 +++++++++++++++-
>   drivers/media/platform/qcom/camss/camss-vfe.h |  57 +++-
>   7 files changed, 376 insertions(+), 401 deletions(-)

I've spent some time on regression testing, and bisected that this particular
change breaks TPG on SM8250 (RB5 board and navigation mezzanine), but in
a different way than in v4 or v5, namely frames are not captured at all.

This change consists of multiple logically independent parts, it would be
good to see them split into separate changes and get the regression fixed.

This is a massive and a functional change, since it causes a regression,
it might be better to make the change non-functional.

--
Best wishes,
Vladimir

