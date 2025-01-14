Return-Path: <devicetree+bounces-138469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE315A108AE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81A9E7A2E9E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B89413C67E;
	Tue, 14 Jan 2025 14:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remarkable.no header.i=@remarkable.no header.b="cgZ3Xh1y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E7B8C07
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736863778; cv=none; b=BFr2FhlIn3eSEWiRIXqUCVrZjowUstYXfImr4ZPsUiPe+48kHGu/sY4xMR+wTzGM3pWqBJVsLFw0ezc7yL85v3J/b2BSSmMmtHyhwrT1AAbN9pVUmm0h8o0hao8tdIRbhrA75HEroDpmZdtM08gdTfzgzfhhcrsjp6Vne+JvkL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736863778; c=relaxed/simple;
	bh=Rw0YwheHGkjgBmtJ3XrHVYkwWRiQHC6U1g7GiN7Nu8Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F/Rk/7y6O8XF01DMWuieD6aT3bJLMiHgybFpt//th7lkVCtrskewogYb66NWtkz4T1BAWv3VFNEcuRhQUhdE9Ch0kBQhTLHSdZEBJDDZQ5Mou2NUIOtFGw24W2Ezuby6VhlPllhF72wHNONVf/BypIjtN3A1Cq8vp5mzV2wj3hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=remarkable.no; spf=pass smtp.mailfrom=remarkable.no; dkim=pass (2048-bit key) header.d=remarkable.no header.i=@remarkable.no header.b=cgZ3Xh1y; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=remarkable.no
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remarkable.no
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54287a3ba3cso5504628e87.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 06:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remarkable.no; s=google; t=1736863774; x=1737468574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=91GZIzgjXBcFI31iM5fj3Hf8Rb+AoJ8tIZRBGy0zkpw=;
        b=cgZ3Xh1yd4WUFzHL4mi7PFoIxQv79JiX1BcXqx6H4FA8VWs9gEYx+G16/4HQx31A28
         LNyN7SaR1mn63ksfnmHfDnsIv7g7zwaYqXjfuSJAtjjg12UMEN8jdwHh3l9s3m4iRNhc
         4VFcu4+RaF9DGbfrZJsFm4K2njY/5rxDxVLFtfLhD1T/COAkhplwVb092a0bmF6q879C
         3V9V6lm7ah2TLrC47NNOCFlEltc1UvA3AGFo+0PvvL3gfdW6sopAJOH2wN3zEd6T/XW5
         bnN+5RUIEn5OhsCMQgkGEyJMwfPjG6904l6/UPlaiMw4nWRnYTIjtBJAJWn3HItV0RE1
         XLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736863774; x=1737468574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=91GZIzgjXBcFI31iM5fj3Hf8Rb+AoJ8tIZRBGy0zkpw=;
        b=ti0kJGE7H0X7p+2zO85YRgFHZnxuG3nxRrYML4LYQwUTUQzdsYXH/4Bg56jxgWsPEM
         RAbyQ+P4ShCngqiVBZ3sO4bAyaUQWKiRMpAWwlPAwtHXPf6Gz6lAQYVFA3uTBYWeBgOx
         CZWjwS6vneE6anpqnFvmG1JpRFrzAPTV3/Uzl20mjWQ+k/5keo7XwNqj7VDJuyeML3xv
         Pwj77x968vOTpSdB+ZRRTFuYK7qs5530Xeif0QnRgvRkI5up2B1V/ysAE7vj7Y+NVN7n
         0VooXIwae+tnX+OjPrZV+E/BI/Y/KCj1jGiB0vtzPvAI00goTQnBi3eUk6g7ewPGvogC
         S8Ng==
X-Forwarded-Encrypted: i=1; AJvYcCX6Age6FB8yBQlG2ljNBKze0lCAxJDtwjW5SZHNUX8N1PTWStE9w814p9QeueWBWpo62XYddfpXmEuP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7mNXlMeMLWnTi2BMIGnScyxcDZlGUby0JQ0JtFHXwHFA6u0hl
	4CKXRd6K56x8e/SIOLzvgrlArMcgdneNnIIZ4CIS1SOUa9qPsuFJl/WUQE9Gxg==
X-Gm-Gg: ASbGncsTxhDNu6HWpnj9WHZAheXcw/ihtoXXEc8MmkAxlfYjnXfJdRlNMGd5Ggi08uM
	16Fa9MGl2ujHubOlOkkvRuoYS+5rKubmyOtuvlUGKhAakOrZssnob388fAuIHeWImyLQ/QPUhIw
	0gVj6P7UPy4//wtuuKlli3N2gDPW5MYFBbkuXZAftM/oe9z1KVcAdGFffGAkVHsni0zNVgAInzy
	4ne7XOwIBPkvJEKc9QL6yRzjJlPnAQ1WLhAauRmMQYdwfUVlxHm/KTTXqtdgLvXbNAPR8gntX6c
	15mUAe1uNq9ckz0ahgSIrRQO7nIwWc0=
X-Google-Smtp-Source: AGHT+IFoRDuCSh+PCWGYFtIoF6NIctlAFX3rohBL5ZQstpfFeSZSElly5OSQJQFTSaC7IKBKDWvYhg==
X-Received: by 2002:a19:6a0f:0:b0:542:8a7c:509f with SMTP id 2adb3069b0e04-5428a7c5293mr5001343e87.2.1736863774384;
        Tue, 14 Jan 2025 06:09:34 -0800 (PST)
Received: from ?IPV6:2001:4643:2b9c:0:742e:f778:f9f1:b089? ([2001:4643:2b9c:0:742e:f778:f9f1:b089])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be4999bsm1687773e87.14.2025.01.14.06.09.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 06:09:33 -0800 (PST)
Message-ID: <30b09e71-6790-4ab2-8945-e011996ee85f@remarkable.no>
Date: Tue, 14 Jan 2025 15:09:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] Bluetooth: btnxpuart: Add support for set BD
 address
To: Neeraj Sanjay Kale <neeraj.sanjaykale@nxp.com>,
 "marcel@holtmann.org" <marcel@holtmann.org>,
 "luiz.dentz@gmail.com" <luiz.dentz@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>
Cc: "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Amitkumar Karwar <amitkumar.karwar@nxp.com>, Sherry Sun
 <sherry.sun@nxp.com>, Luke Wang <ziniu.wang_1@nxp.com>,
 "kristian.krohn@remarkable.no" <kristian.krohn@remarkable.no>,
 Manjeet Gupta <manjeet.gupta@nxp.com>
References: <20250114133548.2362038-1-neeraj.sanjaykale@nxp.com>
 <20250114133548.2362038-2-neeraj.sanjaykale@nxp.com>
 <43beb3f3-071d-4f58-b356-6dc6b9de947a@remarkable.no>
 <PA4PR04MB9687E566EEC90DEF5FB44A2CE7182@PA4PR04MB9687.eurprd04.prod.outlook.com>
Content-Language: en-US
From: Johan Korsnes <johan.korsnes@remarkable.no>
In-Reply-To: <PA4PR04MB9687E566EEC90DEF5FB44A2CE7182@PA4PR04MB9687.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/14/25 3:07 PM, Neeraj Sanjay Kale wrote:
> 
> Hi Johan,
> 
>>
>> On 1/14/25 2:35 PM, Neeraj Sanjay Kale wrote:
>>> This adds support for setting BD address during hci registration. NXP
>>> FW does not allow vendor commands unless it receives a reset command
>>> after FW download and initialization done.
>>> As a workaround, the .set_bdaddr callback function will first send the
>>> HCI reset command, followed by the actual vendor command to set BD
>>> address.
>>>
>>
>> Hi Neeraj,
>>
>> If NXP firmware does not allow vendor commands prior to this reset, would it
>> not be better to perform this reset during probe/init?
>>
> HCI reset is already part of kernel init sequence hci_init0_sync().
> However, .set_bdaddr() is called immediately after FW download is complete, but before this init sequence.
> 
> Also, if local-bd-address property is not defined in the DTB, sending HCI reset command in probe does not add any value.
> 
> With current implementation, if local-bd-address is defined, driver sends HCI reset, followed by set BD address vendor command, and kernel continues with the HCI init sequence.
>

Thanks for clarifying, that makes sense :-)

Kind regards,
Johan

> Thanks,
> Neeraj


