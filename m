Return-Path: <devicetree+bounces-167852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D3FA907E1
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 17:38:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE75418883F4
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 15:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698121FC0ED;
	Wed, 16 Apr 2025 15:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MwZ6puI1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6021A08A0
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744817901; cv=none; b=gKh+OU5PrJGJ7lCP35gKGRPZOG1BlZYzoyPttEMcs3i0VvUHkBEnegyMfKWyllbfXWFyQFQIbsoypWzfphdSDM1tAWkjjl41xbbw1KZNdm+vpfBA5hnXHXsc/fofr1fWvy9iIOfOOytKCXzgCntN38zpRoQt4i3tH1LQL9VomwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744817901; c=relaxed/simple;
	bh=d8Cxv9RR9qoZHu06cgnLFXf999An/Y0l3WY2JapDwR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h9FSOt1SrG4zj4wd38G1qlOsLTk0ZDMB4PVEqgUrjZec783j+HXpbodug2GbNd9IwhwHdG64kMXdgs9eeWKJ9Y7DhhrYJGBcb715KTOPx2YWv6US4G4/wSjqv51jtaoa0V8RVwORG5zmt+qtVf9+BcDU8qxsvmNDOfz7JLE6PFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MwZ6puI1; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso9047649f8f.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744817898; x=1745422698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6X5cjdhMKI/P3dnvm6GscUCkVJUIYTsQYYuVr1rioTo=;
        b=MwZ6puI17WMP5KhQ3PfEmC+EeB8fiOo1Sw7RIn//xZ4Fd8VEmfHQOf8RbSoqGIeL5S
         5W4Ukk7se0W900+paRfYbMEDnjJPN5Ns/GVltg/2B1+XAyq/zZGpeNNb48PaxXKk69du
         oT1mILoKPSjnitbUtxzG35c3/pIUjYwrmzna58k93eJY1efSvOJRZv4pZ4aW+mr86oI+
         MN16y5DeiY6s/1fEccy3ZyEydLjZ0mBaCd9I5MsTZ7hyaUJcR2knF96Y3KpCiMvfW2q6
         pWmFJXIee1Nhi7E8lLBnMGV3npQ1B4Kry/XJU3tXImnS8auE7KKQLWRhX0fd3eDlVHNF
         BB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744817898; x=1745422698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6X5cjdhMKI/P3dnvm6GscUCkVJUIYTsQYYuVr1rioTo=;
        b=eHZ3CdJBWS+NFsoBHoSRJOkEITwzuLi08XWHjPyYStPnShRfuAdW8rga1tvu+Ghy7X
         cbnBkaZYxRooTLXKf1wE34Db/X33SzjMkZwFqzQUd1h8XvnEzjIEi5mSGTVlx4UiuRr0
         O9DidqWRq35Vy3nWvJyBmSuPj2L98lfZ1WUrWd/169QQIco9QxltWDcjy6iDE5Bnhf1x
         R0cNKET7Q232z25iX8J6AM/ufzs9PZwCGFETzDCHacixyBRV5O9nzx4t7Q9JwmUew9Y6
         iL0y+JiXzLiNj3T9bUXbwf+r0Kr4uAPm4057kXXQIGVYDKsXqCydR/whApT4fgkUM/7d
         3Dhw==
X-Forwarded-Encrypted: i=1; AJvYcCW+qYnrmDo8QV/Flo8vFI+QQAVYDONSrt4YO4gPyObSUt2z1rgHPNfH8ygD+yGJRCbvfeLSf7hBDBGB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyeg7Fqjo786BoILdKfxIDDm6mBhc6Ym+2o6SAu7hl/GmN8+KdJ
	TIBLVxvDIQVf3FpVX1qTG1GXzIp84Ix2Ys7AMAWcZ9KFnqtMkjZllfnxkEu1I+w=
X-Gm-Gg: ASbGncuKbK1dM6OMasTxXATbR6SNmQ/jhMhcLepiquvYjALbsvdDAiSqkRWLhYN1Z1T
	XYWLkcYT1BOeBY3X5Rrhm+Ni5THz1Z2cHBAgzxeODs8QOAljTsfpXZ2CYXjVkUxo0Ql0XuC9Hl2
	sLWpuoff7Hz9SlBn+AfH5d0GGqIFcJHAUKoU0eTUcaUc9mINo5WUEX7v80p6t4c7+o80E/qejf/
	5zBtnjyFVfJf7jGwqM/nF3E/SGPNMlDqM1wXFiyv76/e6apOBN6r7LOlZYIgkbuzOsGGVfuo80T
	CKNStJ5Y+iOeydSMAovBMiNcGFUysPfNpK/d2I8zthtznHgzBvkjVOtcKES05YjoD1d3yqy8jWL
	/wyNrvFq3Hunfm72i
X-Google-Smtp-Source: AGHT+IEfQvnRXm70oB4fES0IsSzhhHRgsmW+pbvgi0fqlz5G6E/YbpdZwYoqWyapgcphV/f1U901kw==
X-Received: by 2002:a05:6000:381:b0:391:20ef:6300 with SMTP id ffacd0b85a97d-39ee5b89446mr2162527f8f.37.1744817897790;
        Wed, 16 Apr 2025 08:38:17 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae9797aasm17582908f8f.56.2025.04.16.08.38.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 08:38:17 -0700 (PDT)
Message-ID: <bd3ce9f6-b178-4b30-a4c6-3b45e2691f9a@linaro.org>
Date: Wed, 16 Apr 2025 16:38:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] media: qcom: camss: add support for QCM2290 camss
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-4-loic.poulain@oss.qualcomm.com>
 <391e7a1a-ea7f-4299-86df-cb1600428d90@linaro.org>
 <CAFEp6-3bdazujwWLh6RqWhP3ZufAGtX8PtvtM7JN0k-VWc-C4w@mail.gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CAFEp6-3bdazujwWLh6RqWhP3ZufAGtX8PtvtM7JN0k-VWc-C4w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/04/2025 16:16, Loic Poulain wrote:
>> I think you can get better numbers from downstream for the above.
> So I'm not sure how to get the 'correct' values? I've not executed the
> downstream driver to get the output of aggregated votes. The only
> clear references I see is: `CAM_CPAS_AXI_MIN_CAMNOC_IB_BW
> (3000000000UL)` as well as `camnoc-axi-min-ib-bw = <3000000000>;`
> in the devicetree, which would give us 3000000kBps.
> 
> Regards,
> Loic

Yes, something like that from downstream is the best reference.

https://android.googlesource.com/kernel/msm/+/f51b78f14bcda2ea59c26e5fe54d88f277ef242c%5E1..f51b78f14bcda2ea59c26e5fe54d88f277ef242c/

* for your SoC

---
bod

