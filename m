Return-Path: <devicetree+bounces-240159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D20D8C6E022
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 58D594F968D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 885D034CFCB;
	Wed, 19 Nov 2025 10:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AzcmxNeW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A821C34D3A3
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763548063; cv=none; b=TlDR/r/dkHKy2unWlWPLQbuXVQzd1t0JvmLJ55PvUnVvkuyZRbrfE/6vcCla626YwL+72XKEVj3EsrG9OUtxkjDCLIOEJvhECU5M53kuJaW/gyBZJRI1qf+JTawgZriNni+lfyfSITSwzmP9ILjUQQhCRz0RdsvFxkk/NJJY72E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763548063; c=relaxed/simple;
	bh=ctOhoXzCrNGir2BqjHZ0QJ1bVseg/hdCu75raDnkXMY=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=TXHz0njnH4Rtu54HTYvmOxs/u/Czdj7bsm4yEFdmqAoRPoNrdhkcspVL4cfX9mwXcCbMp/v00zlDDKqK3mll1A3gKl6uq9rRarecvJ1MXktusfYn8nC2OzkwDcEJ0W156u/YPjPRdk5huA/2iYSyJuNsFN4hfNcKG1USycF2lXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AzcmxNeW; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b72cbc24637so1112070166b.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 02:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763548060; x=1764152860; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+nM8TwEn3pAM+Wkbq5/nAzbOqWOMItS7/Y6FbwZo48=;
        b=AzcmxNeW6cMIWdkomRTGUwmHoqgeVsyx78C/B+/79yBxCes78M8ocdBdCSNvPlfwWv
         NAVteqx2AJk/SxU4jeCaHfw4JJ2nS4kxGj4QKKb+tB7OJDkGwXSDRBFlPT0DriMCUlcd
         J9bTERv289FlR6sPg5/kU39+9xShHUJgarDAwGGnL/VAFQFsc3oLfLfzY9Tr0BXx8DIa
         HFLLN7P6Tiv1+/XLNFYlQn7BaB04STUykoWolLzWr8BGCNNlse/HIcyzg0ks2ZFQSS1t
         4j8U3n4Wwjrz5xZIhqAAoP9sz7ookfMSKcnOUOPNWVCY0W84ft/QqsowGMatOo8vxjVS
         JjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763548060; x=1764152860;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S+nM8TwEn3pAM+Wkbq5/nAzbOqWOMItS7/Y6FbwZo48=;
        b=po2BHSerfF/J65yKLR84bClcyU6piKdf2k4s/hGpj6inb6joj3Ne41IHDxJ5yHHd7v
         6zecmkwB3tdHZaS1xs2MjVFnCgzipZWjPA3UBI+A6TszVLG1ILf5fKGuUC8KxsFqKNjU
         yrD+Lgt+y2L+IXw/ZUNli6o6i5vlNPJTzZ5lqr0XzLFainOoCOpC5wDcVADZqf0mzf0c
         XaExh12ekpqAGNVIuIrTVpIuci7ZMHSKXLgdph7wVXlUEdTiOMo9W9wFvxN3ElClMmNd
         ER1/ECSJ6rMszkkFsJrG4NDi6SuEcOBPRHFZVsL8088gpHml4k5NA3xTNSaG+Srf2i2V
         j7XQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtzd7x0vCKiv/JM7KzTUUsqvvlyIXkbahu9PFJIBEQDQ/mEHa2fAxOZgNbVn+vAz4MeqVHqbmcTf8a@vger.kernel.org
X-Gm-Message-State: AOJu0YwgAql8XrPL5KxZGlIKjWzaiy2Pt3qJZdUKoAV9J4+Tsq942GwJ
	XvBVyaoGGE907zAMqQa0oMbKmtMXxpkWAIbOoWkLnE+1gEMYmoP2tvnE
X-Gm-Gg: ASbGncv6LnJymYvQ/oD6+Pjk8c2DbfN2hONkpTFOxidoSOCaR74Jyd7NRoX8i+kUm8E
	RewU037LTCSglDrXtOk57lTLxz8Za7VatyjO2A4e/HYfT/vr84YRGfJZxeanmYRxmjLMA+Z62H3
	QsT72dzL5wmcW+hBdEdYg5St/IuJQaHEkiVdSl6JhwChb3boTSySJWpXKVUOaZeRht+QiUhg/vz
	EMmL9v9VExcoVuLsuAVhXEEat3A+c5bLmHNsrpPpQtx7NB4hhPfmxHf+QE125fYOsDIyCP/0yX4
	2bvQOhqY+tNdXJkgmH8cR4y72ECXK2tCfiGFOlyS36nOuyyXnezU9OJclX//WZNLgELYgVoeiXw
	zl4ZJ68HLFT/FN7gHNwCwE20GwBJskd2Y+idCYCkc6IGc4/wTchwtG6q0dil9N/ri9BfonB2Rel
	aMKiyDDKGPX0QHzEMJGrizmxkDO1XS1Mt1z4S+YWkqBz5D6oDBbtID0ULMcv9TO/3UcB+pvD3qQ
	/U=
X-Google-Smtp-Source: AGHT+IFcsP/JWu7DWWlBu/BkWNRt0LIFSuLh7i2sy3UQ2gmA3tYApcSpm1bJdautTGMK/vyZo0UGug==
X-Received: by 2002:a17:907:7e93:b0:b73:9368:ad44 with SMTP id a640c23a62f3a-b739368aff0mr1299146866b.16.1763548059649;
        Wed, 19 Nov 2025 02:27:39 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad4635sm1588133966b.26.2025.11.19.02.27.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Nov 2025 02:27:39 -0800 (PST)
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
In-Reply-To: <8c3b9fa4-326e-4791-8154-07b268faa132@amlogic.com>
Date: Wed, 19 Nov 2025 11:27:26 +0100
Cc: ao.xu@amlogic.com,
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
Message-Id: <7703796D-35D4-4AD2-B7F8-B75D2BE0F7AD@gmail.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
 <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
 <3AC316FA-A633-4B6C-81BA-CCCA290E7F03@gmail.com>
 <8c3b9fa4-326e-4791-8154-07b268faa132@amlogic.com>
To: Chuan Liu <chuan.liu@amlogic.com>
X-Mailer: Apple Mail (2.3826.700.81)

Pls see inline

> Wiadomo=C5=9B=C4=87 napisana przez Chuan Liu <chuan.liu@amlogic.com> w =
dniu 19 lis 2025, o godz. 03:57:
>=20
> Hi Piotr,
>=20
>=20
> On 11/18/2025 10:50 PM, Piotr Oniszczuk wrote:
>> [You don't often get email from piotr.oniszczuk@gmail.com. Learn why =
this is important at https://aka.ms/LearnAboutSenderIdentification ]
>> [ EXTERNAL EMAIL ]
>> Ao,
>> Is there any chance to get this s4 drm hdmi series for current 6.18?
>> (i tried backport this series to 6.18 but have some issues with =
reparent vpu_0_sel to sysclk_b_sel)
>=20
> Why do we need to reparent vpu_0_sel to sysclk_b_sel? is there any
> background here?

Well - it looks it is because bug....
Martin Blumenstingl had perfect eye and catch typo in patch =
https://lore.kernel.org/all/20250110-drm-s4-v1-11-cbc2d5edaae8@amlogic.com=
/:

By replacing:
assigned-clock-parents =3D <&clkc_periphs CLKID_FCLK_DIV3>,
<0>, /* Do Nothing */
<&clkc_periphs CLKID_VPU_0>,
<&clkc_periphs CLKID_FCLK_DIV4>,
<0>, /* Do Nothing */
<&clkc_periphs CLKID_VAPB_0>;

with:
assigned-clock-parents =3D <&clkc_pll CLKID_FCLK_DIV3>,
<0>, /* Do Nothing */
<&clkc_periphs CLKID_VPU_0>,
<&clkc_pll CLKID_FCLK_DIV4>,
<0>, /* Do Nothing */
<&clkc_periphs CLKID_VAPB_0>;

dmesg is like this https://termbin.com/6020

So i'm getting hdmi working - but only when device boots _without_ =
connected hdmi at boot (and connected later)
If hdmi is connected at boot - boot hangs at:

    0.341676] meson-dw-hdmi fe300000.hdmi-tx: Detected HDMI TX =
controller v2.01a with HDCP (meson_dw_hdmi_phy)
[    0.342750] meson-dw-hdmi fe300000.hdmi-tx: registered DesignWare =
HDMI I2C bus driver
[    0.343660] meson-drm ff000000.vpu: bound fe300000.hdmi-tx (ops =
meson_dw_hdmi_ops)
[    0.344832] [drm] Initialized meson 1.0.0 for ff000000.vpu on minor 0

FYI: It is after applying =
https://patchwork.kernel.org/project/linux-amlogic/cover/20250110-drm-s4-v=
1-0-cbc2d5edaae8@amlogic.com/ on mainline 6.18 (with some my adjustments =
on this series required by changes in 6.18).=20
For VPU clk changes see =
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.18/f=
iles/0312-drm-meson-add-vpu-clk-setting-for-S4.patch=20
It is 6.18 adaptation of =
https://patchwork.kernel.org/project/linux-amlogic/patch/20250110-drm-s4-v=
1-9-cbc2d5edaae8@amlogic.com/

As kernel hangs - i have limited caps to drill where root cause is.=20
 =20
Maybe above hang is reason of my backports or missing any pre-req =
required to get s4 drm working?
Anyway - it will be good to test with updated to 6.18 series of Add DRM =
support for Amlogic S4 (plus info about any pre-req required to get s4 =
drm working)  =20
    =20

>=20
> The vpu_clk on S4 doesn't support sysclk_b_sel as one of its
> selectable clock sources, so this reparent operation will definitely
> fail. This has nothing to do with the kernel version.
>=20
>>> Wiadomo=C5=9B=C4=87 napisana przez Ao Xu via B4 Relay =
<devnull+ao.xu.amlogic.com@kernel.org> w dniu 10 sty 2025, o godz. =
06:39:
>>>=20
>>> From: Ao Xu <ao.xu@amlogic.com>
>>>=20
>>> Add devicetree document for S4 HDMI controller
>>>=20
>>> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
>>> ---
>>> Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml =
| 1 +
>>> 1 file changed, 1 insertion(+)
>>>=20
>>> diff --git =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>>> index =
84d68b8cfccc86fd87a6a0fd2b70af12e51eb8a4..6e0a8369eee915fab55af24d450a6c40=
e08def38 100644
>>> --- =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>>> +++ =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>>> @@ -55,6 +55,7 @@ properties:
>>>           - const: amlogic,meson-gx-dw-hdmi
>>>       - enum:
>>>           - amlogic,meson-g12a-dw-hdmi # G12A (S905X2, S905Y2, =
S905D2)
>>> +          - amlogic,meson-s4-dw-hdmi # S4 (S905Y4)
>>>=20
>>>   reg:
>>>     maxItems: 1
>>>=20
>>> --
>>> 2.43.0
>>>=20
>>>=20
>>>=20
>>> _______________________________________________
>>> linux-amlogic mailing list
>>> linux-amlogic@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>> _______________________________________________
>> linux-amlogic mailing list
>> linux-amlogic@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>=20


