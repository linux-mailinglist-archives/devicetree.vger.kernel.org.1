Return-Path: <devicetree+bounces-209396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EEDB36D76
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 17:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C03D346652C
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 15:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F41255E40;
	Tue, 26 Aug 2025 15:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="coB0yhpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2B226A1A4
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 15:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756221076; cv=none; b=gR5MzyGgTG2EX17DNBNtwBTn5lyRsheDGVt/dPw3+yIkGl2n7fHk6jD21lBczu5+KhUty5NEbzb92eESi9o2BVSPE+xiK6ciGcBubuBZyUDXv4p/3xrjGqGlY4VJ1aGl6LkwISwrF/GKZsHyNS7mlM8+3M08uTUc6yMuMmIb4U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756221076; c=relaxed/simple;
	bh=bmG0z1HOhbjPckrji2ukzQh8cHrzhC38DcEeXeKZCBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bE69DaVjI4DVbGZZk+3bzZfp/ffI0HbCKW004QO7u09tFsv5REZQqxJvLmt2ee2MIe6A9LKQAHlaj71amRDtZSMOAZ/z01S0xYSrkTZTEcR0P8u4qyFo0+Fo7hjB262jvaJVf+YESE6EJuFOstNgstSxkBSLz4YhVKbVMky/6Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=coB0yhpF; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-30ccea8a199so4599937fac.2
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 08:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756221071; x=1756825871; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hLrgdFzlBPbDYpPHO34xWxrjl479AfkvLq/ffp8ncz4=;
        b=coB0yhpFGSMHHG9xDJO5qN7a40tnTqfJP7Io6QU1NmaQP0+fSw/39GJcwwCTkMh/SJ
         ZqCLnJoxGR3TznokxxAxiqJ95Pu7eAG7Ue104avddGF4oPACkHcW0PHy81c12qAWVqEQ
         vVyThwKBb2zzCL9Tw+zcY9/eVdorr2oTjplg7UbHckJXbasIJp2aebq8XDozM3xShXCx
         cdALq5eMpw76k72mSAvcuuUZJ1zMIeImjvBg+n0EWku7H6hFCc7kB1du7NJ7BJzR3r1a
         Evk/5VAvx7r5vMZWG6AkY2A4Q99F8rqYBJO4BSwJo64MuHLBPwjZ9zfYLi5SYJog0vc7
         iyVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756221071; x=1756825871;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hLrgdFzlBPbDYpPHO34xWxrjl479AfkvLq/ffp8ncz4=;
        b=Xymk/I5+XW7AyscXC+EHTg0VkK5MGNTv5QeTpsdb3vrH0d41x53xwbvLPXwyrHbRz1
         aHfOii41CQ17/Riu7CQ59Rnf2ESrnOVDM+eSLi2jMR3bH8OcJ6C75ir+PiX5B6vf99dN
         cNtmqM1qHHNOE1sgtUjKZyhEOdPDVif2vJcnDyevBB56OUa3Acku/4yUmxBbG0bPxLEZ
         WZATOcwITzxyAba7n/NhUxrOmF8XRO1Zmj6tXZXguDk/75feHh7x78e9Ws5fu+WVs9xd
         WrA7fk0UnMRtcUqpmrtezkOR3qIqtsRea/Tpe4VfgLpBqK/aB1fdFUTovJ9c5Ubr2bDH
         MkYg==
X-Forwarded-Encrypted: i=1; AJvYcCX3fCe61UQnxKHUQaqxeYbl5WXTCz9+UwgMsp64Qyz7Hy4vDWwnCUV8YlDRF0fMyKbo6SfmPn/ph2wZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0+18c3UEgEFz/QuxzQf9pFuzGD+vu4azeh7Kx7hv2IhPckvfK
	UUWfVnxjUGEKEkc0uoRFFGUbZXZ/viBbqUoHISonw4M4EDOmzzjrLUguIg66NasK+BM=
X-Gm-Gg: ASbGncugDsZVJaobCH9nVvpaoW+f5I7P4pZUrByESGwT1rWnG8hY426Rx1u+/7GSElw
	MUJc0rJCNKV6dI/ESaX6FLoCYWnySs7rT68LDpD8ohuYsimhe3W8g84TyRT3MAkHuMJf7rIMfmP
	rPoTi5/BtGQLnkXZRcEMhqnb3YXARvWHGDVF1kdeTBvwWt415NO61uLLBAGe1XJl2WR9UPOzll+
	lBcavnjfBK3OAZDvwxI9HHmXtmibYnB8PhS/v1mElgXTELHY/HTTCQ1Ygr4985UobTT/sj2YMA0
	fO6VdSgGU7hnqa/021UuQegdk7PKMsycWds8SRCgWkXAExCG0RvCYVRToP95LpgpoB2Bq0OxKjH
	wN7qE6TXpTdMgxl9M9Bpgpi0X91PD/bJCH4Urd80rmwq4MlssHSZh7a4xRVb06q3m1B1gi1EleN
	Y=
X-Google-Smtp-Source: AGHT+IHPLPVoTYuyWUPPqegkgvkKkErW94mqeIgVxNaivppxvK7+bTtUe3engtClxePal6B2UlZO9g==
X-Received: by 2002:a05:6870:32d4:b0:302:5dba:5ae0 with SMTP id 586e51a60fabf-314dcb65a74mr7496856fac.20.1756221070609;
        Tue, 26 Aug 2025 08:11:10 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb? ([2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7450e4738b8sm2368838a34.32.2025.08.26.08.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 08:11:10 -0700 (PDT)
Message-ID: <181dafaa-ec04-43cd-b0a4-208da8cd89e9@baylibre.com>
Date: Tue, 26 Aug 2025 10:11:09 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] iio: adc: ad7124: add clock output support
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250825-iio-adc-ad7124-proper-clock-support-v2-0-4dcff9db6b35@baylibre.com>
 <20250825-iio-adc-ad7124-proper-clock-support-v2-4-4dcff9db6b35@baylibre.com>
 <CAHp75VeAMNp8gARndVRnh3EwrTb65MNFXL7pCThR+Ghd_+yHDw@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CAHp75VeAMNp8gARndVRnh3EwrTb65MNFXL7pCThR+Ghd_+yHDw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 8/26/25 3:13 AM, Andy Shevchenko wrote:
> On Tue, Aug 26, 2025 at 1:55 AM David Lechner <dlechner@baylibre.com> wrote:
>>
>> Add support for the AD7124's internal clock output. If the #clock-cells
>> property is present, turn on the internal clock output during probe.
>>
>> If both the clocks and #clock-names properties are present (not allowed
>> by devicetree bindings), assume that an external clock is being used so
>> that we don't accidentally have two outputs fighting each other.
> 
> ...
> 
>>  static const int ad7124_master_clk_freq_hz[3] = {
>> -       [AD7124_LOW_POWER] = 76800,
>> -       [AD7124_MID_POWER] = 153600,
>> -       [AD7124_FULL_POWER] = 614400,
>> +       [AD7124_LOW_POWER] = AD7124_INT_CLK_HZ / 8,
>> +       [AD7124_MID_POWER] = AD7124_INT_CLK_HZ / 4,
>> +       [AD7124_FULL_POWER] = AD7124_INT_CLK_HZ,
> 
> Perhaps / 1 ?

Seems redundant.

> 
>>  };
> 
> ...
> 
>> +               const char *name __free(kfree) = kasprintf(GFP_KERNEL, "%s-clk",
>> +                       fwnode_get_name(dev_fwnode(dev)));
> 
> What's wrong with the %pfwP specifier?

I didn't know about it.

> 
>> +               if (!name)
>> +                       return -ENOMEM;
> 


