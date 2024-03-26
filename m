Return-Path: <devicetree+bounces-53357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 456D188C0AD
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 772BA1C259C8
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5C255C1D;
	Tue, 26 Mar 2024 11:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ich6KpaR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4079952F67
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 11:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711452713; cv=none; b=cwwR/WrCucr0Tt7flop6Fn7hX991mNlinCBlNLETBzGxf/vD1982WEdEF8h2uMTZRR7DIxWai7fZLCjvx5pGgu4AHCtcxy7qc2oqEGOETCl5uAZ2yvbhmRPBpPjDyar8eA5cZM87uyDRv9/Cmjbxmh/JcuDMPrLi6x2Z0QK5IAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711452713; c=relaxed/simple;
	bh=DztKgRkFupDxj8G7CtqU0mnp7PbuwU3+2bKU2G/eGQs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Q47lryb7NpLH/LZj38+S1kP9zXG7Eadlzfu4K9/kPHR2cRSDETnzbqddsMkxuJbZdzTqRkUHeHefV7h8JuXVVXvPH7qmqWBb483x7gxGNxGUZC6BqqPfqBk4E/Ms+p3YKBd+j6Gpf5u+9XWBOxWW1M1VhMn6K7RB+ScxCAUxLQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ich6KpaR; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a4a39ab1a10so254211866b.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 04:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711452710; x=1712057510; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9jVnt7ijfStCPQ5mm4EbTrjW8nLK/RDcAECNI4T/miw=;
        b=ich6KpaRKGzW01AtZMWVhua8r5ZKD90bvhugtPclddzsPJGPfQpah5ffibm7KME7Cs
         ci9lccfaKbNjytDedpTnoW5NfS+kcjMyHlRTgFzbMYbYX6dvOUC1EZNj2NbT7EZPh9iq
         SgbdJWB1cxOZ8wscLVUC9Lz0QZdo9vpuiHPrrwehVBreQxqfk5GrM4qOScJTjHZby3yX
         rmQ8EFy0mF02n2+UEV40lVKXr8YaVPCsZgInzKBU7SYloDYxjjUa+//Em42FKHyPmYtM
         wg40GJpfzn/xaIJSH8KMpnwktik35HSpwiK3h7KauF/Nk/PHOII6nT8vOjcmDSLvAZgl
         dGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711452710; x=1712057510;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9jVnt7ijfStCPQ5mm4EbTrjW8nLK/RDcAECNI4T/miw=;
        b=cXotyoyFWB1ZUpA57J5k62nU8PYvQzpCIFpuxz3opZGbGcMOfSdR1zWWXlDkwoWjfB
         fs/7u9FDEh97MpgkBcubiEulTm5ArHDgjIHPJpv/ycTCzBIkh9U1f/ubQ3HS+6QUk77n
         sY4BqkW7iKf0xkVaruLPTwwrn3WzZxNVnRvvSe42l1T9QjwdOZcEILkjbj/pU20IZ2Ed
         XKfdtm4tMJzjH8PDed9mvpPmDpUJ8b60v4LUTBhDQMptPXB1tHziuHi8Zf47Lgd3Uyvy
         3yShCeNuoNW9iY3SOxDI2pyrsCfit+WJlRpCgCdJFJMZ1dfuK66rgj74XhzQeexiFt8t
         q9Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVRSgJIUInMBsytKj62vkZAgM5VdyyWvOuhjz2AwDtqvP9ZUKkoAAnCc+cSgHCaPKEK44MvyGpFWsmTcheqPSi44Ous5cRcs4nRAQ==
X-Gm-Message-State: AOJu0YyVBclEX4iikE8J/1gbqeZ3TgjPCRPEkRmMoEj3YwS4FE3j1Cxi
	UOlzUvasf9GcedxUKVsCM1aUxsXMPd8CxXVS/Zb+OWj2GDWJCGGI1yNx6bLYjr4=
X-Google-Smtp-Source: AGHT+IHVP1LN+cxAIBO4tjbnQmLXwg3QkKIwPBuiU3S/GcPWVt12digsWlpeKg5EKOxXts3q0uhDtg==
X-Received: by 2002:a17:906:c00f:b0:a47:20a1:5a4a with SMTP id e15-20020a170906c00f00b00a4720a15a4amr5903130ejz.23.1711452710512;
        Tue, 26 Mar 2024 04:31:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id kz18-20020a17090777d200b00a46bdc6278csm4086945ejc.71.2024.03.26.04.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 04:31:49 -0700 (PDT)
Message-ID: <0ce9d3dd-6da5-4009-bbfb-022fb6d0d8d4@linaro.org>
Date: Tue, 26 Mar 2024 12:31:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: serial: actions,owl-uart: convert to
 dtschema
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Kanak Shilledar <kanakshilledar@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 Kanak Shilledar <kanakshilledar111@protonmail.com>
References: <20240321084328.200347-1-kanakshilledar@gmail.com>
 <20240326085814.6343-1-kanakshilledar@gmail.com>
 <bf26ee6a-50e6-4cfd-ba5d-2772a9e6a176@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <bf26ee6a-50e6-4cfd-ba5d-2772a9e6a176@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/03/2024 10:15, Krzysztof Kozlowski wrote:
>>
>> Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
>> ---
>> Changes in v2
>> - Added Clock property to fix the warning of `dts/actions/s700-cubieboard7.dtb: 
>> serial@e0126000: Unevaluated properties are not allowed 
>> ('clocks' was unexpected)` thrown by `make dtbs_check`
>> - Changed the compatible identifier for having both the compatible names
>> earlier was throwing `owl-s500-cubieboard6.dtb: serial@b0120000: compatible:
>> ['actions,s500-uart', 'actions,owl-uart'] is too long` warning.
>> - Updated commit message
>>
> 
> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets.

You ignored this comment.

Best regards,
Krzysztof


