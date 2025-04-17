Return-Path: <devicetree+bounces-168171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE65A91B7A
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:04:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C22519E5DE8
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09C224169B;
	Thu, 17 Apr 2025 12:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A+BXfnyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88603241667
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 12:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744891455; cv=none; b=bc0Ml1UkWVJ1CKlPg0y0jRv1rQkx+MiUYM95fCZoA2fSsKYXeRVRERcaL2J2W80T57E6AXHQ1H6vFIgYe72JIKirHQVih58RvYHL5RNi4akk9g1gCHKCg+K2BlPNDCeEoNpu3t7eSKhIbox9lQRcEtnP2jwdAcNpGqxR9DqeePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744891455; c=relaxed/simple;
	bh=dnPw/6WDA5NvkvubmkIBTjNuGbUeGZwq+sspzVMsaT8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J8U/KqfNBFMw9sTfs+XXTl5dpQ6EE2laCVwxCRfy76k7SH3qmuInUOkbUTkoyIqxehySYvDyUuR+CrXHCbpkqZdbG2naausB/ccB2j1GrZCuOssw+JJpQO8pB3KCZFE1rabxiPSDb4mcJR0XQhFp+U0k+805VCunTwY/KrXcVgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A+BXfnyd; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39c2688e2bbso38983f8f.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 05:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744891451; x=1745496251; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=AIdCl/5qC9ELUd0iM51tsEop4bjwaQ4gO/Adiu/i0gc=;
        b=A+BXfnydeJSmilbhCgUlt9Cas6WVbTGg5FNU6cmMIER8ahwL1W2MbPOchTSqhbXTri
         MpPYU2mgXlm53uPBL1Jsj2xJ2BAAJrDyzYW2FxdulIS4q0S4T9RRiatyo1w0f3+m9ssV
         wVX46kNraOd2BIfnom48kcGkDKT+CA47/LzE41orX47h1vprISGgskaZ6zSM6wJywfn0
         PEWtcMsegHyODpIbGLxQIP16C/ZmhokhhoiqaOFYptW8mKsy0E+Q2RgPtHvNc8xDeltp
         4cR+EX/0W1mUzk5rUNJBiHiRSz/acoUmNuqDj68yzDy5sHVpLd7zzX0ciCiZ009CENna
         owVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744891451; x=1745496251;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AIdCl/5qC9ELUd0iM51tsEop4bjwaQ4gO/Adiu/i0gc=;
        b=UHF3JeLs98Yy8F5pwBjW9ISrrVAvJTdXnYjmd9daw2oUQ/b+LEmq6OH34LxSSmEvm4
         mpSCkNCIoOFQh38Ma9rcRY92SOhA1Kj1jI1BcOg+itUnXPzlAlqZTGS2RXV7FlRQs9tN
         vIm+I+6jdC5n/0NVMAPDjZ9QxvgqpJAop0lMkJUWRlehBfUo0+aM7KVhaRorrQ7KngXB
         fORJS5V8ALnq3/YnY8txsIggvfZyyXXAesnPRQ/pdHIVN3DhWozq5iXaHnViGeVoGCGT
         7N/82jyquCSYW04IAX52g6SYczOkPe5x8RHZ/fuhXc64/bHKjaq2AzeKkkGI/cdzw3ra
         Jkxg==
X-Forwarded-Encrypted: i=1; AJvYcCWFElFmZDPEgiJKnuCrHQi9j63bIxGjlWGE1f4jyAcmkq3ne/cXOVuD4OwtFX0kfBWzO3gSOejMH/Op@vger.kernel.org
X-Gm-Message-State: AOJu0YzjH3FWTjSjS8J4IJHmiSi8dVIZLo599QHhur2ZoM2DMcCuk/NC
	7IHQ2jY8gm1HWgHPEEOt9LO5cs8J7vQBs5qANuDSn/AzrtvocCWkEHjpTua+QiY=
X-Gm-Gg: ASbGnctoqK4RJSeUUHs2FzKI6ukBXnGLM9A5bteQfeaxhfSw9x10Zh/iR5uXqjviqB1
	vA8Um5tBeUeR9tlW6s359WwURd1u2Wvm8NnBIk2dog7n7c2/FdDxHTRzGBRBXvxJZyn+h/PpeDp
	Y9hSiw49ItVfQ0C2uqim2kS4AcX4eTwtYONv8t6C+nUINOezZaMTd0jtQTEsil6E6Vcgubqh98n
	06wiww1YX6Xt+pSWLzjIxG1XoOsraIv8+pzHrmvVxMRQl1LCQgLBamhL3aL2hLJKT0Nm/7Kfude
	i0TNEoA7VgXN0zPCr8kqaHEPf/v2JgmGwx6fFHgB26YLL4yoPT7jGxAvuGGAu+xGJqZ64EfksUz
	Lx/k2gEU7xs8QqtfE
X-Google-Smtp-Source: AGHT+IED1Xnj9v0JnQwcOVttYnoHyhkKM/R+mA/Fw2SQCf/1dnCXdY6vmR1cIpyP4BRWLBv6GiuwYA==
X-Received: by 2002:a05:6000:4026:b0:391:c42:dae with SMTP id ffacd0b85a97d-39ee8fa23e1mr1035766f8f.4.1744891450761;
        Thu, 17 Apr 2025 05:04:10 -0700 (PDT)
Received: from [192.168.0.101] (46.150.74.144.lvv.nat.volia.net. [46.150.74.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96c5f2sm20184959f8f.34.2025.04.17.05.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 05:04:10 -0700 (PDT)
Message-ID: <a8f7f571-e81a-49d6-a40d-895960165039@linaro.org>
Date: Thu, 17 Apr 2025 14:04:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/10] dt-bindings: display/msm: dp-controller:
 describe SAR2130P
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Krishna Manikandan <quic_mkrishn@quicinc.com>,
 Jonathan Marek <jonathan@marek.ca>, Bjorn Andersson <andersson@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org
References: <20250417-sar2130p-display-v4-0-b91dd8a21b1a@oss.qualcomm.com>
 <20250417-sar2130p-display-v4-1-b91dd8a21b1a@oss.qualcomm.com>
 <20250417-arboreal-turkey-of-acumen-e1e3da@shite>
 <7b559f03-f131-435e-95de-b5faee37b4d5@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7b559f03-f131-435e-95de-b5faee37b4d5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/04/2025 13:12, Konrad Dybcio wrote:
> On 4/17/25 8:03 AM, Krzysztof Kozlowski wrote:
>> On Thu, Apr 17, 2025 at 02:16:31AM GMT, Dmitry Baryshkov wrote:
>>> From: Dmitry Baryshkov <lumag@kernel.org>
>>>
>>> Describe DisplayPort controller present on Qualcomm SAR2130P platform.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>
>> Addresses do not match. You re-authored the commit, so now everywhere is
>> mess.
> 
> It's git's fault with replacing the linaro address based on .mailmap
No. You can easily see:
$ git show 51a6256b00008a3c520f6f31bcd62cd15cb05960
top author is like you say - mailmapped, but Sob is my @samsung.com

$ git format-patch 51a6256b00008a3c520f6f31bcd62cd15cb05960 -1
What is in "From" field? Samsung, not mailmapped.

I believe that's a known problem in b4, already reported. I don't
remember if this was fixed, but till it is - you need to use some sort
of workaround.

Best regards,
Krzysztof

