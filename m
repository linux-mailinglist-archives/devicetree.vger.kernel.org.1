Return-Path: <devicetree+bounces-240063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C380AC6D06E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:05:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A95A234896E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E6A314B93;
	Wed, 19 Nov 2025 07:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="eHm4/NO0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D2D2C3251
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763535896; cv=none; b=sUU2FwVCAfkBrMhFLXy7BDKjF1llVIOcgDnHh0OG7UvVla7mDe8qEEd8O8NycYotCN6xYmsW+EU6CsAaDQ54AznlDKSrguQ0CxNs/sQVc68CDIp+2RRAxlUdl9qUCo9RPQDG+OP+laTCEsoYftXgXfpTGestIzyRhOZh3tRHt7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763535896; c=relaxed/simple;
	bh=p9MgnD7JWagPo+CZ04Zw2ECvO8+TLxO2KuHDtWJ6mTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UIeLrVX3RaNVYgpld/3CtzPPjxMpBRWqWsXETpoTNcZjsMMw+p4IC7QQvABOwWplLI4/bp2qJet/aRkcDDAAJKMvQ1ZNd3bxkt6FW54FH8CvOo3KGkeX3BAg3HLDBXhCgG4Vx7eFI2QGr6kI9BHiueqQzQ4C9+59Xwwy9jeV5kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=eHm4/NO0; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 16F073FB7D
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1763535888;
	bh=HCDUZaE5+206zSZomo9Fg7tLxJqm77Cnmdl1n2fzVyI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=eHm4/NO0/CRLoXybgvm/ZhSzpF5dTGNtZ1cPpyccv7ygHCbeap1MbDwF7g1oAU4Fx
	 BKgdTPwCv92oBrZ3+AcYvmxXURxM9XywjfVVCDFpGkrqDurTcITh6K8RpXYADwN+aN
	 2CnbAYxFMErHnBOhMVse2UNnT9oKFDrgl0Nf/eDXUtf0aYg50rWF9EV3hjq8UObypn
	 G3tqcv5yYOlI2cR9KG9V6h2z5VcEWz6s18A4ow3Xo17xzYvxa9dO07sSwbSz7S8OBv
	 MecgT/sH7r72IlI2gQoYubPcjLwZ29Gp8bKLpLeRaokVfRxCvYijQ0uYHzQZ+7K1Nm
	 NsvY2aBvsy0FUQ9ybnh2wFAk5hGxtwgVjMdS8CGQ2F1goUVjH0h6mkM/yKvO2UZhTH
	 zbwzel/zEJur7Zvcfb6JCGLb47cK/2qCplCsqiLPrsF2/zHyWSFeQ+bceXutjwartD
	 hnUrNOR7+1qgWApa1nDMz8OysFjKSA1bEA4KX0ol5TqdffMe14zfPzJhybuPqXH3Wy
	 t3iB8NZyKL4sSNx6iwj0U6juCMEs+C0/53ogM0saGKh3AlnO6+nBTLBnPyceeHydGL
	 ocDx/MUs6lySjvDVmdZV7C10RAGnoXRv2XQ/OFJHcJGT+UCWeqDLXg0EK20aSEjOKI
	 FGfO09wshqXG7Rqph3gVFCjM=
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-42b2ffe9335so6336863f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:04:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763535885; x=1764140685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HCDUZaE5+206zSZomo9Fg7tLxJqm77Cnmdl1n2fzVyI=;
        b=lXQKC/HkgXxr3dEKnveHAPpeTvsymw5SBNCd52Fuf+0TLABGCZko74bUHAwvVnpzN0
         e9iP66jt6g0ambPY45yjHuDxYcXWAoIS1CdMFBE8iwAJHv4HNKBUzIV+4zVDxMW7MQKS
         tjPP48GDkegsqoAeBOwPbpYpev0Ivl8I+RCd3r4s/mcL0SyB0zUGnAeOiGKi8dkJqcAW
         HZt7WdzoKkf5NSOnt5U/8+aVf9tED4UBf3BAxw0nGwy2KgFPUKPJsxpIfjK7HrAgioO3
         TEiHsX5+sxs1TtsGcFqwIFo7qKxNwDbvTxgrBfpY0V8MGXNkGYzq4x/H0fYiKkk0FJBK
         X9fw==
X-Forwarded-Encrypted: i=1; AJvYcCUYgxWQn9g6hgyJ+UJ4U2OI7wAvJFiUqb5Yuy5Z9UVJDt6jlwnW1VB/SmfWb9CT38wAKBX9tFq2d/7p@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/PAOdrk6dHV0r9gzQDEp6bT9TA1PFMiioZLYPxRz68i1OdveY
	0imj3aQ3BnoT8yME2ZT5bXDwbp0lAI3DjmBrbzgwpUBliAiCmqkehwGmMObEiApG9ILvjsRRFsX
	wlh4kAPnPRETV6O1Zs5/A6IKxjbxlohQkJXx470yci7ebmRaOebLQrB3rNQ5fhC/K+y3VPAff15
	296ts=
X-Gm-Gg: ASbGncsXcwBlzr2ZvpFeEB1YprbZjDuXbfEuZshrxROyj5/moZFmYKFm5hXmQlEK69Y
	Ah6JEgZUdQxy+TJPuIDq0OD8D4pSHBe4IU0cxMmyQzBWX7DC9Lld7EdwZGTGJmGVzGRBQ1Hw24Z
	ETZYpbGG6qA6Fscgv1i4fi1+78erdn7Rhzc+Ah7UDNyUlUwA1kPi1VQN1Lda4oWAYZUWhlNj5CC
	eMZ70EUDFSudMJsMstBIzeN5Ypj+Z6/f9fMOYbtkShVU8a5MNYr0oKk3j4ecgnylsPAxBd3mLYP
	nvwZNBJ4XuDn3lh1TZOibPrUYDcLyFmxR1vsozJlFMV9jCo3b20mkEco/bNyQcmIFed4H7BJNs3
	kuNd0BYfFZS2tJSQ309fKkMAOXvQAxi5XpelrBc/ZP/npAh9lq+jgCXHaQEwR9hbUtO50tJB+p8
	zbeOrBNMA=
X-Received: by 2002:a5d:64c5:0:b0:42b:47da:c316 with SMTP id ffacd0b85a97d-42b5934afdfmr17476422f8f.26.1763535884669;
        Tue, 18 Nov 2025 23:04:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEqVppj0kaC1T4AK8/+ki8hXQuFnAQjHrtuYAj2Vyhso+rWSDHbQHj+3SMP9d2Ef4b6qHHLeA==
X-Received: by 2002:a5d:64c5:0:b0:42b:47da:c316 with SMTP id ffacd0b85a97d-42b5934afdfmr17476387f8f.26.1763535884152;
        Tue, 18 Nov 2025 23:04:44 -0800 (PST)
Received: from [192.168.123.154] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e85cc0sm37190082f8f.17.2025.11.18.23.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 23:04:43 -0800 (PST)
Message-ID: <1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com>
Date: Wed, 19 Nov 2025 08:04:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
To: Conor Dooley <conor@kernel.org>, Hal Feng <hal.feng@starfivetech.com>
Cc: E Shattow <e@freeshell.de>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20251107095530.114775-1-hal.feng@starfivetech.com>
 <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com>
 <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9KyNK1n4i9FxbLor4HTQKqK8WKA2svjPVvKXihw_E+sg@mail.gmail.com>
 <4a55301a-ef7e-4b47-8151-621cfba36ddd@freeshell.de>
 <CAJM55Z-bRdNmnRZ7wi3PMOkzGYrxQEGk+7F67Pdu4WXwKmTjCQ@mail.gmail.com>
 <ZQ2PR01MB13075CDDEFC2F03C837E1B31E6C92@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <b33919e9-e100-4629-92cb-d1ec3dd756a7@freeshell.de>
 <ZQ2PR01MB1307DADE17FFEFCE70C3F391E6D62@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <20251118-throwing-marina-14a87d65465a@spud>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251118-throwing-marina-14a87d65465a@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/25 00:10, Conor Dooley wrote:
> On Tue, Nov 18, 2025 at 02:12:58AM +0000, Hal Feng wrote:
>>> All,
>>>
>>> I repeat that the suggestion was made months ago (by Hal) to split out the
>>> OPP tables per-board from the period of time when I was complaining about
>>> 1.5GHz JH-7110 operation pushing TDP into over-temperature thermal limit
>>> on Milk-V Mars CM SoM.
>>>
>>> Whether or not JH7110S is a new compatible should follow precedence in
>>> Linux development. JH-7110S is evidently the same tape-out as JH-7110 and
>>> however you deal with that in Linux is the appropriate way to deal with that
>>> here. Selection of OPP table for correct operation will be determined by
>>> bootloader, where, it is demonstrated by patch series sent to U-Boot
>>> upstream to be selected ** per-board ** based on EEPROM content as if it
>>> was any other JH-7110 board deciding dts based on EEPROM content. Given
>>> that it is the same tape-out I do not find a valid justification for a new
>>> compatible in the stack of adjacent software besides going along with some
>>> kind of marketing-driven answer about whether or not this is a new SoC.
>>>
>>> What I care about now is that the VisionFive 2 Lite series is in good enough
>>> shape and there's a possibility to act on this months-old suggestion to split out
>>> the OPP tables which as we have confirmed the JH7110S is the same SoC as
>>> JH7110 it makes a lot of sense to do.
>>>
>>> How is it supposed to work for binned silicon in Linux?
>>
>> Hi, Conor,  Emil,
>>
>> What do you think about this? Hope to hear from you.
> 
> Can someone just give me a yes/no question out of this thread? I'm not
> really immediately sure what's being asked of me. What exactly do you
> want to do with the opp-tables? "Split out" isn't super clear. Does that
> mean into board files? I am guessing it does, since you're saying that a
> particular board cannot support the 1.5 GHz mode. It's not unusual
> though to use delete node for unsupported opp-table entries, could that
> be done instead?
> 
> FWIW, this weekend is -rc7, so I won't be applying any new material
> after that.
> 

There was agreement that the JH7110 and JH7110S need different operating 
points. This is realized via the different includes for the VisionFive 2 
Lite boards and the other boards.

Support for the new compatible string "starfive,jh7110s" used by the 
VisionFive 2 Lite is already implemented in OpenSBI where it is needed 
for platform support (specifically reboot). It is also used in tag 
next-20251119 in drivers/cpufreq/cpufreq-dt-platdev.c. There is no 
technical need to role this back.

The changes in OpenSBI and the cpu frequency driver could have been 
avoided by using

compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s", 
"starfive,jh7110"

to indicate that JH7110s is just a variety of JH7110. This also would 
match the best practice example in Documentation/devicetree/usage-model.rst:

     compatible = "ti,omap3-beagleboard", "ti,omap3450", "ti,omap3";

I guess we could add that third compatible value in a later patch.

As U-Boot uses the Linux device-trees too, I have built U-Boot with the 
updated device-trees and had no problem to boot all supported JH7110 and 
JH7110S devices including the StarFive VisionFive 2 Lite.

A bootph-pre-ram property for booting from SD-card that was already 
missing before the series can be added via a separate patch.

I think we should go ahead as is.

Best regards

Heinrich

