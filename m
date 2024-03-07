Return-Path: <devicetree+bounces-49024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A6E874AF4
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 10:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 851C41F2AA56
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 09:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6DCA83CA6;
	Thu,  7 Mar 2024 09:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lo2branN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137DE83A0A
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 09:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709804172; cv=none; b=neKApC8p8UFmjF/ycWQ46LsLHfOQkI9pOzNDWX41gup26ZIFS2G/KG5CkYpNN56h1s784gmKsEhjxUSXdGEdfskg78a9oZZllvZN3ohJ0vQxNp0i5IHQprbhJZK377qUeCAilmlU8cTWHl7P69+lGkA2abwWwGd4vNEnwcg3NlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709804172; c=relaxed/simple;
	bh=Sv+hrVvMP8lrgliViobXyqjxjXXmu59FV2vWqkOA9YI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=emKGUsqlsWwYylVYaZvzGxm4dPvre+c0LpKmGnySVEYkCpVB1IEML7Ml/hwRErLMOQDUxp0LG3/rha88OcjnyyRsYIAlxds5GSRCsLF//3b2V+/9nW8RcJEMfO061SMRHJtjodpbNbsmMeqkyebqpT8XrNzZzquFbjtGXUpmjew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lo2branN; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-566adfeced4so633401a12.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 01:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709804168; x=1710408968; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sv+hrVvMP8lrgliViobXyqjxjXXmu59FV2vWqkOA9YI=;
        b=lo2branNqgorUlfnruyEB5j5CE7hgaaxOzHKroMaZ25pmrp/UjqoMr3ssbu2I3/jFt
         WcKmP/iQ8YZiiN44h/N2/hPCjCpdmPRsrwtYjSQSGKhJ/jeHvic9B49k2BVbHuNskk8z
         R/JLUgyK4o2+LKnLO6ScEnu8r5JkET3dx1Zb1tNhJ976DQKF+kEE3rFTVsELuEK/i+SP
         crWxui3p5vrKLtU9jtrxBId6Cd2kmY0rSO5lCTrH7FoRJAq8xJB89Ipl1fbVaZLRIdf6
         qIOo9CsuOqCZHhgSuyfSn+lE2nCebzYSLgnHX9M7332RQJ/5ByxHwHnJIwvHZaBl38Lp
         0iwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709804168; x=1710408968;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sv+hrVvMP8lrgliViobXyqjxjXXmu59FV2vWqkOA9YI=;
        b=lwxB6PeND6/s3HlW7XlHqZ5CatZAE2nuRMTrQCnDVg3MvU9TqN1Yz4rQRCVkCPRf/6
         wu5VZ/zfTo5NxTQMro5JJKXwn7xX4gqXxORrMKIgpPe5MFneb5dd6zP0HdMxBGx5Ng9g
         qmkGPhbSwsZ819Sm1qD4TmnOjrY9dImAwUlofbji7AWV71eKyMwrhomzujh8tPR8hJYk
         lCQPbVg/GdW0p+BQ5RGWMrWZRtg+c6d2OVw1LMFZnJgSJLc53zMZPoMYnJDweO1AwOB1
         oKevn526g0PzxFB06VZX+4S8zI9Nc6UmNSDnslbjzG8qNwNtnXySY6sNmWoP3ustLL1M
         jXag==
X-Forwarded-Encrypted: i=1; AJvYcCWmrxrde7pVqvLCGvTbziiHkpKX3a/y6mh1x4eV5B/FgWImrH3I+4J6oN1atJ+f537WhWerZW7WTSjthX4c30+Ljlm/pnqAc0coFQ==
X-Gm-Message-State: AOJu0Yyk/PhL0ihOMyMq552fXLVBkm+YnCiqzmBatrG6c8DkvLBvkxjG
	5c0YNutSA7Ew82DQZyhfJvwh5ShJLBMHaxPvGYYAuiPVvvfSN4AKL8x7C/fh870=
X-Google-Smtp-Source: AGHT+IHzujfZSL78Cu+wOI2BPQz4CPJTBG6VyJczb2gVf+PDEZiN/9ssmKT/dU6xj1pXirYhHe6kGQ==
X-Received: by 2002:a50:cbcd:0:b0:566:de7:ac4a with SMTP id l13-20020a50cbcd000000b005660de7ac4amr12116575edi.6.1709804168341;
        Thu, 07 Mar 2024 01:36:08 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id c6-20020a056402100600b0056536eed484sm7883794edu.35.2024.03.07.01.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Mar 2024 01:36:08 -0800 (PST)
Message-ID: <fc178bde-f95d-4614-80b8-1cfd61431298@baylibre.com>
Date: Thu, 7 Mar 2024 10:36:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/14] pinctrl: pinctrl-tps6594: Add TPS65224 PMIC
 pinctrl and GPIO
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linus.walleij@linaro.org
Cc: arnd@arndb.de, broonie@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org, kristo@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, lee@kernel.org, lgirdwood@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, m.nirmaladevi@ltts.com, nm@ti.com,
 robh+dt@kernel.org, vigneshr@ti.com
References: <CACRpkdZzTheR=+=in7RYTFM2dquEPmGDudB7n1zoiUU4B1UCVg@mail.gmail.com>
 <20240307091925.171679-1-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240307091925.171679-1-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/7/24 10:19, Bhargav Raviprakash wrote:
> Hi,
>
> On Thu, 29 Feb 2024 14:24:16 +0100, Linus Walleij wrote:
>> On Fri, Feb 23, 2024 at 10:37 AM Bhargav Raviprakash <bhargav.r@ltts.com> wrote:
>>
>>> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>>>
>>> Add support for TPS65224 pinctrl and GPIOs to TPS6594 driver as they
>>> have significant functional overlap.
>>> TPS65224 PMIC has 6 GPIOS which can be configured as GPIO or other
>>> dedicated device functions.
>>>
>>> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>>> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
>> Acked-by: Linus Walleij <linus.walleij@linaro.org>
>>
>> Is this something I can just merge to the pin control tree, or does it
>> need to be applied in lockstep with the other patches?
>>
>> Yours,
>> Linus Walleij
> These patches need NOT be applied in lockstep with other patches.
>
> Regards,
> Bhargav

Only MFD patches will need to be applied before.

Julien


