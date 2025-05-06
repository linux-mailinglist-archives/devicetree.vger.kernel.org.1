Return-Path: <devicetree+bounces-174293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CB4AACC0F
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 19:16:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D02A3AF1E7
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 17:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C453B199938;
	Tue,  6 May 2025 17:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c8ryNIYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C16153BD9
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 17:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746551795; cv=none; b=YneDkB5rEy6jvLCoS+xQlVWwSeAdEaaeDMx+6kpEZNARR5opCUVSKrxcJ0OCTcv9Zvokvb1BJoDKX3cuOwJPt/mk0v+08PR7OckXNCCOfbXIRqbofoA0jbcCER2FWO273myjXkizVXH788Rqzyws4ZS07fZDpZZUUfZ8Ap3XVq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746551795; c=relaxed/simple;
	bh=4wMM6Gzg9zIMyIJreiFs7VzbeCwUFS0d7aSPHvD/UyA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l7JZdpiHQOKlXH+no2y6x8ZyCu9CtAhIYy97mY4dIOvRnllmECxk+n7iUvUPrtVsMzyWF67vGTpBduk3ygM/7BKL53q9XKTpo/9Pbs8Xiv13xN9OWdDtOSnpftzju7ZtNw0eWayjKHJu/7gu6Pl7/dMeT2UUf7yt89KNpmpGt44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c8ryNIYV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43e9ccaa1ebso7566175e9.1
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 10:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746551792; x=1747156592; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=U+kTJ8sYQK4Dh3qh9Awi2Mx2WpsP+UuKqHDQv5gmiio=;
        b=c8ryNIYVvFphcHy/yN1LBrH11RLdVpJNEdK1zv6nFJlduEX96do/4H5Aq/cdQ+NVE0
         mdQSMUFG8OhcJHcH04+9oGP9YMmdSql/qRLtX1dlVg9MDExz2IWwMKU75Cln3vAhcyrl
         XGOimbzPVX8IAI/0NU2f24oqu9mJl5HFm1WaZe+YhmDevt9r4bXZ3+mp3bb4uPJSVHbH
         N2hq62clWSDMFqGQEtvAQDsluT4fZZa/p4WmAcSPQAjMuJi8qE65bbZEE2T0YmqhqCh4
         t+4MMzTIJ1E4wpq55/4IcAuWt8/cFeGEcYmwqLO7prXh9d+Fcnf6QpRY3vr6XKQSyj2y
         nZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746551792; x=1747156592;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U+kTJ8sYQK4Dh3qh9Awi2Mx2WpsP+UuKqHDQv5gmiio=;
        b=QqXSdxfFpN5EikCesXBgR/9Jk/kx/CMXEmfhC0JG26va8ibz4TiyIsCL8beV6jWeKQ
         VhnRP26h6t3JRRdHrgWIMiBFoqobxHxMqTz81FwHhRPvtOS7sTEeYPtDAlTeqerWNcgS
         xhGUT52gIvKz2W+llvtDkEGuSFg05IYeGbINN/YNlgMV2yhAy5/iLBmXBUiNzANJiZH8
         Wiih2hz2Cq6k/KXqBGY+Wv38l01CwhL7FgfULVk+4t7A8bGZSTm3uuSCLCGCT15gBDw1
         cE0TkCBqeJjEj4R0B0T04h0ZBNlR+s127FBsdpKCFN/AGp0+redbR0GU3q6CnW6kW491
         8aTA==
X-Forwarded-Encrypted: i=1; AJvYcCVErQPM0iSKKDjoOecxMPQd6QuGCKvtGF8S+UWtWNXVrB4Pd/hs4fgmhNFa4vuUgvMznmtCvpgF6rc9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrp695SLffPpCiM6FTLXUpJV7zQ9FG1vuQiFN1r7ks4l35T+Bn
	v0f4WjhGmoLLfKyYviLCjJGvoM9iymlF2qnIKtAt3q+VquqnQsp/mhQwq6mgUWA=
X-Gm-Gg: ASbGncsk2AmECi2gV3adL7d2dtDtCECHSjdxswWO5y0afsqe94bv5ITg1q9Fxd821uZ
	koiYCWQFD7D1gqZnJPeW1mGVt+dOk7sAJVBfVr/MiFRtPaGcmyvAFd77VSNppqBGIWTXON4TDdS
	uFGT4VttwvujuMKyuYg+h21m4Lr+CuPjOKyN/KT/TNcsfo2gQ3f9I1xYVC7sWoUjpRw4ZPiPVeb
	7geHnzhgmtL7snuG8voUTyF/j4VDE7tb89jI05djOHHzvDRh4r9SJSXLbWVLzx/7vT37/Sn1o5w
	sdVBZ+s25z3koM7T/+olt3Pj3BdV4MEkfa0Y7Gm059DKJwfOwn8rVb5WB0M=
X-Google-Smtp-Source: AGHT+IHLLTCdTzEr9la7CfSHtomODY0vn2YywNB3z9+jUpgq7KkKxtsQomE46L6MF0dSvXZMD1jdXA==
X-Received: by 2002:a05:600c:3543:b0:43b:c938:1d0e with SMTP id 5b1f17b1804b1-441bbea0b06mr60690335e9.2.1746551792007;
        Tue, 06 May 2025 10:16:32 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441d43466bfsm319495e9.16.2025.05.06.10.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 10:16:31 -0700 (PDT)
Message-ID: <8155920b-60bd-4dc7-aa2f-46064adb93e0@linaro.org>
Date: Tue, 6 May 2025 19:16:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Add Luckfox Omni3576 Carrier Board support for
 RK3576
To: John Clark <inindev@gmail.com>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, frattaroli.nicolas@gmail.com, andrew@lunn.ch
References: <20250506114115.613616-1-inindev@gmail.com>
 <bb857b7d-97f8-4505-9d2a-1ba9d6319710@linaro.org>
 <043117e7-9fd7-4ddc-8fd9-433c5b8c5dc6@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <043117e7-9fd7-4ddc-8fd9-433c5b8c5dc6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/05/2025 19:14, John Clark wrote:
> On 5/6/25 1:05 PM, Krzysztof Kozlowski wrote:
>> On 06/05/2025 13:41, John Clark wrote:
>>> This series adds device tree support for the Luckfox Omni3576
>>> Carrier Board with the Core3576 Module, powered by the Rockchip
>>> RK3576 SoC (four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52
>>> MC3 GPU). It enables essential functionality for booting Linux and
>>> basic connectivity, with plans for future support of peripherals
>>> like WiFi, MIPI-DSI, HDMI, and Ethernet.
>>>
>>> The series was first posted as v1 at:
>>> https://lore.kernel.org/linux-rockchip/20250502205533.51744-1-inindev@gmail.com
>>> v2 at:
>>> https://lore.kernel.org/linux-rockchip/20250504102447.153551-1-inindev@gmail.com
>> You got extensive guideline what to do in my reply to avoid exactly the
>> mistake you did ... yet you ignored the guideline.
> 
> I did not ignore it, I took this to mean:
> 
>  > Do not attach (thread) your patchsets to some other threads (unrelated
>  > or older versions). This buries them deep in the mailbox and might
>  > interfere with applying entire sets."
> 
> that I should not use the "--in-reply-to" on my git submission which 
> caused the emails to be nested. I see now that you were referring to 
> adding the urls to my submission.
> I realize this is probably painful to go through over and over again 
> with new contributors as they try to carefully follow all of the linux 
> submission guidelines and I apologize for my ignorance.

The next instruction, not that one. The instruction saying:

"...because many review tags are being ignored."

with much bigger explanation what is expected now and what should you do.

Best regards,
Krzysztof

