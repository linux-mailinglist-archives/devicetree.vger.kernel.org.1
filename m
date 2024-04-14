Return-Path: <devicetree+bounces-59156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD698A44D2
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 21:09:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3C342814EE
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 19:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 229A2135A57;
	Sun, 14 Apr 2024 19:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="EESD1DAm"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2851F6A01E
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 19:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713121791; cv=none; b=d7a8XJMl96VyxAtJbn2QDtvg778tscvf9vtFKpvUolqzeWgWKquF+dhDtwwTRA0wl5xm5ngivJWIS2qjnrmH5GoqE5P+kz6Nchb6LZOdAJ+hIM2JHt7yIJoY5yCYUZ77g9NdZxTqvB3zn/zlLim5tbHMLuDfymoDuwPSgDP2iOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713121791; c=relaxed/simple;
	bh=mBoC3Q4luDSZ1VjMdQ7ThioWf94j7iOXik7W7Vj0sUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QEOHiNA6Co+yAeOTMe822Cj+6DgMmQ9EO4GaCBCvwLrcAKiVVS2gEfMCMLM/0EuUKECXru9ZzAHCudwNl5saz2hU1n41Hpky5/y8vgZq6NZWJqFAc1lvmjEVo5aIN40TZmxdfLgDX1crL/w3hqR5RE94Kv7dFxhiOp83J1LvUIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=EESD1DAm; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zDNCrN6fvcIr2zEPSC6gJi9XM1WLgWVpPl0/ky0eVEs=; b=EESD1DAmmG6XRweLaG62e7DPNN
	CdB+1w2EVkj84PK/tmkqLK9O7WndqfXrCAofIgKirfq79PuRdCFcmushwnVhVDsJZKT0abbr0P1xI
	zVZ1MbhtecvbQk/N9+IoO41L70hgo9WCG2qfRn8UZb2vIpiqMwEIg5LAO+ryBGHhP7iyFl8arjsyY
	/F7k5XP7pPDcrIrWwhQNXnpIrMfCNsZc4ePeBKgC/MJFe7WQrnXPMd3rm5mmTtkGPqbIj2l67rHVQ
	MRlL/eZAmxMUaj1uX/CHl/xU/xafl+BwamPGfZT3DNvvEBwykbRrH2viGxUBQ+Alk5EAXt9S810WD
	iKD9TIJg==;
Received: from [177.34.169.177] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rw5E8-004VoE-2k; Sun, 14 Apr 2024 21:09:20 +0200
Message-ID: <758a1f39-25df-42fb-8366-2be07eca2d19@igalia.com>
Date: Sun, 14 Apr 2024 16:09:08 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: bcm2835: Enable 3D rendering through V3D
To: Phil Elwell <phil@raspberrypi.com>, Stefan Wahren <wahrenst@gmx.net>
Cc: Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Romain Perier <romain.perier@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com
References: <20240412132559.2365947-1-mcanal@igalia.com>
 <41694292-af1f-4760-a7b6-101ed5dd6f9d@gmx.net>
 <CAMEGJJ2mkuBZjo+OAnkVCEi=73zMpXNUwzRqsAOckMhUeN_WJw@mail.gmail.com>
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
In-Reply-To: <CAMEGJJ2mkuBZjo+OAnkVCEi=73zMpXNUwzRqsAOckMhUeN_WJw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Phil,

On 4/14/24 15:43, Phil Elwell wrote:
> Hello all,
> 
> On Fri, 12 Apr 2024 at 18:17, Stefan Wahren <wahrenst@gmx.net> wrote:
>>
>> Hi Maíra,
>>
>> [add Phil & Dave]
>>
>> Am 12.04.24 um 15:25 schrieb Maíra Canal:
>>> RPi 0-3 is packed with a GPU that provides 3D rendering capabilities to
>>> the RPi. Currently, the downstream kernel uses an overlay to enable the
>>> GPU and use GPU hardware acceleration. When deploying a mainline kernel
>>> to the RPi 0-3, we end up without any GPU hardware acceleration
>>> (essentially, we can't use the OpenGL driver).
>>>
>>> Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.
>> thanks for trying to improve the combination Raspberry Pi OS + Mainline
>> Kernel. I think i'm able to reproduce the issue with Raspberry Pi 3 B +
>> on Buster.
> 
> Buster? We launched Buster with 4.19 and ended on 5.10. We've moved
> onto Bookworm now. A lot has changed in that time...
> 
>>  From the kernel side everything looks good:
>>
>> [   11.054833] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops [vc4])
>> [   11.055118] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops [vc4])
>> [   11.055340] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops [vc4])
>> [   11.055521] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops
>> vc4_crtc_ops [vc4])
>> [   11.055695] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops
>> vc4_crtc_ops [vc4])
>> [   11.055874] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops
>> vc4_crtc_ops [vc4])
>> [   11.056020] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops [vc4])
>> [   11.063277] Bluetooth: hci0: BCM4345C0
>> 'brcm/BCM4345C0.raspberrypi,3-model-b-plus.hcd' Patch
>> [   11.070466] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu on minor 0
>> [   11.174803] Console: switching to colour frame buffer device 240x75
>> [   11.205125] vc4-drm soc:gpu: [drm] fb0: vc4drmfb frame buffer device
>>
>> But in Raspberry Pi OS there is a systemd script which is trying to
>> check for the V3D driver /usr/lib/systemd/scripts/gldriver_test.sh
>> Within the first check "raspi-config nonint is_kms" is called, which
>> always seems to fail. If i run strace on this command it seems to check
>> for /proc/device-tree/soc/v3d@7ec00000/status which doesn't exists in
>> the Mainline device tree.
>>
>> Maybe there is a chance to improve the userspace tool?
> 
> ...such as the raspi-config tool, which now always succeeds for is_kms.
> 

I'm using Raspberry Pi OS Bulleye with the raspi-config tool on version
20231012~bulleye. I can still reproduce this issue when using a upstream
kernel.

I ran `sudo apt upgrade`, but a new version of the raspi-config tool
didn't appeared.

Best Regards,
- Maíra

> Phil
> 
>>>
>>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>>> ---
>>>
>>> I decided to add the status property to the `bcm2835-common.dtsi`, but
>>> there are two other options:
>>>
>>> 1. To add the status property to the `bcm2835-rpi-common.dtsi` file
>>> 2. To add the status property to each individual RPi model, e.g.
>>> `bcm2837-rpi-3-b.dts`.
>>>
>>> Let me know which option is more suitable, and if `bcm2835-common.dtsi`
>>> is not the best option, I can send a v2.
>>>
>>> Best Regards,
>>> - Maíra
>>>
>>>    arch/arm/boot/dts/broadcom/bcm2835-common.dtsi | 1 +
>>>    1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
>>> index 9261b67dbee1..851a6bce1939 100644
>>> --- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
>>> +++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
>>> @@ -139,6 +139,7 @@ v3d: v3d@7ec00000 {
>>>                        compatible = "brcm,bcm2835-v3d";
>>>                        reg = <0x7ec00000 0x1000>;
>>>                        interrupts = <1 10>;
>>> +                     status = "okay";
>>>                };
>>>
>>>                vc4: gpu {
>>

