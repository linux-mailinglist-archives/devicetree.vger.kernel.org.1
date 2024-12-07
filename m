Return-Path: <devicetree+bounces-128186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 518099E7D95
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 01:43:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1CCB1888486
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 00:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C297520E6;
	Sat,  7 Dec 2024 00:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dPsriZyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A50946F
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 00:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733532229; cv=none; b=SufTvffHLyXlizVjhMthpmNUtibPmpS3P9VM3568dMurOvAzci3z+ZKjjZQ/QeyGw69Djk93M8wBSc/UwVKKAR0r53u2iGUipHNNaMIoz7H4+0nc0J3ducqd60RoB1SXlYni2DND1fg3oaqxTBU/bO5319XqGX0XwLX2Zhl4NBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733532229; c=relaxed/simple;
	bh=I5aPFrrZTUBk/62S5inzq4+BzJ5o1AWv5cTs6wryKXU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=c6uk240pS3uLM7+JqIBaVjyGlmZXM3FSs0zRcbKLBm40eGzke0dlSDzMNp4qBQndWPcydjaZrHYGtIuOkeLTtskKzbuKG2jT6sVOVCYHEtyhDCg02ssOQs9Efxin0wy5csPzAZPXmu5+2+W5UgANDVFmSAQdKfdtYs/hUNAl8t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=dPsriZyU; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-723f37dd76cso2474519b3a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 16:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733532227; x=1734137027; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8NIYiYj0/6/7s0kJXH6ifIMfCVcOVZk9pSt5UkH2yQA=;
        b=dPsriZyU3053Kbc3An/5+nYthjlhC9bb46xjuKvprSy0/a1kvhYX9dE3OcbVlVLkNm
         2MVYYLnIkssNDOoAg+jDLbHtuLaQ6WV1Edxy/iFOXI+tpSuCBeijXlhXMnuDyqlEUo6f
         vNNtx4+KghY2KYGupV/BXdRitmu+O2DcuBxkVh7v2xAfy3umkK2O4KbrRJ6NVvi1Z26C
         6YbgPC4/TzoXAd8Gx7InLLXZZTDkKTmzAf0/rQSkyjxsuYKS79I7fRigpmPelOdX4W2F
         F2wj8vtgWQ8wjsfmUkP8JZG43LVKH7+tmRjkxALzqD1XNAVr2BXWZ6Wvsa//pNb8CLpr
         dqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733532227; x=1734137027;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8NIYiYj0/6/7s0kJXH6ifIMfCVcOVZk9pSt5UkH2yQA=;
        b=K46tXO4JFthLqkCxdgKAjdZctgRT6xksPCXjeDmoDGvRDBPflGJQOF97nURHCzLAQe
         8jOw+HN9/jVry0Vtn8JmWtNjqchJ4lLvPEYKv5VnlcZKeOVUriKgOT4A/Kub2hOSqozG
         SHuChlkc8AYHTBzAoQ75F/xQMdDFHG92EP6C77fGo4suMHAwPasFtC6n/bCEnQnjle5j
         pasg4ktKTGd8DcGMEHXFLZeoaPqyxo0wiMk+ImdYsxTbNdi9PNOyrhyYj5HigG41iPAM
         CB6OtoIxuZKjKvJsuRwrDIMnDGKMh37ujG14OZfOLbIRvieBtXsEcWNPnkoUIL8K0miO
         zjrQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4635fRMtJc3WWB6cB6udTpI81xSt7WcAPgj7bZMUT5oM2TJ4jFlGRCYZE9WbPUeumSo4ZC6DDmcxu@vger.kernel.org
X-Gm-Message-State: AOJu0YwiY0SXAcqwcJsNEBVWztdhnGYaqFqjl/NlTLDKupe16MxzCXYp
	bEnnToVq1LFjyluTa4xyuiUWOHn2C0iwUCuhThkqX+i1LPw838gseROyVFs4sg==
X-Gm-Gg: ASbGncvYRm5oE0YdGWOGYmYJZp9OV58Qmgdedw2ZM7bLzbIxHUuSgKP/PUqFRpOZzbY
	RlWQ3uY5SYlYOe/gCyoYbvFZuLPIlqIVXhAOIIf/w+943C8OCpRjFE0IkLfhVGKaEhWb5cYH1lX
	Zc3ee7ckhKjnZy4izdA6X/VpTDBqGs9HEnoiEX2DVLqin66roYKoNPkvwUbAhHkWRb9X+Ga/Vlf
	uuYPYaulZ1cDTuw+x85p/vFRdpxEi83jP9WoD0P6RNAPKUKAZxDLVRZse+o66Bces5MvzFWcNBq
	rIuIoqetgkJZFZPB6efrXDQNMgsIwWZtkp7WZWZ4zgEjbe2M
X-Google-Smtp-Source: AGHT+IEOKHnRBxgiTbuZLsDRAnvMI2qF3hSlWxPihqAZqfK7X7tsgLE1K38TVOOeBz0TthqVRuvZGg==
X-Received: by 2002:a17:902:e550:b0:215:7ce8:1363 with SMTP id d9443c01a7336-21614d54c4emr73123065ad.19.1733532227003;
        Fri, 06 Dec 2024 16:43:47 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e14:7:fe59:ca2e:5783:910c? ([2a00:79e0:2e14:7:fe59:ca2e:5783:910c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-215f8f29c2dsm34332065ad.249.2024.12.06.16.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 16:43:46 -0800 (PST)
Message-ID: <e8b2501a-0808-4e14-960b-7355fa52e8ea@google.com>
Date: Fri, 6 Dec 2024 16:43:44 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Amit Sunil Dhamne <amitsd@google.com>
Subject: Re: [PATCH 1/3] dt-bindings: connector: Add pd-revision property
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Kyle Tso <kyletso@google.com>, RD Babiera <rdbabiera@google.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20241205-get_rev_upstream-v1-0-90158ee7d75f@google.com>
 <20241205-get_rev_upstream-v1-1-90158ee7d75f@google.com>
 <20241206-perch-elliptic-4e8a8170426e@spud>
Content-Language: en-US
In-Reply-To: <20241206-perch-elliptic-4e8a8170426e@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Conor,

On 12/6/24 8:52 AM, Conor Dooley wrote:
> On Thu, Dec 05, 2024 at 11:46:08PM -0800, Amit Sunil Dhamne via B4 Relay wrote:
>> From: Amit Sunil Dhamne<amitsd@google.com>
>>
>> Add pd-revision property definition, to specify the maximum Power
>> Delivery Revision and Version supported by the connector.
>>
>> Signed-off-by: Amit Sunil Dhamne<amitsd@google.com>
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
> Why do you need this?

This DT property helps Type-C Port Manager (TCPM, consumer of the 
connector class properties) fetch the exact Power Delivery (PD) revision 
& version information of the Type-C port controller (TCPC)'s connector. 
In turn, we require it to be able to support "Revision_Information" 
Atomic Message Sequence (AMS) in TCPM to be USB PD spec compliant for 
all revision & versions after PD3.1 v1.x.

> Doesn't the compatible already give you this
> information?

Compatible property does not give information regarding the PD revision 
& version but only gives info on the type of connector (usb a, b or c). 
Also, connector class is used by several TCPCs like maxim,max33359, 
ptn5110, etc. and each of them may be compliant to  different 
combinations of revision & version. This feature would help users set 
these values based on the revision/versions their TCPC supports.

Currently  TCPM driver hardcodes the Revision value to 3.0 and doesn't 
provide any info on version (undesirable).

It should be noted that:

1. There are multiple versions & revisions of the USB PD spec and they 
keep evolving frequently. A certain connector hardware may only be spec 
compliant for up to a certain version + version. Thus, this is the only 
way for TCPM to know what ver + rev the connector hardware supports. 
This will enable the TCPC system to present the exact rev & ver values 
when requested for revision info by the port partner.

2. I also considered incrementing the revision & version information 
values in the TCPM code. However, that won't be backward compatible for 
connectors whose hardware doesn't support features in the latest spec. 
In this case we would be presenting incorrect revision & version values 
(higher than what is actually supported by the hardware).

Regards,

Amit

>>               };
>>           };
>>       };
>>
>> -- 
>> 2.47.0.338.g60cca15819-goog
>>
>>

