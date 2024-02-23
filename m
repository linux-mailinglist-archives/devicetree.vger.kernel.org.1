Return-Path: <devicetree+bounces-45090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB1B860A4A
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 06:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89D1E1C2246C
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 05:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC471173D;
	Fri, 23 Feb 2024 05:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="axldeQhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F67C11C89
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 05:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708666642; cv=none; b=k+4aPT3/IGQvI3yyOKBYh393tOymtWLdgTOxlk9Ugwv9S7zw+xBBO+mq0PWkVIBfrvxR9SF+FaZpZ+YFG40qnCW98RFcbah9QkVjA5EBMX37SZTb6SslahItVuXKHHDjrHVBX4vUoAwBUJGy8ZJzboud0sZFGiYTXeTWlSBLWro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708666642; c=relaxed/simple;
	bh=pwC8vXe2BEi1HayfXlFAjE1clRdM+GtLEtZzzi5L3ug=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FV0D6eWGfONttISQiTJMKeR30d8AKc4C/0A3z8Bhkehe8eNS9Hlb7WlStpFHW1IjcsigUKV5/+qE8PPgjUdWH3nfna9h4JRevj1HoVaj+q0quR7CGm/6M2IPEOtFh8WXP+2HuCt833vHY05deHz3HbOnuCm+rHYs/qnAx2+syhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=axldeQhc; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a3e550ef31cso43584566b.3
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 21:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708666639; x=1709271439; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PIjIrdX9a/D0bdP757W9xJG0ACMGs6E8sBOLS8lO3g0=;
        b=axldeQhcVjNNYQBYR9nxXZrGYuLtATUJBaiJsVwdK4zH3b0jisD0gJ0iEPzdIs7ELD
         XT9PaEhQxYxdeiR6plOThQPskBCHtkIy3z8jqbBc/NoKtkvAcA3Xth/GH++3nospiL/y
         CNhthpe8+m2Uw0VIsu9F6dx0176hsLg4gQcKSThLZ6+b24mxqd98dveWkllWdff7GgXP
         ucpnHyKahUotliUFcQREpEzYqgNJMkW6e0e1obluq+eBixdBDQsTfKkodKeOSXFQpBWq
         IMWoRdyheaW6P9xqxYe98FjFTW+kDUT2+IgzjSrc1rM2ALaK6HXqi9LnDdTxF/ulCFf3
         i5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708666639; x=1709271439;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PIjIrdX9a/D0bdP757W9xJG0ACMGs6E8sBOLS8lO3g0=;
        b=fPSqhTeO2aNRzwlImyF6n1i8jChWVLoQnjNAUEg44PbLk34/avEiMGvRHsM5tEHq/v
         tEMAzJThcVElIaYK6zL/rmE5CpwnzLLQ+9DbeV3GRRyqmFtCNsLrM/aQXwaZ413XEIcT
         4h2j2x61S4IGNPLrn43aRaQ6CXzbwopaiwd0M/Qc/gZXDSElY6y0c0514R/fzjknLz8u
         5KqC51bhfDvBiBFKHu870ODcqe2YoFkg/8aMKz9fRDXaImryyg1bKHIS70T305psJk1D
         +H1EBz8kdOG20ze6jZJRx+pbb4LHkoR9J8qkDgXt8GIq1YPlmVZaTVUFTAp0S+9eUhj3
         05EA==
X-Forwarded-Encrypted: i=1; AJvYcCVqKelaekUkGq9OARSqQM2Dd0Dok4awDSGn9FQk6CeRHvyxZs9qDPK9At5m5E6WINWEeQ6mtdIeakGax4XtGCAM9KOxIxoS6VMpyw==
X-Gm-Message-State: AOJu0YzWGeONvqe/I+dorRYeyI7/EbYVnkvHdhK1yby7aEw5Pb7s3swm
	GLnQM6iEINkRxVyAN2AxkKxfuTks8BtQI/0CruEdkKdf3ZbnNeckZZCi2WR/o2k=
X-Google-Smtp-Source: AGHT+IHp9u8FcNkO7Rs60RgvxCzXLWbsMKeEEJK3FbSEtsuAsk96erfXlX+cVzs0qQgntOe2IKaKhw==
X-Received: by 2002:a17:906:e0c:b0:a3f:9df3:2a4f with SMTP id l12-20020a1709060e0c00b00a3f9df32a4fmr469558eji.9.1708666638805;
        Thu, 22 Feb 2024 21:37:18 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id li14-20020a170907198e00b00a3fc82c49afsm203202ejc.215.2024.02.22.21.37.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 21:37:18 -0800 (PST)
Message-ID: <115e1e9f-2067-41f4-8642-43e9d6819798@linaro.org>
Date: Fri, 23 Feb 2024 05:37:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] ARM: dts: samsung: specify the SPI FIFO depth
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, conor+dt@kernel.org,
 Mark Brown <broonie@kernel.org>
Cc: alim.akhtar@samsung.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, andi.shyti@kernel.org,
 semen.protsenko@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, andre.draszik@linaro.org, peter.griffin@linaro.org
References: <20240216140449.2564625-1-tudor.ambarus@linaro.org>
 <be85edb1-4f65-4b5e-a137-76e4e92d8fe4@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <be85edb1-4f65-4b5e-a137-76e4e92d8fe4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/22/24 08:49, Krzysztof Kozlowski wrote:
> On 16/02/2024 15:04, Tudor Ambarus wrote:
>> Bindings patch sent but not yet integrated:
>> https://lore.kernel.org/linux-spi/20240216070555.2483977-2-tudor.ambarus@linaro.org/
> 
> I still wait for bindings to be applied. This means it might be too late
> to apply it for this cycle. Just letting you know, that I did not forget
> about this patchset.
> 

Thanks, Krzysztof, no worries. I'll reply here once Mark queues the
bindings.

Cheers,
ta

