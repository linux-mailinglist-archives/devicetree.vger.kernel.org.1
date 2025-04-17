Return-Path: <devicetree+bounces-168140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1B0A9194F
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C300719E3DE9
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 10:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 765B822A808;
	Thu, 17 Apr 2025 10:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KYeaWOzC"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F23226D14
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 10:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744885720; cv=none; b=HbsoZVbLTBshYmsiW0gF5QZFcjo28cGDe3Gz1iXqcqmH6WeGA/9gOepy0Zxj9zqql9OyvW6hR8ySOCxm3zTUcCtgCbJ7sixa/tZvfpAzR8+eShKWcm7dyqj+3k6v44mQ1DQg1v7si+cSjYm2Tbb7Nemlwp7yGHHD7uAHsFGcut8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744885720; c=relaxed/simple;
	bh=wEhVd9cWfcz7UKfL/cKiF1HIKxbw8iqDGQuIlkpMAqo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WClZ8UQYfFjgdlhY850Cw812U4kysQ3NbC4zEaeCR9/QIFnynHhwkijkOAp1/twnDJGeJn3sNqMeeXQv0sCogpeHMO4heDNLXo7vSDmu/fDRe2Qb3+QRCMmjx0kfifAiS6ddF+RKUY1VnBMf37oCFosOmjU2f51JA6DBn32gTmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KYeaWOzC; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744885717;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JYR6737R9PdlNQuW82+z1wwa0+J91c+dkKgGkvTEGCQ=;
	b=KYeaWOzCs4N254saVB3Gy8kZ47c7z1v937fKo/L5NqcgQLnu+Nyk9yYLC87LqRw07YCjq9
	SPhRE9Ob66FCYD03081BB4wbguwf3pCdQ13HPbynuwo8P7FIyYD/GMInHijd6x5tVGwh/9
	SnW/MkpGac5vmBIUln1vTZ8+2N7aGVU=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-449-2FfLvrRxPdWScgJV-gcQDg-1; Thu, 17 Apr 2025 06:28:36 -0400
X-MC-Unique: 2FfLvrRxPdWScgJV-gcQDg-1
X-Mimecast-MFC-AGG-ID: 2FfLvrRxPdWScgJV-gcQDg_1744885716
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5b9333642so72741785a.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 03:28:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744885716; x=1745490516;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JYR6737R9PdlNQuW82+z1wwa0+J91c+dkKgGkvTEGCQ=;
        b=hZtY6SOPEnKsmRtxteWsmFx8y4dreS3uZtJXGF9GF4aATUMAmJHmLA7jez029vn9oY
         2oj44HF2qXNeqZY88bXaQRiw5auMsKWfZocqM6zum85JdT8A6t7LCbDywwbNCD2xFUmG
         nWKraU958RvdpIKdaeRRs7tkrVFbOHw0SxbVAz5wNoI2ZVxWSp8Iyz+3IchZncNjKb9e
         2nSWPOmL1F/RK2fNXjm5aC8icdm9tGZeIbhthobWZCR15r8JgFGDJgAHY+e4RCs3RcRw
         bl0ZneWjSECWhnO9AmtbAyrEUsVkWcendcsP4NgFuvSvUZ5QzoEPdmMowLDNHRy9Ow03
         RyLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVH7fb2Uz71o19S7OecPnR0/pUhR0FfYmCivNdTLyM9cEEI2R3Mf2p5U1daR4RZ6k4q/UVpCBbb1KcJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx28ejGw1uIPy8YmzBuFPywts5khh5Doq8L6e5v1b7rGJBluV4U
	SfUwZkrRLL3kSvtdtfN6q4V8u/JDPxkKWtbUkaLKVZge9Cv0HDUd4ORLip//3mwm07x616CTHmI
	a6+jc5DJ7lTD/SYy+t6hfO1A1LnYL7wQvNejpPPYp68ylvab4gpVLgwv2ark=
X-Gm-Gg: ASbGncsqGcByY/yi2Y8bjUEhDkh8nOrryFDweaNf1GTraxxuIBWzwZqp0A+C0L+XqYw
	WkPkb01+vSS+9bnd9sRsECvifC/a/v3lW/mEjD4t7Rm9mIswAN25Ot1O2NyU0qqboNhWNPg/+ZX
	RxnMfl1iBJbClaa6iNv22qDQ5GFYW/1mHLhSiX0Wo4EkcCWH5LEWo7LHyL75xOAxqt5zbDxHaGa
	qL2vryPYiWlTJtd2FLLJK6cx6JyBT45bV86C6DDfo/TqsgpGe1tCHsKA+vF8EWJDSKRTo7hWzTk
	ZVVSPrMmUovnGL4L9IvGGbE+uaDHkH6bShDkqmTolg==
X-Received: by 2002:a05:620a:454f:b0:7c5:602f:51fc with SMTP id af79cd13be357-7c91906563bmr852555385a.44.1744885715924;
        Thu, 17 Apr 2025 03:28:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqzTf66yKPKOlZDjn6KCEnTCMGlag6Vhw4gC6r0xHrSuqE8PUM4LdRh5W3NOMjL3tUjQDzgg==
X-Received: by 2002:a05:620a:454f:b0:7c5:602f:51fc with SMTP id af79cd13be357-7c91906563bmr852552185a.44.1744885715635;
        Thu, 17 Apr 2025 03:28:35 -0700 (PDT)
Received: from [192.168.88.253] (146-241-55-253.dyn.eolo.it. [146.241.55.253])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c7a89424c1sm1168102885a.3.2025.04.17.03.28.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 03:28:35 -0700 (PDT)
Message-ID: <7c9ace30-a973-444c-ba9c-96272474a76d@redhat.com>
Date: Thu, 17 Apr 2025 12:28:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 4/4] checkpatch: check for comment explaining
 rgmii(|-rxid|-txid) PHY modes
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Joe Perches <joe@perches.com>,
 Jonathan Corbet <corbet@lwn.net>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>,
 Tero Kristo <kristo@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux@ew.tq-group.com
References: <cover.1744710099.git.matthias.schiffer@ew.tq-group.com>
 <16a08c72ec6cf68bbe55b82d6fb2f12879941f16.1744710099.git.matthias.schiffer@ew.tq-group.com>
 <9d73f6ac-9fee-446b-b011-e664a7311eca@lunn.ch>
 <659d6affd7c58474c4bca5c92fc762925591d0d9.camel@ew.tq-group.com>
 <9e0e6365a2c0151c819e442775ece37353468d91.camel@ew.tq-group.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <9e0e6365a2c0151c819e442775ece37353468d91.camel@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/15/25 3:37 PM, Matthias Schiffer wrote:
> On Tue, 2025-04-15 at 15:36 +0200, Matthias Schiffer wrote:
>> On Tue, 2025-04-15 at 15:20 +0200, Andrew Lunn wrote:
>>>
>>>> +  **UNCOMMENTED_RGMII_MODE**
>>>> +    Historially, the RGMII PHY modes specified in Device Trees have been
>>>> +    used inconsistently, often referring to the usage of delays on the PHY
>>>> +    side rather than describing the board.
>>>> +
>>>> +    PHY modes "rgmii", "rgmii-rxid" and "rgmii-txid" modes require the clock
>>>> +    signal to be delayed on the PCB; this unusual configuration should be
>>>> +    described in a comment. If they are not (meaning that the delay is realized
>>>> +    internally in the MAC or PHY), "rgmii-id" is the correct PHY mode.
>>>
>>> It is unclear to me how much ctx_has_comment() will return. Maybe
>>> include an example here of how it should look. I'm assuming:
>>>
>>> /* RGMII delays added via PCB traces */
>>> &enet2 {
>>>     phy-mode = "rgmii";
>>>     status = "okay";
>>>
>>> fails, but
>>>
>>> &enet2 {
>>>     /* RGMII delays added via PCB traces */
>>>     phy-mode = "rgmii";
>>>     status = "okay";
>>>
>>> passes?
>>
>> Yes, it works like that. I can't claim to fully understand the checkpatch code
>> handling comments, but I copied it from other similar checks and tested it on a
>> few test patches.
>>
>> One thing to note is that I implemented it as a CHK() and not a WARN() because
>> that's what is used for other comment checks like DATA_RACE - meaning it will
>> only trigger with --strict.
> 
> Oops, DATA_RACE is actually a WARN(). I must have copied it from some other
> comment check that uses CHK(). Let me know which you want me to use.

I think it's better if this will trigger on plain invocation, so that
there are more chances people are going to actually notice/correct the
thing before the actual submission.

Thanks,

Paolo


