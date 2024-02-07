Return-Path: <devicetree+bounces-39366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 341F084C5CF
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 08:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5A651F25248
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 07:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC5B0200A4;
	Wed,  7 Feb 2024 07:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NZ8kCEd/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67471F947
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 07:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707292249; cv=none; b=dbo/FLgFFgFtlqaBD/hbKijveRgGQxock/TFNMi6gDVsfyJtEmq/CVNXZHWwyYXSBGEJ1DiOnMVAnqfUGbQf98Ale2kNPafqcisxLiX5FLS9kvHaIA0W9TfV1hU3fIXqQCNngdVGb5+sLP+Ge2lj62W2cUAnThDozSnk11P55Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707292249; c=relaxed/simple;
	bh=x6KK4QkYkvOMVOs+K9M5jbzCwzwUWoBLH+sdqse1qIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VrdcnqznR83tzrl5m3ewp5xW4BTD8l7lzZyQrLlpcZgNRy2J50YcOCDVoAuhbWljXXdZBXKTIVN6XpC05oOOTr8fYvyg9nERhuaDFrKTvIpiGi4J4KtF+6iWOIHW8iaO0CUSeLOPJeVFkT6Z84E5Ox6AIGi+qRQ3Q6LkrNqiO/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NZ8kCEd/; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40fdc63f4feso2587425e9.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 23:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707292246; x=1707897046; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=scNYwzkSMzUIHctQWnXz0s40s03gWg3TFT3mJcCh9eI=;
        b=NZ8kCEd/iGHTaYgEf0bzEA/g6Bek27mXsPlIunNPpn74eu13iRxiUZONH1DRlLLw2L
         DXqOXjm09/7jIq1FZPO9OD6XLF0nTUB8dY68EHlMSa2TlOvogrnSWeaIexlRIqVdU6Ex
         LW7n81sZ2WbfsNwtPqUQvEUZ6SkAZQ00yda+xoUAAdD+sFVpTUls/V/Eua7icPIHrhCW
         GDQ3YDbtVRVFEhh/MuJpuM2LNJGK4zi/NO8w8TY6KTAWlUxgmX0M1HNxjosZAeTNIyqv
         8FDwLR+wZx3WwuifvIipbJyg8vNUf7EclqlgfsyKJUpJpXUOtTiTcMcT2lo9MTdChgJF
         aYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707292246; x=1707897046;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=scNYwzkSMzUIHctQWnXz0s40s03gWg3TFT3mJcCh9eI=;
        b=EGAcasp+XqnrVcWOKZvxAoo2umHgnwuOv1DtitmUolTNY54Dli8p8xU6ZUOskJ8zSu
         FMjuzbW1VMTSSzhruGwQ6tWdKBO2QgKaRwzF5JxbmeUx37xi0poAS9gTDINZLz0mEsjA
         /mt/FUtKJKBjX2F5TBp+SuS+MxD3ogLBfTl9zmluHHdoHgMWWztEJ3MOUV48LCHs5xfp
         JMxHSqM3CqaMBmtDCju+H7DsCiduUdxTLClmyXk1i+y4i4TyAzvsLv19lLUf4YrsmJpY
         qSB8rBhVNC38OqcgGwYGhkmsETiC3NL13PvFDqeCfRmf1MHGcnQGb7PVl1YRDKCKERxf
         kHvg==
X-Gm-Message-State: AOJu0Yx5JL7KKF9rsEBqZlOb7iZtHvd7SGGqRQeQcTPfyYwcDMfFGgk2
	21hGAiEz1rpTRX3XGG/j2DWBWdsGNfrvz+SKCWUtKrEVvtSHkmDSZTJZJTeorFE=
X-Google-Smtp-Source: AGHT+IHkIUmnUS1dfTW3vihBIy/8Rg4FAmON6JUFab2FY6bsdC0+Skiqilc1+aV+2gg2LKagT7r+Jg==
X-Received: by 2002:a05:600c:1e0c:b0:40f:dd70:14a with SMTP id ay12-20020a05600c1e0c00b0040fdd70014amr3813150wmb.39.1707292246036;
        Tue, 06 Feb 2024 23:50:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXqfJdUqb20V2kpe4MzbFFbYrCiUCYPfWkYVQD1qlm7dH/iyjUKEiDJWHnYhdp/SzM3W6FQLiMut7LaQ34z2CfrSmlgwd8JyuudJSOm9WqVT/j1qusCL8uZwWrzj3m9sqrYkt8OVMxiy2wloiP2zrMl4pdMH+9QO0/YcXDg0aWw/E3VUR5gKbq8Q9jyQJpqoxpdThYB1B2Q3TNgulhQBJrQliIiP85sUBkLrzbL/ukZXmh3bpzOJHUcV2UrolsvtCNwPJioCxzy0LcUzz37lGKcQMl9yncRPGK9osUw5Xh1QDAfmmDlCUEOMwTp6fRQQbgIFFLoP1ykZrV44tnsOIHI/tQ1ZxfoekpU++Cr4QhGSMyk5cfVBVhcd3swOzIanR5U+0zLg/ikVJuglNZNkTGJ4/azflVjO+UG166+2VA1g2CekCcJkdUh6ni/eohkY/oOfEjs2gQyAfeHwi2ayEQIoZqYdlx8a1DAd8yioC3XJD1Pc/2SNorrSXLIA+nfyMjlImfrlXQ3mjwjvlcRJC4k747dOgz3Q7dmQbi4/TNd6jUfDm1Cl2Tsf0d7
Received: from [192.168.0.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id l31-20020a05600c1d1f00b0040e3635ca65sm4354788wms.2.2024.02.06.23.50.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 23:50:45 -0800 (PST)
Message-ID: <1249bfa8-2a40-449a-897c-a862d3a8e65a@linaro.org>
Date: Wed, 7 Feb 2024 07:50:43 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] spi: s3c64xx: add support for google,gs101-spi
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org,
 krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com,
 linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, robh+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org
References: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
 <CAPLW+4kPib_3MJeGL3bHT__rLoJOS=GS+gNZUbZ0dpyey9E-Hg@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4kPib_3MJeGL3bHT__rLoJOS=GS+gNZUbZ0dpyey9E-Hg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 2/6/24 18:59, Sam Protsenko wrote:
> On Tue, Feb 6, 2024 at 2:52 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>> Depends on the simple cleanup patches from:
>> https://lore.kernel.org/linux-spi/20240205124513.447875-1-tudor.ambarus@linaro.org/
>>
>> A slightly different version of the google,gs101-spi support was sent at:
>> https://lore.kernel.org/linux-spi/20240125145007.748295-1-tudor.ambarus@linaro.org/
>>
>> Let's add support for gs101-spi so that I have a testing base for the
>> driver rework patches that will follow.
>>
>> Tudor Ambarus (4):
>>   spi: s3c64xx: explicitly include <linux/types.h>
>>   spi: dt-bindings: samsung: add google,gs101-spi compatible
>>   spi: s3c64xx: add s3c64xx_iowrite{8,16}_32_rep accessors
>>   spi: s3c64xx: add support for google,gs101-spi
>>
> 
> Just a grumpy note: I wish this series (except for the [PATCH 1/4],
> which I'd argue doesn't belong here) was submitted before the rest of
> SPI cleanups and reworkings. Would've made reviewing much easier,
> because this series doesn't apply without SPI cleanup series that has
> to be applied prior to that. There are other benefits to that approach
> too, as was discussed earlier.
> 

I feel we're bike-shedding, it drains my energy. Your reasons were:
1/ easier review
2/ easier backporting of gs101 if that's ever wanted
3/ driver rework takes more review time and I risk not having gs101
integrated for next release

2/ is not true right now, I could cherry-pick the iowrite and gs101
patches on top of v6.7. With 1/ I don't agree as the gs101 patches are
the same with or without the simple cleanup.
3/ is my responsibility and I'm ok with it, I feel there's enough time
for all

What matters, as I specified in the cover letter, is to have the gs101
patches before the functional driver rework which will follow, so that I
can test each functional patch with gs101.

I give up however, I'll do as you want. Will respin all.

