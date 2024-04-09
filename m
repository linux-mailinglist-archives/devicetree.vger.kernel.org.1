Return-Path: <devicetree+bounces-57319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E95889D270
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 08:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FC56B23C0A
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 06:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9128E79955;
	Tue,  9 Apr 2024 06:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LvzqqNCY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734C0762DA
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 06:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712644154; cv=none; b=k+JctRgtaqhwp6AE+SWBSGs6X8/wwWQ55jwQ+j840N3IfTSzT6GElvkoOU2kfoLDe+07ZQRnX1o22mgXgUaOPH/9iJoxT60dEQYK1I/mRV2BKcKH/7uR0ljb+ePfBNi3TMweHiNCVsxTp4ArUUhQ8iIHG+BbjWQihR05W3Rn3RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712644154; c=relaxed/simple;
	bh=i3FcI1QNRGmW5G6SpjBrFdWnI+UtRD64JnOiVUgDtK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VAIODM6tuaaajJx9M+trtRc+UOVfs8F3Zw8okIErHFpQtlHiBX+ctoKz8V9cfbjRDN1SmWEvrquPcOq0GY/Qj/2QLwHNEfaHzb4e2WrXeDsoDp50suUFX5SLbt/i2IfOQRKYdIse4m1mLNplvwFlDs6BBXqBPfjGmfda53MLG48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LvzqqNCY; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56e2b41187aso6007919a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 23:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712644150; x=1713248950; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Vm3HK/X08kxYiAwQYO9sS7JnDrKVnOf7k/OqbbqlN0I=;
        b=LvzqqNCYtNEhZfqCdgo1gqAVjTOkg9t5n0hFYZJj+JD85QpluQ26Ngf47KLq6geNsw
         KtAm1foF5MzhB4NSeSMmQ1niYUdgjOc4prMuugAz5Mgp7iqp6hA7qFpe60UZJxRV3tar
         ex/FRcimSFcLehpZsPUk0BJrrRFF6vIjMz4UtayUhA7hRg+hHa4HC9T/eYh7S+h6vgTV
         BXC81qW/Ndi64kpIsOClk4VVylL2SCWfU3yI9EShyiMMN808Wm/9ysCoOQEAcCckbfMZ
         WMl6zsyZngGRnyQuz68aGqswhM2VcSWSFvvCMSKI65YRFt3zmnn+kpD53CEMH1jVww2/
         wYLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712644150; x=1713248950;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vm3HK/X08kxYiAwQYO9sS7JnDrKVnOf7k/OqbbqlN0I=;
        b=XG6MMZlmFJzWNuUAiO+0eGn6PNX3aTXJDYKHijEqVoTxu0n8inTyrkWGtS1kVkhVnr
         39Kw2bxICVUMwVgVQkHjxJ5/cmxwc9Zq5lsQ5+JTnzM7PBMtQ65MH+nl+sthqLH1s7xO
         ya5nQskZIyC57yZQNl1vtoWa7CexxAPvMCF1icKw0CYG72qcGcy2wYSm9GPyB66MgUuo
         UmvUxRrtqb6cZes5WjkjnLwXR97GfRPTRNcmyYCm26Sh0olXFyLB8aNbd2A3u4SMTqsB
         9VTWqyrQAmeCIUlTiekqKcKzJKNWqvAvCNCB8yJAlD3RXSrlpn5kCcXhJcXFSj12fykB
         OmlA==
X-Forwarded-Encrypted: i=1; AJvYcCXTX79785u3GEArXpqKXsX8AeccwsW0X9MBLd7g7YaayP/3Qp0Hhc7zpaLeQSvZRhTDuYjtja+bm1+LdXpl6X6nyY9KCNcXpsTzag==
X-Gm-Message-State: AOJu0YzH+zxhIlYYbtJDcOmD9W6yjP7oCg6Qpp5gc67moJuAt4qAb8q4
	zqUFKxsseRnapUfOkNh1QeI4fECXE+Mx0S0iAGc7v2iMTsO8VlqdUjDjEmhvuQk=
X-Google-Smtp-Source: AGHT+IFli9u6w7f/7vYfMDcdFofMUw+adbL6RmpKnTrxVmDROJ6g1gA588TL2Kz5DHuHHLPZHUNo4g==
X-Received: by 2002:a50:cc96:0:b0:56b:ddcb:bb67 with SMTP id q22-20020a50cc96000000b0056bddcbbb67mr1702808edi.2.1712644149713;
        Mon, 08 Apr 2024 23:29:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id di19-20020a056402319300b0056b7ed75a46sm4985957edb.27.2024.04.08.23.29.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 23:29:09 -0700 (PDT)
Message-ID: <d079bf4d-ebfe-4d98-b718-0c545aabbd30@linaro.org>
Date: Tue, 9 Apr 2024 08:29:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: PCI: altera: Convert to YAML
To: matthew.gerlach@linux.intel.com
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240405145322.3805828-1-matthew.gerlach@linux.intel.com>
 <2ece9ac2-899c-4185-b0f3-8ab939afc1e5@linaro.org>
 <alpine.DEB.2.22.394.2404081309050.381257@sj-4150-psse-sw-opae-dev2>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <alpine.DEB.2.22.394.2404081309050.381257@sj-4150-psse-sw-opae-dev2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/04/2024 22:34, matthew.gerlach@linux.intel.com wrote:
>>> diff --git a/Documentation/devicetree/bindings/pci/altr,pcie-root-port.yaml b/Documentation/devicetree/bindings/pci/altr,pcie-root-port.yaml
>>> new file mode 100644
>>> index 000000000000..999dcda05f55
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/pci/altr,pcie-root-port.yaml
>>> @@ -0,0 +1,106 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +# Copyright (C) 2024, Intel Corporation
>>
>> This is derivative of previous work, which is easily visible by doing
>> the same mistakes in DTS as they were before.
> 
> This is definitely derivative of previous work, and I want to fix the 
> DTS mistakes too.
> 
>>
>> You now added fresh copyrights ignoring all previous work, even though
>> you copied it. I don't agree.
>>
>> If you want to ignore previous copyrights, then at least don't copy
>> existing code... although even that would not be sufficient.
> 
> Ignoring previous copyrights was not my intent. There is no copyright 
> statement in the original text version of the device tree bindings. Should 
> that lack of copyright statement carry forward?

All the authors are copyright holders automatically, at least in some or
maybe most jurisdictions. You do not need to add copyright label for
material to be copyrighted. That's why you are not allowed to relicense
the work for example, without other authors' agreement.

The problem is that GPL requires to keep original copyright notices, but
such notices were not present.

Best regards,
Krzysztof


