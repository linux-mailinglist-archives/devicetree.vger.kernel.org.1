Return-Path: <devicetree+bounces-36421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3B7841120
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD1281C23F41
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E8C1E511;
	Mon, 29 Jan 2024 17:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uDgcUv75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824B676C96
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550407; cv=none; b=fBPr+kHtAGYL24VWJeClnjqaAinjmp8YbWxX306WYcOIlEUxpkuJB4hFDQz4EWUrB+OEh4UA5IE4yalCd3qKbPCWRPvVEHAAFSNoYzcxnOUQOqJPi2KcX7a7Y24vjD79IxCVqcaBLtzzOBbiHh9LnJe9UczgZ2e0IPhBbRFhMrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550407; c=relaxed/simple;
	bh=vV6AH3YtSu3SS+W/E8VEkUhNHcf73by0FdjpTGcjHC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZEZqwX/3htQdT832TKGt5S4BHaeQNETaXZ6mdKSIl2k3eW/FynHeGQ9rzb91Y4NaxZiK/xYY70bkMx9ujlJfSJZ28Ov0bPh7+o2KmzsRZpw9GxuOrchuio07kGxeKPofTU0KvoUZUP/UQKtRfyhkHDXDFmlAZpuluZ7O58hXx34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uDgcUv75; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a35f68bedc6so81838566b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550403; x=1707155203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vV6AH3YtSu3SS+W/E8VEkUhNHcf73by0FdjpTGcjHC0=;
        b=uDgcUv75M7IlthBEvGXeD4bYEoSDba0GC1J8cmYS15XY20I5r7duN3DNNWh5SAyYFn
         2OyPwBd5oRnn3MURHsBxxF2tmWFOYRlp9C2WEiN6q/SRgQf/QjMMn1Yb12EohDRhj0rA
         5ZVDeCCjxCm2Ok9flDPCl6HfeOLcG7G7KRXgidXZIg5NnXU63v4yUO/5ZdQGSIFIEuWq
         5AetPQfv0qQxfUPa4AGKYEuiPAxGxK0fchL6E6r+CT3lUIpz/Fe01QlFUtN37x+UINMx
         V3kQctrg6hfebScD5ALSQ8XAKDpshiZ9LW/O/chiKaohcbTjz+7zCQHQQXBRRhBdqGRW
         gy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550404; x=1707155204;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vV6AH3YtSu3SS+W/E8VEkUhNHcf73by0FdjpTGcjHC0=;
        b=DHsWNKlYZ3JboHMl5scS7Jp7CYNsidwkjxd40fq3Iex+ShKBXVjM4yy0PqY9t4mXag
         V/ut6Ja8yT4vUJ4HFuTPUOr3xS0bQ3MBD0ZGRJ/kIUVjQtMV7CBex5Xt8804KLUygTTn
         tmqe7RhozssMusb94m2oBNoiL3v/Z0hsEKrYR9wYXTZxWsj3acjOiM6m1Yg6VZE4JiLT
         PSrdjwprnKJtRinqPrR+1liXyhe/hUjPL2eUl6qzOAZZ27Y3g/VzqpvhkMLD9duSfgTZ
         vliwJQQHOSXZzEQ+0N+libG73BUW1+b/uJcgJ6vMREjsLd88+ND45cmhGlu224SDjQDb
         pKjw==
X-Gm-Message-State: AOJu0Ywt9Z0aAev7lWq68YCeqBijrYNZnqCKTVzgTYmHV1AUh1etyido
	37CVFjx5tVUkwhM9cxx7VW8ks5N6rNd0YTLJh2kplIuWlOHBFYNoDhYLoBdmDFs=
X-Google-Smtp-Source: AGHT+IFqKB6Afd8ptGOeQ1QAT1e1DmbB0LTR7hNkH3waGYNb+bZ3bz0noe/Y9mqDg1A1YIeGo4RQmg==
X-Received: by 2002:a17:906:33d2:b0:a2d:bc90:de6b with SMTP id w18-20020a17090633d200b00a2dbc90de6bmr4726997eja.30.1706550403711;
        Mon, 29 Jan 2024 09:46:43 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id vo2-20020a170907a80200b00a352c0bb7basm3288323ejc.81.2024.01.29.09.46.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 09:46:43 -0800 (PST)
Message-ID: <99b7501d-6780-4227-8558-488b1b9da758@linaro.org>
Date: Mon, 29 Jan 2024 17:46:41 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] clk: samsung: exynos850: Propagate SPI IPCLK rate
 change
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240125013858.3986-1-semen.protsenko@linaro.org>
 <20240125013858.3986-2-semen.protsenko@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240125013858.3986-2-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Sam,

On 1/25/24 01:38, Sam Protsenko wrote:
> Which should cover all possible applications of SPI bus. Of course,
> setting SPI frequency to values as low as 500 kHz will also affect the
> common bus dividers (dout_apm_bus or dout_peri_ip), which in turn
> effectively lowers the rates for all leaf bus clocks derived from those
> dividers, like HSI2C and I3C clocks. But at least it gives the board
> designer a choice, whether to keep all clocks (SPI/HSI2C/I3C) at high
> frequencies, or make all those clocks have lower frequencies. Not
> propagating the rate change to those common dividers would limit this
> choice to "only high frequencies are allowed for SPI/HSI2C/I3C" option,
> making the common dividers useless. This decision follows the "Worse is
> better" approach, relying on the users/engineers to know the system
> internals when working with such low-level features, instead of trying
> to account for all possible use-cases.

Depending on clock frequencies in DT and on the order of probe, one may
end up with SPI changing the frequency for I3C for example, there's no
protection on that. The more conservative approach, to which I lean, is
to propagate the clock just to the first divider, which is dedicated to
the end note, thus you'll avoid such problems. I think this fine tuning
that you allow is more suitable for downstream. Maybe this is more of a
personal preference, I don't know. Curious what others think.

The patch is looking fine though, and if the approach is considered
acceptable:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

