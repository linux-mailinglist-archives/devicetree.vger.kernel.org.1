Return-Path: <devicetree+bounces-194888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AAFAFFDAA
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 11:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1CFE5A582F
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32657292B33;
	Thu, 10 Jul 2025 09:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jvhE9ay7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742FC1EF39F
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752138929; cv=none; b=Bqc5V15tQhiisrWDisv3A6Iy3A4Fve+dyhvvcdTxwTF+Ipxb+VVAlN4pEbsFX4d7TaiIqh6GqM4Yy/S/T22Uxdcyo/9Vrhpl0O0/33SquKoG8irWVTejk6kUFZsptaUlyipMBqyoDYq57QD+6mqmnFtxXWQFmg3x0o1PLk2im9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752138929; c=relaxed/simple;
	bh=iiLjM+aUgsYzHC/WPwWLV5opBtyLVc4FDeCI5k5C/gg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t83FHNmPlfcYVjs9Ewzh+Zl8fsmAF40s+G3a5y0fPjkssa4nFg1WnsPso08aURyxg7z/Xht9Xndxzb4oBcmfrBtibtp6a3CiMOg47Y4q+cjzGdowziPa+3pbQRg+BNCNXCrGZhCkV5W7g9kMhTC+8v+KAvqETf7nGNyCp2GqRL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jvhE9ay7; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4538bc52a8dso4903905e9.2
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 02:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752138925; x=1752743725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U6q/9SW9W8dxQjuQZq+qCAODMrqQtpqZyWtMbjNSA18=;
        b=jvhE9ay7gOWSCxxyivq6arYRvHeliNhvwbc9gTDEgSf1tjG5zFsQff5O6VH8BnXYMh
         WB/IlONSwe3AAqekhQE+ktw2B7zHGdPD8+uTVWa4qWooHxbqJUirMGAkArExOyLJWc7T
         xCsxV5ngMpDBBLIB+EcspBKoIdFPdWWKwC9NxPKBm0CAF7Zl1Hm7n8OCT6/NS7Unj6wK
         0oKAmB8rhhAa+zI6y8cmDKpPUvmCXTqbc4It0IbnFLlHHSw/gtL1FbREt7LHf5yxVdl1
         ijyNh50Bbo2DTMbcx3aKfhJ0L71xWunmXi0cz3x9M4mHsNyXWHzlaAB8kmxOSmuDtwpQ
         aMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752138925; x=1752743725;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U6q/9SW9W8dxQjuQZq+qCAODMrqQtpqZyWtMbjNSA18=;
        b=KjMXkN65unRPTZMbX/YQ0gEOFCXHcDPhLiyGbWXHlh/uku/3ZA9msL4DmpbFpVwhwH
         iaNDtw/EG48kHoIQLwKWOIwrjF7PSUN8lg67+bRAMIVRRkLCvyMvr/AhlcjRR++0EiC5
         vMU34FSybD4oy6n9l7Z/xna79ErI11fMrMvt34jQqvqEVQ/lR1JCka6Ys5L5h5NToZB9
         SLAuKlVPXYJb8kR2d6yEMGG1aQptng98JxvdM1jTAvJyOKsHW1t/scBvO6dFBKsz0x6K
         5zbXIsg2cpCQEeYGwV/0eFEzYPJgrXeA8M4/VHw+CV4zrOmPf7l0p01RaehzRKuu+Ff1
         dt/g==
X-Forwarded-Encrypted: i=1; AJvYcCX4MnZ71AKipr8Uz+1mVIJmkxSaVEU4gaO0VsfRDwIB+Zq57TPMvdHEGIvRnAVMXEXYwDdGCOQg3z+S@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3tdww9L6yxOsfRW6gSIUWNrJSjQJBdaCgKUgk0kFiX6akHj2f
	/KLusd3I2+sPuVOCAUdp/t8jRM0oOwXX+d3PbmfGnYwkdsbfC30DJg+NLMghFnMHxpw=
X-Gm-Gg: ASbGncsCydhtH/MkcEgEsi39TdbbMpFBX1+KDOxYW2vKO1DjzLb++CxXcjgmEFTMHkj
	kLVwnTZNLM1nRVqHtlgJzzPh56FPNEkv1yvAMOwONnhTZ/y4hdWocOuidkvnr5od3PqfPwJHeTn
	4wwWIued+2cClOCdGiY9uLglL6RBCa+eoybAmkhnQKvDAsaWp1R73yFd2bOxuzxNJiXxXkODeBX
	YycaFDW2O0++qahNaY2CN5sgGh3XN3Ge2rW95MLO/3yy06Fdw6Nud1K0aGePyhyBBngYTPCF0wo
	6VbPKya8i6nI/K4f2iwc2gqJKJmDFCjwaPuTGQUKuhIuUeTOgHjGBKE7aJCMMz0BzR/zvb1QVAY
	5Vg3lquJ1EmVGMwRpEe15QlUpym4=
X-Google-Smtp-Source: AGHT+IFiUkvfNJiRLRUs8fa6XAAhAZRAnt+u186odn28Di4bfezkL7HU3hExac8w06CkJd8HzwOdhA==
X-Received: by 2002:a05:600c:8717:b0:442:dc6f:7a21 with SMTP id 5b1f17b1804b1-454db7e87c2mr31122345e9.3.1752138924220;
        Thu, 10 Jul 2025 02:15:24 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd4b32d8sm13751625e9.17.2025.07.10.02.15.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 02:15:23 -0700 (PDT)
Message-ID: <c3803de2-56f3-4346-9490-67cd63abb287@linaro.org>
Date: Thu, 10 Jul 2025 10:15:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/7] arm64: dts: qcom: qcm2290: Add Venus video node
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, krzk+dt@kernel.org, konradybcio@kernel.org,
 mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
 <20250708180530.1384330-7-jorge.ramirez@oss.qualcomm.com>
 <8f30092c-0e17-6f4d-f3f1-769508d2f58e@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <8f30092c-0e17-6f4d-f3f1-769508d2f58e@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/07/2025 09:57, Dikshita Agarwal wrote:
>> +			iommus = <&apps_smmu 0x860 0x0>,
>> +				 <&apps_smmu 0x880 0x0>,
>> +				 <&apps_smmu 0x861 0x04>,
>> +				 <&apps_smmu 0x863 0x0>,
>> +				 <&apps_smmu 0x804 0xe0>;
> What’s the rationale behind having five entries here?
> could you share the use-cases that justify this configuration?

Already getting in trouble with non-pixel/secure # of iommus.

Why not specify the maximum expected number hardware supports, 
specifically so we don't end up buried under incomplete schema again ?

---
bod

