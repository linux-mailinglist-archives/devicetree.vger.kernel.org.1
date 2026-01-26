Return-Path: <devicetree+bounces-259533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNBFCMd/d2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:52:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7892089BF3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D8283020EC8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566BD32E6B7;
	Mon, 26 Jan 2026 14:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y4McaRLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FE94F881
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439165; cv=none; b=QYhO95Uehsiyd/A4JLhFlaZR0AYLZIxcyxgPRW/KKAXJtj7UeLIhQ6xPxrlfdT9PtdmOU0XAyrBNB8Lpz5JPrnrWVMlo7eOE5nKGLL29n5WpgkvM2e/YSVigMweUQSaCZg9PEWjdctOksbgsaQN3fRJTnmfnmWae1aLxvra1JtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439165; c=relaxed/simple;
	bh=W8vUeDRpH3pYz+VDSE0A9FZJpBC70kSW/o6OJ+RHNnM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d1p1wdIbnMxEp9fLPmcc1DYB07OifKR2W7axPLE3f5XKpY/JbD8cbxrna4xc4Frulemy9zv83crFxSNPR9vlXPsw4NmixLuyOFX1BnMN359RzrBcErpq6cHrLT2osbYE17mfopWIn3lLVYWL3bH08Ls3zN5xb7J9R5Xs8uDGwxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y4McaRLX; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-34b75fba315so2654065a91.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769439163; x=1770043963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DP+ZmH2UM1I6ZfNxAh7TKW7S2/6RCg1qO9r0nylhgIU=;
        b=Y4McaRLXF/7iqfXw2ZBNSU21YjmWRl+W2hYanxAP8cAlULzKJiqD4FBlLusSkNkOI9
         oHWyEVr3ZQScvgqyea/EbUBzPMFJaSFlsX6Yt4xAhJhhq8Nth6hIs0d/59fqfcys7awh
         W9qLrUKWwhBi4g2ALmlFwOnbgvbJRZqYNKQ8fb9rW54VfhOlydzVX3AdnPP61wpDPNh+
         aEsPnIWpfo4PKOXCwJ2vn7qCEXLs8LfVQOKN6MsPJSNuEa1iBRNMUCGYfs8iTbRgQlTj
         uDmYWgEQR/n1ZtLaDVrm2ssW+7SkLn2sNlHvSRlbRKZIZWoRCBrqtYDFL558FDeuqDB/
         ptSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439163; x=1770043963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DP+ZmH2UM1I6ZfNxAh7TKW7S2/6RCg1qO9r0nylhgIU=;
        b=bv25NtV838TrBHX4pw57OjMkjmmqcYhSvBO7KpG3uGSv3FYnScq1t10PBif//jehC2
         6gEHC/MBxHo360703hlo0i1FewpPZYI7Th91Hwg4BUbw4bKUIqls8++oQImb61P/WaVw
         XsRxXdRbEtvoxBbfS4HSHlRYtmECKDqrX9+gFBQQuQeBr1yPoYpBFwugncLO2tNVTr3R
         AAQpLFbynfjj9Lj6995vBt2l8iCZWCz/ZZ7wtF12+ENVNaOFdxx+pfbRUqUG7ktQt7Pl
         AMlTqj+35KCNlbklzFnI0vTmiIfNHUr/fZ820anWIgnteMe2+9BvZHGu5qeHyUuaX0ov
         e+LA==
X-Gm-Message-State: AOJu0Yz9FoRlBQ6hVzw3PYkVkxRdJF6Cl7Efvf6/GcmhtmGnpRN2yE8h
	4Af1LfFn/H30ONmlPyHlDGjURSDzPlqU46SDTDV9nDuHJELQZI7bODbY
X-Gm-Gg: AZuq6aK5r/Q2hi0vO5QS8v/BAt+fYuZLn2TqyO0aLiuM6lSMvPCaXaVdsg4XISqQvLV
	WYQkNXNS4GmsHW53cL8yvMwulYNqQelLBr9Yd6sropFientxJI9UUnvBmSfYTCktkhyviR+CFNC
	elAKt3yeVaS9hk2JJg20e0wdSajJF1Yg1S/RGtNUMkGhP1Aq+aAf4JJI2IhWoZf3Rbuc3THUejh
	zNEkdDc51ECs/NHgi4wVk3/pduRcvIal2KCa30r9jlj03wZQQ7xZV0t7SMkGmZFgLEQ2Ep7s16B
	2P7FwBaKUwklEDzFHB7+XbRET9rIf4VK5aExiQ8IrJ5Z0NIyQ++UBTwPShpy/LW3+eewhXNrzYJ
	qLYszTqbjCPUcPvk+6RSUsMN1q0bM+59smE4AzzZqPiHTTdm9RE7RMbjRpnkcNySqQ1p5LNJzEP
	lJdQ5dh5TJPyg98x9AZtS0TfeJQRcSDdSmw8eCYiQldDilyMO7b6YdtAoMNHwcLoKcqyw8
X-Received: by 2002:a17:90b:5645:b0:34c:c866:81ec with SMTP id 98e67ed59e1d1-353c41a6e98mr4162627a91.36.1769439163011;
        Mon, 26 Jan 2026 06:52:43 -0800 (PST)
Received: from ?IPV6:2401:4900:8f4d:8999:841:138a:e0ca:d28b? ([2401:4900:8f4d:8999:841:138a:e0ca:d28b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353354a6926sm11894276a91.12.2026.01.26.06.52.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 06:52:42 -0800 (PST)
Message-ID: <e0cb1964-50ec-4c21-9fa2-2400297b9042@gmail.com>
Date: Mon, 26 Jan 2026 20:22:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT schema
To: Vladimir Zapolskiy <vz@mleia.com>, Srinivas Kandagatla
 <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
 <0ff7932a-c210-4d7a-9405-a77db0f349e7@mleia.com>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <0ff7932a-c210-4d7a-9405-a77db0f349e7@mleia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-259533-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_PROHIBIT(0.00)[2.99.9.200:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7892089BF3
X-Rspamd-Action: no action


On 26-01-2026 18:58, Vladimir Zapolskiy wrote:
> Hello Akhila.
>
> On 1/23/26 17:19, Akhila YS wrote:
>> Convert NXP LPC18xx OTP memory controller binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>   .../devicetree/bindings/nvmem/lpc1850-otp.txt      | 20 ---------
>>   .../devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml | 51
>> ++++++++++++++++++++++
>>   2 files changed, 51 insertions(+), 20 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt
>> b/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt
>> deleted file mode 100644
>> index 853b6a754644..000000000000
>> --- a/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt
>> +++ /dev/null
>> @@ -1,20 +0,0 @@
>> -* NXP LPC18xx OTP memory
>> -
>> -Internal OTP (One Time Programmable) memory for NXP LPC18xx/43xx
>> devices.
>> -
>> -Required properties:
>> -  - compatible: Should be "nxp,lpc1850-otp"
>> -  - reg: Must contain an entry with the physical base address and
>> length
>> -    for each entry in reg-names.
>> -  - address-cells: must be set to 1.
>> -  - size-cells: must be set to 1.
>> -
>> -See nvmem.txt for more information.
>> -
>> -Example:
>> -  otp: otp@40045000 {
>> -    compatible = "nxp,lpc1850-otp";
>> -    reg = <0x40045000 0x1000>;
>> -    #address-cells = <1>;
>> -    #size-cells = <1>;
>> -  };
>> diff --git
>> a/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
>> b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
>> new file mode 100644
>> index 000000000000..d37e928e7a35
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
>> @@ -0,0 +1,51 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/nvmem/nxp,lpc1850-otp.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: NXP LPC18xx / LPC43xx One-Time Programmable (OTP) memory
>> +
>> +maintainers:
>> +  - Srinivas Kandagatla <srini@kernel.org>
>
> You may add me as a maintainer, the change is not catched by the
> "lpc18xx"
> file name pattern from a record in the MAINTAINERS file, but essentially
> it's an NXP LPC18xx/LPC43xx related change. 
>

Sure, I will add you as a maintainer.


>> +
>> +description:
>> +  The internal OTP memory in NXP LPC18xx and LPC43xx microcontrollers
>> +  provides a dedicated non-volatile storage area designed for
>> permanent,
>> +  one-time configuration and data storage.The OTP controller manages
>> write
>
> Please remove all info after the first sentence.
>
>> +  protection, programming sequencing, and error detection mechanisms to
>> +  guarantee reliable and safe permanent programming under software
>> control.
>
> What is the source of the information above? I don't quite understand
> what
> is "error detection mechanisms" here etc. OTP controller functions are
> defined in SoC ROM, and it is unrelated to the described OTP memory
> region. 


Ok.


>
>> +
>> +allOf:
>> +  - $ref: nvmem.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: nxp,lpc1850-otp
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 1
>
> This comes from nvmem.yaml 


Yes, I will remove above two properties.


>
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#address-cells"
>> +  - "#size-cells"
>
> Please drop #address-cells/#size-cells from the list of the required
> properties.
>
> So far there is no user of this device tree node, and "nvmem-layout"
> mechanism may be preferred in future. 


Ok.


>
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    otp@40045000 {
>> +        compatible = "nxp,lpc1850-otp";
>> +        reg = <0x40045000 0x1000>;
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +    };
>> +...
>>
>
-- 
Best Regards,
Akhila.


