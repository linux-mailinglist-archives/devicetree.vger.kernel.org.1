Return-Path: <devicetree+bounces-114424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CAC9AB979
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 00:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F514284560
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 22:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB8151CDA31;
	Tue, 22 Oct 2024 22:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZyexL6t0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40421CCEED
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 22:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729636132; cv=none; b=bNL0OFIEXkXJbPmacOXhGey46JyOJijqPcfch08vnTv89bDIM4VM9wcG7TePQ6HA6+fYRq8tynfuKZqW96O2NQQr9c02ChCFpInUq0AWKjQo9oyAgBbALqh4KgbpycA2h3TCdLcquV4U9KVhpbNAZj/qsGJaF4vNidevNTJZF/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729636132; c=relaxed/simple;
	bh=iGY+RCSHBD6wL6JNcYAazeLM4Xjl5L1gAi6U9Jl6vNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pXb4afy+p1yYqNQfIKSBLeXxKEFklcp2L84fxqpJy8yjIVBe3LUKISFTZRyLyK1UU+jtROREnOnaDWGLWx6DOpLorZ7tG6kgvL8MiBJ28gGNdWLy1qmTZEC5B0Sa7XrObVcNGD/lAp4tWQPBoeB2/hRijdz93NURqQzVca60CfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZyexL6t0; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-718066adb47so3507069a34.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 15:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729636129; x=1730240929; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xFCCeAvPeqUghAEXu6ImvnShl5xo3a21P+QnN+rS1kw=;
        b=ZyexL6t0PYPLWtdnvPtD0ROowY4jZwM0Ezd7BVmOkrKpOvIVz5i1xNLdISGLiAfwaM
         mLC9Rz7A46GhoUUuErQyFDckKWhjLwej/z+Wp1MzoCTkOa7nIcoouRvRrt972zgMmBY8
         m+fn5PELh0AdkaYeEaDcybf7lUduArq64bU/vcfzRDsPhfbRgVenzyaW9kTGJiF7krDl
         P20FH48Wc9yUEpAsENh3xO7Us4vUhI45phKT8GJ3GMTpDdHP/+f1KE3gqqbqk4xpvl3+
         3OyPE+9E+loPk1/FvoFiP9yQASf9k48upRVYaua+dHuDsb+sWwhySJjFAod2ULzixynF
         3KjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729636129; x=1730240929;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xFCCeAvPeqUghAEXu6ImvnShl5xo3a21P+QnN+rS1kw=;
        b=CWzTwKmO6R9DuDEMTi+FL5V42tYNcA8qWRMkAVFJGcn98ri0VDO1AIJtNV1AfxJoC9
         ZqDELPpANX0Uz0FNZZ0wbIgRhIkLMr+whQvYmjio2E32hhL48bMvhhld27eHGY0v57UD
         IGfurq2oyZwvy6+j9DeVAZzFTvAuzpZrrhLLB9n4u+Zmsd09OFHVaqgaBwY++4vjAnI8
         hPWUjBL8JYvrFskG5NdCyuyo5wS3RXWoh+KMTY2g+C4ckR2rFnKD+NuyV4cWYjKx+5+B
         hMmRDJb8xcR3dNR5PGepUxNkTF4ozLVHVKPIEZvh4woN2CmlH36V5D1PBZuG5F7UAZ3T
         E7OA==
X-Forwarded-Encrypted: i=1; AJvYcCUrak2C6varnsOS5tuNVxn9Djjurd3AKN0BsqrbdU578vbYwcMrDMEB9QtYt77TDV/0wrbmA8whwD8e@vger.kernel.org
X-Gm-Message-State: AOJu0Yxke81mBvNtz5rVb4nBlqoRzGHGl3GZpadgSz2dY99sID7pXWKt
	cndIS8SwLMAl9UlZdk71wtDQup4KNfqMzqq9Izi6ylUeL3YxTJ4phKtxYABsrI8=
X-Google-Smtp-Source: AGHT+IF5mcNdyQFGzKonGK31BzE89ULqNpP3zj6vhFzYDm2khTM1Kxs+zbZJgi/cGr96wp91oL9EFQ==
X-Received: by 2002:a05:6830:6995:b0:710:f3cb:5b9d with SMTP id 46e09a7af769-7184b42bc5bmr812319a34.24.1729636129027;
        Tue, 22 Oct 2024 15:28:49 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7182eb50cd4sm1448774a34.38.2024.10.22.15.28.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2024 15:28:48 -0700 (PDT)
Message-ID: <0b478ed2-dd1e-4014-8501-2e1b50b473e3@baylibre.com>
Date: Tue, 22 Oct 2024 17:28:47 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] iio: adc: ad4851: add ad485x driver
To: Jonathan Cameron <jic23@kernel.org>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, nuno.sa@analog.com,
 conor+dt@kernel.org, ukleinek@kernel.org, dragos.bogdan@analog.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241018104210.51659-1-antoniu.miclaus@analog.com>
 <20241018104210.51659-6-antoniu.miclaus@analog.com>
 <20241019144912.697d9d29@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241019144912.697d9d29@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/19/24 8:49 AM, Jonathan Cameron wrote:
> On Fri, 18 Oct 2024 13:42:10 +0300
> Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:
> 
>> Add support for the AD485X a fully buffered, 8-channel simultaneous
>> sampling, 16/20-bit, 1 MSPS data acquisition system (DAS) with
>> differential, wide common-mode range inputs.
>>
>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> 
> A few minor things from me that I could fix whilst applying,
> but David gave a much more detailed review of v3, so I'll wait
> for his feedback on this.  I haven't dug into datasheets much and
> may well have missed other things.
> 
Many of my review comments were not addressed at all. :-(

Plus one addressed incorrectly (rounding PWM period down instead
of the suggested rounding up).

I still have major concerns about userspace-facing things like the
questionable use of the offset attribute and fixing how oversampling
interacts with the scan_type.

