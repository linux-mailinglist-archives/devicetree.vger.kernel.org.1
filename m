Return-Path: <devicetree+bounces-131668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F3C9F44FC
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 08:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 984A51881336
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 07:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3185B171092;
	Tue, 17 Dec 2024 07:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lNHFApmS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CB814600D
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 07:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734420048; cv=none; b=aq6NKbAjfE/71yhmjOPmOIDJMNRGE0VadC+eSjU3M3RkCtqnu9nGvQotVeLto7kJIv3z21JBRteUxlI7T2/6dF5GNzSHgV0mEJ3etsFMDYxEORJuAMSZovlyMZ2N71yIjbDIEP0CshnQOybnhyF5kJRT4Z7aXFAhfKFHFcmecC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734420048; c=relaxed/simple;
	bh=cXwasypA7mo/HGt2OB/7lQNaok+kG+zU85E5bsHXHuA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LQ5poetJWAbx3kc1A5O3vhtSloN7b9G9ra38k/oVD4QUrThzwctYfC8Yp4X1+diFT0zFImXtbtB8MIUCxAS05wlnOHdo4x5GaNalhte6kHy/1UCyoc/pT9dCraUxqb5ymmqORf4blVSmev8VzuoNDxfjMQ/tfayXzKIqMaLBFE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lNHFApmS; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43635796b48so18492305e9.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 23:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734420044; x=1735024844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kwvB7uBpEMwnL4s+j9WaUS+8KTpcKQVS4QfB1gDHcEA=;
        b=lNHFApmSTlIhRpHK96Ys5/O98LBcF0xd9PXDDWpEZ6vRWYRM1fNfhNaFz2ze1fQPvx
         2nK8pFywb0v8XopzW719wZ65eU8hpIv24e4Uc3/1VmDFDvAqk7Ptfu+QcUaoyIAP1G7D
         a9Mzv5sGp4g6LdLwIsBhD0SF8klgEecaR01EyVXAInLuTJQdHxT2b/lmluh54gvUmEgq
         H6QUr5wKsz6LvlAg+S90hshgDiw8INnBe5z6L+vwVoW4k0/SmOvwduEAx+pYothBMK7H
         kQkKVQUW35nSx7yHl6Ql5ySazUGgowwfRmyKLQv8pwpf8yGd5H1LmX2uWhja1J33m+Tt
         eXsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734420044; x=1735024844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kwvB7uBpEMwnL4s+j9WaUS+8KTpcKQVS4QfB1gDHcEA=;
        b=DZKg7zslpsSzMhryMIov4ufvqjMMfsJbb2XEEcSmwTBZhN/zCd5Y8Qn8s6OvLQ+ndC
         eQMpReTLf24sHf4YTiWurGnYn2y18Jp9tRgTbpKH6QAq8bi8XPR+xAmsXOyInPMz7/I/
         QQrmKO0sEW2p7YtxNmDa0MWK7Tom801Xfm5kYa7qr/FiPR77JKJo8cwNX4NJis3zksqR
         YCoFamvXQh+tBRGftqyc5NvtVA/o0jBDJYCYJi7zEzQ5wIVtIl7nFPlg9sI6KGS+2ALE
         3nwob0eqEHYuRPzdaXGwhEcctCXvF2Fakf14o9ekbY4y3LaLp20J+gHp5KSYyoFGuJqF
         vJUw==
X-Forwarded-Encrypted: i=1; AJvYcCU4fHkZM7ZHdhecY5nfSV4HgYxLs8EPnFu3hoIKPGw1OWXJ5knsixyBDf281DfOk3jDuvsw0LJQ6jBl@vger.kernel.org
X-Gm-Message-State: AOJu0YyZTQRT7lAo6VQ1gTkzOKzG1gjPiTOTnYHQayANeHHQnX8OWITj
	YaeBv/Wo+K8QuO4ZL+EGfPy+0U60K0NeDbZEfgxeUHB/eNNu9fkUjJUI4b0wEQo=
X-Gm-Gg: ASbGncvaiP1mJuOVgGfSjGVyb3h4tr6DJsMMvQ8J6APNUgOsoWtpDJfBZlz7ku9XDLH
	mqDjAhZFqhkDz8C9/Hx08dcfHcp4pIzuz4SUQLfyUBoYNovCKyFxHHTXWQqELlQYF9saVfl8xxm
	UKkUfOmPn/r49ACZ5lkiN7a26nMF2c5uEDn7ew8aS3jfcDyC31JS9eh+0yvnIc51VgwrQZwTDcL
	KDcshNbGwq5B4XgWvMQs86uShx16k1r0/a3iVpz91bDIFa2Mw0THhIr3/ibcG3s
X-Google-Smtp-Source: AGHT+IF9HA/1SKKgvXJjtH52nkzbyQi6zojEXUgurj4MP9uhS4GfNABlmxHlIXgDW1wjDEC3z9sBhw==
X-Received: by 2002:a05:600c:1583:b0:434:e892:1033 with SMTP id 5b1f17b1804b1-4364812a08cmr15865095e9.2.1734420044507;
        Mon, 16 Dec 2024 23:20:44 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c801637esm10236598f8f.28.2024.12.16.23.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 23:20:44 -0800 (PST)
Message-ID: <45a54924-226e-4a94-b1ae-b0f1f703f854@linaro.org>
Date: Tue, 17 Dec 2024 07:20:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: exynos: gs101: add ACPM protocol node
To: William McVicker <willmcvicker@google.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 andre.draszik@linaro.org, kernel-team@android.com,
 daniel.lezcano@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org, arnd@arndb.de
References: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
 <20241212-b4-acpm-v4-upstream-dts-v2-3-91b7a6f6d0b0@linaro.org>
 <Z2B3V78k2ibIdLYh@google.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <Z2B3V78k2ibIdLYh@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/16/24 6:54 PM, William McVicker wrote:
> Hi Tudor,

Hi, William!

> 
> On 12/12/2024, Tudor Ambarus wrote:
>> Add the ACPM protocol node. ACPM protocol provides interface for all
>> the client drivers making use of the features offered by the
>> Active Power Management (APM) module.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 22 ++++++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> index 04561e15b96c..8c3f07371912 100644
>> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> @@ -277,6 +277,28 @@ apm_sram: sram@2039000 {
>>  		ranges = <0x0 0x0 0x2039000 0x40000>;
>>  	};
>>  
>> +	firmware {
>> +		acpm_ipc: power-management {
>> +			compatible = "google,gs101-acpm-ipc";
>> +			mboxes = <&ap2apm_mailbox 0 0
>> +				  &ap2apm_mailbox 0 1
>> +				  &ap2apm_mailbox 0 2
>> +				  &ap2apm_mailbox 0 3
>> +				  &ap2apm_mailbox 0 4
>> +				  &ap2apm_mailbox 0 5
>> +				  &ap2apm_mailbox 0 6
>> +				  &ap2apm_mailbox 0 7
>> +				  &ap2apm_mailbox 0 8
>> +				  &ap2apm_mailbox 0 9
>> +				  &ap2apm_mailbox 0 10
>> +				  &ap2apm_mailbox 0 11
>> +				  &ap2apm_mailbox 0 12
>> +				  &ap2apm_mailbox 0 13
>> +				  &ap2apm_mailbox 0 14>;
>> +			shmem = <&apm_sram>;
>> +		};
>> +	};
> 
> You mentioned in the previous patch that "GS101 has 14 mailbox controllers",

Right, I got the number from the GS101 memory map.

> but here you have 15 mailboxes. I looked at the downstream driver and see the

Here we have a single mailbox controller, ap2apm_mailbox, with 15 channels.

> number of mailboxes is defined by the ACPM framework (firmware) which is read

s/mailboxes/mailbox channels that ACPM uses/

> from SRAM initdata. Dumping that, I see there are 15 ACPM channels. Have you

Correct.

> looked into into extracting the data from the initdata SRAM address?
> 

Yes, that's the reason why I defined the 15 channels from above for the
ap2apm_mailbox controller.


Cheers,
ta

