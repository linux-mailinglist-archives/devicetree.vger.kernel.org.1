Return-Path: <devicetree+bounces-13181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E97DCC93
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 13:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49F0A1C20BB2
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 12:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5324A1D553;
	Tue, 31 Oct 2023 12:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CdEf+klD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B361DA26
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 12:07:54 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE961D75;
	Tue, 31 Oct 2023 05:07:49 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507c8316abcso7891602e87.1;
        Tue, 31 Oct 2023 05:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698754068; x=1699358868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lUCtZhSY5oV6l43Ls3OIhFz4C70yenlnLI2HL0boR8w=;
        b=CdEf+klDPPih3LbR4F0laHzcTUjYmEon2jfF4zCHuBATDn8/MIE+ddP/xrvkxdO07v
         bh46ususLcoeiLtQjtrHZiPUIwzeJnAmkyumeED6mM5TkifxDtHy5gYk59vyiM7oBvLu
         7Vu3iT04nge73gHhJGOcfCibORfr7cpx1INPXQPq++Np7SFPnh4Q43FqJHL4Xs4zaDPC
         a5jMWSEZPlyyGaKDlJFpV1I4RRWNDcW+1+NetJr13ED18Hw6k42sCx0stKmftajTQx08
         GCIzSDSKTHHJ584Y7BRkohQwZtWk75yTuFnZlg8ofA/y0GtD2b6gLUhLjURBB8hOz1SU
         AKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698754068; x=1699358868;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lUCtZhSY5oV6l43Ls3OIhFz4C70yenlnLI2HL0boR8w=;
        b=jA88ALjTCCQn7mJ0W9gARs2jzCrIEYT0BvqpGmyhpC5qJYcCliluPdjNQ+AvaaXees
         Jdf5eySVLg4nzz5V5zO3ev2P40ydo7rZr5fodzrvZ6vMrTSP8ZeWfVoacZPGflo0KCh0
         pOLUMdQkBHnm0RxmQ1Fuw5lxcchlpA3ycYC9NxhmjuOlR/tU4uQ7TxGECSJHc6JWlAr0
         e8H6NrvA4K7yd8D7Od516WKRhEG9JyNImlb+6EL77Dzi/d+qTxBh97LJ+sTNW28nVbhy
         ie1NmwsSM3fPbSck51RttmKpK0pJGEKW/dMoJNTt2ysoc3lv9ooAkSnFC9pBp98Hqhhf
         LJlA==
X-Gm-Message-State: AOJu0YwQQa+rwZmTpSV56WkWfmGPThuTUeCzZC0JVXj4xevWS2QSDDlj
	AjQUjjQ1ps+VQGAKsVC2Yk4=
X-Google-Smtp-Source: AGHT+IF1y+hM4gKBDkSt+18SyrZ3a0rfAWa75K3VyYXz9chHkGngHoR/VKfMsaKVByMWS4ytLwpBYA==
X-Received: by 2002:ac2:53ab:0:b0:507:ce2f:8f0c with SMTP id j11-20020ac253ab000000b00507ce2f8f0cmr9356349lfh.35.1698754067779;
        Tue, 31 Oct 2023 05:07:47 -0700 (PDT)
Received: from ?IPV6:2001:14ba:16f8:1500::1? (dc78bmyyyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:16f8:1500::1])
        by smtp.gmail.com with ESMTPSA id v17-20020ac25591000000b00503189d8b8csm190149lfg.198.2023.10.31.05.07.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 05:07:47 -0700 (PDT)
Message-ID: <b01930d6-5bec-496c-89de-6cf6d178c860@gmail.com>
Date: Tue, 31 Oct 2023 14:07:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US, en-GB
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
 Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Gazzillo <paul@pgazz.com>,
 Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <20231028162025.4259f1cc@jic23-huawei>
 <84d7c283-e8e5-4c98-835c-fe3f6ff94f4b@gmail.com>
 <6a697c62-6a7c-4b31-bc8e-10f40db0363d@gmail.com>
 <d528b45c-123d-4ef7-b110-7efbfef91bc5@gmail.com>
 <ZUDZIEY_uTVMHh3C@smile.fi.intel.com>
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <ZUDZIEY_uTVMHh3C@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/31/23 12:38, Andy Shevchenko wrote:
> On Tue, Oct 31, 2023 at 09:11:37AM +0200, Matti Vaittinen wrote:
>> On 10/30/23 12:21, Matti Vaittinen wrote:
>>> On 10/29/23 17:51, Matti Vaittinen wrote:
>>>> On 10/28/23 18:20, Jonathan Cameron wrote:
> 
> ...
> 
>> 	tmp = gts->max_scale;
>>
>> 	rem = do_div(tmp, total_gain);
>> 	if (total_gain > 1 && rem >= total_gain / 2)
>> 		tmp += 1ULL;
> 
> ...which is NIH DIV_ROUND_CLOSEST_ULL()

There is a difference though. The DIV_ROUND_CLOSEST_ULL() does

tmp + total_gain / 2;

before division - which in theory may overflow.

Yours,
	-- Matti

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~


