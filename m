Return-Path: <devicetree+bounces-243784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E7BC9CAFD
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 19:51:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 314D84E48F7
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 18:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2821E2D24B6;
	Tue,  2 Dec 2025 18:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BMq5mjw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572C62D0C9F
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 18:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764701479; cv=none; b=VdImqW6pCcNsyz/0BKoHPZ8QGniIo+nbgLErNOTtSYV8rozVmSHm34pmusJjXL8UdylVZhYJcW7feBo1pSG/+3byVh5QqSF4SQbrJqKwfUW7LdxggCHWIdHLcmWZnCEQljN+1Vgmwei7yWhkA/qL60AXvmv2mrewlYy/5fWBMCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764701479; c=relaxed/simple;
	bh=4XrTwBI6GfIcRlKGQ+9MIEdd1yoEj/TBavMaSsBEpoc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hIFyFKFro7XPgpn6YlErAGfhDbOvhS4qSF9dWcPW0kH2ryOD1TpLL0durzz0fkfD9XgX0HKpalKMfp7lZZ2EbwLM/HOM52oUPZjYl8hNPBTGJrZLCGGglZDdc32SSh45xINwpbbvBPFUINQ/2ghB+HFzJIPbIKWyoyj0AbZaPkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BMq5mjw1; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8824ce9812cso64231526d6.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 10:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764701476; x=1765306276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0rNbv3ufEFl8Ti5k9F3QiiXqTVEJUcfBjegrAmdC674=;
        b=BMq5mjw1WGkteKc19RRFE1eKia2GkfrqFgVe61wRHNy79OsUbksGrN/MFBG7eS1eJr
         mQbGHXLBA1XH9OY8lqybdcD0ITIyFN+I9Up+NzkyS0JCY5Ct/ev1j20GANb7VKaJ3OZE
         7zAzX1Qp1NdOlwcwbCmSmYDoDoHHXqSvnofi55dCeM3qzgTCIxyvH2EA+rOlqolCwMSJ
         jrA18o3pQTmSdji5F3CWHaYsvWxZ28zAmwqs2zeumKFpl7X33h8CLAB3psbgtHl768v4
         WmrVaOw6Ov9FRtBANH4xiBQX5Th/mrAZ+4NQ82of0pdehX9DjMPQjCLmJrP2vaZ5lQZ2
         B+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764701476; x=1765306276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0rNbv3ufEFl8Ti5k9F3QiiXqTVEJUcfBjegrAmdC674=;
        b=aIOCd0qzqM5PpBPfJe1LaPXgw6ze30YtfaLi5XP3w78wsVhf+vu8+8S4Npbjkr7qBp
         E4LmA7V+ytMGDZXVyiu5ym3YLWjCyzZA227rB8F7vhIUd6Nd9b+F6fujUQdpOE15+JYG
         r8N2rl7Ps268kqHkzfsryD23fAnA8TjRGqckN2SWEtYL1JdIcrqGZLC3vMR+8wS2JvD0
         bUNeTSBro342gwtR5ow3Pj9n6pIL7GMfTN8hFYIViMx41FSZvCXpNe1bMYDSsv1cO2DM
         eRmJZX1j8LdyOx0LdKRAYmDlNbt+KdC+zEfpo0T11nWh3yAw5ULXiobxi91r61VyMmg7
         LDdA==
X-Forwarded-Encrypted: i=1; AJvYcCXCf762BZqjbvUjhV9ScM/ZstZkRIn9N/xmtf+iRRvzgGSNkXM5WCgVCflD12A91vPkPDwsfE9CmEZp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0Z2MrIbB9cdJFc+fa+NXLHcLJ23X29wFwrpWXxswLzGfAwvig
	UWfwnKSJbudLOyIWpXwimVdut6Ob56zySRXtSHGcgqhJE9qGYCdh1WbUm93VQJbpB34qi3sgIJQ
	uweqIeOciZ7fO6VleDbeYcyt3P71jBA==
X-Gm-Gg: ASbGncucO9OlPoDKhyz8XinY+ZFgN0SaQris8gfHoK2eOWEWS4vmEyuajw7QB+nCxOi
	L5U6pm4Fm7Zdbtp+gT80SwfDZnwk5K6d7EKwhtuyBjQNKAKl8UjUYD+Nb/gOoTQri/6NtBVw0XB
	iCbcLt4tnwY/Jl3KBfyH8brw3dtlqsailZ4k+0utdvd4UK1/wndNxJcrZjtmegAvdM79+XJ7qwa
	Zd/6K5WCbnUMeJhRzyy6faCnWUYmNRDD3jnuOX/RnjnfxXrnq2GYnKil0/piL4dbCic2dJ2eBHi
	nVK9oVnLYfMhX39+u/CjIUAr2ZV3
X-Google-Smtp-Source: AGHT+IH9XUQWzaUoTFbHz+Zo6M5rwIC9ydzn79MfP9yr6jRoN2zs0jgMYMamuKCtU+ElHFaojqhePC+3e2tFDlU4OjQ=
X-Received: by 2002:a05:6214:e64:b0:880:4690:3bb8 with SMTP id
 6a1803df08f44-88817733618mr5732776d6.18.1764701476153; Tue, 02 Dec 2025
 10:51:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201011457.17422-1-daleyo@gmail.com> <20251201011457.17422-5-daleyo@gmail.com>
 <ae91cad5-5a0b-4c83-9eb0-6e7baf6a33d0@oss.qualcomm.com>
In-Reply-To: <ae91cad5-5a0b-4c83-9eb0-6e7baf6a33d0@oss.qualcomm.com>
From: =?UTF-8?B?SsOpcsO0bWUgZGUgQnJldGFnbmU=?= <jerome.debretagne@gmail.com>
Date: Tue, 2 Dec 2025 19:50:39 +0100
X-Gm-Features: AWmQ_blh5y2GvhXqkrQ6R3Hgzm0jcCZOGyFUiFJ6is_KTAGGpRW-lBMZwLxab20
Message-ID: <CA+kEDGHyx7C7PNxQ8votwABiQpKhAAh126os3OLu-W0kDo2ySQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] arm64: dts: qcom: Add support for Surface Pro 11
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dale Whinham <daleyo@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

As discussed with Dale, I will take over the v3 submission since we've
worked on this patchset together until now. Here is my feedback below.

Le lun. 1 d=C3=A9c. 2025 =C3=A0 16:35, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> a =C3=A9crit :
>
> On 12/1/25 2:14 AM, Dale Whinham wrote:
> > Add device trees for the Qualcomm X1E and X1P-based Microsoft Surface
> > Pro 11 machines (codenamed 'Denali').
> >
> > This device is very similar to the Surface Laptop 7 ('Romulus').
> >
> > Use a similar strategy to x1-asus-zenbook-a14.dtsi so that we can creat=
e
> > x1e and x1p-specific flavors of the device tree without too much code
> > duplication.
>
> [...]
>
> > +             pinctrl-0 =3D <&hall_int_n_default>;
> > +             pinctrl-names =3D "default";in v3
> > +
> > +             switch-lid {
> > +                     gpios =3D <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +                     linux,input-type =3D <EV_SW>;
> > +                     linux,code =3D <SW_LID>;
>
> I.. don't think this device has a lid - what triggers this GPIO?

When a Surface tablet is connected to a Surface keyboard, opening/closing
the keyboard triggers a wakeup/suspend event. I will double-check if this
entry is involved and will remove/keep it in v3 based on this check.

> [...]
>
> > +     /*
> > +      * TODO: These two regulators are actually part of the removable =
M.2
> > +      * card and not the CRD mainboard. Need to describe this differen=
tly.
> > +      * Functionally it works correctly, because all we need to do is =
to
> > +      * turn on the actual 3.3V supply above.
>
> There's not a M.2 card, the WLAN chip is soldered on board
>
> https://www.ifixit.com/Guide/Microsoft+Surface+Pro+11+Chip+ID/174016#s370=
945

Indeed, I will remove this comment as it is not applicable to this model.

> > +     sound {
> > +             compatible =3D "qcom,x1e80100-sndcard";
> > +             model =3D "X1E80100-Microsoft-Surface-Pro-11";
> > +             audio-routing =3D "SpkrLeft IN", "WSA WSA_SPK1 OUT",
> > +                             "SpkrRight IN", "WSA WSA_SPK2 OUT",
> > +                             "VA DMIC0", "vdd-micb",
> > +                             "VA DMIC1", "vdd-micb";
> > +
> > +             wsa-dai-link {
> > +                     link-name =3D "WSA Playback";
> > +
> > +                     cpu {
> > +                             sound-dai =3D <&q6apmbedai WSA_CODEC_DMA_=
RX_0>;
> > +                     };
> > +
> > +                     codec {
>
> 'co'dec < 'cp'u
>
> please flip the order of the two

Sure, will do in v3. For info, this is also in the wrong order in *romulus.=
dtsi.

> [...]
>
> > +&i2c0 {
> > +     clock-frequency =3D <400000>;
> > +
> > +     status =3D "disabled";
>
> Is there anything connected to that controller?

Not clear yet, maybe for the touchscreen and pen, still to be investigated.

> If so, let's keep it enabled so that it's accessible through i2c-tools
> It'd be even better if you could document (in a comment, like in romulus.=
dtsi)
> what and at what address that is

I will enable it in v3, not sure if I'll find the right info to add a
useful comment.

> [...]
>
> > +&lpass_tlmm {
> > +     spkr_01_sd_n_active: spkr-01-sd-n-active-state {
> > +             pins =3D "gpio12";
> > +             function =3D "gpio";
> > +             drive-strength =3D <16>;
> > +             bias-disable;
> > +             output-low;
>
> Please drop output-low from both definitions, the output state is

Ok for v3.

> controlled manually by the WSA driver. Although from the diff below
> it looks like spkr_23_sd_n is unused and you only have 2 speakers

Looking at the public specs, it only has 2 speakers indeed.

> [...]
>
> > +&tlmm {
> > +     gpio-reserved-ranges =3D <44 4>, /* SPI (TPM) */
> > +                                                <238 1>; /* UFS Reset =
*/
>
> Please ensure your tab width is set to 8

I will fix this in v3.

> [...]
> > +     cam_indicator_en: cam-indicator-en-state {
> > +             pins =3D "gpio225";
> > +             function =3D "gpio";
> > +             drive-strength =3D <2>;
> > +             bias-disable;
> > +     };
> > +
> > +     wcn_sw_en: wcn-sw-en-state {
> > +                     pins =3D "gpio214";
> > +                     function =3D "gpio";
> > +                     drive-strength =3D <2>;
> > +                     bias-disable;
> > +     };
> > +
> > +     wcn_wlan_bt_en: wcn-wlan-bt-en-state {
> > +                     pins =3D "gpio116", "gpio117";
> > +                     function =3D "gpio";
> > +                     drive-strength =3D <2>;
> > +                     bias-disable;
> > +     };
>
> and here (+ these last 2 entries are out of order, GPIO num-wise,
> please adjust that )

Noted for the tabs here + the 2 entries to reorder based on GPIO.

> [...]
>
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-denali-oled.dts
> > @@ -0,0 +1,20 @@
> > +// SPDX-License-Identifier: BSD-3-Clause
> > +/*
> > + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights rese=
rved.
> > + * Copyright (c) 2025 Dale Whinham <daleyo@gmail.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "x1e80100.dtsi"
> > +#include "x1-microsoft-denali.dtsi"
> > +
> > +/ {
> > +     model =3D "Microsoft Surface Pro 11th Edition (OLED)";
> > +     compatible =3D "microsoft,denali-oled", "microsoft,denali",
> > +                  "qcom,x1e80100";
>
> Are the OLED models always X1E and the LCD ones always based on X1E80100
> and LCD models always based on X1P64100?

The OLED models are always with the X1E and the LCD ones with X1P64100,
at least this is our understanding from the specs and online configurations=
.

> Konrad

Thanks a lot for your review,
J=C3=A9r=C3=B4me

> > +};
> > +
> > +&panel {
> > +     compatible =3D "samsung,atna30dw01", "samsung,atna33xc20";
> > +};
> > diff --git a/arch/arm64/boot/dts/qcom/x1p64100-microsoft-denali.dts b/a=
rch/arm64/boot/dts/qcom/x1p64100-microsoft-denali.dts
> > new file mode 100644
> > index 000000000000..7c064ad49395
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/x1p64100-microsoft-denali.dts
> > @@ -0,0 +1,16 @@
> > +// SPDX-License-Identifier: BSD-3-Clause
> > +/*
> > + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights rese=
rved.
> > + * Copyright (c) 2025 Dale Whinham <daleyo@gmail.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "x1e80100.dtsi"
> > +#include "x1-microsoft-denali.dtsi"
> > +
> > +/ {
> > +     model =3D "Microsoft Surface Pro 11th Edition (LCD)";
> > +     compatible =3D "microsoft,denali-lcd", "microsoft,denali",
> > +                  "qcom,x1p64100", "qcom,x1e80100";
> > +};

