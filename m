Return-Path: <devicetree+bounces-59660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ECA8A67F2
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 12:14:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B34E1C21390
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 10:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6139126F02;
	Tue, 16 Apr 2024 10:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="oad1UeCs"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9083F86659
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 10:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713262457; cv=none; b=hHr9NXMjVRnmQWJOocONzfaFpSVu23ehmXDwCR7pg8TQc1xe4F2/McokVkt4IWlpcbygmABjRZ/6k6PVgMDpNVLI4H4s7dSQlR8NAsATkwuNN9R79Fp9f26mRGOWcQK3894/QcysoY6WBkx0q14CJN/ILn/FxPQt0udCpBJWtQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713262457; c=relaxed/simple;
	bh=x65LFtLFF5VvE/qywRhggy4zbjOkQ5P03aZ0K87Sqvg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MuCKdegziqmxlPHNKjsG9yqXuQDXT6Etgu96oTPDXBlOQGg56ElxE+3nIV1VBAEl8oUX2h0vqZF+At36DN5D9t+IU4gssjnDRjbTl0yaMjJy8AJjpdGbVM6sWLFxAgcNdgh1qhuQagtTPtC0UmUihNCnrt9x+EMuLQQUA5SAO4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=oad1UeCs; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RW6+h7t9p1LI5fWEQcjpviq/acxasqEv8/PAV3cJpec=; b=oad1UeCs/e0CtxUZjqHx12YOjq
	BsUZml4mFATJCDuaEP2+xsEl7H6Ndwa6FQGOxZ/19dnoe0jga0MuXG0wZ+9QEG3kUbvM0fdiRhjRB
	tB9bHWLqjLVlnUE+WbJ6V/QorP2acJXGh98cVrXHpe1vGD3fQbIxTBXLxONo+4jbWHDDbOfbaLMbx
	b2INWIsFQgyGXKtAGHOvgKHw+5z9W2grJ0kxlxhhc7vFjbVjUcHlcCmqxmWOS5mAzH0OY0KK76+yt
	4f0yG1FGMt9YAuY4kf9GtB/NaFZVScLaxUHpOIuqH/LsSSok5Cc2EBYYr0ATzriyzT85UkejFZBn3
	FvCXFx+Q==;
Received: from [177.34.169.177] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rwfp9-00570E-Fp; Tue, 16 Apr 2024 12:14:00 +0200
Message-ID: <2f6e13c7-e6d6-414f-b97d-d9a02ae6a696@igalia.com>
Date: Tue, 16 Apr 2024 07:13:51 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: bcm2835: Enable 3D rendering through V3D
To: Stefan Wahren <wahrenst@gmx.net>, Andre Przywara <andre.przywara@arm.com>
Cc: Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Romain Perier <romain.perier@gmail.com>, dri-devel@lists.freedesktop.org,
 bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com
References: <20240415160129.14149-2-mcanal@igalia.com>
 <20240415175433.6e63d40f@donnerap.manchester.arm.com>
 <dc9f2926-3a8f-4191-9319-3d7e78c6758b@igalia.com>
 <41629496-9be6-470c-931b-146ca22cdd7e@gmx.net>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Autocrypt: addr=mcanal@igalia.com; keydata=
 xjMEZIsaeRYJKwYBBAHaRw8BAQdAGU6aY8oojw61KS5rGGMrlcilFqR6p6ID45IZ6ovX0h3N
 H01haXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT7CjwQTFggANxYhBDMCqFtIvFKVRJZQ
 hDSPnHLaGFVuBQJkixp5BQkFo5qAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQNI+cctoYVW5u
 GAEAwpaC5rI3wD8zqETKwGVoXd6+AbmGfZuVD40xepy7z/8BAM5w95/oyPsHUqOsg/xUTlNp
 rlbhA+WWoaOXA3XgR+wCzjgEZIsaeRIKKwYBBAGXVQEFAQEHQGoOK0jgh0IorMAacx6WUUWb
 s3RLiJYWUU6iNrk5wWUbAwEIB8J+BBgWCAAmFiEEMwKoW0i8UpVEllCENI+cctoYVW4FAmSL
 GnkFCQWjmoACGwwACgkQNI+cctoYVW6cqwD/Q9R98msvkhgRvi18fzUPFDwwogn+F+gQJJ6o
 pwpgFkAA/R2zOfla3IT6G3SBoV5ucdpdCpnIXFpQLbmfHK7dXsAC
In-Reply-To: <41629496-9be6-470c-931b-146ca22cdd7e@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/16/24 02:30, Stefan Wahren wrote:
> Hi Maíra,
> 
> Am 16.04.24 um 03:02 schrieb Maíra Canal:
>> On 4/15/24 13:54, Andre Przywara wrote:
>>> On Mon, 15 Apr 2024 13:00:39 -0300
>>> Maíra Canal <mcanal@igalia.com> wrote:
>>>
>>> Hi,
>>>
>>>> RPi 0-3 is packed with a GPU that provides 3D rendering capabilities to
>>>> the RPi. Currently, the downstream kernel uses an overlay to enable the
>>>> GPU and use GPU hardware acceleration. When deploying a mainline kernel
>>>> to the RPi 0-3, we end up without any GPU hardware acceleration
>>>> (essentially, we can't use the OpenGL driver).
>>>>
>>>> Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.
>>>
>>> So I think Krzysztof's initial comment still stands: What does that
>>> patch
>>> actually change? If I build those DTBs as of now, none of them has a
>>> status property in the v3d node. Which means it's enabled:
>>> https://github.com/devicetree-org/devicetree-specification/blob/main/source/chapter2-devicetree-basics.rst#status
>>>
>>> So adding an explicit 'status = "okay";' doesn't make a difference.
>>>
>>> What do I miss here?
>>
>> As mentioned by Stefan in the last version, in Raspberry Pi OS, there is
>> a systemd script which is trying to check for the V3D driver (/usr/lib
>> /systemd/scripts/gldriver_test.sh). Within the first check, "raspi-
>> config nonint is_kms" is called, which always seems to fail. What
>> "raspi-config" does is check if
>> /proc/device-tree/soc/v3d@7ec00000/status is equal to "okay". As
>> /proc/device-tree/soc/v3d@7ec00000/status doesn't exists, it returns
>> false.
> yes, but i also mention that the V3D driver starts without this patch.
> The commit message of this patch suggests this is a DT issue, which is not.
> 
> I hadn't the time to update my SD card to Bookworm yet. Does the issue
> still exists with this version?

I'm using a 32-bit kernel and the recommended OS for 32-bit is Bullseye.
But I checked the Bookworm code and indeed, Bookworm doesn't check
the device tree [1].

I'm thinking about sending a patch to the Bullseye branch to fix this
issue.

[1] 
https://github.com/RPi-Distro/raspi-config/blob/966ed3fecc159ff3e69a774d74bfd716c04dafff/raspi-config#L128

Best Regards,
- Maíra

>>
>> I'll send if I can improve the userspace tool by just checking if the
>> folder /proc/device-tree/soc/v3d@7ec00000/ exists. >>
>> Thanks for the explanation!
>>
>> Best Regards,
>> - Maíra
>>
>>>
>>> Cheers,
>>> Andre
>>>
>>>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>>>> ---
>>>>
>>>> v1 -> v2:
>>>> https://lore.kernel.org/dri-devel/41694292-af1f-4760-a7b6-101ed5dd6f9d@gmx.net/T/
>>>>
>>>> * As mentioned by Krzysztof, enabling should be done in last place of
>>>>     override/extend. Therefore, I'm disabling V3D in the common dtsi
>>>>     and enabling in the last place of extend, i.e. the RPi DTS files.
>>>>
>>>>   arch/arm/boot/dts/broadcom/bcm2835-common.dtsi      | 1 +
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts   | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts        | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts   | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts   | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts        | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts  | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts   | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts     | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts      | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts      | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts  | 4 ++++
>>>>   arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts | 4 ++++
>>>>   15 files changed, 57 insertions(+)
>>>>
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
>>>> index 9261b67dbee1..69e34831de51 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
>>>> @@ -139,6 +139,7 @@ v3d: v3d@7ec00000 {
>>>>               compatible = "brcm,bcm2835-v3d";
>>>>               reg = <0x7ec00000 0x1000>;
>>>>               interrupts = <1 10>;
>>>> +            status = "disabled";
>>>>           };
>>>>             vc4: gpu {
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts
>>>> index 069b48272aa5..495ab1dfd2ce 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts
>>>> @@ -128,3 +128,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts
>>>> index 2726c00431e8..4634d88ce3af 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts
>>>> @@ -121,3 +121,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts
>>>> index c57b999a4520..45fa0f6851fc 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts
>>>> @@ -130,3 +130,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts
>>>> index ae6d3a9586ab..c1dac5d704aa 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts
>>>> @@ -121,3 +121,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts
>>>> index 72764be75a79..72ca31f2a7d6 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts
>>>> @@ -115,3 +115,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts
>>>> index 3f9d198ac3ab..881a07d2f28f 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts
>>>> @@ -95,3 +95,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts
>>>> index 1f0b163e400c..1c7324067442 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts
>>>> @@ -134,6 +134,10 @@ &uart1 {
>>>>       status = "okay";
>>>>   };
>>>>   +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>>   &wifi_pwrseq {
>>>>       reset-gpios = <&gpio 41 GPIO_ACTIVE_LOW>;
>>>>   };
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts
>>>> index 539c19c10946..1568ddc78f22 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts
>>>> @@ -117,3 +117,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts
>>>> index 79918033750e..8fab6293d1c7 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts
>>>> @@ -129,3 +129,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts
>>>> index 3548306dfbcb..dc45b56054c7 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts
>>>> @@ -156,3 +156,7 @@ &uart1 {
>>>>       pinctrl-0 = <&uart1_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts
>>>> index 2f1800cbc522..ce3a9f7ff529 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts
>>>> @@ -161,3 +161,7 @@ &uart1 {
>>>>   &wifi_pwrseq {
>>>>       reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts
>>>> index 61270340075c..e398546d105b 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts
>>>> @@ -149,6 +149,10 @@ &sdhost {
>>>>       bus-width = <4>;
>>>>   };
>>>>   +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>>   &wifi_pwrseq {
>>>>       reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
>>>>   };
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts
>>>> index 72d26d130efa..50471ada79b3 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts
>>>> @@ -94,3 +94,7 @@ &uart0 {
>>>>       pinctrl-0 = <&uart0_gpio14>;
>>>>       status = "okay";
>>>>   };
>>>> +
>>>> +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
>>>> b/arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
>>>> index 85cf594724ef..876f697e7300 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
>>>> @@ -132,6 +132,10 @@ &uart1 {
>>>>       status = "okay";
>>>>   };
>>>>   +&v3d {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>>   &wifi_pwrseq {
>>>>       reset-gpios = <&gpio 41 GPIO_ACTIVE_LOW>;
>>>>   };
>>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

