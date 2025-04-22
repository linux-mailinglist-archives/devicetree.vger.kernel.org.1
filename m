Return-Path: <devicetree+bounces-169518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CB7A97317
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:52:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E8CC3BA74E
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 16:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7743C29009F;
	Tue, 22 Apr 2025 16:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="AACxaMUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1081818D63A
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745340735; cv=none; b=JtJQjYOcBV2wNZr0IxeMeMHnYOg/+0WCbOGgc4tUyvul0lLpFkWEEUc9qsZeXJCmBJCHKcSji02iXzUlbqreYm2ZevltM3LXWPVs3bdXCMpv+R3TDvHcKdthJ9CmEXbppu8tj+0pbRnjqu55yKeeAlVtiiDkQG/4gGBrLJVA6es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745340735; c=relaxed/simple;
	bh=vb/UuvQJ/MnxnkENHhrxTGWHwd2hZbL1WTOH5EmxuVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g0UXTfl2m1J2lzGDOk4+6ebZ845A7YPjtje0ngWJwujD3w+27PQJW2yKseUdF9fgakux0dOO05uQWRpgQ5+264d4NF+CroiG+zhCUL2WasXl6++zvaQZvqRaRctKQj8SCeA7m+h/QBLrIJa2EXVzPLyjJlcyDR811K9ndz10HQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=AACxaMUU; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1745340718; x=1745945518; i=wahrenst@gmx.net;
	bh=TvEkbWyeDxETYr2xfBNsQE8AupZVuzc0vP1e8ZAeTgU=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=AACxaMUUNMLVYm3wTFk90u+JHSdp/YytQIqJTT0yL6Lsd1Bvss6zadeGGYYqXXBh
	 Sde5IWA+PR+RWpFaXmkwwEPcSDqbReXtzQG61o5BsQM2BgeA0e0v6m6upzB+U5BCT
	 KIhMW5M/O2kMNI9cQ0BKG0XWq8MLkYhbU7gM+0C43xmYJXkhXYv3qD5i+B0T+rLEu
	 iUhak+5vzZKrxPld2VoWMUD4L2CCB7rXTGSfo1bOGMJ50uemaDljZHvH0X5Q3wxJL
	 nhmN/YjJYY10yTGdaVhDoA61NO+7o+ekiRgoa6prQTmvNQ8qKsMRpffZ+vefdOQTx
	 Z5pPXDFF16vd0mhXFw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.107] ([37.4.251.153]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mq2jC-1ut2C41tis-00phRS; Tue, 22
 Apr 2025 18:51:58 +0200
Message-ID: <52e33f92-3b65-48e3-b0ed-78d677c090de@gmx.net>
Date: Tue, 22 Apr 2025 18:51:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd
 rev)
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Andrea della Porta <andrea.porta@suse.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel-list@raspberrypi.com,
 devicetree@vger.kernel.org
References: <20250418143307.59235-1-wahrenst@gmx.net>
 <174524752073.2425603.8578531358448226652.robh@kernel.org>
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
In-Reply-To: <174524752073.2425603.8578531358448226652.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:xhaZFITCMcJp7IiI3n4ec3XnEN2eODn6rnC6yhZbT4CmkeeKN9L
 RRFlDyYUc3cDFn2ACHLyhRDjSQZPbhuXUxe7U5TG5dRJfkjnFoQRLyM+K467dvPt1m1WgTj
 x1WMTHQL/q4s16SVCZvrFS12pmBpSh1Ig4zyvcyRdTSbQtietoVZggYGvQLfS2oe3HmasYF
 7tsRnAHesx/Smdebcz4Gw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:VMMSKMR7IDo=;NMvkvdufqTOCMD5dLradufHHlVK
 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

Am 21.04.25 um 17:07 schrieb Rob Herring (Arm):
> On Fri, 18 Apr 2025 16:33:04 +0200, Stefan Wahren wrote:
>> This series adds support for the Raspberry Pi 2 (2nd rev).
>>
>> Stefan Wahren (3):
>>    dt-bindings: arm: bcm2835: Add Raspberry Pi 2 (2nd rev)
>>    ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd rev)
>>    arm64: dts: bcm: Add reference to RPi 2 (2nd rev)
>>
>>   .../devicetree/bindings/arm/bcm/bcm2835.yaml  |   1 +
>>   arch/arm/boot/dts/broadcom/Makefile           |   2 +
>>   .../arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts | 130 +++++++++++++++++=
+
>>   arch/arm64/boot/dts/broadcom/Makefile         |   1 +
>>   .../boot/dts/broadcom/bcm2837-rpi-2-b.dts     |   2 +
>>   5 files changed, 136 insertions(+)
>>   create mode 100644 arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts
>>   create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837-rpi-2-b.dts
>>
>> --
>> 2.34.1
>>
>>
>>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to repl=
y
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>    pip3 install dtschema --upgrade
>
>
> This patch series was applied (using b4) to base:
>   Base: attempting to guess base-commit...
>   Base: tags/next-20250417 (exact match)
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm/boot/dts/broadcom=
/' for 20250418143307.59235-1-wahrenst@gmx.net:
>
> arch/arm/boot/dts/broadcom/bcm958625-meraki-mx65w.dtb: usb@2a000 (generi=
c-ehci): Unevaluated properties are not allowed ('dma-coherent' was unexpe=
cted)
> 	from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml#
this is not relevant here
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: soc (simple-bus): gpu: '=
ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: soc (simple-bus): firmwa=
re: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: soc (simple-bus): power:=
 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/cprman@7e101000: fa=
iled to match any schema with compatible: ['brcm,bcm2835-cprman']
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/gpio@7e200000: fail=
ed to match any schema with compatible: ['brcm,bcm2835-gpio']
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/i2s@7e203000: faile=
d to match any schema with compatible: ['brcm,bcm2835-i2s']
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/aux@7e215000: faile=
d to match any schema with compatible: ['brcm,bcm2835-aux']
> arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/interrupt-controlle=
r@7e00b200: failed to match any schema with compatible: ['brcm,bcm2836-arm=
ctrl-ic']
AFAICS all of these comes from existing dtsi files. I will try to=20
address some of them in a separate series as soon as my backlog is empty.

Best regards

