Return-Path: <devicetree+bounces-228992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 12301BF2DC2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 125BF347920
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35982C3263;
	Mon, 20 Oct 2025 18:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="lR9Wo8qI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59902C0F9A
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 18:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983612; cv=none; b=dPCpBr0oIxzRd6T3L0ZvF8DgmkrVTH70qtB68IbsbPtfX0w0BUUjssiDA5N9pagwtRvtUfYv8LzgN8melbgyRLQqzsppt9d1uRD5/MAUB7ysRCT65DCbFQRogucfvQ6A1Y72Ntp6LpSM30BE4SVaM5DbPh9vBuhsTlsKl8d/Sxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983612; c=relaxed/simple;
	bh=SZsJevmbz8OxFMZ0VUQMEIMaBdwy5skEPKFMyP6eStw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qESDj7SSJfEiq1ugdnm7QFdNHPeSLvL1Vi+QwTLhq25n04kDi0sSRyzTAd63pIrwKjMAx+r1hoqlSlFT/XBWaxciIhiuhpeAvYEVbp2K/XcgJnXan8eelniEVi0p8SpLzB+YZEcAses8yX435EK5TAYUhTdN5XE2Kb2mcAcXOzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=lR9Wo8qI; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-430d0d37fd7so12064405ab.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760983610; x=1761588410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Cb9G+JdDcieHiAzL0OEVFR37yQ/b0GUUu4YH0d0n0A=;
        b=lR9Wo8qIvhgacN51/RU5MKKdqe1EC8E65+VzCsQg1FfCMiSS1ZfVsGUzehE2Z74qr+
         IX2RmSXiyVqhi65NEcibuww6FKbMdtKPBCVXCe2r06GtyriQs6ppTIpVjZaCvzrO4LaF
         Zyt+FVbvzds4+Myry2tRfGarz05lLBPUMyED2zZdlT0ygG9t5pC/7ZG1w3fWREylkxkb
         2WbLBOWERHKJgVl3nY8I3/3BDZg6zZzNH0RYT5QEXN5ckh5rEPD0M5XS6EXzWKVbGoDK
         cjID9/5eC5XW5i6JNzV62R3BncKkEdlM3NRhNDjgHgmGcR3ePjzz0rLClode2JKIOAzI
         fDkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760983610; x=1761588410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Cb9G+JdDcieHiAzL0OEVFR37yQ/b0GUUu4YH0d0n0A=;
        b=c3Tu/0VycLwyDhe3WbJxrimaxx3q4CH6yXhHJ7eWa8W7RD4qDSoDNZ0Zzk18AWDQSr
         2aZIZ6+DEVdXLVoSIslZvQ/+Zdo3fKlak6QDG9YVpGjVQs4mzJCZUJdFEeBt+wANO4IS
         luPiZKRMJwpwZnESyyU590EXMVZnLgMM5u8l0891IMErWN9KGsBibbaVtkGWDsgHMGNg
         TpFqtTySiMDvlmFUrxVugcaxutqpwzAtAoEraJV59cGlzX/eX5SIha0xpDqWnUZiczgX
         DKR6AGuSa/gNSjQlBN6E8LQg4MqLBUHS5B3MnaE2jRVLb557KmIwV6GV9oayDAVOswEt
         HiHA==
X-Forwarded-Encrypted: i=1; AJvYcCUSjQUzIqKazUdxY3BPiFiaUaIakvTgw0ERppa7y+HLBCnsrVE+v5ClkSlnSyxU9YGkr++5Fj214O+3@vger.kernel.org
X-Gm-Message-State: AOJu0YyB4ukxbtU2qeiyPnV8n7LJP+ax6bMyDkU0475OEy765iVlXqaF
	APyKLsf/yHIH9BTEBLln7a3QEBtzI9oX5OWepVGG90k+AOTp5WMJFJzgnnFW5e/nPqE=
X-Gm-Gg: ASbGnctu9PFoZ8DSO+nzA6jAUR45tvae0NbGT+9MrOLR2TxbYIBaBbbrkYK9EEV161B
	Z4034U5tQUs0iPMwdIuPFODLMJnFKGo980jgs9OT7mgYMwIYclRMsz3u7qJy7lCvHUijr7iXH23
	AgZCWkhp5Yrh7o1KSJ2z+j/65axUpI1Y0NWhjunjMtQbPuBL1KkOzkM+n+kda3JL/lc2VwmEOcr
	WypQeA9i4MhvAhCLTdCvqTQxPZ8/MOmufBDfKBrYN6aYBdJMca5WBEY3B4GY1UwKP76ll6YcdBD
	sRP2RQJCsUjoX8DjwCn/11JKUSJO9BZlXJIeFMpyjiK3KemQIaSWTZYNRHRBG7mRCkdu67eqDbD
	GoU0LlGTfoPJO/NRLjNzI5KUCd5eQ6CNeJS8UrSKdv+jGfrJLSsyy+EtwZ2BhT8GGiXhFiogedC
	bdMr5XsgDcDCTZOc5Cx7DT46hlBxaFsB9YxZiG80ogCA1uJqDkJg==
X-Google-Smtp-Source: AGHT+IFDdymJB2Qui1FemWWgGTvX6CFYwAWlPQ4NJbUO3JNIaIrN8E7GPCA9FCFosUo4bQy4mXpGxw==
X-Received: by 2002:a05:6e02:1563:b0:42f:a72e:e179 with SMTP id e9e14a558f8ab-430b43675e3mr253211025ab.11.1760983609985;
        Mon, 20 Oct 2025 11:06:49 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a961e88csm3172542173.15.2025.10.20.11.06.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 11:06:49 -0700 (PDT)
Message-ID: <09484591-e1e4-45a8-8451-afa8feeaf5a7@riscstar.com>
Date: Mon, 20 Oct 2025 13:06:48 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: spi: fsl-qspi: add optional resets
To: Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, han.xu@nxp.com,
 broonie@kernel.org, dlan@gentoo.org, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org, imx@lists.linux.dev,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251020165152.666221-1-elder@riscstar.com>
 <20251020165152.666221-2-elder@riscstar.com>
 <20251020-henna-headache-fae4440ec7a8@spud>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251020-henna-headache-fae4440ec7a8@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/25 12:44 PM, Conor Dooley wrote:
> On Mon, Oct 20, 2025 at 11:51:44AM -0500, Alex Elder wrote:
>> Allow two resets to be optionally included for the Freescale QSPI driver.
> 
> This is a binding, please don't mention the driver here.

OK, I will reword it in v2.

>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
>> index f2dd20370dbb3..0315a13fe319a 100644
>> --- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
>> +++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
>> @@ -54,6 +54,11 @@ properties:
>>         - const: qspi_en
>>         - const: qspi
>>   
>> +  resets:
>> +    items:
>> +      - description: SoC QSPI reset
>> +      - description: SoC QSPI bus reset
> 
> If none of the fsl devices have resets, this should be added alongside
> the new spacemit compatible and not permitted for the other compatibles.

I thought that, being optional, this kind of constraint wasn't
strictly necessary.

Anyway, I'll find out first whether the resets are even required,
and if they are I'll rework this the way you suggest.

Thank you for your very quick review.

					-Alex

>> +
>>   required:
>>     - compatible
>>     - reg
>> -- 
>> 2.48.1
>>


