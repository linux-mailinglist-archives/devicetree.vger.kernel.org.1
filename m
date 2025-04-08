Return-Path: <devicetree+bounces-164525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C19AA81609
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 21:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC8C61BA61B1
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 19:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40529245012;
	Tue,  8 Apr 2025 19:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ns76dayi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A567A2505AA
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 19:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744141863; cv=none; b=CAgeQyOeLxQ1zTYM8djYgLkN37kiFeuhM5sfkesaeDepaaG0yx7JpIL8A+htfrSJAvkHgF6RzFGR+8QUmDfPC3nnN8/PzJMCSuLWoDfDjuIcLkPzHPPLIlM88oK9sHuUH7oX3AzccMTIlUJiQx7rlM1HDn06Wkzgp5sCLOFB32M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744141863; c=relaxed/simple;
	bh=kYjOzHDJD1Ku2qLVhOUwN9rHloyRnFSlAKTaMhIuOKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X7YHRN+Hr3zsEcx0S9ONbUTibuW29B5i2Z1sUkerZ4TK3vrItH5BG7DYDRum9e4R4Pj1SwOsDtk+ypK5kekYt6LscF+w+V27axpHFaFPqFCsBN8SIfsaaPwzQkhuY4Eeq2Tl6os7oHxKb94kGIZ3gLZxPyrQ9Kf2m09wAUtK1Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ns76dayi; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-af6b02d9e5eso4165882a12.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 12:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744141861; x=1744746661; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kYjOzHDJD1Ku2qLVhOUwN9rHloyRnFSlAKTaMhIuOKA=;
        b=ns76dayi9FfsOOgzwJ0t1uyR+Mx/iowxQxn1f26XcVcx9qFDZodfmFmj3i6Be/Idzw
         TeHExO0zxK/GQ4plC46NTxhzlT9rB/MMT58gCixw1lFbMnN/epRcV11ux5eb3mvHq/2L
         vTXnTUufXTtH2t9OwsL4EVqUSQ2xB/tNUWCZ5t/hHzlhWe0rgzI89xO4jvuiaYanqiPN
         rqofdshqQ2gXZLJzQa/gMQlhPncWWI179QslDblAmBmzgTVIJfoRYvscpiQLetklMKTd
         woixp8w7D+vB2JQo3OTQbMboXgC14nVDXUFvWU66f7AosrVdtH+6/VERfVEI5ulcOWqp
         p9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744141861; x=1744746661;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kYjOzHDJD1Ku2qLVhOUwN9rHloyRnFSlAKTaMhIuOKA=;
        b=oF47eBjcKb5JvMYmLq2M4M2DNxvnCvFxkTsWM1eR9baJCeUV+cLNIA94DDD850vRJ2
         /hL6tgALyZplF3RdnZ8zNZv10Nv7eO4S4+MibstiafUenreGaKj3qV6a/ok4f+qw98FO
         1139K8XXvcDPQlJFf7EY2DqqVm6bWUmP/AWH/w1Yjrv4U4vxdOcQ8mhhXmMLSgRNDI4r
         3a70DvHAggpgmkVQsCDzIslwsFdEc/X+wMV4guLVkquU1ofUJGc4t091EVKroooVbv/m
         Lxg9PZtIFy1YLtFP4EcuYbviQjz9tH2DywuWB19SdADW188MyKDB71Sjg7aWWBWicA06
         uQhg==
X-Forwarded-Encrypted: i=1; AJvYcCWK4vNCmYeT1FSP2A2xlmzkiKwFV1ABcku4qkGGSmStV2EOs7gnDh0O9QOY/W6QLkGWtJGeXVglkbdl@vger.kernel.org
X-Gm-Message-State: AOJu0YzRR7fr4fXC4fu572sVm59dX8FcXkHxlg9gdi8fVxprkCUjW+v0
	MTLoKvkobJl2xb7ZV2QP4Rob6s9cKe2hTOFqJMSqqZ2ouALkR0C2oP/wvMksBVtrWVjt+tmMz/h
	jokeX
X-Gm-Gg: ASbGncsqIYnpCRqVrjWnKL4VMNm/MP2Y2l+89QPX3V6Dnj3Ew+5Ung0tZ1ER7nhLu+w
	k3zvCo99/a2FEM3Xk4b4L4gBExU2YrDJkeHzi9Fo1d2XZSk5N2Rkaf4q6EX2gXjHYBSepGpvVLD
	v1++n57prhtr+Pi5o+x4HpZPlvEqLYsNd7xmjX+QEEJafW+FJ8q8YMgsAxOtoSxRe9xFLr0YVkA
	L3r6mbAM8Ebjnl+nIgxOTkJdzHyKsuPccOsfLQsHPnXy3b+ClXuPwNUzlEVMUPdfA/BFrBiXUSB
	EVOugLwdx20+awDioz1h6dcKxjeCnwe6PtCyEavikLLpCbRSmWLqBdE7A5KVFAN2ZNFVFh+6tpD
	9laTJhMA2XitAc2cI/gn9UXMKzxWPL+iyWaKuXhSJbl0=
X-Google-Smtp-Source: AGHT+IE8D0yj/1izPqnhy7CnkrKCfihVPNUd7hh5oantY3ye/eMd0x6P1EKKg9jiwP4mfC+LMAEAyg==
X-Received: by 2002:a17:90b:51c3:b0:2f4:434d:c7f0 with SMTP id 98e67ed59e1d1-306dbb948d6mr770818a91.12.1744141860732;
        Tue, 08 Apr 2025 12:51:00 -0700 (PDT)
Received: from ?IPV6:2a00:79e0:2e14:7:4da8:81cb:274b:fff0? ([2a00:79e0:2e14:7:4da8:81cb:274b:fff0])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3057cb5a7d8sm11701509a91.38.2025.04.08.12.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 12:51:00 -0700 (PDT)
Message-ID: <d6a33a0c-f24c-470a-97bf-ee50ee7a82b5@google.com>
Date: Tue, 8 Apr 2025 12:50:58 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add support for Battery Status & Battery Caps AMS in
 TCPM
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Sebastian Reichel <sre@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <len.brown@intel.com>,
 Pavel Machek <pavel@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-pm@vger.kernel.org, RD Babiera <rdbabiera@google.com>,
 Kyle Tso <kyletso@google.com>
References: <20250312-batt_ops-v1-0-88e0bb3129fd@google.com>
 <20250313-determined-wild-seahorse-f7871a@krzk-bin>
 <914a0df4-96d0-4cd4-ac87-3826fa9c1440@google.com>
 <3f65fe16-56f8-4887-bb91-994b181ce5a9@kernel.org>
 <9852e5a8-843d-48ae-90d0-7991628e93b3@google.com>
 <442bebf4-4de1-42d1-a14b-2bb509fea12f@kernel.org>
 <7c7cff17-2c53-4dcd-8760-50c72760de5b@google.com>
 <ba5f79a0-be46-4f17-90f7-1342a6310048@kernel.org>
 <07e4478d-569e-46d5-aad7-882e52ef3cac@kernel.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <07e4478d-569e-46d5-aad7-882e52ef3cac@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 4/3/25 1:02 AM, Krzysztof Kozlowski wrote:
> On 03/04/2025 10:00, Krzysztof Kozlowski wrote:
>>>>>> Which upstream DTS (or upstream supported hardware) is going to use this
>>>>>> binding, so I can see how you are going to implement it there in the
>>>>>> entire system?
>>>>> This is for maxim,max33359 Type-C controller.
>>>> Stop deflecting the questions. max33359 is not a board. I already asked
>>>> two times.
>>>>
>>>> Apparently admitting "no upstream users" is impossible, so let's state
>>>> the obvious:
>>>>
>>>> There are no upstream users of this.
>>> max33359 controller has an upstream user i.e., gs101-oriole (Pixel 6)
>>> board. Totally agree that at the moment there are no upstream
>>> devices/drivers for the Fuel Gauge (that my patchset has a dependency
>>> on) in gs101-oriole board. gs101-oriole uses max77759 fuel gauge device.
>>> I see that there's an effort for upstreaming it
>>> (https://lore.kernel.org/all/20250102-b4-gs101_max77759_fg-v2-0-87959abeb7ff@uclouvain.be/).
>>> I will mark my patches as dependent on it + demonstrate the relationship
>>> of the devices in the gs101-oriole board. Hope that's okay?
>> Then please send the DTS for GS101 Oriole using this binding. I don't
>> understand the point of adding binding for some user and in the same
>> time not doing anything for that user.
>
> ... and just a reminder: DTS goes to separate patchset (!) from USB
> drivers one, with lore link in changelog or cover letter to the binding.

Sure thing!

Thanks

>
> Best regards,
> Krzysztof

