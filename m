Return-Path: <devicetree+bounces-58828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE9C8A348E
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 19:18:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D1CF1F2223A
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 17:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A01514B097;
	Fri, 12 Apr 2024 17:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="IOfyllAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C20148FF8
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 17:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712942305; cv=none; b=VrzLbh9QN3UndIgPgrVKt+IRL/oFveZVkYhRM/7h952G3zVdc/5GceSMw+Cq1ZWJHUpCCtu2WvklcQtFf9e/t7pDn4U/F5YYHpgcRan1hUetpasgE28F0s2hp8Z9xOaNsg19Gn7rxhQRvP5qfb2lP8ZAkS16iwGxVuLQmcMAqpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712942305; c=relaxed/simple;
	bh=nQACkuaHgGspKGl2e4+cgXmNl5nP/ZXWv0/bdk0F3Rk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ANyNO0ToqzKZsySgqwO52kyvtjVO4PSYQPE0cvjD2AK6pdRL6rdsjMVEAZZ5SLBAxP7aIybPLbYGazjaLvhD6gOKzI3MToksUJXpKJ5EpOeA3tYo1gOyQWs978l8Va3QFJOFdrO6dlz7U9viAesZ34C5XcCtQwRYULTwozyDlxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=IOfyllAb; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1712942265; x=1713547065; i=wahrenst@gmx.net;
	bh=2P7U8Lr3rT/SEdzRkxr8KToUpRcgIP2da99T3eJ4GuM=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
	 In-Reply-To;
	b=IOfyllAbAKEmZWHc8FIKOBMvwetKlZz3bjYsJKpT9vBbAINI6EOqY45NPIoX8qHb
	 uitt8boinc5nrLyOYThRgSSaxqo5WXtvK+efiNmuE+gHrYQ7duQ6UFYcG8txMtV8Y
	 dOsPJJTB/Ux8fEBlL/UpvnRMjCI3JTTtGooCyWAxJsGuhywU79bnU0CJuUzyOHSUG
	 7p0bcxYWzoTAMhNBhMRc/RrNos0a7CHGg1Uk3Asd5Df9kV6LKj+1JHXhPhZmta/X6
	 VZvQxm1PAfVNqwHya7efeb7q65iuYpjr0IE1S7ZLcB+xunPIj4jLTIyo/ePfwHz8b
	 lP3f5/9vyXhW+20nCQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.167] ([37.4.248.43]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MTABT-1sKn5y1Off-00UZRf; Fri, 12
 Apr 2024 19:17:45 +0200
Message-ID: <41694292-af1f-4760-a7b6-101ed5dd6f9d@gmx.net>
Date: Fri, 12 Apr 2024 19:17:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: bcm2835: Enable 3D rendering through V3D
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Romain Perier <romain.perier@gmail.com>, Phil Elwell <phil@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com
References: <20240412132559.2365947-1-mcanal@igalia.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20240412132559.2365947-1-mcanal@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:GRDPBx4CDHZqEG72k3y4Xh+do0qOh477K8lZaUHwGA6wtP7+AWh
 lmcwIf0s2edQokAAvZaviyELcgW4bdhIT+k1qon+3gAazdyC3r/tO8O1g/b2V/tC9A/r2Nm
 0LqPCJfYswOxwSYe9vAVJN/wGkRp5BYT5q4n2t8qDqeioMqSHLNZ32v4DUn7RpQAcRIUjeH
 7817FaSqkK6EAkAsUi9FA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:r8WWzQUZ1oM=;+BsMPTn9Q+ljCVQUCzGkbEWd9Ii
 9fB0QVkUmvxxa6z7cs4yYQ1iYa0YQxzfnb3g+knMeVuuTnNhVpacvEy0ItqYNLXW7SDF85zkx
 7PIPKWjBQvVn/gUU7H0QYnEdpdVxfM0eQLhcqOqnjczIlfP0d/093HOQjwUJSlJ4819TuhE02
 IOexaO5ALY1M7E6Y8UvGUvz+F6fnonxlvHFhXBUQKRuz4QS9QT07EcvhvINRcB2FYHmtKLW1a
 ejSX9SLPNwKwMVwFKbxVF7OoAV0x4TN0pBBQLughGbRopCEyxfdjOc6gOh5O1VnVxJwnxVoJI
 wDnuLV9KEhWIr2Bwd3M8gA6CBnHsopcVf2artwsxEKPWtIY0eRsHRJKIs+lzTadO9Isjyw5VP
 gqrfjOz1ZbmfKMCsrBE/z0erPZt+eqPxtf2v8Ad11wZsXuBiSfBaOQzuK8TIzgYHn6BZtKtuc
 ifXz6Z8+/lMXwcw25J34r7WogK8e9Bo3cLM8qPjvdrdy8hdDV2yXWvH5c6OjuJpsI0pTZlFKU
 lFYAYBme/R8oKDu+hrnRogNUOvOhxpmHKJo7+Ob2URHi0QtboLmbzu+HFRlSAWLxAGJw4crPw
 8M31wBjfij57EwnS7xmfuN+OATReyG3/Y/dWNaBEB7BJ+epqNVogn8fnrlujWLD11VkcYRuhM
 DpB1gv4lt4oMmI4sPKFonT6s4vw4+JgaFU2rP9Y1r/vejUP3PYmRyXH1xtT9ROSvH/eFx1dSU
 kN3I+Y6eyRjsPYOe8CWHSKdOhAe/myPCPcqvMWVCdxsC1ioONuBHaIRvWdMr9j0N03iO1IKcg
 ZzhzThD+UZjjx+/MPUHSmiIJOeTtjBxKSjOWBpalV0KJk=

Hi Ma=C3=ADra,

[add Phil & Dave]

Am 12.04.24 um 15:25 schrieb Ma=C3=ADra Canal:
> RPi 0-3 is packed with a GPU that provides 3D rendering capabilities to
> the RPi. Currently, the downstream kernel uses an overlay to enable the
> GPU and use GPU hardware acceleration. When deploying a mainline kernel
> to the RPi 0-3, we end up without any GPU hardware acceleration
> (essentially, we can't use the OpenGL driver).
>
> Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.
thanks for trying to improve the combination Raspberry Pi OS + Mainline
Kernel. I think i'm able to reproduce the issue with Raspberry Pi 3 B +
on Buster. From the kernel side everything looks good:

[=C2=A0=C2=A0 11.054833] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdm=
i_ops [vc4])
[=C2=A0=C2=A0 11.055118] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_=
ops [vc4])
[=C2=A0=C2=A0 11.055340] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_=
ops [vc4])
[=C2=A0=C2=A0 11.055521] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops
vc4_crtc_ops [vc4])
[=C2=A0=C2=A0 11.055695] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops
vc4_crtc_ops [vc4])
[=C2=A0=C2=A0 11.055874] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops
vc4_crtc_ops [vc4])
[=C2=A0=C2=A0 11.056020] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_=
ops [vc4])
[=C2=A0=C2=A0 11.063277] Bluetooth: hci0: BCM4345C0
'brcm/BCM4345C0.raspberrypi,3-model-b-plus.hcd' Patch
[=C2=A0=C2=A0 11.070466] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu =
on minor 0
[=C2=A0=C2=A0 11.174803] Console: switching to colour frame buffer device =
240x75
[=C2=A0=C2=A0 11.205125] vc4-drm soc:gpu: [drm] fb0: vc4drmfb frame buffer=
 device

But in Raspberry Pi OS there is a systemd script which is trying to
check for the V3D driver /usr/lib/systemd/scripts/gldriver_test.sh
Within the first check "raspi-config nonint is_kms" is called, which
always seems to fail. If i run strace on this command it seems to check
for /proc/device-tree/soc/v3d@7ec00000/status which doesn't exists in
the Mainline device tree.

Maybe there is a chance to improve the userspace tool?

>
> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> ---
>
> I decided to add the status property to the `bcm2835-common.dtsi`, but
> there are two other options:
>
> 1. To add the status property to the `bcm2835-rpi-common.dtsi` file
> 2. To add the status property to each individual RPi model, e.g.
> `bcm2837-rpi-3-b.dts`.
>
> Let me know which option is more suitable, and if `bcm2835-common.dtsi`
> is not the best option, I can send a v2.
>
> Best Regards,
> - Ma=C3=ADra
>
>   arch/arm/boot/dts/broadcom/bcm2835-common.dtsi | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/b=
oot/dts/broadcom/bcm2835-common.dtsi
> index 9261b67dbee1..851a6bce1939 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> @@ -139,6 +139,7 @@ v3d: v3d@7ec00000 {
>   			compatible =3D "brcm,bcm2835-v3d";
>   			reg =3D <0x7ec00000 0x1000>;
>   			interrupts =3D <1 10>;
> +			status =3D "okay";
>   		};
>
>   		vc4: gpu {


