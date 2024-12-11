Return-Path: <devicetree+bounces-129567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA519EC294
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 03:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CD98162A8E
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 02:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 839B81FCCEC;
	Wed, 11 Dec 2024 02:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WOB79qNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3661FBEB1
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 02:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733885739; cv=none; b=Ghja7nA9o5OKqMz9KYi1UuzHYW2iNGvinYwI3WkfyzvbbUwV4FBUz9GS1bCiCNrduBTjhUvGuyVt8UPk5Qc6cM5MtZ+3c3xmO0MMyJFHg3cmWlWG2UDpwWmr/ezRSOgV6d/nZmksXB/+0nVflgdVXbYiOH0FGvqlILbG7EVZmNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733885739; c=relaxed/simple;
	bh=Sw8qwKP5Mjvc92ndpHaw95kF/VIlsOKmmdEgToCodR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=upOzlnQdIEGY/H7e41xsd6miLeGPKkpR66lpj3VNxrW6ujLb3xKcpC0B+glAErEU6Y6dfxxbc5MVn2naWE4VzodNEmlrtB98RcLjo0mCtfl9O4bNTyUsv84V0ofoXQ0ZuYG1P13Mkg6n6CUmaHBEponhoBajWivnktflKdiCNws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WOB79qNU; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2164b1f05caso29981195ad.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 18:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733885737; x=1734490537; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=piHU200dFKtsmyLyhlKF3Y91bwGI1DoICgmV0GUXM0Q=;
        b=WOB79qNUBaxzoTKSn1t+JdxgyFqK2A3umWJ9LZqn1zlM3iLL9yD5i7gP6WI1A/qhLa
         YuCnS20ip9WgXljdi4AfB0THgPP08av4kZZGanx9dSdxNYUW5+TfaX8KTSBWC6es+iO/
         DoLBNbSRVhDBMkh2GoM+V27r2ngILJo7rdVPem044IN9pp3/VqK0kj7OAfKzy6qbDz7l
         VLNrUo1MKL1fZOC1WHswXp+5Hf+q/us4J6yR1Xi6m7qoGUo7oSW5pDVNzG4fBiTaTiTB
         +gnT/hEyKd0F5tBp/yqmPXpJE9OUoX7g8WAevKudvRZo5QzKlN2lp5oF0MQtwyT7NmDb
         4FzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733885737; x=1734490537;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=piHU200dFKtsmyLyhlKF3Y91bwGI1DoICgmV0GUXM0Q=;
        b=oOO1ldZN9CM6zqP/rvVKGyBsxrftygJXkGqZnz4tvEDD2obdXotJWqdI3e7NKsDcJ9
         MGJAq+4PcvXW07jesZ/PLqzLkNR+EJ74yS+qE4KH9rRraz4cK5Ecl69rQw+1oZDIRclx
         Qz2/8eeHw2ieIHtAc3fwEot0zquliLl62LzGW1gNF+QEblr8M1Uvofh6xTOMrLJlCj+P
         XxdWO7g8CZvqrF43vmQGIbvDndhoDwLq1T/Ed9H9S2JjScT4V6ToOCjc0ApcnUSv2V2c
         XYAQ1FpiuPRNjR4v/tigECuQLbZ40xq8AMZLFk4VVvwi/49GJubr7GI3oGfEWK3MzmyG
         xrsA==
X-Forwarded-Encrypted: i=1; AJvYcCWV7Ik4dHav7QIiHixRnjXAu5VJbkbSrMCue//I1lMF9GHpL6K0L+FmGYKEHG+4jW6yBoyNJHqa/vEx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8j9coySDx/3FXpcMDTRgkFFv6oeuOiQB+J0ZATrVfTUbCvJFA
	z619LD2yy/2julvp78EqfQi6+CPQZ0sf3Vx6JHVuSq0bFUtaPVhENjH1pqdWzw==
X-Gm-Gg: ASbGncsqZEdfk99y7ynsdn1biYF+04nUORvvcLm7uPq4XcQfm8rwM5tVmHK/RuEC1g8
	AL7BamvJMmkbHc6glXdsoNZSr22vUUlKA0UDSXKN3CR3rA2+iWkFchywuK66WhsD6gQJ+UzGEkf
	t2TDZOlSVgHjr6kMx7xms6JS0RQx2R8JK3Z4pSR9awmH2QZN5T9VEMRZupGGms7TGrPLOZxbUWi
	j/mjfgwsQxUyce+51FP5jk98kKzg7F1+TLsmOvl62UMh02d057nK/nP7YHfrC/nVZjj56dK2ZzI
	HeXslrI1dkqFO58rGt9z0UIrRJZLgUpmmcOuet5Oi/0le/7cZs71
X-Google-Smtp-Source: AGHT+IEFDbvNFnnUCGvlIHi60aKS6Y53fiAmKXiI38k2LXQkGTfNbOOvQbHeFT61eEagzjXtKdQr9A==
X-Received: by 2002:a17:902:c94a:b0:216:3466:7414 with SMTP id d9443c01a7336-217785059abmr24941895ad.44.1733885736953;
        Tue, 10 Dec 2024 18:55:36 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e14:7:b50f:e19c:87e4:10bc? ([2a00:79e0:2e14:7:b50f:e19c:87e4:10bc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216796e2101sm17149335ad.167.2024.12.10.18.55.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 18:55:36 -0800 (PST)
Message-ID: <df40c098-2bd7-43c6-be53-77171b9b90d9@google.com>
Date: Tue, 10 Dec 2024 18:55:34 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: connector: Add pd-revision property
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Kyle Tso <kyletso@google.com>, RD Babiera <rdbabiera@google.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20241205-get_rev_upstream-v1-0-90158ee7d75f@google.com>
 <20241205-get_rev_upstream-v1-1-90158ee7d75f@google.com>
 <20241210230615.GA766674-robh@kernel.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <20241210230615.GA766674-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Rob,

On 12/10/24 3:06 PM, Rob Herring wrote:
> On Thu, Dec 05, 2024 at 11:46:08PM -0800, Amit Sunil Dhamne wrote:
>> Add pd-revision property definition, to specify the maximum Power
>> Delivery Revision and Version supported by the connector.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>   Documentation/devicetree/bindings/connector/usb-connector.yaml | 6 ++++++
>>   Documentation/devicetree/bindings/usb/maxim,max33359.yaml      | 1 +
>>   2 files changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> index 67700440e23b5b7ca0db2c395c8a455bcf650864..341d2872e8d43450d219b7b72d48790051dc4e2b 100644
>> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> @@ -293,6 +293,12 @@ properties:
>>         PD negotiation till BC1.2 detection completes.
>>       default: 0
>>   
>> +  pd-revision:
>> +    description: Specifies the maximum USB PD revision and version supported by
>> +      the connector. This property is specified in the following order;
>> +      <revision_major, revision_minor, version_major, version_minor>.
>> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> Always exactly 4 entries? Then:
>
> maxItems: 4

Thanks for the catch! Updating it in the next revision.

Regards,

Amit

>> +
>>   dependencies:
>>     sink-vdos-v1: [ sink-vdos ]
>>     sink-vdos: [ sink-vdos-v1 ]
>> diff --git a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
>> index 20b62228371bdedf2fe92767ffe443bec87babc5..350d39fbf2dcd4d99db07cb8f099467e6fc653ee 100644
>> --- a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
>> +++ b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
>> @@ -70,6 +70,7 @@ examples:
>>                                          PDO_FIXED_DUAL_ROLE)
>>                                          PDO_FIXED(9000, 2000, 0)>;
>>                   sink-bc12-completion-time-ms = <500>;
>> +                pd-revision = /bits/ 8 <0x03 0x01 0x01 0x08>;
>>               };
>>           };
>>       };
>>
>> -- 
>> 2.47.0.338.g60cca15819-goog
>>

