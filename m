Return-Path: <devicetree+bounces-325818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 457DF2aQVWqUqAAAu9opvQ
	(envelope-from <devicetree+bounces-325818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 03:27:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCA475013C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 03:27:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=d+3XVtgN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325818-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325818-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 344453017F8E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 01:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 378723603DB;
	Tue, 14 Jul 2026 01:26:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14B035838E
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 01:26:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783992407; cv=none; b=r/0WbpQ+1OJ1tNBWSQ3OQJn9OYyRNchHaD9F/qUnnnEc+OdbKIWR4nnW4sv1cDApZvRt4CXth6rTP8rHF3YLhOiqx0c6jnxHZnk+UqFGKa3ZMaaNmP3C3DdcY5NXwZXClfzmsf2xz6wAhKKSqi0iMc61Y0gHq0AEwnfmsWEt4mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783992407; c=relaxed/simple;
	bh=guNw8BV/S/tvAyWOCR0NvkA5de3ztPKENFU9eJhqHMA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r3KHzsDCn1urHQElZHMkDq1+mmnfYfZ6+Y//NF2mksGpNBRd5tkm5GdI6g5MV0vShh9oe+s0z6tyZK2Tns2WFs0qsWnB11Vm+EOjyE7HICLl6b5bfU17AlVEeIWyWTc94cUr6chR1WqGgOHJ35CYRfW84bbCj8e+4XnFpJzeuEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d+3XVtgN; arc=none smtp.client-ip=209.85.216.48
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3847e8b0f3aso3127417a91.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 18:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783992405; x=1784597205; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q7Ilth6iiexMyu52cr63C3cGXl/20AI/2yHPhIPwQK0=;
        b=d+3XVtgNkCKaKl8FplOqd6vijS63UEq/rimT+mDBofXHdchKM1Zwq9dFNloOdEJdqS
         7OJvTBnznjGKyI92MQ/uOktDnfXdt12yPXlTsusExrcjaDYeFzRSr0RuNJrjwNJUWhDk
         ynq7PqJ0JmAYOlShvLWDiqPj4UkV0NqkQW9qxkPvry1uH9K93BG3BVBE+9ecHL4xcLU9
         lnn+b58mh36171vwr4/0qMWcfOfKlJIg8UTRmUUXGDPhaCDWFs1o5YDQ2Qjy1GK5FPOO
         YVm9rsNEnXAs/DKuBkE11DJ2pn1xwkcOkX2/z5m4kmUt8LBW38cgM762yBRY+yFcFSh9
         5cgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783992405; x=1784597205;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q7Ilth6iiexMyu52cr63C3cGXl/20AI/2yHPhIPwQK0=;
        b=tIqd8f/ulDutHLzOE893kkpyUzzd6LKn4rLDF8kAR83KN8fk97Q5p8Bo1NOk8aO2PN
         cTrJz+s/Y/naOKpLRQ+boImD14UpOAkpwrxCd3NJMifL1W73nZzw0bzijfCaj2fhIGK9
         Dq2q0nwjqftBcm/1yMbOpRau+eWr8T1DDRlfoQZ0UNkDbQeRt5merVEEpWL0rGh1pGPz
         O1bZ2D1h0dAw5Z25R9WE+K0gCozdEBGvWsd6CWT+nnEgWoLYiz9Am0nnRYMqHolqOkyZ
         b3MBH32twfAqItAx6mMd7/0PqwyIeyaQQnI8B3OTgDeZhSCWwlsoO+35yNdnkO/2zRXE
         0tlw==
X-Forwarded-Encrypted: i=1; AHgh+RpQ0nf2wpCVLkxUfRo+VUTzGhFFZur7baAy46ADVckLjFDGwjHPnzMPLeUwVDk8iFDSv0DukJvkBj01@vger.kernel.org
X-Gm-Message-State: AOJu0YxwCRzo+i0TZQIaywGKFlFV7Yx4BVb223W90tAUzNKu5FPEZTBN
	nN16n7p+EiTyXMyxT0DZUwh3AUkR3NjyX5NE0mnWHkutn+zFYtEO83p9
X-Gm-Gg: AfdE7clqhgye9EIPEbZJoJjfOy5rpSMB1FTQxGYrmspcCT8wNr/qaEg//5gdCgwArqk
	liS0uX+xC37sfhSRu03bwCBqV4MJ5D30f2r1QhUN6ZTawF5mRenKiaQmqbGBLRoGwL3x2EpLUCm
	OR8Xu+/v03qMvTgkPuIrg1XExo0m9ygBrd+/AMb5xfqDLldQqZqwBRBT7putirjYNDGnGix+0g5
	PzLkmHSAubR7IiPif1WUeOFyCDhnTaZ3434pi2ufF7uBLL0Xf+6U4NRLtbQ8Z9u/eWCLb0gySs5
	1sQSYUqxu0t/LhocHvbk5ljBrAeK4l13LFnmCj2NgspUATrGosC/k4J9f/v2mNwqrxgNYSWCYWx
	k3syNZTTRNoTqK9ToGhbbHTw6EDLpdPbI9NrvhHQRxVI1JFdJsUujhj+6oYOHE5lUQXJzMq5IyG
	CDUyxs3bf7vsJFAkivDPpAdOeg4EdHEi0aZO/5YW3Gl3/gdmPBuK3ZQIUI2j/SBSJNCQ==
X-Received: by 2002:a17:90b:224c:b0:37f:9ce1:cdb0 with SMTP id 98e67ed59e1d1-38dc778a27bmr10194596a91.30.1783992405139;
        Mon, 13 Jul 2026 18:26:45 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e1745a3fesm604483a91.13.2026.07.13.18.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2026 18:26:44 -0700 (PDT)
Message-ID: <fd2a645f-1144-4e08-9e3b-df06aba0db55@gmail.com>
Date: Tue, 14 Jul 2026 09:26:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend
 for dual-port and OTG
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260708103606.1462960-1-a0987203069@gmail.com>
 <20260708103606.1462960-2-a0987203069@gmail.com>
 <20260710-strange-prompt-python-c2e1d4@quoll>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260710-strange-prompt-python-c2e1d4@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325818-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:arnd@arndb.de,m:catalin.marinas@arm.com,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:hpchen0nvt@gmail.com,m:yclu4@nuvoton.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,arndb.de,arm.com,nuvoton.com,gmail.com,lists.infradead.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDCA475013C


On 7/10/2026 4:54 PM, Krzysztof Kozlowski wrote:
> On Wed, Jul 08, 2026 at 06:36:04PM +0800, Joey Lu wrote:
>> +  nuvoton,oc-active-high:
>> +    type: boolean
>> +    description:
>> +      When present, the over-current detect input from the VBUS power switch
>> +      is treated as active-high. The default (property absent) is active-low.
>> +      This setting is shared by both USB host ports.
>>   
>>   required:
>>     - compatible
>> @@ -39,7 +78,7 @@ examples:
>>   
>>       usb_phy: usb-phy {
>>           compatible = "nuvoton,ma35d1-usb2-phy";
>> -        clocks = <&clk USBD_GATE>;
>> +        clocks = <&clk HUSBH0_GATE>;
> This change is really redundant. Instead, add optional properties like
> nuvoton,rcalcode and nuvoton,oc-active-high.
>
> The rest looks good, so with above change:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
> Best regards,
> Krzysztof
Thank you for the review.
Agreed on both points: the clock swap in the example is redundant and I 
will revert it. I will add nuvoton,rcalcode to the example to highlight 
the optional properties. For nuvoton,oc-active-high, since active-low is 
the default, I will leave it out of the example to keep it 
representative of a typical board. I will address this in the next patch 
series.

BR,
Joey

