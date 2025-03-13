Return-Path: <devicetree+bounces-157110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5976EA5EDBE
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 09:15:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B494B3BA3EF
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 08:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7588260383;
	Thu, 13 Mar 2025 08:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="m0BaHy0M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105427E792
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 08:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741853714; cv=none; b=iDrHewlxE6eco8FmqJydvZjmDjdbxLtzpZu89EiQpbplT67quMxYahGmluLVS6q5QjnQmLLS/DBIKfjQKyU4a49yH0ILDL7JWbACg5KLJ4Faf2FdnFaoVfC+VW3aVNFE/PAdZtSyu4DtzUZwExpamrgTWIZAp4Ou2W1epXcl7Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741853714; c=relaxed/simple;
	bh=Yc19Zr46Q9hoNsGqw5wHAAmH//beAVYed1TFdUX6soc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UX5z5m+g3tW9RiVUiTkbE1Z1vZpaAiKWCZXlbYDXPSGbuTxqC36cvgP82+bkxTn6lmfBBKfpb1dlTKbMmh6kjFJvjfogun7wFM8GpuRM9lwf4wFhMnZAC9bPSTQkGCfsZMQONoRBCOaTMaMUJbMdXZvXtpUFXa+kHlGwqdN9w74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=m0BaHy0M; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-85b40a5120eso20922339f.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 01:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741853711; x=1742458511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8zp8y94UhZUEACB7TqzzlRpM4uzvhufLGfU6PVFDtss=;
        b=m0BaHy0Mo9CRlnDo7onzOJRWazZqMxVSORIL5UYN+hVw4czImvi6C5jFMOEN5SsnL+
         kqptCFUkdW5mnHIWPt6yj6sKKmDrWeBsp5PpvHt/cTB4ycr2Y3OexYVgOMRTu6dOYOI9
         u9ukLPHRCtYO5MMPI4toM0PuK8kUbbV2Gg4gFpMWOkG4ouhJU1Wd6g+kIhMS1GGy3lwy
         V6LfrQAXdW/52lXrsPb8/mVMk8yJmhODqhhOlKcPbjEHfbgilMHIlkF5dUZ3qOEVqeYa
         hmhmNSIuiEQje2SK89mHjnjFBnB90i3wo6msTeujav0OlMDjnlltJu5YGjjp5N39CYOy
         bMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741853711; x=1742458511;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8zp8y94UhZUEACB7TqzzlRpM4uzvhufLGfU6PVFDtss=;
        b=ufrqYMDFEUe1nX4Phdb7tdcmToWNFDiT+RaNy/PelJM4yU12S3jvH0cZ0y+CGubJom
         PZnZi84Oabl81+9IhzR8uZ8sYPtyw1i/eLPjd7wzLHGWskJLGH0JKFmxR62sZDyRfo2+
         2KRzgO9Th+dj6szWm/PijJtIw+Tis3goyPeSZjzFSnwhkbXobHRRVhUFdlII/3sq70K0
         qL6Iyf/4MiMfEN7voMNX+dcag7/ZLvHcHggAY1c+9pSi/y5DulYM9LnBHjV1eyeNizny
         4OC1cAPNRk1kE84WsVVY9cV13ZqzdJYJIlq+u4QVIgn8xc1BkSe/hizE1+qqFlVqTr+5
         mrEQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0T1Gf7Y/Fy6b9MSn0EIawIMgqB/2HBxvQnIlm5N8fQgn61kNQK39Dbb9twvJ4bECWbBvP2PhzYWZ4@vger.kernel.org
X-Gm-Message-State: AOJu0YxmL4M0oD4hP5Rd0Cj/k4NOnJzgeb6KFm5sVZqh95jVsUM57e9P
	9vyKKGya7OPZF7aFsCW/6qRU+2gMVvjokJd/wcWiOL+SaksgDq5oU/hok6epB4Y=
X-Gm-Gg: ASbGncuBSE/7oOUYZEIPsU0EwUzmRCDsVAtpK3HW+wRngRTWQWCEhndVqzOZcMbkiBA
	t29Nfn49nKz6N76faxwvnnfr9MppeLLOn/80aaIjNpiYcRiRfkCqFGcD3vo2f6uMfknaHQ6xjuf
	RIPxAYt6AazezXZEJ3JgIKmOfvcLgy+wBPwhM92X9a85kwI5nuXNHvzBNZF3vTORPBZcKR4+Unv
	cMrwJDVDhIaNR9vpMJnB35AUGux/vrQXC6XAWfIUHhcAhPcMkASqIkCZntfwxFpQxKGHhIeKEbL
	mfD+kk6uCVNSsedyevTEjm066XHRYBmBdwV+nHE8WJ+0PjwsnQsdbRoqsraVN/fJG60fZG4A
X-Google-Smtp-Source: AGHT+IEZzp8PPH96NPX1KFV4JopgGuWHkLcCnrS6Ve2nlvM2ZsgakuGkYSRd4eUdHSshmqdOMBXrfg==
X-Received: by 2002:a92:b710:0:b0:3d4:6ff4:260a with SMTP id e9e14a558f8ab-3d46ff428d9mr65574915ab.2.1741853710972;
        Thu, 13 Mar 2025 01:15:10 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.166])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d47a6475cfsm2559245ab.13.2025.03.13.01.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 01:15:10 -0700 (PDT)
Message-ID: <2b240ccb-e18b-49f1-ba15-7c7c6c647bcc@sifive.com>
Date: Thu, 13 Mar 2025 03:15:07 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] dt-bindings: riscv: Add SiFive HiFive Premier P550
 board
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Min Lin <linmin@eswincomputing.com>,
 Pritesh Patel <pritesh.patel@einfochips.com>, Yangyu Chen
 <cyy@cyyself.name>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Yu Chien Peter Lin <peterlin@andestech.com>,
 Charlie Jenkins <charlie@rivosinc.com>,
 Kanak Shilledar <kanakshilledar@gmail.com>,
 Darshan Prajapati <darshan.prajapati@einfochips.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Aradhya Bhatia <a-bhatia1@ti.com>, rafal@milecki.pl,
 Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250311073432.4068512-1-pinkesh.vaghela@einfochips.com>
 <20250311073432.4068512-5-pinkesh.vaghela@einfochips.com>
 <f6601929-3d1e-49ae-8120-c3005f99e57b@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <f6601929-3d1e-49ae-8120-c3005f99e57b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

On 2025-03-12 7:55 AM, Krzysztof Kozlowski wrote:
> On 11/03/2025 08:34, Pinkesh Vaghela wrote:
>> From: Pritesh Patel <pritesh.patel@einfochips.com>
>>
>> Add DT binding documentation for the ESWIN EIC7700 SoC and
>> HiFive Premier P550 Board
>>
>> Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
>> Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> 
> 
> This Rb tag appears everywhere, while this is a v1 and it was not given
> on the lists, so I want to be sure this was not some blank tag added to
> series because someone said "yeah, lgtm". Was it really review as in
> *reviewers statement of oversight*?

Yes, to be clear, the series has my:

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>

per the reviewer’s statement of oversight.

Regards,
Samuel

>> Signed-off-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
>> ---
> ..
> 
> 
>> +
>> +...
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 25c86f47353d..901d0e0adb25 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -8572,6 +8572,12 @@ L:	linux-can@vger.kernel.org
>>  S:	Maintained
>>  F:	drivers/net/can/usb/esd_usb.c
>>  
>> +ESWIN DEVICETREES
>> +M:	Min Lin <linmin@eswincomputing.com>
>> +M:	Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
>> +M:	Pritesh Patel <pritesh.patel@einfochips.com>
>> +S:	Maintained
> 
> If you add this entry here, then add the path for the eswin binding.
> 
> Best regards,
> Krzysztof


