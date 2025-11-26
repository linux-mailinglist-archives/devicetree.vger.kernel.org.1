Return-Path: <devicetree+bounces-242183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C12C87AC0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 02:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EA1F4354D60
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE5B32F6910;
	Wed, 26 Nov 2025 01:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="pxpSk3bT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688A21E1DE5
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764119970; cv=none; b=GeKTheG/FsRQrXT4dpWfmJdgl3XxusAuw7bt2nCOeHHHlvUknZZQJCd15OvAifoMg40XlvNW3NDry1Gx11fCbSI/i182WdpVd1/VGS+5mRqJIQs6BvndXFbcdNQK61Km8fxLGKYmmK2Qi6I/DLfYEqusN37mSc1DYrdeZGTVek8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764119970; c=relaxed/simple;
	bh=G7ZNDNiR8Djja/TvyR9CLyYYZM1cA+rALARCuQmH59Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k5kbTm0XEz6WhOseOsWABLCsbjFjFB8RG9l4ramBlTclOPR6oVZDGlZcO3HLHS2IB72Qq+/wqPmWxtg/pQtv7l+NQf6HC+Wd9AwEELdoD/+uWtVifodyoYdHg975x3qAo+h/hn+JyayQTOotmZ5aabSq/HtZB1+DErEeeJ8jf6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=pxpSk3bT; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-bc17d39ccd2so3202199a12.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764119967; x=1764724767; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ONQMnRlPCQWGLqZuet9LBiEJ0IZkYpFPjI5nCq6R0G0=;
        b=pxpSk3bTCdrqI0/hGfTwDSWmA1Ae/c6VVXHVR6i7LxRQ1XjdCPQt5Xw36GS3uFW2Db
         yh9fdw0KUKP8Fy+nZv/8zMkTgEmjk1MARz9zK2UlqXsVF2gQIacY+4JFyK7HhhH4JTDh
         bla1WZUox51rprOi+n0Ma0omV7K49ntby/qKxfXjNo+kLSSthSTbcZYRkDXSJCIng2Ra
         9MdWyGnosmOwR4NGRgipUhaSkcU1noLKZWMkR0/anT/EcjlTlMDZ9IbnolLHmozJqOFP
         pAG26EhmHanwv0eqaSfhTuBi/cou30WvJ/EYMHUKOPMRmI68o6LiJ6i2UcEl0Cmwu8ln
         CkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764119967; x=1764724767;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ONQMnRlPCQWGLqZuet9LBiEJ0IZkYpFPjI5nCq6R0G0=;
        b=LtqeDa3zBt8WFwpp/BBdqfaMnLFADX2K8VFHZKXc/+cKtHLu4Me3MIAffPrysFQkm4
         Wfbtn7cWatwrfdzpmWjnsKE5dUqxrf7DmXoDyMi+R8DbMb0Th3CCkrcFZYpCriIQ5reo
         VnY9AAem/YvuF8gVoqiG6KpPJ1oQbXDqyV/GsNBNiY82MAQFmwgM4wFhZo2wyzTkGckz
         Css8saa9vVmZEOgbUbT+zVUaHCekRqSfrz1UlVPXEO4wjy/isEGn67gEGoU046n/6lRz
         PGqxtU9cfgGW5/sVkEzrMvkBCge4+RMCB9g3p8TFHW3rug5cGhajDs3OPif6mbEGyuLN
         EFLA==
X-Forwarded-Encrypted: i=1; AJvYcCX1HKDrPpXch+ow+3VzeLUxatwtSslLr1UiK/ZBHXnRUeMthnCG8InGJdLf0itB2Zd8cQDzTL+azvHU@vger.kernel.org
X-Gm-Message-State: AOJu0YxzDXn0Y9G5oaMpXqotiw1QNiiUvhr1uMWia3WLmuFaUIr1gsSj
	KpORcmOJ2+/oY8KKO7NHe2Wlixy5F0t8iSQpnck9OIln/KJJtmfe3gkSGuWVVTpCGw==
X-Gm-Gg: ASbGncud3mDGL9ng0qcP4YPjX0W11iOZe7xdSDTDszx9YEUDA26ZXLHF0FP8/lXEq0I
	WfL+MnfQbzVZY4Zcv+7gJatX8SMaztr77Xg8o/RWL5OelPYkgJE6KWrenlIRgejZ2CsfhHGN34T
	nMREKHXcTGmp283lUorAcwNR55vuKrgWLXZq3ChLKn4WUGT4Kg8anV0OOStDSaerAEDpgo9kSJT
	PxG6Rf0V7IfYFZva6Exqd+7ekxfIjroHyE+kxnI9c+5HDgAaL39DR5o394bAJvJV9vgd7/awT+Z
	jcGr04pork6PKNVtq0i6juPfwTcv1YCC1YKsI3NbQYYzBURl83XuBBEYiPIg1Iagd5ZVBLz+MOs
	ifS41PwWlYFg5mGWVkgzBWWt/SuPy3MYBkz+7IWJJRmM81JQSO/H3HQyYdCXP7mOTXfFjuf3yNk
	4s5zvzlJLb1LZokj3C5gtitK6URmHyI4fw8gmIrzO0YF8R0n5TD5slGoCog6V2zv1HL0HF7riHO
	sepvn5C9mKYiA==
X-Google-Smtp-Source: AGHT+IG7vAAdnJdBV1xPAxMSocFYLV08aRb8J8ZFA9YU4wW1fgRuVRFaXJs0v7uY7YYTEmsaJSmrhw==
X-Received: by 2002:a05:7301:da82:b0:2a4:4e8f:5861 with SMTP id 5a478bee46e88-2a94188c7d0mr2414680eec.28.1764119967060;
        Tue, 25 Nov 2025 17:19:27 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30? ([2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a6fc3d0bb6sm95954083eec.2.2025.11.25.17.19.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 17:19:26 -0800 (PST)
Message-ID: <bb2ecf99-6153-4623-81ae-0fd41e4d306a@google.com>
Date: Tue, 25 Nov 2025 17:19:25 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] mfd: max77759: modify irq configs
To: Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20251123-max77759-charger-v1-0-6b2e4b8f7f54@google.com>
 <20251123-max77759-charger-v1-4-6b2e4b8f7f54@google.com>
 <5c901a6c831775a04924880cc9f783814f75b6aa.camel@linaro.org>
 <d2184e6b-ba22-423a-8d3c-3b8c2f8ec329@kernel.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <d2184e6b-ba22-423a-8d3c-3b8c2f8ec329@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 11/23/25 11:39 PM, Krzysztof Kozlowski wrote:
> On 24/11/2025 07:21, André Draszik wrote:
>>>   	if (ret)
>>>   		return dev_err_probe(&client->dev, ret,
>>>   				     "MAX77759_MAXQ_INT_APCMDRESI failed\n");
>>> @@ -633,7 +643,7 @@ static int max77759_probe(struct i2c_client *client)
>>>   		return dev_err_probe(&client->dev, -EINVAL,
>>>   				     "invalid IRQ: %d\n", client->irq);
>>>   
>>> -	irq_flags = IRQF_ONESHOT | IRQF_SHARED;
>>> +	irq_flags = IRQF_ONESHOT | IRQF_SHARED | IRQF_TRIGGER_LOW;
>> I don't believe IRQF_TRIGGER_LOW should be added here, as this is board-specific.
>> The polarity is meant to be set via DT (and the only current user of this driver
>> does so).
>>
> If this is the main chip interrupt, then you are right and the code is
> obviously wrong. What's more, it is completely unexplained in the commit
> msg, because that vague statement cannot be taken as any reasonable
> explanation.

You are right. As discussed in the thread with André, I will drop this 
particular change in the next rev.

BR,

Amit

>
> Best regards,
> Krzysztof

