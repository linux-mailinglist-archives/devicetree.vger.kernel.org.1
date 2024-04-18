Return-Path: <devicetree+bounces-60482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4239A8A96E4
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:01:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBD0D283F86
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 10:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A133D15B56C;
	Thu, 18 Apr 2024 10:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aw/8P9iq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5939A26ACB
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 10:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713434486; cv=none; b=E2t4BZfSjfYWK0k/xNeNWdGs7AMAWKa62yka9YzbeInVoufc+qNTP6M8RTzGioKat8TWsr2A6T1MZHJ302wnXXEomHdKT+gUq7e7gpsv85ChT/p/5jDyYcPsMOCOgfYOA3GyETPj2LinZ8v46gDj0NAIpxarxKfCRGv7c7PnJI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713434486; c=relaxed/simple;
	bh=a71/SiU5KJx7Ms0b+OJ/gEOzH6yCrAFm+lS0rqmxGAw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hoo1AdBb32yDV8IQUJO7M9gEEo8ZsWk4ucWz5v9rE2nsKfrFQ0sQNEIJ4yhGXC4ZGgkik0upukQ29NMpYXtJXPGDofaZ1bykChSmTrIC50TDuw+MNbMmgbRgQPZ+xPf+/w7wus8WlXsI701HapfomchDBcPsYLJ941fU/wMHOrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aw/8P9iq; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a52582ecde4so58356066b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 03:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713434481; x=1714039281; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1pf1mAA/6NMUQyAgFcZPxZ6nbHjAHUH3C0AGYT83PgE=;
        b=aw/8P9iqQ2YP0sMzARpB035NIHOrZJr4As1zOiZ7y06YSCBDROxQWEeLdu4LN0redb
         qRV+IFXf9rlL+BiTmfmIe39iLrQPvUr1zvYdqTg/FFTUBWP8tyo81d40iMMHS5ADWvZ4
         GXIj2nr6zXTL3dQsMCZfddGO69EDJGXkIDl4NqqOXmLQ8FtRvq/PdwrjgdLYgHmuLyW1
         hXnTuFhKeV0twdIOIz1WNsnT9q1vMNnfMFDGVN/vdUJ4Rd7xaXwxay1e6zukUxxj8WRA
         7Jllin6leyRJKHGf6NGwMBGfdzk39cS3KPgWJhKj2RCR4oj2pEeypQuBnxqHbhZQlwvS
         N94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713434481; x=1714039281;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1pf1mAA/6NMUQyAgFcZPxZ6nbHjAHUH3C0AGYT83PgE=;
        b=FAUfKGHp7NGqWRrWOCEuN+nldM0iHkYSqTr8enxoIJOLAUHchTez76slGnWJu/dsUu
         KgDmBYE9qOB4cdAgNFbHX6uEuuqDFK++7HzyRKodZ44yNSDvSjPYOsfRaEkuGT+o1Cfm
         fHdqHoz4hJl1QItho5MGJCBYfS4SFqx7x/0vRXPRQ11TOjrDqAHd3O7BGMyuQwNGH97R
         znRlMq5Z2B2lTB4sraaF1/43TOFYIUoh7A9LuopVZe9CT9pWMsiAYQuzz5YQSi5ojTxo
         AsSm7LJ0d5G10Vh9F1lUGWpjlYgs4pg2wNvjlXWqONxWpkb8pGy4tyIPVe8NavFd/qJG
         TItQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOE3MJiwffzUKRZ2NEDcLz94Td//l8ELkxi89d+EGs3D6iYSVpXHRb1A34Gg99sRiTifqS4es7JS+9SVLwyoJp9dLxrUsa8pVTbg==
X-Gm-Message-State: AOJu0Yzq/1WfQpquMFO9hpFy5I9OMhD89oKQLrrROQGjgwWP6RFgg87G
	ffg4zH6cBTFVGR0RZw+oUMbCxjANAiP33nhZDCt9vKiXkv/csQKItM4NE6vRRvU=
X-Google-Smtp-Source: AGHT+IFR9G7tUCBHZF0uqiUjDBLI1xxggsUPZAlg0f+UEA7J7e7NFdmBwEo2wI3dmDKOr/I3QPOp8w==
X-Received: by 2002:a17:906:a14e:b0:a55:387b:ef07 with SMTP id bu14-20020a170906a14e00b00a55387bef07mr1433955ejb.13.1713434480707;
        Thu, 18 Apr 2024 03:01:20 -0700 (PDT)
Received: from [192.168.45.55] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id h20-20020a170906591400b00a51d3785c7bsm662615ejq.196.2024.04.18.03.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 03:01:20 -0700 (PDT)
Message-ID: <c1763d69-f0a4-4415-be7a-31b04153fbfb@linaro.org>
Date: Thu, 18 Apr 2024 12:01:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: pmi632: Add vibrator
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240418-fp3-vibra-v1-0-b636b8b3ff32@fairphone.com>
 <20240418-fp3-vibra-v1-1-b636b8b3ff32@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240418-fp3-vibra-v1-1-b636b8b3ff32@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18.04.2024 8:36 AM, Luca Weiss wrote:
> Add a node for the vibrator module found inside the PMI632.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

On a side note, this is a totally configuration-free peripheral that doesn't do
anything crazy until manually configured.

In the slow quest to be (hopefully) more sane about the defaults, should we keep
them enabled by default? Bjorn?

Konrad

