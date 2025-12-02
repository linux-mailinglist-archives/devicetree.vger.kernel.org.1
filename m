Return-Path: <devicetree+bounces-243614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6FCC9AAFF
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5960A3A3D43
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70ACC307491;
	Tue,  2 Dec 2025 08:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JYwpO/RI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7499330749E
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764664165; cv=none; b=gBn1e7Jgg1+5Vy6VNiiKUE+cejpM7Pywk18hfPJ6A1MLkdCTotySQkaDcfbmU07Lws3OpHmHfo1Pz0BQwtKWpvB1o72viw/rX/rlDLqLA1ka9IwMh10yXcVrz+ahtwgNveC6kFlyfCN6i7F8wKbfl2R/VnV15qjOH0lIPT8gxmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764664165; c=relaxed/simple;
	bh=0tp1EyGxVceXLZRoNush21fR0xvGgIsjJLYzfo7rBww=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=TALxTRNDRcDLPKjGW0fmcZGobx+/s99NMyDbDmfMIiqWdsLvn0YufyyjhW4YX2H2nV54CJVStmS6s8mOdp95U9z41ZQFz5rIhFu/7CSp7RUEs5l7xCkEVKi+WpPhLRXF5GNZDGXIz4BHC9hmbRUT65bPvRf3ekuFxC2F80FYtpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JYwpO/RI; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-640e9f5951aso8866721a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 00:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764664162; x=1765268962; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcgzur0HEUNJflCgkpwrwXAczgebSEaHIRN6YepyWwU=;
        b=JYwpO/RInYSlVWBrQVosvZV6bEsrQOX7k7pdIiIRKfEE13RFmr2eXg6VuyMWbc+ezE
         fx284kPuRx5kXPH0vVhw9NsWPuqHq0uXR1d+KHapMR8C9vJcZYHYw2P8QRrP1pMUDPdr
         3LhzQ0LiQcZo4vzGmbm5F+nUbMdFX5tc8jE9vyWhl5Z/IMGzvryxRATZtcCtOBBCdB2R
         +BqsNdEnMvmirIbOdijsU2oQJ/q1MANWLPwbpqsp/43qbFlMjcQ1F8xu2Ba9zfTyumsy
         wztwIQvygbF7DkubgNJU4+ZlXSZ0PtaNzTJRdEvDuDa3gkEf3kVyVBFQyyEw9xOzB+a3
         eJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764664162; x=1765268962;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kcgzur0HEUNJflCgkpwrwXAczgebSEaHIRN6YepyWwU=;
        b=wdMdYMtKSUQo62G31SC6qjnyJgvQohVFGagFZmJwcyohRM232FHCiyvPanbKLhfhzt
         0BoDeyQHdRQJltEetida38aDnvNDrvstuXju+AWeA0M9UDxCJZjjAG18q5SPcuEcg9gt
         MzhtTHExpP005mDIPYoMjEjT9K5lResr0WYivM3aT/ISsKCIkNTrUALWxVUm+F1snXqN
         mn2SHP7nuy9WizLgoh+XzAa3FDaE2x4DiKIbIf3FAqydG80gdRy1NsF5vvt34aInSBx6
         CRx+0DY1ndLYzGya4Zq1983jWMb3boVB8Sl9iygp460ZeA6qZI78GRFtBpzZ7RzjA4vs
         pCTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJTIicxARC81h6xsRM/kH9t6hsJoj9Fzw4pvnRDhv90hDpBu0q+ihKYnDkywlGBCpbqhLbFAJ3Ovny@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6OWLAq3adVS9/1IbJLpZhsYmFr7Lrcq/ZIx+oyw3hj7I39ODX
	MppNNcivMuNKDsbOnn9ZDMrVxGI+eKBEdEUfGzTXdDoteeiKY9GzFckl
X-Gm-Gg: ASbGncvcdypF96MbtxmDPDnKLRCQUDKJ41XdPs12rEdsYVGREaELGuKDTHyaiBQmkVA
	5sa07bjn/ehYzi1MlvuHHqqjtalIr7mbm8EOO5Fp8y6EJeKB/CYn9kGycKuYZAbJQ1W9SvMuV4e
	HUsyQWfT1KWhVtaZVgBYpPWEs6iFYLGpLdOmfP/P5Nc4cDaIhmkdF9ss7erxm3bUhckVyaEpyGS
	9KfQOGbxz+TdSLMdmROm1Hm2gKXUDCIBMX/FQiYHW9LkQ1X7LJMBZNFwYsH2hQMDCZJ0ZFKhmgL
	2gt3629Nx9nL/RSazLzC+Pw+Ys4x+gDwObAWKw/wL/y9Ip0HfndylEFOwIFEXHyTIZ7uvQu8dFr
	2F3wjW/ISpCCd3PH1/fRkk6IL2wX2ySGlZ8ccfGHV7ruB6aJZhTpP0NZB/dn66VA9ylvccTGbmQ
	TszttWvojn7F542AtusNjt90OnLab63SaTCxRxBjquuYgfRto1Vx7hLIUayYvqW8z10A1A9txBC
	WQ=
X-Google-Smtp-Source: AGHT+IHjEo3dTSPtXuaE0YTbWgrbA87SGNQIz1itunkq73Jcs/neO8kKvVs5IxH7P+kpLe+c3V08gg==
X-Received: by 2002:a05:6402:280d:b0:647:62ba:123b with SMTP id 4fb4d7f45d1cf-647892a97a6mr1662944a12.9.1764664161284;
        Tue, 02 Dec 2025 00:29:21 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90e44sm14669936a12.14.2025.12.02.00.29.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Dec 2025 00:29:20 -0800 (PST)
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
Date: Tue, 2 Dec 2025 09:29:07 +0100
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
Message-Id: <F04DC684-AD64-447F-87EC-F503D411F25D@gmail.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
 <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
 <3AC316FA-A633-4B6C-81BA-CCCA290E7F03@gmail.com>
 <8c3b9fa4-326e-4791-8154-07b268faa132@amlogic.com>
 <7703796D-35D4-4AD2-B7F8-B75D2BE0F7AD@gmail.com>
 <a71f24c9-1f40-45a1-8fdb-6075bbf89930@amlogic.com>
To: Ao Xu <ao.xu@amlogic.com>
X-Mailer: Apple Mail (2.3826.700.81)

Ao,
Any chance for updated s4 hdmi series for 6.18?
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


