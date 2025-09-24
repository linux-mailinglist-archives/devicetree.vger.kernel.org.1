Return-Path: <devicetree+bounces-220698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A6AB997B2
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DEF47B4204
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B90B52DCF73;
	Wed, 24 Sep 2025 10:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="Vy5gApI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A497D2D97AC
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758710893; cv=none; b=BpZlHpBDav8eHhoKH7OsnxS3AuNDw4cMwvU5Kj5yCAHAG1HGdH1Z/ipMwhGfEVBrMnkucq/XDXhEnFMhhnDtnVLKfiXZu2NYsUB0Z05zPQx1xA55C5/nWB4hKe47HX1htuFBUrQy2Xizr77N2MgEHtiKS93DHCdhcuPbXCFb5SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758710893; c=relaxed/simple;
	bh=R+vHzX3Cepz5xgdfD21t9zd4HjH0UiRaZuJLxcJvKwU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Hlz6K17LHcjSLR8NhKlePtmO20/+baChsMeRN4tzAscPe6H3vcDxB39g0hkQN6hRyjJilihrUPbBiKfmXbA7j/CJUMGvZXNg6rJC0Ol/yk92NPZpAeLX5RyU1EmNKuWn8BHU5S/MckhbnOJr2zO+l3IGl16QhSxP4alYdY+mrV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=Vy5gApI7; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1758710874; x=1759315674; i=wahrenst@gmx.net;
	bh=Qfg+H/48RteRxJqr05WzIHlt2/qAHEfJjq9mWMbRUUM=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=Vy5gApI7XtneYFJUqIeb+E1srRGZWQ/SwgtSgriY3FSOwO+hdlcY75sZ0PBUONUr
	 6FWuEi2LDxjXZJM7hU61gm25cYmIRG+R0ulIVyx0phQf0qGD5eOhEfSmRhnYQbswj
	 TVNFDNzblHarY518n0/5bBOtiaj5axRm4HCvKu2vUDeNARWaDmde/oM6pfpiot9hg
	 mCZsK9n5NsjrX6trgu6096EwvBNmZrJH3+tglGz8KDx/1ZXsk1DhJjaDs/cZHfhKz
	 E6eR5MB0w1PTCEOyh/mAjpHJ/IurHYiiOaWcyaHeUR2IDwBv9Lm7fyf+hcMbzjC7U
	 cuQ0IxCfvQK1jTI7Gw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.105] ([79.235.128.112]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MKKZ3-1umAT71D4h-00Q13l; Wed, 24
 Sep 2025 12:47:54 +0200
Message-ID: <545e2819-9654-449e-aa57-636bee88c744@gmx.net>
Date: Wed, 24 Sep 2025 12:47:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: Enable RNG
To: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Phil Elwell <phil@raspberrypi.com>,
 Andrea della Porta <andrea.porta@suse.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20250924090105.1061910-1-pbrobinson@gmail.com>
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
In-Reply-To: <20250924090105.1061910-1-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:UWnPEsG20zlvWCqe1025SVVJypAvrAJOSJA09HnjsHo1A8qIE3P
 6HPjPQo5eD5eQy/41EalTRf4GcmTnFRGX1htHZxiGpK8347xuIxEFHzdlI8P9Nl524SIPw+
 DIJ7KSDrCiGOmFYikTweraHbnyMGN8jiYER02jF+zpSZ4gIBO1TJJSLtkVB9Kx2FQ8YItXV
 Hvsi7pr7/XcqgGbGkITHA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:4/3sSF0j9VM=;CYSZl73ahpffIuFdDBIUZ+q8P6V
 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

Hi Peter,

Am 24.09.25 um 11:01 schrieb Peter Robinson:
> The RNG is the same IP as in the bcm2711 so add the
> device tree block to enable the device.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>   arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot=
/dts/broadcom/bcm2712.dtsi
> index 4cd51d80d40d0..6976a88c262f4 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> @@ -226,6 +226,12 @@ system_timer: timer@7c003000 {
>   			clock-frequency =3D <1000000>;
>   		};
>  =20
> +		random: rng@7d208000 {
> +			compatible =3D "brcm,bcm2711-rng200";
> +			reg =3D <0x7d208000 0x28>;
> +			status =3D "okay";
> +		};
thank you for the patch. I know the order is already messed up, but=20
could you please try to add it after uart10?
> +
>   		mailbox: mailbox@7c013880 {
>   			compatible =3D "brcm,bcm2835-mbox";
>   			reg =3D <0x7c013880 0x40>;


