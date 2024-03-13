Return-Path: <devicetree+bounces-50261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A138887A802
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:04:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D26B2863FA
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E88F3E48C;
	Wed, 13 Mar 2024 13:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yF222tc7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF89A1CF9C
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 13:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710335060; cv=none; b=Ee3aYQ2jgBLFE2ujcoaV5jfbGot3W0+hnRWW7awRCn+9NRvtok8v4KFflxDUrm95BhvyaBD1+Lb4DHmE/OBZzhjhcpTGtKgTGWoegKgzW4nYUz7tjPdmdexXTG/ihg4patinvqeaGCRME/tLWyNMQ8NMSvsh27+IJFQXbFzcpfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710335060; c=relaxed/simple;
	bh=Qm6zPLtLJfWkFkJsDMIdBpcl5/vMNgnRxrIpjcUWv1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DncyyOMQQM4CxJGQCmWFSRDrneJp6c50t1wQaqat54DU0u1vFwub55iVw5qVGTiB6zUi/2OOYWfnCJaTQCYS9mj4JaHrDvQ0StWZGMT56BJaqqNQ95HE/h7N3HqsYs+NI1hfhVZdTBfMTFqmSgYmUjoAByYOX7XyYx79oMV1kXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yF222tc7; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-563c595f968so8485610a12.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 06:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710335057; x=1710939857; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cCSPvBnAIM8plgQlahDA7/J/jSBsKxt0lXxJzaaSKq0=;
        b=yF222tc7641oP3+iJ+II3dJUjBOKx3f2MTyyxlw8USVyiaXG4LcI5N2qOGT3iP4UZP
         xvh9q1lXkiQJrPsx9xmft0si6hNVWczUNdDhuA43AZ1qbF2iDQn4MLXqnV32XRav/dDi
         Awyf07E7MvhMt7gUW1edK3mDa8AzBXfH9XQX8ivgDJ0yWFIDgjrA2vTUv6kfZj7cdLtr
         RL6feNcdI017RkSh+Ae7VYSmPBkI/LjNXr3iEpZQAs6X9qg5uGwsST0gqh8l7usH1Sq1
         rPFKtiWzWl65nFhNkm2kSnz3xSoPKn9TCGb5L99MzCZqORHxe8B8TxVQ2V3+0OvbKYD1
         KNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710335057; x=1710939857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cCSPvBnAIM8plgQlahDA7/J/jSBsKxt0lXxJzaaSKq0=;
        b=EiBT/qRXeEZTwxYACiHAeERA1K9Qs2ul6VoODQ90TiRRVKfMuA/L2OhSjNFlm7fEeN
         UYeeOiSh3H2EVTkUl8BBRxhX/eKBLRq622L50gsaHeUOFYD/CiptmAJmmcaWsUs9xR+G
         +XF98V8mSaN9ycTIRx0RWlsSrjuSC9R3BwoNG/jbBiraEZin2yYPnsrwfJ25FT6nwtq2
         HYBUdyV0mKNNeevWf52hBt0ZdM5QkVnjEuhEQPNLkPlcsTeXffaq4ci4UdXL/NvwqAs7
         Sa2M7Jv+AvvOGBu+tr7kUktSHLf/E6v4cq81WRlYk4LUZH52dRYeNgQuRJfhuSLx/Gr+
         TYYA==
X-Forwarded-Encrypted: i=1; AJvYcCVj5l/TDcQ4/xhkvFsxDVTXz8exX11NcC/c7bIqmpE/O76af1Gp2Vr1aYeFAVWYpLR1eBNMOjC7MK0Twy6rHX3HTjxqRUPj8pF+iA==
X-Gm-Message-State: AOJu0YwV8bnizVRdBbCRLTEUn2oOPOpVeA1XgazeZ/zAL8DSWVbTx/4M
	NizKVVqdOxMsXgclveKQb/IwvU1e5Vl42LoO5hYI5mO7cOYjysqtG8ShRKxqbZM=
X-Google-Smtp-Source: AGHT+IFIsvsI60XnlzLH74FCbMwpcDogsv12k7Ia3XsXRnnitJGTb1gYeoPaOo/JmZ3GzHy/rU2X+A==
X-Received: by 2002:a17:907:367:b0:a46:637c:db67 with SMTP id rs7-20020a170907036700b00a46637cdb67mr544814ejb.5.1710335057076;
        Wed, 13 Mar 2024 06:04:17 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id xa7-20020a170907b9c700b00a465ddc8dbbsm560994ejc.0.2024.03.13.06.04.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 06:04:16 -0700 (PDT)
Message-ID: <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
Date: Wed, 13 Mar 2024 13:04:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Sudeep Holla <sudeep.holla@arm.com>, Nikunj Kela <quic_nkela@quicinc.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
 "Trilok Soni (QUIC)" <quic_tsoni@quicinc.com>
References: <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <ZfGIPfHH-3r8pWMf@bogus>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 13/03/2024 11:04, Sudeep Holla wrote:
> On Tue, Mar 12, 2024 at 09:52:56AM -0700, Nikunj Kela wrote:
>> +Trilok
>>
>> On 3/4/2024 3:01 AM, Sudeep Holla wrote:
>>> arch/arm64/boot/dts/arm/juno-scmi.dts
>>>
>>> One is with old firmware interface and -scmi is with SCMI. No new top
>>> level compatible change is needed. I understand it was switch from one
>>> interface to the another and not like Qcom platforms which is moving
>>> from in-kernel solution to firmware solution. But the general rule applies
>>> here as well unless there are specific reasons for needing that exception.
>>> I am not against it or ruling that out, just curious to understand them.
>>
>> Thank you all for all your inputs on this. I discussed this with Srini and
>> he suggested that we could use a new optional DT property like "qcom,
>> fw-managed" to ascertain if we are running on firmware managed variant. Thus
>> each device node in the dts can add this. I did ask him if, instead of
>> putting it to each device node, we can use it at the board level however he
>> thinks that it would not be easy to update yaml documentation on DT nodes
>> with board level property. So if everyone here agrees with this approach, I
>> would like to close this thread.
> 
> The counter argument from me for that is simple. If you are OK to manage with
> one board level compatible/property(doesn't matter for this discussion), then
> why can't that be the compatible of the firmware itself(SCMI and RPMI both
> must have their own compatible already). The main point is why do you need
> any extra information when they are already present. My comment is just for
> this one board level compatible/property.

Board specific compatible might not scale, as this will bring in changes 
to every driver and bindings with new board addition.

BoardLevel property, how are we going to reflect this each device DT 
bindings?

Is this new property going to be part of scmi/rpmi firmware node?


--srini



> 
> --
> Regards,
> Sudeep

