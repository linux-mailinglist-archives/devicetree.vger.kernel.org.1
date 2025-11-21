Return-Path: <devicetree+bounces-241052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C07D0C78DB6
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 17F214EBBC9
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0855534B42F;
	Fri, 21 Nov 2025 11:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kp0JNg7Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C86334B412
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724908; cv=none; b=Whlig+3Wp+J5K/HRTs16/Xck1QZ/CIM9tZIVqZYvqwNvZ9MGrk1CxMls/sR8ur8KoCQDTvYmGWj5E37nZSTAPki4MMLEc3hZ32JyKVX1k7/gSPrcTiKPHPDN97l6hiJRfZrtr627xpf5PXOnp/S+IFPwNEfdHdX6IILyR2ko/w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724908; c=relaxed/simple;
	bh=/FkxSXRz9LMHnMMNJp+LieZnrRuKbRrFs/7QOECPU9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W5hHl8K+KHjxzHSorzQD2VBofRByHz+nAvhety+it2eGSIQVtYxVLnw4S236Edv2BXrMNbbGvRZbJ41UU6I4rCYVi/NTUlHiyNrHHiQGb+fXzF81yCl0VG0SGSs/kY18FlzHPTZ1PIpRCyVnWRwxSa0/ztWngHa2+SgPGaVKsts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kp0JNg7Y; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3436cbb723fso1576759a91.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724907; x=1764329707; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qfo/be4GYxt9btZnUQbCHGlLLclI61+pD2umzl5YLU8=;
        b=Kp0JNg7Y2K6jrnY0Q8Rm++9F4nrLK4hWT0PeJVvRR1UGa5AUAt8rMvj6oliOEwGs3s
         +EXAiQrz6hUy+l5TZW7Twm7HVeZkeeaVTzxIRAr/tOw4c27jLUJdmLID5gieIt2OeMxN
         QpfCb0Wa7mVWz/yuWGaoM6jCaxNK2xyjZj9+CD6mmd7kQiV/SjDBXRws/mAMfv2ccIPo
         2BEJs5dh0+KgHLuyKnS/1KgjS5/Gd1dTfibicRAO5wh0dGlZAiA6ZiafmYW5MycOtSUx
         5F22MKyyiFxgmCdmQ3/76Z/3aO2qs3TKH4l5y+tZDlmlKevSfUtXSHae3p1Qh1lI4RXN
         YwBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724907; x=1764329707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qfo/be4GYxt9btZnUQbCHGlLLclI61+pD2umzl5YLU8=;
        b=GfGdSohx/p8NOt4CPuquWR78jOnjxpNcFalBeW+9ttJW1suQfL2PhQa0O3TwOyOec4
         WtgiyiIBrfZfUObZXKREI087/Bje/unhEABT1kt5mjTzYKDZ/rAzLQ18PxUGKKxvp0RM
         9KMRUR8S8xgUesO9PCj6nZNlHgTlpOuSstXTF/7fDcLprpA+N3VOQI3E9FX8s1jFrFky
         SDeSjYGm3LBaRZHhfc59ON8Jy0p9/LaeYpR1XsOT8lPWkIY1REWZRqYw3T4Z5ODdMnWx
         z9BqbMq12w5SpSuKDWHv1/4T3nnM11Sp958XWZNfVtP7osqBmLaaKEArj6PnvUQP5M7t
         G8+A==
X-Forwarded-Encrypted: i=1; AJvYcCXtPnfmGpMR+NZJCI5ZPp6EK/l+l4GpOvlopKpqCyq7YhklnSu22sxhyMPPrS2UHDP5BI4WSAcRBalu@vger.kernel.org
X-Gm-Message-State: AOJu0YzYc4jZU6EmruXTstQXGT4gGfyOqZIUWbJ0DOtOUmp6yjHsEdg5
	XuvoISo3qxEjt120Qzva2SXlNtv+GK7rcsMPCboMsYg4uHiZerYhvW0Y
X-Gm-Gg: ASbGnctBKtY84p0SWTWQGr85JXTCl4V/2JPqa7uii2vyv6tjtz/hN9Kys67puxku5D/
	k43i9LiIaGAMW3iJYodJj27RYk1SXW6ijOa7cYMGaFO5NbNuuv0Ac6y/h6HXtpG2hfoIrEdveIG
	P1AcL7R8NKwFa1UAXk2vowB6bMV6g5K1t4/TyKsG6kaURhdIyJYPaaAHJADQr3JdtgMc/Fnq9qw
	Jb0nbhOgDBgpRJM6PXDgLepLxIHUWnmQsHS7q2M2fa+iM2rdcQcMrV/79nspHVfuXOuP8NTRrE7
	5rSUIpPVwXw5odAUweHAj//USCnfSjDpZZVQlFhFVegLuzplAZrT27a46XZJgroUZnD8JUrFKbf
	a5VPU5WBksLmFFnO0dCCcj9Pka5MKKG/A4k8ihpcz8IS3iZV9UBs9Djf351+dTCxMY5s23gBBFu
	02q+xGfIdpYOtIKF18y0rMkWTelSlGh11h0eAmCVCnrj9BJMsua1qn0QQ7+WyWr5yV
X-Google-Smtp-Source: AGHT+IFwa9ohIUmcXG9jXkofsOzOfpDOKPDZvgLrJIRHhd7+7MgM4xWll6gheZBw4rWbw0fZpldKmg==
X-Received: by 2002:a05:7022:24a2:b0:11a:23fb:16e2 with SMTP id a92af1059eb24-11c9d613003mr671394c88.9.1763724906696;
        Fri, 21 Nov 2025 03:35:06 -0800 (PST)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93e55af3sm23498679c88.7.2025.11.21.03.35.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 03:35:06 -0800 (PST)
Message-ID: <573b2293-7b39-4c68-a51b-ecd5b62b0ec1@gmail.com>
Date: Fri, 21 Nov 2025 03:35:05 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8960: expressatt: Add Magnetometer
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251119-expressatt_nfc_accel_magn_light-v1-0-636f16f05cf4@gmail.com>
 <20251119-expressatt_nfc_accel_magn_light-v1-3-636f16f05cf4@gmail.com>
 <161da2d4-3306-4251-addb-cc9822a112c0@oss.qualcomm.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <161da2d4-3306-4251-addb-cc9822a112c0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>> +		iovdd-supply = <&pm8921_lvs4>;
>> +
>> +		// TODO: Figure out Mount Matrix
> pmOS wiki has this:
>
> https://github.com/SiddharthManthan/accelerometer-mount-matrix-generator/blob/master/rotation_matrix.py
>
> but for accelerometers.. shouldn't be too different, I would assume

Unfortunately this seems to generate a broken matrix for me for the 
accelerometer. Downstream is also useless here as I believe Android does 
something slightly different.

I have been trying to upstream the pinephone pro's accelerometer and 
magnetometer as well ( 
https://lore.kernel.org/all/20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com/ 
), but I'm just not sure if what I'm doing is right. I think the easiest 
solution for me right now is to get the screen working and use GUI 
programs to figure out if the mount matrix is right. If you have other 
suggestions, please let me know. I'm all ears.

But since I have your attention for now, I had a couple questions on 
trying to get the screen to work:

- The pipeline is MDP4 <-> DSI <-> Panel, right? Any information you can 
give me so that I can try to get this working faster?

- Is IOMMU broken? It seems like I can use APQ8064's implementation, but 
that's broken since at least 5.10. Should this be reported, and if so where?

- I see Adreno 2xx, but seems like there is not Adreno 225 DTS 
compatible? Any insight here?


Thanks,

Rudraksha


