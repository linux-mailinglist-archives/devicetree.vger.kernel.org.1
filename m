Return-Path: <devicetree+bounces-241901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F76C841B7
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 29A324E7716
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D102FF154;
	Tue, 25 Nov 2025 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bQ1kfZIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D1A2FF169
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 08:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764061096; cv=none; b=Cs2qR0Vx1Fpb7zHbLpRTE85yQFT7ZoVMxLKZXzvz42d3SmPsBs0c9APYpziVoFjjiWj8ySbD74mkA5/xPEiY+bGi6jjFlZwDrcp2syYqEAu2JuO3xFH/2rfLKyL/e9XR2ENY3BSaDSkVBBuiwnVYDhKvimugvkxkr9L4Yo3K+xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764061096; c=relaxed/simple;
	bh=6bCQbazhUkRM50aYhLWHRSpwuK714GzrBIOb3y+BZ/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PT9ep51tjxSmZozWCnjkVwgKLERMucEpniOC0aXDcD8xUAi4POriIkH/G83qgy+3C6wX9C5NpIwg49RLuUSGibx5V/EGQrtq3iid86L/ARfeEQy5TeV78c8m6xw4NtpSlOqBvYswrJFCK+Yxx+v2GY/dUngOtdHTzII/6V2vr3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bQ1kfZIE; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-640ca678745so8799844a12.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 00:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764061093; x=1764665893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2FZX6KYHBdjPPj4U1jchp2YXtLROmEg2wm37ihXkD3o=;
        b=bQ1kfZIEyN62pwGKD54uyeGXtMYGU/GFIUGSN+VhVnUSkCmWfoCi9hxVYEofAdSuVK
         mw//bdfOomHZvuwxvn3ezBgcvEuFhCwH5Dyv9fTTOTvOLRIjORL1l5uQhMoG7Q+N4GMp
         0uKNN/WNuere3/u4vxIyYaNdtHTr5ivU18N6pu7bwHvr32sG4EdUavVrFhoYo8yWSJ0c
         bZlyiCS83hflvKStaVx5r19XaOpCtZheLj/ACS/2LqeiiAmgTp3aQxR//6yZnBjGQNh0
         v9tNLVqhweyoMrbNx1he36Q5FdZKBrmA49wbsQOO61kOOqkeqJ5rG2szLi+H5iKtqQXR
         0tYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764061093; x=1764665893;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2FZX6KYHBdjPPj4U1jchp2YXtLROmEg2wm37ihXkD3o=;
        b=KMeQa/gHzkH8Hb7bNXy0tHWjNvWHvIWOQ4XgToiHsAu0a5EV4oHN/UNJ5SprAZq82+
         +fbqt8ykolY4dFYUyBcXW0Owegehx6tDmr2oGaohB4DjjAeM6CqhAb3Z/XK3RZymc2Qz
         SWgFMRXsbgjhQWpjf0R14fAHw9mBVqaNiMj47mOC2benOUZUoSGoYDRInsa9B9WIiXjN
         bG1Hcw5iP1zBiDqhz0BbLangPxjcNjMy7IwQM8wpMfdNjYiwrerhsqc8kx/IbLIjYQrV
         r4VkuNUa4i+ccOHWqdj38ATIBHyC0AkNIH34aFCb+h2zqOAsjPMuhtACx1eM57cIqpgq
         CkaA==
X-Gm-Message-State: AOJu0YwlCkQ3G9MMCzcW8j88JKlqYL5OaJG0RUAyOeYgkmv1YKldLGpu
	jgC3c7fTwjnEUF06Vrc0VSjJWAhhKIyW7pO8skjzEbxGts3BsTUt7o1QgMHB8S5WgsY=
X-Gm-Gg: ASbGncsyqXyY/Au6vMptgD9QEjBSErd5+2fpP9cPWbqqK92myxB0T5RlSPprdzUOqBP
	AfHey1jrmpJ1i8597m141Howv62CTn7rVITvULPtpHh24n5zDSbK1k3hOMjKrJUfI2X3lww2eRG
	Fa0xRS+6G+QZOzdP927npwFc5Pfk6RZ8yWfnYV+oxVKpSNhNU9RM7gGdUWBgDbKRLGw/YqjBpEb
	ewjBO0Q2aVhZPEOO9PF2ZuGarEki7Ax+Yhyou16XabhWTSOpUBozKpw0r7plL0Zk9kwZSMhbbwl
	UwGx9L3IKjE0jgCLquHL3YzPiloEPhHVUib9CsAkidIpW3DRS7Elgmzi6NMAnAEn9zkB097Zm8b
	2JbDKa18aH2FALhisPCovDc6E3jt+Yj/YLlOI1xH+98mvYvYylalmfCda/gqDPyHCGTOCGeMOzA
	Ay0AhsPNCP/qvB+ckUFVpD/lKz3ox6Sfn8bNggyIcxRHCWihDNQT/cYClJCxeGnuhczMy4ruy9x
	BOq
X-Google-Smtp-Source: AGHT+IH5SNC1Q0L2mHeThTW9vZ1gMF479ltqMUwI+wPuwqb75wBckHzhLTSJ5pGTsqvkoXcv+rHsDw==
X-Received: by 2002:a05:6402:2787:b0:641:2a61:7da2 with SMTP id 4fb4d7f45d1cf-64555be1db0mr13109272a12.17.1764061092794;
        Tue, 25 Nov 2025 00:58:12 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:1d9d:2362:4539:c68d? ([2a05:6e02:1041:c10:1d9d:2362:4539:c68d])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-6453642d32csm14384517a12.21.2025.11.25.00.58.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 00:58:12 -0800 (PST)
Message-ID: <7cdb22b1-98db-4b0c-8475-3d35f289fdf8@linaro.org>
Date: Tue, 25 Nov 2025 09:58:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: thermal: tsens: Add QCS8300
 compatible
To: Gaurav Kohli <quic_gkohli@quicinc.com>,
 Akhil P Oommen <akhilpo@oss.qualcomm.com>, amitk@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <20250822042316.1762153-1-quic_gkohli@quicinc.com>
 <20250822042316.1762153-2-quic_gkohli@quicinc.com>
 <2948af7b-799d-4754-9460-c50f3f49ba8f@oss.qualcomm.com>
 <3b4153ef-eab6-4726-91ab-51dd09a2b36b@quicinc.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <3b4153ef-eab6-4726-91ab-51dd09a2b36b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 11/19/25 17:20, Gaurav Kohli wrote:
> Hi,
> 
> Can this be picked up, as all approvals are present.

patch 1/2 applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

