Return-Path: <devicetree+bounces-100085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BD796C19E
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11FAB1F2A74E
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428B91DCB1A;
	Wed,  4 Sep 2024 15:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lwjp0HTV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBB21DCB12
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 15:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725462049; cv=none; b=m2DPHPEhUiLFmVKJrDTC7I361YYbl719r39hnsdnJV2qAxWU6SJKrgWS+4L/JCgD0Pm3wg69aa/ksl5WkX8ku3qQah3QKkGyL7F862HoLiUYzqVKMVjIULbOAgDQhoVdOkbDVs2rqCHYggM9wQ31sGmJUbkfuTT/7/ZB/E1G7kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725462049; c=relaxed/simple;
	bh=mpaSKPKFI7tkspiAnYFGKulU+AEB1UnWK48DA9f4sMo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bk9pQlMBwvH3Q2A8j6PSwoYJzBVQuEn2/28PpL+aWngxDZ8M3QzuxnzTv1MRNQC1mnC+WHaONwveFZoj5YNvnZpFWeg+dR6lDIa/sN0KT8zJEQ5Zj77Py86KdKQZyrIP22JZmgDmrJcOuPlFD4kPvvYRAk03tp6N9oLqVEMvhaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lwjp0HTV; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7094641d4e6so2636425a34.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 08:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725462045; x=1726066845; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Q3wt1eu/qt5c++yS22ZxXYczo7g4ms6we1XeaOrheI=;
        b=lwjp0HTV4fIyHVeBm99jf8//Ujos/vlfESi/Of4xSX+s3DAcdnY/3a3Gw6h7U1F9Em
         17h96TEXT1KW4kFoRaVttDVm3l9DgF3XRFH748PEMApUlIFwyv6HPGGIfFAf0ghkjbpl
         gT0tTRo4wp7AyAPLKcZfL4G1xMNxbwymTDO6F0+HoH6tRvb74Q9ep8QpOZKI9CZ4Q0vh
         FL/sK5CHP3hLZ+75GISinKSRUbRiFABfyCUUgOyGeD45QH8bDHl2a8wwJQHV9D/vpeK+
         iPMJePEYj9aR7eM/O5JZ0v/4FCD+4S0YKR8MFjfnXYtzO7j0uhSd7NjZd2m/CkLO1btG
         lZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725462045; x=1726066845;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Q3wt1eu/qt5c++yS22ZxXYczo7g4ms6we1XeaOrheI=;
        b=QFpLfJ9UWpo0IVUGZLv3HjmE5FeO/UatWKWhDJUZdZjFFW3QLnoT3KtyuD6BbraJZf
         MtdUEuu7lUwPNCdupV5rENGAzvnyZxMI0Um+5bT7hZ4be4p6d4zdinL1tbuCQzOJBNmC
         ZV60d/Z/v0kU3oZ2oAEemDoyR5HsEybZWiBIveV2AnpO+sRuwXiNn78M+tEcCRAf9WAf
         Z35U0Qhp9Y0cUqWAmRQD8WKZL/mFNSccjVrJkoulNugQ20U8Dz/FSWTG7wCF4ZGawBfV
         f4EfeONDeQmcl/KdWvRTiipwpXe5g7vWxsdvJ67NAWiqX1fFETyazCrzl6WTQ0yWuOGX
         50fQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX29MeYU44/TpxO+/j3cpY/930iOnJAmedrIvC8PJ29Vu0woBAZHWvaqDcTEWuymrS5C9tGJ5sMeEL@vger.kernel.org
X-Gm-Message-State: AOJu0YxC1Um2wRQvDSCgTdCMsgcUTv150mfBtpYg+Tk4PoS4zhGaqbpl
	GFsbLTYj0+4WLbUFMXPG+wLopvjPc0qLqDCJtWtFRZ6sqc3yHKDTuTQ5XLra7HE=
X-Google-Smtp-Source: AGHT+IHmzGse6HO1ACq+epnsUcfoBMuqLbNt/vcRJ4ioIq1Zdys0uq813fa7U3aDwVCrwXTEeHW1wg==
X-Received: by 2002:a05:6830:4906:b0:709:48b3:7d91 with SMTP id 46e09a7af769-70f72b7a9efmr17607571a34.6.1725462044538;
        Wed, 04 Sep 2024 08:00:44 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c340bff7b6sm64592156d6.43.2024.09.04.08.00.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 08:00:44 -0700 (PDT)
Message-ID: <cc39bd44-b44e-48c9-b64f-5b7b9ec3faf3@baylibre.com>
Date: Wed, 4 Sep 2024 11:00:42 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] iio: adc: ad7625: add driver
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: kernel test robot <lkp@intel.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, David Lechner <dlechner@baylibre.com>,
 oe-kbuild-all@lists.linux.dev, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20240819-ad7625_r1-v3-2-75d5217c76b5@baylibre.com>
 <202408201520.lFtco3eF-lkp@intel.com>
 <7658aca4-a408-480c-98b6-4637bb86b5ad@baylibre.com>
 <mgsig2v65adwgfhofxk3snfbtibgjfeiqqj4iw5r2aquak22ve@3ssolag3ousl>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <mgsig2v65adwgfhofxk3snfbtibgjfeiqqj4iw5r2aquak22ve@3ssolag3ousl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2024-09-04 3:58 a.m., Uwe Kleine-König wrote:
> Hi Trevor,
>
> On Tue, Aug 20, 2024 at 05:07:27PM -0400, Trevor Gamblin wrote:
>> On 2024-08-20 3:19 a.m., kernel test robot wrote:
>>> Hi Trevor,
>>>
>>> kernel test robot noticed the following build errors:
>>>
>>> [auto build test ERROR on ac6a258892793f0a255fe7084ec2b612131c67fc]
>>>
>>> url:    https://github.com/intel-lab-lkp/linux/commits/Trevor-Gamblin/dt-bindings-iio-adc-add-AD762x-AD796x-ADCs/20240819-221425
>>> base:   ac6a258892793f0a255fe7084ec2b612131c67fc
>>> patch link:    https://lore.kernel.org/r/20240819-ad7625_r1-v3-2-75d5217c76b5%40baylibre.com
>>> patch subject: [PATCH v3 2/3] iio: adc: ad7625: add driver
>>> config: alpha-randconfig-r132-20240820 (https://download.01.org/0day-ci/archive/20240820/202408201520.lFtco3eF-lkp@intel.com/config)
>>> compiler: alpha-linux-gcc (GCC) 13.3.0
>>> reproduce: (https://download.01.org/0day-ci/archive/20240820/202408201520.lFtco3eF-lkp@intel.com/reproduce)
>> Seems to be a problem with missing static inline definitions in pwm.h if
>> CONFIG_PWM isn't set. I've replied to the relevant series on the PWM mailing
>> list and will add "select PWM" to Kconfig for this driver.
> I'm not a big fan of the dummy static inlines. It seems to be a somewhat
> subjective thing, but I think that usually if a driver makes use of PWM
> functions it doesn't work at all if CONFIG_PWM=n. Does your driver work
> with CONFIG_PWM=n? If not, even if the dummy inline was there, I'd
> recommend at least a

No, it won't build without pwm_round_waveform_might_sleep() and 
pwm_set_waveform_might_sleep(), which setting CONFIG_PWM=n seems to hide.

I'll add depends on PWM to the next round of the patch series.

Thanks!

>
> 	depends on PWM || COMPILE_TEST
>
> . (This is also the implicit recommendation to use "depends" and not
> "select". Currently all drivers needing PWM use "depends" and mixing
> yields strange effects in menuconfig.)
>
> Currently there is only a single driver that uses "depends on PWM ||
> COMPILE_TEST" (i.e. SENSORS_PWM_FAN). I already considered changing that
> to plain "depends on PWM" and get rid of the dummy defines. While I
> didn't tackle that one yet, I'd like to not introduce dummys for the new
> waveform functions. So I suggest you either stick to
>
> 	depends on PWM
>
> or try to convince me that these dummys are a good idea (and then
> probably use "... || COMPILE_TEST").
>
> Best regards
> Uwe

