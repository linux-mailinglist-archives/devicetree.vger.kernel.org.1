Return-Path: <devicetree+bounces-232819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C019C1BBEB
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E8EA189D54E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9DB534EF03;
	Wed, 29 Oct 2025 15:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WZggzqpc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8D833F363
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752485; cv=none; b=E+TXJpwXGbAsMLDy0S4s0e4VU1JXD+49EmRpZoBWFPRn8WoEOi6wGyVkcD4cMKEbRXg2l1JD1193XQ7dkr8I0kdQZ3fKikavOpchPT1gJmMfIamwdx8p8YV4qwOVl3WXvRjDpSjO5skNacQKvKJ8vxz7z4c1BdCnduTcikn0080=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752485; c=relaxed/simple;
	bh=Izt/M1eD7EaLetgRtHuStb92+B0cyCwMxO3AAqo27H0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=thwkJup5gaweglMqxicv1ijkCLUCi/lDc/pW02SRN7fHAR2fH2TOdo298JHykvgJ5NHJpNwUPAanYFu/9jmw2tJaW/B8BDKZbmw19qHTO8/q+rJ3nMtxYHkz3NpwrvRds49AO60jgQH3cVAvf0xxLPHG6ux8XSX8YQI6cGVSA8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WZggzqpc; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7a28c7e3577so57507b3a.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761752483; x=1762357283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l/v0zo/mXJp1eqDSZs81X2kYmENmq+DmgWPaQLy4E3g=;
        b=WZggzqpcAWDvPttiimXniEUgKPzxz34FtlGNM02/8BUX6kepdca3JyirJ2NdoKKujN
         tNgXGkxJ8MzcgPqRU6VoZnNP8AzxdDhuYwaajcY+HEuhEGLMUvoJAbf1J7cLJbCYRWJi
         qolx8zRfrpXz02/fQePBVAqZxPW+aFVY7H7Ylp2zKNxalTquK+e9Jx1hei0bTpkaF7CU
         H3ojd/gKsAor2igN8WDtmenjTF8tyvKPHKHeLdM7Z87MtiiHz0mbn0ekPNoYf6o7J/Z/
         wl9qeSy/1kuFHxPFifRrXYlJcVvatqjDx9hSnzIAWnADyIp0+xIHX4OQ8+lLiDNBa0Mz
         kAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752483; x=1762357283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l/v0zo/mXJp1eqDSZs81X2kYmENmq+DmgWPaQLy4E3g=;
        b=PRxefjWsN7RP/mbfjU6jxZUzNRmfWky/V4IcYVrjVELI/sHmOQ4mSWLb2c1DA+Knxc
         vYUmcjZDUA6N5qQ2yhNqZOMwMGsdc+w7dZ0sDbP+0hh87oMbTg2Oi+DdqFb1nD4GBxCA
         qLAdl+d2nj3eq6AjwXyYAbk/Aupgif4MINoycFZwKkDZYjLaIq6UGQ8k8zb6OpWypQz3
         bDEfLa+13jlS7S7KC2ByT6XXdX8O7gFaZGE6X7CrBFskFQsr/nK8/cIJaHIEIvCGLrGm
         RNIvM3D56we6c+d/rBAJOWuPCOGKDq1JszvL29xcD6SuQjezC29WAyRV4m2keESkP/ah
         2QBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRub3mK2581ve7ULOpqxets8XACr90DbTOhFrv6yRSN427Fyjg2STjhTT6umLzhK+d0SGP1cuSL2KP@vger.kernel.org
X-Gm-Message-State: AOJu0YwTps6I9Cilps+E2O4Ft4SlB91twFcqEXVQblQngwWr1wERD5q0
	IMifGK+mgiNV42JK6s+OSkTJZ27goia0hdBEl3xnYk02c08C9yKBrh/I
X-Gm-Gg: ASbGncvK7uIgNbXiLy/hi87QO+MEpTmkXtE81h5sb9HmsuFeO1Vr40o+7vk3zvk05QH
	7G4Crfc5mfAcR9598RxZZHI/qCeLnXUKt3slA5GFIv+XPs6m8JfBBabSXyo/mmHUdbfy5zW/gNp
	cMr92ln2OsBonX5yUY00nO9UzaZLSJQ++OoX+TK8to6DJ9KHx68dA9Fblb27qTUVmQsZvEL48pu
	/IbAdrlpROY9HSNENwFnn53d+hvrlQ0j8gdVxmKmW7ilurAbkXITfNWSrK5oRVQtcrNjifIXY33
	KpO6PMWGywd1kAppJVp3+Zd9JX4Wm+oPzDLQyY5OjqRnriYMWXoNsyg1H1xrKelxnB0R6IOZGm8
	EMwRgJJgcJj/D6aS+gXyoodvQyHUJpyDcJt+3SMQf/OOoJ4XnTteibfUFs4R2tNGg93dyqc9pXu
	3h5cU+348QZAf//+RcLFvL5EYPNBj9uLNWTW5FIE8BXmnrnGWlkswwho7vLiHj
X-Google-Smtp-Source: AGHT+IHTX+Ow2y8Hi8c0rRLKMQlmI+u7C/NGkFheWrGjKnKPUoBmwC8nhsbP1FbgqylJ1UJ/aCLp7g==
X-Received: by 2002:a17:903:234c:b0:28e:7841:d437 with SMTP id d9443c01a7336-294deea30e2mr37900855ad.38.1761752482989;
        Wed, 29 Oct 2025 08:41:22 -0700 (PDT)
Received: from [192.168.0.3] (124-218-201-66.cm.dynamic.apol.com.tw. [124.218.201.66])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm153773295ad.12.2025.10.29.08.41.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 08:41:22 -0700 (PDT)
Message-ID: <d2d031ab-6a88-4c7e-bf61-29ad95d8ecaa@gmail.com>
Date: Wed, 29 Oct 2025 23:41:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/15] arm64: dts: mediatek: mt7981b-openwrt-one: Enable
 Ethernet
To: Sjoerd Simons <sjoerd@collabora.com>, Eric Woudstra
 <ericwouds@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang
 <jianjun.wang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 Daniel Golle <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>,
 albert-al.lee@airoha.com
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
 <20251016-openwrt-one-network-v1-12-de259719b6f2@collabora.com>
 <4f82aa17-1bf8-4d72-bc1f-b32f364e1cf6@lunn.ch>
 <8f5335a703905dea9d8d0c1840862a3478da1ca7.camel@collabora.com>
 <05610ae5-4a8a-47e9-808b-7ff98fade78e@gmail.com>
 <408842eda1caa53247ff759cd9ea75dcab624594.camel@collabora.com>
Content-Language: en-US
From: "Lucien.Jheng" <lucienzx159@gmail.com>
In-Reply-To: <408842eda1caa53247ff759cd9ea75dcab624594.camel@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

Sjoerd Simons 於 2025/10/28 下午 09:24 寫道:
> On Tue, 2025-10-28 at 12:14 +0100, Eric Woudstra wrote:
>>
>> On 10/21/25 10:21 PM, Sjoerd Simons wrote:
>>> On Fri, 2025-10-17 at 19:31 +0200, Andrew Lunn wrote:
>>>>> +&mdio_bus {
>>>>> +	phy15: ethernet-phy@f {
>>>>> +		compatible = "ethernet-phy-id03a2.a411";
>>>>> +		reg = <0xf>;
>>>>> +		interrupt-parent = <&pio>;
>>>>> +		interrupts = <38 IRQ_TYPE_EDGE_FALLING>;
>>>> This is probably wrong. PHY interrupts are generally level, not edge.
>>> Sadly i can't find a datasheet for the PHY, so can't really validate that
>>> easily. Maybe Eric can
>>> comment here as the author of the relevant PHY driver.
>>>
>>> I'd note that the mt7986a-bananapi-bpi-r3-mini dts has the same setup for
>>> this PHY, however that's
>>> ofcourse not authoritative.
>>>
>> Lucien would have access to the correct information about the interrupt.
> Thanks! For what it's worth i got around to putting a scope on the line last
> night. It looks like the interrupt line is pulled down until cleared, so it
> appears it's indeed a Level interrupt as Andrew guessed. But would be great to
> have this confirmed based on the documentation :)

The Airoha EN8811H Interrupt behavior is as follows:

When the line side link changes (up→ down or down → up), GPIO 8 will 
output low.

After you clear the interrupt, GPIO 8 will go high. Regarding the 
documentation, let me check where I can put it.

If you have any questions about the EN8811H, please feel free to discuss 
with me.



