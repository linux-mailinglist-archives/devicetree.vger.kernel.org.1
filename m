Return-Path: <devicetree+bounces-257105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3E5D3BA27
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 22:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9EA5E302429F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 21:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13982FB085;
	Mon, 19 Jan 2026 21:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="EPUg3kii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8818B26CE1E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 21:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768858806; cv=pass; b=VKJ7goaBRg2Wu4bKEKGp16bMYnrOFelLWnVFD+dXYPew2Hl9se/9TAl7GIg/qyz3JkV0CX7LIKDvkA4o4aLsJE3VJx6DJaaYsRZa2kZjnrELv57ZKvPHQQgcD4MruSaxF10JWjBp0uuV4czPftuCTAKvKq0zHSLDzNgjVOUdZts=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768858806; c=relaxed/simple;
	bh=u8FhbbYeKJKW+F1pogKwjs71qqBw07BZIKPr4ZRQT54=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X2/BIddB2x9rNu0qB2YGnUZNG6J+sB0DAG4imSFtiqrbTJu9eXYBMFGWv7+x9j6MkWHR56ux/gYhtWTTbajIZGnGq6QCNCkd1/fbF4/+kAN7/wzlpTTYXhxUVmXqQB6E66E+dS3k+goXqI3XgtMW9xahTYTiC6g4u3xPl1An1/Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=EPUg3kii; arc=pass smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0f3f74587so29639375ad.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:40:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768858805; cv=none;
        d=google.com; s=arc-20240605;
        b=jsC1sf1p+1iROaQAnxEzbI6+rK5gTuOW1DqBp4WKOmYompO/AgpqMa9LkFIyg2eAfP
         wgF6ZUpBPPSPG9/UCz6oT2KPmiK1O6WRYU+pQo7obI2DhPBEqk20krdDhzW3lN9fAjdj
         0fAJP/aEaQNG/hRjY9dA3lCLMWkbevlniNoOsRkqJMCxmCn/TLVL4f+8KgBxz8AQMiJK
         2eni8BGJIgyaY9ZQ6VqZ+dVNRCQiQchHzqC8TdDVpU/TqQ0ZKspqqFY7q3afrH45IbYF
         kqE6AWK95aQ8xZ273rKfvd9q1TRGjjLYMlAEMjFUPyBjlTnL0sRwhqcKu9i+oxsHPygz
         2sjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PZxxqnCyjXCPpNtZk5aA58abDH5T+E1BOx9dRDLt+qc=;
        fh=maXriVJ/La5pZ8LHl7FDplx9+XPhMMMSefxMrn/hRGc=;
        b=BtXfmpCxxzKKoJtPs6hJCPGpIS1pTbeqA16TPSi3cGAyTGO8Wgey413M0mLrM0uEYH
         JYc7XYiUEWTmItFqHkTnxwd3qupGgTwQV2SZmvjnvSjMFq6xOMe4WfSlTq+V3n7oSEKk
         NlbqzfrdeEuejHR6aN4AnsY6fI5QQmhiipCj9ZukZzC72JGVviUaAdX794eIcXkhahpI
         qkf92dZJY369ZpTeOKlNGjKFrDG44jbo44mU6rMUq4MdpkBUX2naimJyUK5Ri4X+Y1cx
         hd21gBszLG6ih/A5GQqPn69DkcR4SWqKgZL96vwghmnWGmX5ScKMsVRapZvfsb3t7GDu
         Uxmg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768858805; x=1769463605; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZxxqnCyjXCPpNtZk5aA58abDH5T+E1BOx9dRDLt+qc=;
        b=EPUg3kiiK455Dn3wp4sw0OjjhjHyqDzTYRP0DiTLNjmkvnZROyVKmew+jua3wvNgxQ
         STgWyQopkTKOkbwB/kmQQqLQiOT8UDg2xp5U11QLK1rbFBqAzPL776BEXn7hzaVpzjPH
         VEf9ldSQ+FeGoNbzsQ0/mdcAjAFP0hl2B3ivwn9ikPLkilYkz4Pj+6wWw+AGkxirFisw
         qVghL4cYkRW8/JczjIa2vZbKAda5MQtSmFWSA2Lnft5bosdfjvUf8an+Stl+pUopnH7R
         xJU7zK9mTgCW5y4tG6NjA/ReGE0NC9DLeMRnHoFv9xGWrpY5ZSgjLbaxiP6379v8L0nz
         9kHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768858805; x=1769463605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PZxxqnCyjXCPpNtZk5aA58abDH5T+E1BOx9dRDLt+qc=;
        b=a/KRFmvfUltR3bbK7U9tXzOgwRmDXnoauMIt8tVp+eSTatIIrGxfUmuFeySU/isIO5
         Oe9cDkEhYu8/hmeNiICnon8MAyjkbigVX/29s05UWPmbNoVfukwcNZ1YvzhZJoIcTJiQ
         2bipsfTGDaLK6gr+kQCihDPcoSN8Fj9iZZV9Df2EH8yPcmh/4RpuRUiNmo2Zc5V9v85L
         r8/+tCbnJeLJQNtjUBOXFovyGmpXAzSrcIbtD8g9pfnK2EwKjBx2bvEaqQV+uPxBkgYI
         2xxB8eTEW0P5nB+0R9Lv60g6WM31eJw3+MGfjqZsNGQXtjMfkQl+yD0ttKFJ4jUUmtRA
         3bwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSBaXaaG/4VHw5Ly0h2gCpQJF3xY+m2M5wsqyUy8z0xaJ0+SqaOlPCUG2q38bzso96L0YfRo9iFWcZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+XnkdPETYqZaA/wsCLk+Pmx6nVPKc17tX4QIomyULd+F+Wqc9
	vGRHfHof8ApqaoDBaFl6y2V8jKdrbJnFWJTJFWKTF4+7gtE2/EXtUFOSQMsW9GLC+ILljA9SBEZ
	Bi6P/P/DU+58guDnfgMlU3lZHkxd+3PA=
X-Gm-Gg: AZuq6aJ9x+TkS/vr3krouFFdNW+LiY5WnQIot9UamnoxHuAp2oG8b7925WMKdXzd5Tr
	7Yj2Sg5v9buO41q20bGGRDGzVhEfimx6ms1Ak5K0vVYw914nrZeuUbvNMfgay5I0IJGreIMS695
	CqSChIYx/XLztZL2RXniI/q5p7N1xH+2q8FadXK96CP4tbVs2bW92Gkj7tPOyp/XmNeHdxObhVI
	Bb/wL2HTw0yM88XwWbiLYNO+eKlL/bze7JyP928rvj+XVLZVs1E3rlU/j/Q4wq56gMSUopWBayL
	+QmFrSSX14BuK9IDEeCzoTBBEpQP
X-Received: by 2002:a17:903:40ca:b0:295:290d:4afa with SMTP id
 d9443c01a7336-2a71753755cmr110427715ad.23.1768858804795; Mon, 19 Jan 2026
 13:40:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116023900.2036657-1-nick@khadas.com>
In-Reply-To: <20260116023900.2036657-1-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 19 Jan 2026 22:39:53 +0100
X-Gm-Features: AZwV_Qgat7I5RJwyS0qYSlAnRBAN4jc1vt4piOLxALOTFSnVgB2ZAhHU5wXVsak
Message-ID: <CAFBinCAeNcKW_dK+1LD7U_+JkcozxmMw9J4oGUt1=OcvJ95dFQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 enable SDIO interface
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,

thanks for your patches - it's great to see Khadas VIM1S support
growing upstream :-)

On Fri, Jan 16, 2026 at 3:39=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
[...]
> +&sdio {
> +       status =3D "okay";
> +       pinctrl-0 =3D <&sdio_pins>;
> +       pinctrl-1 =3D <&sdio_clk_gate_pins>;
> +       pinctrl-names =3D "default", "clk-gate";
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       bus-width =3D <4>;
> +       cap-sd-highspeed;
> +       sd-uhs-sdr50;
> +       sd-uhs-sdr104;
> +       max-frequency =3D <50000000>;
> +       non-removable;
> +       disable-wp;
> +
> +       amlogic,dram-access-quirk;
Have you tried without this property? To my knowledge only early G12A
and G12B SoCs required this.
The mode enabled by this property limits the SDIO throughput. So it
should only be used if the silicon requires this.

> +       no-sd;
> +       no-mmc;
> +       mmc-pwrseq =3D <&sdio_pwrseq>;
> +       vmmc-supply =3D <&vddao_3v3>;
> +       vqmmc-supply =3D <&vddio_ao1v8>;
I'm missing:
  clocks =3D <&sdio_32k>;
  clock-names =3D "lpo";

> +       brcmf: wifi@1 {
> +               reg =3D <1>;
> +               compatible =3D "brcm,bcm4329-fmac";
Is AP6256 using a bcm43456 chip? If so then this should be (according
to Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml):
   compatible =3D "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";


Best regards,
Martin

