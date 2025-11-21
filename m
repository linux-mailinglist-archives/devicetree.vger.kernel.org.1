Return-Path: <devicetree+bounces-240983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E24C784E9
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:05:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DC40C343196
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 10:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30494343208;
	Fri, 21 Nov 2025 09:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mKc6qhet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41870340D9E
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763718917; cv=none; b=kVtZkW5EaMmFnUVeAOns7FOSC+NlY8qIYM4abk5cM0xJ12WnKfIocAcz7qK0YMkM3/RNJZKT4KWAjpy19Wvo1FgskQ6LHosZwWWe56HX4PAEkIdwqPWJSXFkZ7j6NhOe/HnOCKxwZQx1iyXH4F96g/Pa76UMRhtIHK9Vo7YUDTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763718917; c=relaxed/simple;
	bh=EMfSDRMto6bdlxznJ1sCs94d+Mr4wdVBG6VAaoKfhMs=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=Dxwp5gk5KQWxsiF1hdVYx3JifeE75rw3jaLjwe3khm2CIGYwSQquzw6VDqJFVLJy5WiiTuyrDEia1wQRMgoip5noQQkws1CSDEmnvHGz2CMo3/rZ6nHjUKsUuoecYb4hQJH1vPtCL05L8bBhS5vvA71IRW9Tsc10iRG22+9XFLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mKc6qhet; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-64312565c10so2580132a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 01:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763718914; x=1764323714; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O5sXa9oC+KOOiftpAe4sv1j7HqzzBA+hMLeVqAktHeQ=;
        b=mKc6qhetC/qcTAXVBfp0DBJM/ZpR17bBFInWaCXLQBJz9X5tdxfdGpp76XO9y9+ew5
         6MVukMm925KjcRusEzPVpCmMPgknyqC0sclnMywjoL3wAxxi9tIEBhOvoPZjND0HQJ3K
         nyCBaFuzjvSnqkxdeNkyFhoSEhFVThvLrk1Ypkhq4BHAUvLWegf69lO/5Hsw7CYDWShn
         HaR6jTErhJNocKun4WKzY+sbEixXIGVvt+lll+YMs3Qv0qrqVGY7M8DNr6mDLkaMJAhs
         kNZ6ud8cTe5+EIHFDJRqrKu1jD3Nkp8t2dgPQDB1vqCaSzaMDtyl1AhmtpOwqLsyu6MX
         0a7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763718914; x=1764323714;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O5sXa9oC+KOOiftpAe4sv1j7HqzzBA+hMLeVqAktHeQ=;
        b=Ck/9F8cAG6m3gDq5EbpCUBaRtK6theINjTmfORzHeGrmdYK/3C1khs+q8HKnu2VKBb
         50hXzm6+C6nJs2ZSWm/zwKrUVRd18n9qyZbFejSm1VH4vhz0PW8jAzICS0IBSLsIkNUX
         2Kf8fA8n7xHSy8bgXFga+Anf4IMQ1WxHw3CIpLl6Pd4cxEYpVt87D8VzvwVnKehcOj2w
         vC0W9uuLWWpV2mrsOebwrf36mv7saySKg9wWk4HWeiKug1erlapbWU6JfXIrv3Eu9tFN
         5pR5GCtCAM7NpAVmAUWJCqbnD+EejqlrLpqgV8v3VhObR7XRcAdRbqTgQ1+87WNzS2nf
         YxLw==
X-Forwarded-Encrypted: i=1; AJvYcCUOp3Jf/uGZLIowAY1r1f8apH1POFnZq96caQ8XyIDymRulTR4xkD3Ig4KVNhWGFdL1He0E5bYTB2o1@vger.kernel.org
X-Gm-Message-State: AOJu0YwPyVXnIKb/Em3MzyRRl3BxcnLfn515uDTMlnNQ1ROgv2GgGJtM
	UoeQ5nTKKGOicNBHTSUr+n5mkYAbaU/ZZWTwo8s34sUP4YBG10FngczC
X-Gm-Gg: ASbGnctGEUfi4C3QIiUC2x8cf1BPi+5CnAZERnuEbdRGhBruF3vDy+Pz8u/ugbV+Skz
	EK9Bez95IZgyB7W3SPvERKdh1aoFpZ/IlP9vqAme5AOzyG8d348b/dEoZkGeicLNZ/tAKoAA1JM
	f2/d8LqdvJFG6b0sq39UBIMcI3E7Aki1zVK+ZyhSXd9tyzuNSvDOwNSJ+S5Es9uNlQxyyeslyxU
	8k91z448oUYusGJZqOBo5lEza8nkxw49GDpn9RV/AmHU7sbz1vop7NwDGZOMKOpNNLd+ZetJu4K
	Kheam0RhNuoqgVzkwrJwGNjD+nlu6oPcgunao73vc9UTUQ47uiI15izGSPwgG49MK/00E5VOmhe
	YUl1vHQljceStnAuWpM/AYazaC2PeuSbgmlHJICOOGgDMMWhOyPTZ5VYOUtfqiBmeqiE+6ffEsb
	C+lI/tkmDUoiSpXUy4Ri7RK1lnmHWi/ZHoW40nJdARCkXzlIUyQMv0Bee0xDPbup86
X-Google-Smtp-Source: AGHT+IFK2gLLD1c3WD4mHnPUfISp9zBgTSqIO/lEejZpzJMB+Sb3nwm+/TCS3vP9Ug1MEnPP1fQzYw==
X-Received: by 2002:a05:6402:2714:b0:640:93b2:fd0a with SMTP id 4fb4d7f45d1cf-64554665a08mr1612974a12.20.1763718913347;
        Fri, 21 Nov 2025 01:55:13 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453642d3ecsm4085545a12.17.2025.11.21.01.55.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Nov 2025 01:55:12 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH 01/11] dt-bindings: display: meson-dw-hdmi: Add compatible
 for S4 HDMI controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <a71f24c9-1f40-45a1-8fdb-6075bbf89930@amlogic.com>
Date: Fri, 21 Nov 2025 10:54:59 +0100
Cc: Chuan Liu <chuan.liu@amlogic.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 dri-devel@lists.freedesktop.org,
 linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <1015ADA9-34EA-43E6-A43A-413740C6736E@gmail.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
 <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
 <3AC316FA-A633-4B6C-81BA-CCCA290E7F03@gmail.com>
 <8c3b9fa4-326e-4791-8154-07b268faa132@amlogic.com>
 <7703796D-35D4-4AD2-B7F8-B75D2BE0F7AD@gmail.com>
 <a71f24c9-1f40-45a1-8fdb-6075bbf89930@amlogic.com>
To: Ao Xu <ao.xu@amlogic.com>
X-Mailer: Apple Mail (2.3826.700.81)

Thx!

btw: i found that enabling CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER

results with:=20
-no anymore boot hang on s4 (with connected hdmi)
-still black screen at s4 boot (with connected hdmi)  =20
-breaks boot-splash for me on other platforms (allwinner, rockchip)

maybe s4 drm series i'm using is not ready for 6.18 change of fbdev =
framework to DRM?
   =20
> Wiadomo=C5=9B=C4=87 napisana przez Ao Xu <ao.xu@amlogic.com> w dniu 21 =
lis 2025, o godz. 03:55:
>=20
> Hi Piotr=EF=BC=8C
>=20
>     I will check this issue
>=20
> =E5=9C=A8 2025/11/19 18:27, Piotr Oniszczuk =E5=86=99=E9=81=93:
>> [You don't often get email from piotr.oniszczuk@gmail.com. Learn why =
this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>=20
>> [ EXTERNAL EMAIL ]
>>=20
>> Pls see inline
>>=20
>>> Wiadomo=C5=9B=C4=87 napisana przez Chuan Liu <chuan.liu@amlogic.com> =
w dniu 19 lis 2025, o godz. 03:57:
>>>=20
>>> Hi Piotr,
>>>=20
>>>=20
>>> On 11/18/2025 10:50 PM, Piotr Oniszczuk wrote:
>>>> [You don't often get email from piotr.oniszczuk@gmail.com. Learn =
why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>>> [ EXTERNAL EMAIL ]
>>>> Ao,
>>>> Is there any chance to get this s4 drm hdmi series for current =
6.18?
>>>> (i tried backport this series to 6.18 but have some issues with =
reparent vpu_0_sel to sysclk_b_sel)
>>> Why do we need to reparent vpu_0_sel to sysclk_b_sel? is there any
>>> background here?
>> Well - it looks it is because bug....
>> Martin Blumenstingl had perfect eye and catch typo in patch =
https://lore.kernel.org/all/20250110-drm-s4-v1-11-cbc2d5edaae8@amlogic.com=
/:
>>=20
>> By replacing:
>> assigned-clock-parents =3D <&clkc_periphs CLKID_FCLK_DIV3>,
>> <0>, /* Do Nothing */
>> <&clkc_periphs CLKID_VPU_0>,
>> <&clkc_periphs CLKID_FCLK_DIV4>,
>> <0>, /* Do Nothing */
>> <&clkc_periphs CLKID_VAPB_0>;
>>=20
>> with:
>> assigned-clock-parents =3D <&clkc_pll CLKID_FCLK_DIV3>,
>> <0>, /* Do Nothing */
>> <&clkc_periphs CLKID_VPU_0>,
>> <&clkc_pll CLKID_FCLK_DIV4>,
>> <0>, /* Do Nothing */
>> <&clkc_periphs CLKID_VAPB_0>;
>>=20
>> dmesg is like this https://termbin.com/6020
>>=20
>> So i'm getting hdmi working - but only when device boots _without_ =
connected hdmi at boot (and connected later)
>> If hdmi is connected at boot - boot hangs at:
>>=20
>>     0.341676] meson-dw-hdmi fe300000.hdmi-tx: Detected HDMI TX =
controller v2.01a with HDCP (meson_dw_hdmi_phy)
>> [    0.342750] meson-dw-hdmi fe300000.hdmi-tx: registered DesignWare =
HDMI I2C bus driver
>> [    0.343660] meson-drm ff000000.vpu: bound fe300000.hdmi-tx (ops =
meson_dw_hdmi_ops)
>> [    0.344832] [drm] Initialized meson 1.0.0 for ff000000.vpu on =
minor 0
>>=20
>> FYI: It is after applying =
https://patchwork.kernel.org/project/linux-amlogic/cover/20250110-drm-s4-v=
1-0-cbc2d5edaae8@amlogic.com/ on mainline 6.18 (with some my adjustments =
on this series required by changes in 6.18).
>> For VPU clk changes see =
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.18/f=
iles/0312-drm-meson-add-vpu-clk-setting-for-S4.patch
>> It is 6.18 adaptation of =
https://patchwork.kernel.org/project/linux-amlogic/patch/20250110-drm-s4-v=
1-9-cbc2d5edaae8@amlogic.com/
>>=20
>> As kernel hangs - i have limited caps to drill where root cause is.
>>=20
>> Maybe above hang is reason of my backports or missing any pre-req =
required to get s4 drm working?
>> Anyway - it will be good to test with updated to 6.18 series of Add =
DRM support for Amlogic S4 (plus info about any pre-req required to get =
s4 drm working)
>>=20
>>=20
>>> The vpu_clk on S4 doesn't support sysclk_b_sel as one of its
>>> selectable clock sources, so this reparent operation will definitely
>>> fail. This has nothing to do with the kernel version.
>>>=20
>>>>> Wiadomo=C5=9B=C4=87 napisana przez Ao Xu via B4 Relay =
<devnull+ao.xu.amlogic.com@kernel.org> w dniu 10 sty 2025, o godz. =
06:39:
>>>>>=20
>>>>> From: Ao Xu <ao.xu@amlogic.com>
>>>>>=20
>>>>> Add devicetree document for S4 HDMI controller
>>>>>=20
>>>>> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
>>>>> ---
>>>>> =
Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml | 1 =
+
>>>>> 1 file changed, 1 insertion(+)
>>>>>=20
>>>>> diff --git =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>>>>> index =
84d68b8cfccc86fd87a6a0fd2b70af12e51eb8a4..6e0a8369eee915fab55af24d450a6c40=
e08def38 100644
>>>>> --- =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>>>>> +++ =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>>>>> @@ -55,6 +55,7 @@ properties:
>>>>>           - const: amlogic,meson-gx-dw-hdmi
>>>>>       - enum:
>>>>>           - amlogic,meson-g12a-dw-hdmi # G12A (S905X2, S905Y2, =
S905D2)
>>>>> +          - amlogic,meson-s4-dw-hdmi # S4 (S905Y4)
>>>>>=20
>>>>>   reg:
>>>>>     maxItems: 1
>>>>>=20
>>>>> --
>>>>> 2.43.0
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> _______________________________________________
>>>>> linux-amlogic mailing list
>>>>> linux-amlogic@lists.infradead.org
>>>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>>>> _______________________________________________
>>>> linux-amlogic mailing list
>>>> linux-amlogic@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic


