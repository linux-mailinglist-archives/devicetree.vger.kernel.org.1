Return-Path: <devicetree+bounces-211172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 736A1B3DCE0
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:46:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 468E5167B31
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A95412FE56D;
	Mon,  1 Sep 2025 08:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FXhpOICq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4F42FE07B
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 08:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756716377; cv=none; b=YTAtzdLvXNdMiSFedAlOJq+ZRVFabEx5Pv+vaJSudc7qu/ZivEL8y/uCbWb7FBGNx52KYxKDm3JeSwioZY/I42JI6NsQ9RqXqdZe33p76COj0ddKBk0aPBW2qY8fLKongpNTvd1xKb/sPK/QdSLxspxYV3SxZXZfPT92zbcSy2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756716377; c=relaxed/simple;
	bh=QoCdfFwHTIhOjBwrsgIE/hHcr1xYXegmqPtRl8bOr48=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HVlQ6DAieWq0vPcCRrwZY+FExf5jTf9wx/txV8uOqBcUzAdoy5ZbnN4xyBzYcfFM0RpH2h6+k+AtVGmPcloYZX7AoTxGtjyxBAupbl6UIDbLAPHzui48bYw0HdsW603yjgAKyUujXhLWxjQhrarn+UxH+vyll2Q+OtVJkZSEfS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FXhpOICq; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-61ce9bcc624so4414047a12.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 01:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756716374; x=1757321174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vCuDvCcZtXrgauUzDw46OP3GVMHfHfFOYH0ITU3ZEfo=;
        b=FXhpOICqDBMtI/Tx6BqwrNKTDDbxeMlX1+r0qq3CD+xUoGahK7wURA6FxIWjEtycbM
         Bbl5CFWBxAO5o3kwM6KYp+AxkqZZfxCLxMv10ijf4T4nsKqJ17GjZjkuxkLsb00iTWZq
         eZPiVm/+gNjhpMNGLIVd81N78ttD7BurRKDblujnxO2kFOGqmCb6WGXueSPsMPCIdVzc
         zKzLf/4xZ3p6HgPthkWzcBjVFLmXXwoV+s6vRsRtLo7ClueWwrBRcDam6BEKI8U7Gmcq
         tC/XzQyvEkm8hUnzMVGtKgZeQmJhC+mgNEfxZw1uPKvqyrIY8op5qKehrZD5sBTd0iJF
         9cHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756716374; x=1757321174;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vCuDvCcZtXrgauUzDw46OP3GVMHfHfFOYH0ITU3ZEfo=;
        b=BMouPps7bGK9B4O3MN4BLmrH/G0D0eClA9AGGtWAVCG5NLwgr2stFesk3RPiRlFGEP
         A45fMhHROcRtos13NQdiW+tRvxXswYuVThp9nYr1tKO2dzZhKX39mE5PjDcq8DWMcuil
         iS75nbmQaMYbae9Sp55YIdYqkqZUSVv88xZ/2YKjxCpQoD8g2+fvdyYmgP2M/4wBjDig
         hsBSbb/qcNVChqjP1p/B/c/zFF3T8DTzMGeG8EC1LKl8KYs4ou4i3QutJHjsZPRV+KEE
         iykwu7SBrIOCkDTW84uRtyMQ0JvIaO2OXtEhhPRtvYvLmLxPtO7+8thFCPFKt8Rzioc4
         UTYw==
X-Forwarded-Encrypted: i=1; AJvYcCVveruOnsqyhhWwheJLrskYiGdweBGy+OjF9AMyrUhBw0uoRpCMHDEQewJwJtN6sVV+moeLuFZyxGFx@vger.kernel.org
X-Gm-Message-State: AOJu0YzQLgjhBzTVu8+uUTkUZoRwolXY41TyBPKOwToxVy0loRqLM5IV
	xpiusrINtyGrAmyeJqSIIus+xZkpDmTEMrlYp9FXhrZ/ZwQiX6z1gDCwrdzf5hcvSjE=
X-Gm-Gg: ASbGncsmBFpqHbYhG3CUGz+Uh89IX+SrIa/v3TFMb12zb5BL2MvOqOV1AzzMbvZZKi/
	t6o0eewCo3PuOKjgh+OKDKbcIyFfohnrYxAJfOlYwU+8+euBlYAYTDH6QeUe6PaYvzu06pDGCia
	Yfu5tH0n/jdhClTUWQIw12CwOeEkEkJcUeGmn3+/V6BpfBfhXqJiUzDorPrQLmmt28WygODva45
	51ywVgQm1+hYmLvCVAJZiIWk7lx1o6PHx98BEtPrOAw5VO9XEARSFDW3XlM/k/hy9TfnS16c1d4
	oPa+fwyTYBwvRUOnBNQH5J41ccpKJpEuQP5FIKQ8Ui1aY9wODhP6zKNHogbzRH/DoHWq8VE80kU
	YX9NfGwuPOkfYELb+YDP8cN9Wv7le/kPv6pXahPZ1WKyGo2yLYXasvkC67EJ2E87j3dsAeyalNH
	8/yWOaHMHg9llLQ/4VzpXBaYImIbi5uQ==
X-Google-Smtp-Source: AGHT+IEwgaLMLaFBKFr/PWcWKPlujPF7MSGDJTrP82Ursog0u8JoY9Z+hSv7cNIFvoZlLeRqHrBOgg==
X-Received: by 2002:a05:6402:2693:b0:61d:dd9:20db with SMTP id 4fb4d7f45d1cf-61d26d79f49mr5756112a12.31.1756716374144;
        Mon, 01 Sep 2025 01:46:14 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc4ea764sm6686462a12.40.2025.09.01.01.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 01:46:13 -0700 (PDT)
Message-ID: <dda29710-4997-4c23-8620-b43ba402b7ec@linaro.org>
Date: Mon, 1 Sep 2025 09:46:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] MAINTAINERS: update Dikshita Agarwal's email
 addresses
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250901-update-email-v1-0-8fd49d58c0e5@oss.qualcomm.com>
 <20250901-update-email-v1-1-8fd49d58c0e5@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250901-update-email-v1-1-8fd49d58c0e5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2025 08:33, Dikshita Agarwal wrote:
> Use dikshita.agarwal@oss.qualcomm.com as the main address for kernel
> work as quic_dikshita@quicinc.com will go away in some time.
> 
> Signed-off-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
> ---
>   MAINTAINERS | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 64ecfa45540c3e10cdef4fc10fc10e854b396c99..fe9253d6fe49c33828a79ddcf59d024495661774 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20818,7 +20818,7 @@ F:	drivers/regulator/vqmmc-ipq4019-regulator.c
>   
>   QUALCOMM IRIS VIDEO ACCELERATOR DRIVER
>   M:	Vikash Garodia <quic_vgarodia@quicinc.com>
> -M:	Dikshita Agarwal <quic_dikshita@quicinc.com>
> +M:	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
>   R:	Abhinav Kumar <abhinav.kumar@linux.dev>
>   R:	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>   L:	linux-media@vger.kernel.org
> @@ -20890,7 +20890,7 @@ F:	drivers/usb/typec/tcpm/qcom/
>   
>   QUALCOMM VENUS VIDEO ACCELERATOR DRIVER
>   M:	Vikash Garodia <quic_vgarodia@quicinc.com>
> -M:	Dikshita Agarwal <quic_dikshita@quicinc.com>
> +M:	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
>   R:	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>   L:	linux-media@vger.kernel.org
>   L:	linux-arm-msm@vger.kernel.org
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

