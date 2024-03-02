Return-Path: <devicetree+bounces-47867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6186EFD8
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 10:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC2E51F21ADA
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 09:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E885013FFA;
	Sat,  2 Mar 2024 09:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rk1gZxzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7BC13AE8
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 09:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709372212; cv=none; b=J6M3VxNh5iAuIda8+xkwg+W5gHeLFxIgCXxPXKVptGXct/RKDE5xWt8pBXchTvsy0sIpixaXZiEbsocQDeyPIFzDDCWUTn7GjoZWi5PmQjI39eG95+FYb9hCR375s5VDTUYFkW1QTglwISAjVnZKVWQ5DNo+nN6fuKAZD05SKHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709372212; c=relaxed/simple;
	bh=X/AL9TvNX/+ErvbiZEnbteQ6E0iQD2tAJQ+ARrkNOXQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HAIIBDT/ZXE1PfOINYAKneFfkxY1Qr/en+WxCLD+qJrnMxfoP6RCqNc0EUloEXihWZsS3X76un0X8NHuEgry/9fCxnTghCCV+TyzpBd+0B3I4dK7UgdrFWkIH3P/NbTuztQQkIl1HVs2rXAjpyic4Lm6XQEkZkVzj+FliBauxzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rk1gZxzV; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a26fa294e56so538558866b.0
        for <devicetree@vger.kernel.org>; Sat, 02 Mar 2024 01:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709372209; x=1709977009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LvcKz/ggpTufe8TwOw+mHRKPGyMuEJMkdqXs69fMMA8=;
        b=rk1gZxzVOrImSi5lm6BSOIdmipt/aGrrQsjmXqjYJ0iPRPcew9Mi4ClysL3GOKE7Q4
         jhns6tOoFMc4ppQ2kJ4CI6aNCz+o1RJr8JMwzQOI4rAJbxWNI6hf9eC3PnQ+vKUS55t2
         QzxJ/PqrqgjowgwklGYa78//wsY0Hmuayh0BiG1RuURLV7k3H2agHuGDaTSHmL/SYOV7
         T8vB0wecw9Za/c/njLPme6NlEoMbIxe67KHpI5x6rAS29eGXcu6ea7PhL3ynltror9C2
         XU1Hmlp+jRoCWNV+ia4nSMIVCYCuFLACMfhlDrzyD2NB7jXzNiNvY7lmmTWRnxNwByto
         /VfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709372209; x=1709977009;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LvcKz/ggpTufe8TwOw+mHRKPGyMuEJMkdqXs69fMMA8=;
        b=dtBHL8jDLrIqapCuaDe6sDqelc1Hv/JSZhsMvvqEyW0Gn4NMOvKBZJqQReuGHq5pUC
         q2yuipMKfi2Ym3Z3rmbXMg+az8q85awaDUW2u61zEPteIdJjfhkaWNzhrDHfRbfzy7NM
         TElHt09qCSDcKREcFAfn31lyJNcWWejbgPVkfSA+25CevPVW4WySy70IWoIBX8hAnpfk
         gwo5iXWbTKuxCMFmdfpU1e8VXDBU+D7WTUSlLgmI0EOAkMONZjCPi5O2gmbpZc8yZkB9
         t1Yxm6d/sljdLduFId+nzeWsMVBOPb1BpvcOW26SYZ9s7QlUhKa8gJ+BcvZMNjTx6Zwt
         ZqyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBAjtBr6/f29XQiazE5PvgR30YyjTbgfr9gGnlzwfrYnrCTYUCtcbZehtVAdz3bwDm6JysviyV/uHKQxQstVr1N6aSqacuVf5PAA==
X-Gm-Message-State: AOJu0YzPmi84kzT8x0iMdSBCW3CQIBuTAyHIbPGzjddKwGwJKv7J/1QA
	Zejq2tee0yn8fgx02kIqdBWhtflMtFMUZRHqQnCNLSky2IgCjaFnIfIl0OevyvQ=
X-Google-Smtp-Source: AGHT+IHyHU7L10kTlkkTRniCEnzyER/dAOmXjiBsxNbkczBaTHO/POH2wBkjJHVx2ngJK0q2toRjLg==
X-Received: by 2002:a17:906:5a9a:b0:a43:bf25:989 with SMTP id l26-20020a1709065a9a00b00a43bf250989mr2973140ejq.9.1709372209521;
        Sat, 02 Mar 2024 01:36:49 -0800 (PST)
Received: from [192.168.0.173] ([79.115.63.35])
        by smtp.gmail.com with ESMTPSA id gs4-20020a170906f18400b00a449d12cdc5sm1210443ejb.119.2024.03.02.01.36.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Mar 2024 01:36:49 -0800 (PST)
Message-ID: <f06328e4-b283-4302-b9c1-6473aa3cfa25@linaro.org>
Date: Sat, 2 Mar 2024 11:36:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] spi: dt-bindings: samsung: make dma properties not
 required
To: Mark Brown <broonie@kernel.org>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: andi.shyti@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org,
 linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 andre.draszik@linaro.org, peter.griffin@linaro.org, willmcvicker@google.com,
 kernel-team@android.com
References: <20240301115546.2266676-1-tudor.ambarus@linaro.org>
 <CAPLW+4=6oYcs0NPXo4ffLiCvtNQ-tY1s_isaxTX8dcPkV56xMw@mail.gmail.com>
 <cb426fb0-2f27-4c9b-89f5-7139354ea425@sirena.org.uk>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Content-Language: en-US
In-Reply-To: <cb426fb0-2f27-4c9b-89f5-7139354ea425@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 01.03.2024 22:42, Mark Brown wrote:
> On Fri, Mar 01, 2024 at 01:28:35PM -0600, Sam Protsenko wrote:
>> On Fri, Mar 1, 2024 at 5:55 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
> 
>>> Since the addition of the driver in 2009, the driver selects between DMA
>>> and polling mode depending on the transfer length - DMA mode for
>>> transfers bigger than the FIFO depth, polling mode otherwise. All
>>> versions of the IP support polling mode, make the dma properties not
>>> required.
> 
>> AFAIU, the device tree has nothing to do with drivers, it's about
>> hardware description. Does making DMA properties not required here

correct

>> mean that there are some HW out there which doesn't integrate DMA in

no, to me it means that the IP can work without DMA, only in PIO mode,
regardless if DMA is integrated or not. Not required means that the
property is not mandatory, which is what I'm trying to achieve here.

>> SPI blocks? Even if this change is ok (I'm not sure), the
>> argumentation doesn't look sound to me.

switching to PIO mode in the driver for sizes smaller than FIFO depths
in the driver guarantees that all existing compatibles support PIO mode.

Are you saying that if there is a physical line between an IP and DMA
controller, then the DMA properties must always be specified in dt? I
thought they can be marked as optional in this case, and that's what I
did with this patch.

> 
> I do remember there being some SoC which shipped a SPI controller in
> that configuration for some reason.  Possibly one of the OEM ones rather
> than one in a Samsung SoC?

with DMA you mean?

Thanks,
ta

