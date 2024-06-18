Return-Path: <devicetree+bounces-77245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D2790DC9D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 21:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 269A41F22A48
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9EE816DC33;
	Tue, 18 Jun 2024 19:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ru6Aac5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4678516DC28
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 19:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718739459; cv=none; b=jzWt5yR6VT59h7zPwoaDR8IB6JmiP4SccToBfIn2AyVUpblaZ2KmhCXGZDPRhWdsoE6X96fCC8xMNGWNY9pdRcIyBVyKrjwwXQIp3v/YT6Uhfr22YYeVRibGvn+Lgk/uiWOdOOlbpGYswyA7qtS9gYDkSCConEJd8UiFnKnhr7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718739459; c=relaxed/simple;
	bh=gSqHCXD5yVQpuo69yCPK8Rw7sv+zOMXHljgTBsBe+3Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D+9BNCnpJJa/YXWLW7cv2+KjcoIjEU6Xzo27aWFOimc4diZ14JOWqV1f4IeK7hk+kZm5QwkGgQPtSWnsl4AYPrITN1if7Q5NrGtNYt44Qex5F9D6jGx5qGxWJHblu70fyd0gU5QfumcW0nhqulklJqVnQllz5V9H6qotD4K3EqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ru6Aac5W; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-35f1bc2ab37so5188549f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 12:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718739456; x=1719344256; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+x7nXuurumuNod617+6jOeuG6kek77q3rorK/HNomXM=;
        b=Ru6Aac5W6RaUTTVpn9HEZ7AHMMT9SPC4Y/BLOuGoMby9uOaHlQ3HOCKeiUFodXw/Lt
         Lz6rhxyuzQudPhORulPdha7+8KnX9JHPRxjWB7Jwuep98vGoAPWO2/ieOhmghULT0avQ
         B3EzG21g3ohliCV9TYftxaKK9agv5jj+jKBgh21Leh291/f7vkSemJdEVqLARRF6wNb/
         V5RwcV3XI/KzDhJjG+ljbE1DzfsJQr4bPrDmNYDR/M7nHeJyQ7eCHdxUi2OxB8oklwNC
         29VfMS+vg85VirDN90iKlPB30QHer8TbqO9iA7T605C0sdqYeUL+8Olohj4z24QkH6J8
         Tj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718739456; x=1719344256;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+x7nXuurumuNod617+6jOeuG6kek77q3rorK/HNomXM=;
        b=FqGpPZR7hBl60Kdsw3gHYP2THXqdCHj0EBQJbdmw+U4Qu/YuRhHXuuMm+DuHb+BbDa
         9KhW2ctf37RIEINEET698LCF5yU7I2prNc0/nnovGH1v3g54fuWzK8sX6lSm33weL2u4
         7Z4pIZEJ9+sLf1XaISsTk+jaJfaKx1P6fskOwJ1RKPFTuRGk9elUhIF0bPAqj9Arah3o
         LEx04mq2FdQ0RouA5pCcGIEGm/lTXmRyoAFRIn8i1VG4jBc88TsrWttQonLoubxPxklq
         KmFw3yzhqxGFlDpMpMPnjzj4Hyggoa5HOO+/X1HzB2Qe/DpB8BPA7iEHfX3XcegYN1iL
         3KoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDqeZQIBcttm0feLflMxhRzn65dYmSuymjjpnthSHQlCQK49pOMrbbXBut/tq4BdKlkssOGwGM0LjSsXlH7piV7CVotxswftdnJg==
X-Gm-Message-State: AOJu0YxjTct0Fmoos+FbBMGQ24OdgPWjah3BYmetUAL40Cn2vJu6nQzl
	pLArhmowz06ZgTbJCG6Sg64luWwrRv6eD8e9eNg4TlQzN5ET+lv8QgTo+yul0SI=
X-Google-Smtp-Source: AGHT+IHbNuIhcfEEVc1QVOmdzsjHI7B9xoBv+YnkXNUz7rqiopLwZeKIpqwMjOzmC6LQdI8Utsn30g==
X-Received: by 2002:adf:ed87:0:b0:361:bcc5:2e26 with SMTP id ffacd0b85a97d-363175b9043mr336005f8f.19.1718739456373;
        Tue, 18 Jun 2024 12:37:36 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:5d11:7fa7:8997:f811? ([2a00:f41:9028:9df3:5d11:7fa7:8997:f811])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360750ad1absm14756740f8f.62.2024.06.18.12.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 12:37:36 -0700 (PDT)
Message-ID: <027b9ba8-20b7-4d20-8128-156398f21902@linaro.org>
Date: Tue, 18 Jun 2024 21:37:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 4/7] soc: qcom: Utilize qcom scmi vendor protocol for bus
 dvfs
To: Sibi Sankar <quic_sibis@quicinc.com>, sudeep.holla@arm.com,
 cristian.marussi@arm.com, andersson@kernel.org, jassisinghbrar@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, quic_rgottimu@quicinc.com,
 quic_kshivnan@quicinc.com, conor+dt@kernel.org,
 Amir Vajid <avajid@quicinc.com>
References: <20240117173458.2312669-1-quic_sibis@quicinc.com>
 <20240117173458.2312669-5-quic_sibis@quicinc.com>
 <7e48e51e-e16a-41b9-800d-960c627b8da6@linaro.org>
 <d24a3372-8ee5-528d-09ac-86c64f0896e5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <d24a3372-8ee5-528d-09ac-86c64f0896e5@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 2/12/24 11:33, Sibi Sankar wrote:

[...]


>>
>>> +            monitor->mon_type = (of_property_read_bool(monitor_np, "qcom,compute-mon")) ? 1 : 0;
>>> +            monitor->ipm_ceil = (of_property_read_bool(monitor_np, "qcom,compute-mon")) ? 0 : 20000000;
>>
>> What does it even mean for a monitor to be a compute mon?
>>
> 
> When a monitor is marked compute-mon it means that the table is
> followed religiously irrespective whether the instruction per miss
> count threshold (ipm) is exceeded or not. Equivalent to having
> a cpufreq map -> l3/DDR bw mapping upstream.

I'm sorta puzzled why the OS would even be required to program this, since
L3/DDR/CPU frequencies are known by various stages of boot and secure firmware
too.

What happens if we omit this? Is the default configuration identical to this?
Or does it need explicit enabling?

Konrad

