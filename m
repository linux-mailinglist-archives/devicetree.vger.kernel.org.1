Return-Path: <devicetree+bounces-50112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 24351879A8C
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:22:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8FA76B20DE2
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE69138485;
	Tue, 12 Mar 2024 17:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YE8/iNUd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038457D409
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 17:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710264117; cv=none; b=iP1fvUL/BpxBO8gXbm2u7kV8jHeGkL6DEWJ6qK0ds6hNhWA+eQtqId9Z7aM5rjOrqZQoBFuCW/0NPpzGN/8ekoax9c7rxdE4Z0uH4Hu/i9lHN5wF8WYvO1tQmN73H2rlXQSeuOUiGkq0pFOuCOnjmCaJrPCziw2DgYhxWd9jRdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710264117; c=relaxed/simple;
	bh=tS7kWhxTgYKWrcD5vpzfvbC0rPFQmP61GzcacmbB4KE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OZ/wTeT4OdQZ7NdMsMinVNcbCl52y4mssP5cPopsFagAqPugZ5ikUz2Bn/SPdurEOkRT4x070nIADf6SuXyWSprJVob0CjX72VltbLQsi5bHn7IQLDbUSVh80XYEBoce8Nf/QogI+oAYJubwVtxNmI0pml+xsDg4rbenBqJAJ20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YE8/iNUd; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a3fb8b0b7acso513979266b.2
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 10:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710264114; x=1710868914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=58p97AkVFIOOJrREpcitseYmWqnyYDOzgWA8Ai/SZpQ=;
        b=YE8/iNUdecnmgFYWVfKRhVnPMcDC1rY7hoND5YTMw3vJfcJzchRJ50Kq8/kjF+Ierp
         tSuLlQ19nqABXRWvxkV3SdEbiaM8WwoI/XKWnf8M4uzXLdJpyRRCys6T+QuZRVVFcFbj
         BdX0FyG1Al+IEaWXSKXV6qLF8k6Rbr4M8M8PwRPhp0rQSmDWfpJ+x+KiKM2dLUvVmu6I
         Lnbjl37o/qVplWQT52pvKAHgUsgUzGChbhZyhaXocAebZvlWvCRwJq9cFrpez5ZNd4gs
         eNMUnKPAgOB6l4vq/QwTzr1ELIlFYs4VcMVgNJoj1+HaYOFMgPU3qKvtszg1IKTSjssH
         0jIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710264114; x=1710868914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=58p97AkVFIOOJrREpcitseYmWqnyYDOzgWA8Ai/SZpQ=;
        b=Vxb1iUMm/XlNjXgdIGn+RGTLqzl93jnyBDRHHIXN6uOAFTR0CqeAMRWSF933NTd5XI
         Y4WEpz+Wisloh08ZPQHdUSltrwRCohEYbJq2IpWlaJHPTAzysDK79z2beOPXpB1MXclH
         lxNXSQ3MoLfEKczr8K2kuhsWB25OjnnuAbf0bUJyx+uulBnXhd+wnUGtw/sz3xzE/iKX
         5NHAkxYAC2/038w0BKUIVU9+wVlARASnlFIf2F1UwbQVDUaaMM9W7YpcddomQ+axEvD2
         16yOmw6OIjPawEr+kEiXpb3e3jLUraeQy7tEW3Qg0oj4nDko3yYpP5u1bzOdTM2U1ADs
         svIg==
X-Forwarded-Encrypted: i=1; AJvYcCUYyzbq2M0WgFLSs9NbbiTRMPwBeTdc54k/8I3uNk7P3Xq66HKxlRrk1k5WIBl2Ijgy+66NjVIbUjMfQ9ECu5pZTpEcz+bZ/H4nAA==
X-Gm-Message-State: AOJu0Yz4FT5REyqp5A2W+tnCNv1Q5A2n5zw2ITyBAm5wIMAg/bUBx/Wk
	hxzbjMNWfs4ayJsjXYMuK/XtNZVlprOa3lZboCXpWW+n94xvI/dToXceZ33Rb6o=
X-Google-Smtp-Source: AGHT+IFWVWbNNIbcnXaAhmv4G0OdKp7/tA5bz6ME2Mc1gkyfhTz7+/8bHsEJVDE2f1p3wCrMkn0fJQ==
X-Received: by 2002:a17:906:2b09:b0:a46:275:5c05 with SMTP id a9-20020a1709062b0900b00a4602755c05mr728018ejg.41.1710264114181;
        Tue, 12 Mar 2024 10:21:54 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id sa23-20020a1709076d1700b00a46376a449bsm1404795ejc.92.2024.03.12.10.21.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 10:21:53 -0700 (PDT)
Message-ID: <bd2dde74-e4b9-4cf8-b1f1-9bc52f3b83da@linaro.org>
Date: Tue, 12 Mar 2024 17:21:52 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Trilok Soni <quic_tsoni@quicinc.com>, Nikunj Kela
 <quic_nkela@quicinc.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
References: <ZbFH0UE9zZQFWm8Z@bogus>
 <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <3aad2e6b-88fd-06ab-95c5-d07f012e8306@quicinc.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <3aad2e6b-88fd-06ab-95c5-d07f012e8306@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/03/2024 16:58, Trilok Soni wrote:
> On 3/12/2024 9:52 AM, Nikunj Kela wrote:
>>> One is with old firmware interface and -scmi is with SCMI. No new top
>>> level compatible change is needed. I understand it was switch from one
>>> interface to the another and not like Qcom platforms which is moving
>>> from in-kernel solution to firmware solution. But the general rule applies
>>> here as well unless there are specific reasons for needing that exception.
>>> I am not against it or ruling that out, just curious to understand them.
>>>
>>> -- 
>>> Regards,
>>> Sudeep
>>
>> Hi All,
>>
>> Thank you all for all your inputs on this. I discussed this with Srini and he suggested that we could use a new optional DT property like "qcom, fw-managed" to ascertain if we are running on firmware managed variant. Thus each device node in the dts can add this. I did ask him if, instead of putting it to each device node, we can use it at the board level however he thinks that it would not be easy to update yaml documentation on DT nodes with board level property. So if everyone here agrees with this approach, I would like to close this thread.
>>
>> Thank you!
> 
> Is "fw-managed" name restricted to SCMI based approaches? Why it needs to be per
> driver device-tree node? 

This makes it much more explicit in device bindings on the resource 
dependencies.

What happens when I attach the same SOC-IP
> along w/ the RISC-V Application core and use the RPMI?
> 
> Should not have fw-managed defined at the devicetree spec? This is not a
> ARM specific problem since the drivers which are going to use this flag/property
> are generic shouldn't care about SCMI/RPMI.
> 

> Basically, I would prefer better than "qcom, fw-managed" since this is not
> a qcom specific problem.


We already have something like this in mainline where the BAM DMA 
controller is remotely powered.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8


--srini

> 

