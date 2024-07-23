Return-Path: <devicetree+bounces-87616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D9493A0A7
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 14:57:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3FA4283760
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 12:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C609A15216A;
	Tue, 23 Jul 2024 12:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="UGdtd0Ct"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A207D26AD3
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 12:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721739464; cv=none; b=EKQ5ZI6bjowl08J0vV2jTmGNaVirfBkLbspxDvUjDkeOsCGZMHa7kB+/PL0vAoRfOBuPjTZs6Is0CbUdfC9thV5voVFSk8wK1Ytln3fdbPWwNmGiSGnJ7Xs18biCJgMQwOho/4X3wp9e+0O37LfIqIROeAr/eSOZPi3CwCx7iZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721739464; c=relaxed/simple;
	bh=Ak08HXgtYqYYUE8bsezKmTENr2zmOpczFdR1mDov/wk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pjt+siA2NC9ns+mgMm47e7oGILqJkyF0vjf5y8er+OSdZl5cjyFQc2uvE9kmcKtNAgIBaWzXnHQsB+nQayvecUZjVt/SeK0gNtKYkAvbMfcuJnV3Dn1gqkwhMJQy5utDcRZO9CrYTwOGFS19VmPJL7LAM08ydugpixUZsk4+oEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=UGdtd0Ct; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3685a564bafso2635349f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 05:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721739461; x=1722344261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SeKatBLYJH5XyX/2Nj+nxQW9hTn0jzkDBU0xeQ71mXY=;
        b=UGdtd0Ct0BN3t4J0lFZ1rAZ+fnv5QN4QccJSZwJXj1zANLoRjXvVqT9m2HelbFEgCd
         lNRDgvhtJ1cXjen6dhFPPoekGr8pFLWE/USyxMdp3hcfbWqAt/xcnFayN4oVc6RDR9WD
         zBKz0KYtLNghDPe7tbKKdAmYSFKtn1FcLS0UReNItdwxY0Xktg8D6BrEj3s/pvXuP+67
         3ZS67VoAr4lwQX3XAJ7fZJAkslVRAslJh1zYjMx3XNAEJ/X8ReLea39DnO87H8VnrFMj
         e0f96Xa7T/badyb2CBsT/Wd+D8HbjjTucXaHbTKZLauk7YqajWwBWXD9VlGfCyM1I5+o
         vOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721739461; x=1722344261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SeKatBLYJH5XyX/2Nj+nxQW9hTn0jzkDBU0xeQ71mXY=;
        b=cQIwNgDJ+bfzUQ2Bk33xVOXDQ4fTG82CliXmF7w5cFx7lOhducCkFHX0FYcY9rtzzv
         pgLbGwfrUScR7x3q/ZI5XkbgMXJTGdVx8YMX+SRJ7DPp5GOl5Smu9OSMg10nxbufe31B
         Y5xP1KDDvJ+73nr6dS//GhOt+RkpZ8CGbf+bxNwNsKbsuN1Z14/X+FBMX6QYFExocN4y
         AZKqjkXvqrUvdM4MBp9wLuTqeerGsxsmH7i7rXgo/twiMp5YIO/JxZhZoHrnEdnXSQHm
         c9mRdLAcQ2suDQCJDvHaHb77+WDSJZIyPjPnQUz9QQAmZKR75izJ3Ek1LmNYv3JelC4q
         7PKw==
X-Forwarded-Encrypted: i=1; AJvYcCVrWPlmN/TLd6oJBbESqlQE8yc19VtPU4G0dCxas1mRur2Icr57lgiN1dAY6dzIB65DOxzyBc8ytybJhCWLl72g2dl25af9TLg3eg==
X-Gm-Message-State: AOJu0YxNExe0ekgmE/hTgz8JKMcMIbwksozFjOFbVw+bBsaOhUCJV2y7
	EbaQedd2Gokg8cqXMBcQ4KKTWfAMhQ31dbFR9mK3hyPJNXk3ifzuPWlFVNbpQF0=
X-Google-Smtp-Source: AGHT+IGKnPjeRq1q8SaJtQeMhMmjaCgxwKDKeHRrSzys8nqzqExgksL9p1XuEKgZOiUCRZ+30+JqnQ==
X-Received: by 2002:a05:6000:2c5:b0:367:9881:7d5e with SMTP id ffacd0b85a97d-369bae3bfaamr7585209f8f.8.1721739460788;
        Tue, 23 Jul 2024 05:57:40 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d6697c3fsm173164805e9.0.2024.07.23.05.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 05:57:40 -0700 (PDT)
Message-ID: <7d34a857-6495-482b-9070-1817c88c9913@freebox.fr>
Date: Tue, 23 Jul 2024 14:57:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr>
 <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
 <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
 <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
 <CAA8EJpprtmefNM_CJFRbYVNxOWUVVWbedBq44r7GXOdDrQ2WjA@mail.gmail.com>
 <04ef978f-2bfd-46cc-a9f7-40a6f1c507f8@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <04ef978f-2bfd-46cc-a9f7-40a6f1c507f8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/07/2024 13:45, Konrad Dybcio wrote:

> On 23.07.2024 11:59 AM, Dmitry Baryshkov wrote:
> 
>> On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez wrote:
>>
>>> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
>>>
>>>> No, that's fine. It is the SMMU issue that Konrad has been asking you
>>>> to take a look at.
>>>
>>> Context:
>>>
>>> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
>>> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>>>
>>>
>>> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
>>> on my board.
>>
>> Interestingly enough, I can also see iommu errors during WiFi startup
>> / shutdown on msm8998 / miix630. This leads me to thinking that it
>> well might be that there is a missing quirk in the iommu driver.
>>
>>> I can test a reboot loop for a few hours, to see if anything shows up.
>>
>> Yes, please.
> 
> Yeah I do trust you Marc that it actually works for you and I'm not
> gonna delay this series because of that, but please go ahead and
> reboot-loop your board
> 
> 8998/660 is """famous""" for it's iommu problems

[   20.501062] arm-smmu 16c0000.iommu: Unhandled context fault: fsr=0x402, iova=0x00000000, fsynr=0x1, cbfrsynra=0x1900, cb=0

I get the above warning pretty reliably.
I don't think it's related to the issue(s) you mentioned.
System just keeps plodding along.

Regards


