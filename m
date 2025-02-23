Return-Path: <devicetree+bounces-150079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCABA411E3
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 22:17:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBDB53B0181
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 21:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482B882866;
	Sun, 23 Feb 2025 21:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="bJ6kfzty"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F87224FA
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740345446; cv=none; b=FvyFmspIDuu8yO3CPQKyyszuugZtq+O9AIzqqjdOoc4GFvITuUNzJXw2G94QTw8HMDdRq94107/XI4DQVG4TX8XrY5ewB7tB4sgcNknnEM3jxDJdJPh9y8RRJTLSa5ReTIcAawviPHRXcQQc2Cy20hTbw9hxoalgkec4JXt9oFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740345446; c=relaxed/simple;
	bh=iSBm3DzLoDyPUfaUlnC/tWvqlUUMiAa7Pm+xFEp4io0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n/PzF6q99Xw9aGDNrqH51IDPgMR/tbxok7T/vmgpykvLmehcLh1jTYV1oo5cz9Hi3LptqaTIW1NJBD/Lv1OwuQ5kDdvJF5l+jrK9C7TTQCQRbBZo3zJYEUhjobRa6vYLQhvQLU9Xy1i8iZCtC16N3/9awvRh80rchtUD77NRlWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=bJ6kfzty; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1740345441; x=1740950241; i=wahrenst@gmx.net;
	bh=iSBm3DzLoDyPUfaUlnC/tWvqlUUMiAa7Pm+xFEp4io0=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=bJ6kfztyjFaeNif49epFZ3vEXI45AqiY0/cW58fnEmmVH+E4gbYwMQ+MixE7VpwL
	 3Gg0BWFEyfYad8fkyqce4+gUgmvtABr4uARoSCtraRgpOIs3mqqi0HDyD7HQc0e8A
	 cphawjeE/8WFxyVrzrYZQmXrk63MnvyOawxaRtPCFyehQMbxgYxUKgqPkIVtdq275
	 bxtEVMpv4zcmrerVYq8i2+HobIbuLZLT3Z8JAGKoMal4QffmW3pp9DFju8uAsXZEW
	 QQvBTbpembI61xASqSNg8RD7Gab+c0gGkmC5lHXty0veuN1C3TAT+MfM27xnRtNv4
	 NY/5e7nEiYSUims5mg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.107] ([37.4.251.153]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M7sDg-1thLXf1glG-0023lV; Sun, 23
 Feb 2025 22:17:21 +0100
Message-ID: <1706e1e2-f7fc-4dfc-8189-732ed6c72a2a@gmx.net>
Date: Sun, 23 Feb 2025 22:17:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: PL011 UARTs are actually r1p5
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 Andrea della Porta <andrea.porta@suse.com>
References: <20250223125614.3592-1-wahrenst@gmx.net>
 <20250223125614.3592-2-wahrenst@gmx.net>
 <fb23aeaf-4e24-484c-a0ee-56781892fdda@gmail.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
Autocrypt: addr=wahrenst@gmx.net; keydata=
 xjMEZ1dOJBYJKwYBBAHaRw8BAQdA7H2MMG3q8FV7kAPko5vOAeaa4UA1I0hMgga1j5iYTTvN
 IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+wo8EExYIADcWIQT3FXg+ApsOhPDN
 NNFuwvLLwiAwigUCZ1dOJAUJB4TOAAIbAwQLCQgHBRUICQoLBRYCAwEAAAoJEG7C8svCIDCK
 JQ4BAP4Y9uuHAxbAhHSQf6UZ+hl5BDznsZVBJvH8cZe2dSZ6AQCNgoc1Lxw1tvPscuC1Jd1C
 TZomrGfQI47OiiJ3vGktBc44BGdXTiQSCisGAQQBl1UBBQEBB0B5M0B2E2XxySUQhU6emMYx
 f5QR/BrEK0hs3bLT6Hb9WgMBCAfCfgQYFggAJhYhBPcVeD4Cmw6E8M000W7C8svCIDCKBQJn
 V04kBQkHhM4AAhsMAAoJEG7C8svCIDCKJxoA/i+kqD5bphZEucrJHw77ujnOQbiKY2rLb0pE
 aHMQoiECAQDVbj827W1Yai/0XEABIr8Ci6a+/qZ8Vz6MZzL5GJosAA==
In-Reply-To: <fb23aeaf-4e24-484c-a0ee-56781892fdda@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:yj+EYP6aKED/Bu7wDRndll2JSeQ2wRkpPQSrhiIPgH9yosqiW2u
 pX2IGZD2l8Ur8gTZJLcIVYjVy33+LJZIm7vUWx5pd2zqhNjff3wwUAobjoOnD6URDLNehIy
 ESuMS1L7sx8sLcEdDRwi0J2rCAWw+HLPF84NfDe58hdviSlMQLoKd6ihjERJuwYK5xJTaPo
 IlpDc2i44QZa+cuJxDzpQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:zUv2yK7VM0M=;YvslNM9qth1z/pbNqC3mjzObKZh
 9OQsB773iIgkScfns0ie4vIzSzHHK+eLLqjuHE5vTpBw53eI8c/HGxnyIf8SFK8iYWfshz2oN
 feI3q7/Hfet2OSaC4VeAlyEvg7fMT2UuWSvrx7gHPrnAKhEydPP0V/K+2uA486rAqdAi1a7sS
 TlJG5VAfaZxwdhKS7AC7EMIGFYMaQJ4fQWJFQmVEP8COjC+yJJk68zVQfPWqC7s707a2SR3Gl
 sJNDcrcxZ0Xi31dUJiJGRAdxRMhF7toOTYhZdG4WAzNi41wJY7fXUMFIABVR6tsdpBOKonL5Z
 jcL8o7kDkW8C1tQ+dRwICX905+x8jmmIwZXKiPjAXYeTScT+C/nEfZE8txZo/1rT+ItS5vfTe
 37/s1ldIIAfu2OLG0Tp+fKNGm07otxWrnF4AWL9uNR9nry0APu6X8r4EbQkG0XWu6htkUGtUd
 dl+cZeq0PJTgz6HylH41yBcDlybnJAetRAVGfRuCxAhKKURZ4ghWQS5uK+WO20jcwGQLEJ33a
 LoblI5+tjlE/sAJqxdXvkKhwKQlPAE8xNVL2RCAjw4F1YjRUs8PBLu0IWv7dmzWTjZWRDXo0L
 4vEct8DY7TWeufwJIa+Lw0Vtpa3jwsEAmmE/VhMMrVyqY323I1hSeeGVY3wIhlo1klckbyeeE
 TvvwgwOg9/BjuB3yFifQNqCwi07elosslGltDWS2cxJocCISi54MThdvNtJHm7sByF2DJnw24
 17fIB463/j6Cq2+lUSin0CpRcaeVhwO07RKJ+dBE0FJLi/3K/tpOpIPnqeIkviW61ZRusqJ08
 R2ejtmhjrLTRFvsf19X1JuBjcBxNYyTZsWB+h2/IGiizbBBsuKrMz+Q/sUXxta/NhbPyNH13f
 M/wnub3SDXneZdVCAZiveU75HNo5Ly99AXZyv/aVAUYZfl4vEDYu6FSJTHoZOrRpET6YnJkhh
 BjFq/Ru4dbFuFWxvtE6JxWcUn4tVZ6wnP7c9SpKO5Zi/mAvR8ke8sJIavjsLOpAUPXhdLds7F
 Q+NLcFtIFOUMhEuoiH5a+m4B5BHQFFuKtUXYiNo1aKo9EOr6bCk3IMZQY+unY/vrF2BnkbDBJ
 K4dWhg91HdKBGTKO2j1euTrry3DDn1s7cxNp7m9lvBMe3uhDSGGUnk10Z6fjE5XtJhDZhFeRL
 /fa/C1/oydVKONRx9v2dI8PUEwW9SKYGCilyYoNVRd8+cIMRaWgcFtHv6TSRBDKuUU0+hmVhs
 u9CX2O35tKvwobQ6kvQ2K+vEHM6McoRHjGGni85ivyTb50SlPkZae627jCIN3a5etWzaz2MKN
 ZLNUsbN4mwONk7smrRv5dlgO+ObKg+SJ4gBo1YrTb+QsDY0UnU8wMa29XFv0VdBDeQSYkibib
 9AjI06b39R+7f9GMj/Eese8FKxLoA656qhIfgRbvypRU1ZB1B2R8w2Y4iQ

Am 23.02.25 um 17:58 schrieb Florian Fainelli:
>
>
> On 23/02/2025 04:56, Stefan Wahren wrote:
>> From: Phil Elwell <phil@raspberrypi.com>
>>
>> The ARM PL011 UART instances in BCM2711 are r1p5 spec, which means they
>> have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
>> Thanks to N Buchwitz for pointing this out.
>
> Should not that require warrant a Reported-by here?
I tried to find the original discussion, but i couldn't find it. Also I
don't know if this person wants their mail address published.
>
>>
>> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>
> Some people might consider this to be a bug fix, mind adding a Fixes tag=
?
tbh, i'm not aware of any (real) negative impact, but yes i'm fine to
add it.
>
> Thanks!


