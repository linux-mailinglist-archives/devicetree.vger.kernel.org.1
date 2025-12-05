Return-Path: <devicetree+bounces-244619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE1ECA717C
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B884B3240075
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A485313298;
	Fri,  5 Dec 2025 10:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YIDRGnY1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5A6191F84
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 10:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764929050; cv=none; b=PsnX2n0DKcUDeJnFsDbiOnNeyzp563JrP521z5qk8i4WKTPwXbUTjlp32quJGGyEp7JK5JZyC4hB2zXr1IC4TiPTmRnh85mDFRdFm2SQly3ssQ3SjG9ljZBhQCHyDYD2B8htNuR2Q3g3Rz1xTgDxbngNSuJ1ugHg0ORrAj6r6EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764929050; c=relaxed/simple;
	bh=oCl+DtIrVCbZ2dbJh+W7THVw/S1eP3J1CIipvIj35So=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ESR8uJhuSkdl3wv5A9xquqpLLb+RamNuXTmm+6a/IahpZsl+7ocBagesGlcD5oEABY2fupfykkm4Xqf3K5rBvYsFQ38luUSG+DoIMic1mRyMBtmzRgDctM7tsxcqcqZl2jMqwUuuLzPA8JW06p1NG8KPQlsAiyfuHq8InW+l1S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YIDRGnY1; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b73875aa527so284394766b.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 02:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764929039; x=1765533839; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UrPIgvsg58eOsedSnhLH7or6+6ch9iVeKdBWBSvRqYc=;
        b=YIDRGnY1+iyQTxswuo45dq5lj73Ah3ogkrknTh4S4Q11r5wwdvwymsa8bo3hs/myqT
         9wYELiE3VGFYGhFGU960Rl9fIgAh976DSm0/7qHAKI4vCpg1H/R/MUvXdaJ0BUv7A5Wz
         eBYDP6XyMQ4IgKXfHwe+ZYzPRX8zyMXZh+BahAeJzzgpJ/GcIrIcSJT2On3CwIfAXQgc
         agiaO2iKRIrOMrUmwi0qNx8m5NCJETmXqrQRbjK68hkYx45wJ6a+y8xhr7P75+PeFlfX
         TW+m/v0nMxw726Tkj3M3xb3u+tmIvk/oGSN3IdqfB6/yowOkFRcKcJrEtcKx7EVZS3Od
         ZH9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764929039; x=1765533839;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UrPIgvsg58eOsedSnhLH7or6+6ch9iVeKdBWBSvRqYc=;
        b=uKffT+AmpxQP3YDdR/CXcUiwLfxLuyCYgNIdTbx1NIYNZs65kVgjtzmlrhFwZNnbso
         gnb3OF5j+q/9pu/yikxb+g7gx6qYx5SiazK6Vw562DFcm62mmv5MuZFabNAZVhZTvyEW
         +iIjZKa3xtDHqnYnzGGJo+O02g/Fml4eRFqtH30NA3ZpjQGtGD/jF6vwbkDM4JRowRAq
         A+TW/Jx336E/y4EIY8VO/h3TSXe4sic7R4/nqTdAaa2L85EE+mjI7meQIAOOMWSy3JtH
         xuWcu5Gh2sdSti4s4Iu/cO6oENoqpBYU0E5XVUOXsJn5UzhlVWVzEWIA2qDreBRGVZ9G
         gh7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4qMXX9ys0AGdugA71yHnNyoXP4vSQc5NEnKtdOOvad9ALaamiQcKTvT+qrkRee1OJHKCGUAExisEw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy10anDpexHeg8d8HPvf2AJW2wRMQEOq0+zQLglr4O8AVR2EMRJ
	oMnxD/JgqZYzqHmGT3+WcF+tD71SLoc2O4Rf/6Jlshf6ui0Rz2CcrX5K
X-Gm-Gg: ASbGnct1XJiLbAONJKerZdY7LYRM3SC3VmjmUSuIS2Rnb2PdaDvtZ02xlzaAM7KvefX
	UwT0LKMkwyEzTxylSBy6V3sSalviJfMgg0OHV6qdyU6N43THquYnKsGD1oS4DTmBCTZ0ARssnf+
	Z7cc7QtQvws844INlugBIfPjGgf4leatI8EHA44O8mMBntVnLvXx2ydwooLFdnT5NcxDZGMKHu0
	8ZTiV8qeooE6uCtXlkfoYAtzYEefThhbyrMZPLCVoEaKm4VqMN7BNVpmcvST4jXkMLLvQbe86LK
	0R6/9w3Aq4qm272WutmrHentonz1lpPOM/12SJqwG+TLNd/D2h5dAT2PazGt7K7gEz3wGznTXg8
	S39jILEbRgqeVFOsP5Bws5Ujy3E1nCRU+NwU5hk4bnMNvUZTFxfOLDNwnTTpsHZujhDGP9J2kW5
	tmNFBEChz7N397NeTASDfZXDjCvniJ8UhBDy2KcQoz7zfozIzwZNytjQfG/47IhAE4ZgTa1uCKv
	P0=
X-Google-Smtp-Source: AGHT+IGmVNPybgxaTnBEjYF9iUoQvCh+If0y7frV3hE4t1NG2W8NXsB234VYEXtYlgdaKQwxequung==
X-Received: by 2002:a17:907:daa:b0:b72:fd32:a463 with SMTP id a640c23a62f3a-b79dbe9000bmr989333866b.23.1764929038231;
        Fri, 05 Dec 2025 02:03:58 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4a2f401sm333937766b.65.2025.12.05.02.03.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:03:57 -0800 (PST)
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
In-Reply-To: <b6b8203d-2a51-428f-8124-fa65d2c073a0@amlogic.com>
Date: Fri, 5 Dec 2025 11:03:44 +0100
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
Message-Id: <9BCB2E8F-F8FA-4CA4-9039-FADE0D875404@gmail.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
 <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
 <3AC316FA-A633-4B6C-81BA-CCCA290E7F03@gmail.com>
 <8c3b9fa4-326e-4791-8154-07b268faa132@amlogic.com>
 <7703796D-35D4-4AD2-B7F8-B75D2BE0F7AD@gmail.com>
 <a71f24c9-1f40-45a1-8fdb-6075bbf89930@amlogic.com>
 <F04DC684-AD64-447F-87EC-F503D411F25D@gmail.com>
 <070eb0a3-2f6e-41ef-8310-0c592a2816dc@amlogic.com>
 <b6b8203d-2a51-428f-8124-fa65d2c073a0@amlogic.com>
To: Ao Xu <ao.xu@amlogic.com>
X-Mailer: Apple Mail (2.3826.700.81)

Ao,

Thx!

Indeed patch helps with boot freeze.
I started to see on monitor - with correct resolution - 4 tuxes in upper =
left corner :-)

Now i'm getting user space oops like this:=20

https://gist.github.com/warpme/b8b757bc1444be8a137849301698ee4b

i'm pretty sure it is related to lack of (or issue with) console at =
kernel early init in user space.

As kernel with s4 hdmi code works for you - but traps for me - i think =
there is still issue with s4 hdmi code.
I suspect it is because diff between: my kernel config and yours.
(so it is exposing existing hidden issue)

btw: I'm not surprised by this as my kernel config is multi-soc (common =
for =
bcm25xx/27xx/s905/s912/g12/sm1/s4/h6/h616/a523/h700/rk33xx/rk35xx/qcs6490)=

Usually kernel configs done for single soc (probably config you are =
using to test s4 hdmi code) are not exposing hidden issues exposed by =
multi-soc config (like mine config).=20
I deal with such issues multiple times in past.

multi-soc config i'm using is like this: =
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.18/f=
iles/linux-6.18-arm64-armv8.config

May you pls try to compile your s4 hdmi code with above config?
I'm quite sure it will expose to you issue i'm getting....




> Wiadomo=C5=9B=C4=87 napisana przez Ao Xu <ao.xu@amlogic.com> w dniu 5 =
gru 2025, o godz. 08:09:
>=20
> Hi Piotr=EF=BC=8C
>=20
>     I applied this patch: =
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.18/f=
iles/0312-drm-meson-add-vpu-clk-setting-for-S4.patch, and ran it on the =
board.
>=20
>     I encountered the same issue=E2=80=94the system froze.
>=20
>     I found that the patch has a few minor problems. After fixing =
them, the system runs normally. Could you try the following patch?
>=20
>=20
> =E5=9C=A8 2025/12/3 13:56, Ao Xu =E5=86=99=E9=81=93:
>> Hi Piotr=EF=BC=8C
>>=20
>>     I will need about two more days to look into it. I will follow up =
with you ASAP.
>>=20
>>=20
>> =E5=9C=A8 2025/12/2 16:29, Piotr Oniszczuk =E5=86=99=E9=81=93:
>>> [You don't often get email from piotr.oniszczuk@gmail.com. Learn why =
this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>>=20
>>> [ EXTERNAL EMAIL ]
>>>=20
>>> Ao,
>>> Any chance for updated s4 hdmi series for 6.18?
>>>=20
>>>=20
>>>> Wiadomo=C5=9B=C4=87 napisana przez Ao Xu <ao.xu@amlogic.com> w dniu =
21 lis 2025, o godz. 03:55:
>>>>=20
>>>> Hi Piotr=EF=BC=8C
>>>>=20
>>>>      I will check this issue
>>>>=20
>>>> =E5=9C=A8 2025/11/19 18:27, Piotr Oniszczuk =E5=86=99=E9=81=93:
>>>>> [You don't often get email from piotr.oniszczuk@gmail.com. Learn =
why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>>>>=20
>>>>> [ EXTERNAL EMAIL ]
>>>>>=20
>>>>> Pls see inline
>>>>>=20
>>>>>> Wiadomo=C5=9B=C4=87 napisana przez Chuan Liu =
<chuan.liu@amlogic.com> w dniu 19 lis 2025, o godz. 03:57:
>>>>>>=20
>>>>>> Hi Piotr,
>>>>>>=20
>>>>>>=20
>>>>>> On 11/18/2025 10:50 PM, Piotr Oniszczuk wrote:
>>>>>>> [You don't often get email from piotr.oniszczuk@gmail.com. Learn =
why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>>>>>> [ EXTERNAL EMAIL ]
>>>>>>> Ao,
>>>>>>> Is there any chance to get this s4 drm hdmi series for current =
6.18?
>>>>>>> (i tried backport this series to 6.18 but have some issues with =
reparent vpu_0_sel to sysclk_b_sel)
>>>>>> Why do we need to reparent vpu_0_sel to sysclk_b_sel? is there =
any
>>>>>> background here?
>>>>> Well - it looks it is because bug....
>>>>> Martin Blumenstingl had perfect eye and catch typo in patch =
https://lore.kernel.org/all/20250110-drm-s4-v1-11-cbc2d5edaae8@amlogic.com=
/:=20
>>>>>=20
>>>>> By replacing:
>>>>> assigned-clock-parents =3D <&clkc_periphs CLKID_FCLK_DIV3>,
>>>>> <0>, /* Do Nothing */
>>>>> <&clkc_periphs CLKID_VPU_0>,
>>>>> <&clkc_periphs CLKID_FCLK_DIV4>,
>>>>> <0>, /* Do Nothing */
>>>>> <&clkc_periphs CLKID_VAPB_0>;
>>>>>=20
>>>>> with:
>>>>> assigned-clock-parents =3D <&clkc_pll CLKID_FCLK_DIV3>,
>>>>> <0>, /* Do Nothing */
>>>>> <&clkc_periphs CLKID_VPU_0>,
>>>>> <&clkc_pll CLKID_FCLK_DIV4>,
>>>>> <0>, /* Do Nothing */
>>>>> <&clkc_periphs CLKID_VAPB_0>;
>>>>>=20
>>>>> dmesg is like this https://termbin.com/6020
>>>>>=20
>>>>> So i'm getting hdmi working - but only when device boots _without_ =
connected hdmi at boot (and connected later)
>>>>> If hdmi is connected at boot - boot hangs at:
>>>>>=20
>>>>>      0.341676] meson-dw-hdmi fe300000.hdmi-tx: Detected HDMI TX =
controller v2.01a with HDCP (meson_dw_hdmi_phy)
>>>>> [    0.342750] meson-dw-hdmi fe300000.hdmi-tx: registered =
DesignWare HDMI I2C bus driver
>>>>> [    0.343660] meson-drm ff000000.vpu: bound fe300000.hdmi-tx (ops =
meson_dw_hdmi_ops)
>>>>> [    0.344832] [drm] Initialized meson 1.0.0 for ff000000.vpu on =
minor 0
>>>>>=20
>>>>> FYI: It is after applying =
https://patchwork.kernel.org/project/linux-amlogic/cover/20250110-drm-s4-v=
1-0-cbc2d5edaae8@amlogic.com/ on mainline 6.18 (with some my adjustments =
on this series required by changes in 6.18).
>>>>> For VPU clk changes see =
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.18/f=
iles/0312-drm-meson-add-vpu-clk-setting-for-S4.patch
>>>>> It is 6.18 adaptation of =
https://patchwork.kernel.org/project/linux-amlogic/patch/20250110-drm-s4-v=
1-9-cbc2d5edaae8@amlogic.com/
>>>>>=20
>>>>> As kernel hangs - i have limited caps to drill where root cause =
is.
>>>>>=20
>>>>> Maybe above hang is reason of my backports or missing any pre-req =
required to get s4 drm working?
>>>>> Anyway - it will be good to test with updated to 6.18 series of =
Add DRM support for Amlogic S4 (plus info about any pre-req required to =
get s4 drm working)
>>>>>=20
>>>>>=20
>>>>>> The vpu_clk on S4 doesn't support sysclk_b_sel as one of its
>>>>>> selectable clock sources, so this reparent operation will =
definitely
>>>>>> fail. This has nothing to do with the kernel version.
>>>>>>=20
>>>>>>>> Wiadomo=C5=9B=C4=87 napisana przez Ao Xu via B4 Relay =
<devnull+ao.xu.amlogic.com@kernel.org> w dniu 10 sty 2025, o godz. =
06:39:
>>>>>>>>=20
>>>>>>>> From: Ao Xu <ao.xu@amlogic.com>
>>>>>>>>=20
>>>>>>>> Add devicetree document for S4 HDMI controller
>>>>>>>>=20
>>>>>>>> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
>>>>>>>> ---
>>>>>>>> =
Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml | 1 =
+
>>>>>>>> 1 file changed, 1 insertion(+)
>>>>>>>>=20
>>>>>>>> diff --git =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml=20=

>>>>>>>> index =
84d68b8cfccc86fd87a6a0fd2b70af12e51eb8a4..6e0a8369eee915fab55af24d450a6c40=
e08def38 100644
>>>>>>>> --- =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml=20=

>>>>>>>> +++ =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml=20=

>>>>>>>> @@ -55,6 +55,7 @@ properties:
>>>>>>>>            - const: amlogic,meson-gx-dw-hdmi
>>>>>>>>        - enum:
>>>>>>>>            - amlogic,meson-g12a-dw-hdmi # G12A (S905X2, S905Y2, =
S905D2)
>>>>>>>> +          - amlogic,meson-s4-dw-hdmi # S4 (S905Y4)
>>>>>>>>=20
>>>>>>>>    reg:
>>>>>>>>      maxItems: 1
>>>>>>>>=20
>>>>>>>> --=20
>>>>>>>> 2.43.0
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> _______________________________________________
>>>>>>>> linux-amlogic mailing list
>>>>>>>> linux-amlogic@lists.infradead.org
>>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>>>>>>> _______________________________________________
>>>>>>> linux-amlogic mailing list
>>>>>>> linux-amlogic@lists.infradead.org
>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
> <fix-vpu-clk-setting-for-s4.patch>



