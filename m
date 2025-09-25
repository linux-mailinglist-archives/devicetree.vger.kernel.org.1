Return-Path: <devicetree+bounces-221462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC05BA0009
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BA031BC612D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3FFA2D0C68;
	Thu, 25 Sep 2025 14:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f0JAZQvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7162D0610
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758810438; cv=none; b=SxsST+o9INgKshTtcsffIKHCEEjInQvrfZKuBEa1ER092xe4AYIaIxQQQQk1yMc0RF2YKeJ5pGrRd8HXiouOyGE1OKfpn3Wx1RE5IxafLKnO3BRFBW6hjCC1nUqF0y3XZAqhLNRZSBFc2WpNgrrSVKi28cd5MHI6kL8h7F6Nqb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758810438; c=relaxed/simple;
	bh=h2URbpxQUZ+BCi1wrx/nx2i8C5bokSELKCNO/XvU/mI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=llgeClXdrhxrweRYhg0eHk97NVJcSbZ2+YaOXBdtqK6WKiHpm0Lk//1YUpvOma4U2/OyYjFnhJ4NlAqSU17jZcTvrLzn0lrNN5UXtz3/tG6DYcvRjeC6YB9vzRXQqT24+FIKzDyJhSN0d2BjIs52NBhNcxtnmbb3L3c4lv6vOCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f0JAZQvG; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-79390b83c7dso7055196d6.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758810436; x=1759415236; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Glm9P9HTH7GF2LUGNVtDEQmwup7tzZ0lSiiqddi2yqw=;
        b=f0JAZQvGEFI4nUcNqbcS+wS5E1Qb+9XaFcPGu0bYIqrA9NKp7gxPWecTOlpSfncud+
         aASrCM7cDQfopSXJDMqV72DvRSiN+3SKmwZbLZA49wrYCFCuJ7Uv8VRbaDXd5uNVXWRG
         /HdGCnFm4RNhMBE0FAcqftuVyOwAeObojPU15VqAWfG/pV+9UDCwCbW5fiSm+zh1U3JS
         tleQZANzLdunzZyTpw+P8Du7tZeluZUosxzG/RB7fVJgakDM/CCTVN7jfjAza8KXm1/O
         9yBXPRNwOS05apHKBgkMAW7hnAIwd5PDRmXtcZpPzqNx3Wq4/HjtCNCMmgnhA57TPHWL
         unog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758810436; x=1759415236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Glm9P9HTH7GF2LUGNVtDEQmwup7tzZ0lSiiqddi2yqw=;
        b=Blp0emdOMTjN1pNiwqBY0xkZ462jtJ3HJYHbWDZR/+9ogCRJAXWiefwrhWa1uNHp36
         aS46LCwKEfA4yVsdUFTpps2W5TKRD9fhoJHQW9dbpIfzkzItv8+d1M0lEvZZX5gd0s+P
         wFCjBbOwhsh+JmxiV2PbEM9IVZNHUpy/h9Yh3VeO8AVJdxZl8qUHQnee6aDapTMfTaPH
         KDVtvFLeioT9m5sF79h4VcZ1YmsUHVQ1g18rgQOZgN4IUcUP91I6sASl95onYT916mUk
         Cotd5k55HiIAiKbeOthrfhC5a5pLGkuT63Uf3eOhs93c43iN90OnEen67qFCvOrda7ZF
         QSuw==
X-Forwarded-Encrypted: i=1; AJvYcCUj6Kiw0njHih7sKLqt/2n2LdcQM/i+8wd4PxlLpnCNWiu+FglK53tqsWB1DdLk687YVKXxX14VuOIK@vger.kernel.org
X-Gm-Message-State: AOJu0YwI+v6h/uv2jGfnLgRUqVdq5raA1IgfHXU9nsbRNZZ+fU0lFfS+
	jpUrsLv2HoO+V4I1jB64jq4LKXu+oT9FYhSwgJ+qKZFoZrCNMk+ZZ3nUudnFvxzKKj61saws/1u
	dPLLeUzbOLnt2rsNhBvk8RL6GE4z/8Tk=
X-Gm-Gg: ASbGncvq0AmpLUVvdYa+s+7yzJt2sE53bZBAF8x5BREAFtIuiaSBUZK7yXcWzUE4zt4
	K5OCJTESFghvIMw0M/Cul4yqdxSYcGku967vROws790RHRGjKKNTU0d+k+DBez3Bz+25GEYbSu1
	/r6CVjdfBEPKnpYZUV7FKWSNCtEGK8geZnhbTX3ffSVc0VtlwAytYr17ZwaKGEgUkafntVUJeFz
	y8cp0vDQjniiH1GPhQ=
X-Google-Smtp-Source: AGHT+IH9fq+ZHarv12E5Wiwa5ANc8v0SLu1OdwXvzSahIaMx6BArGuHvon1RcjpXEhOi/ie1rgfJtvwPRNtpXcis6uE=
X-Received: by 2002:a05:6214:5095:b0:7f1:3094:306d with SMTP id
 6a1803df08f44-7fc400b2c46mr54245696d6.47.1758810435646; Thu, 25 Sep 2025
 07:27:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925092037.13582-1-jjm2473@gmail.com> <175880949051.820269.9096832740960574577.robh@kernel.org>
In-Reply-To: <175880949051.820269.9096832740960574577.robh@kernel.org>
From: jjm2473 <jjm2473@gmail.com>
Date: Thu, 25 Sep 2025 22:27:04 +0800
X-Gm-Features: AS18NWD4junFDrz8pZg4TpLnxjmQYCHszyF4BKlv4AvixoXW2PGMp3AIFbDTSgU
Message-ID: <CAP_9mL7RBoy_jhEp4CU7FXtc19UtzP0GKuE15y0isF=bF7XGGg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: kever.yang@rock-chips.com, krzk+dt@kernel.org, heiko@sntech.de, 
	alchark@gmail.com, linux-rockchip@lists.infradead.org, didi.debian@cknow.org, 
	pbrobinson@gmail.com, honyuenkwun@gmail.com, naoki@radxa.com, mani@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-kernel@lists.infradead.org, 
	quentin.schulz@cherry.de, jbx6244@gmail.com, conor+dt@kernel.org, 
	dsimic@manjaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	inindev@gmail.com, ivan8215145640@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Rob Herring (Arm) <robh@kernel.org> =E4=BA=8E2025=E5=B9=B49=E6=9C=8825=E6=
=97=A5=E5=91=A8=E5=9B=9B 22:12=E5=86=99=E9=81=93=EF=BC=9A
>
>
> On Thu, 25 Sep 2025 17:20:34 +0800, Liangbin Lian wrote:
> > LinkEase EasePi R1 [1] is a high-performance mini router.
> >
> > Specification:
> > - Rockchip RK3568
> > - 2GB/4GB LPDDR4 RAM
> > - 16GB on-board eMMC
> > - 1x M.2 key for 2280 NVMe (PCIe 3.0)
> > - 1x USB 3.0 Type-A
> > - 1x USB 2.0 Type-C (for USB flashing)
> > - 2x 1000 Base-T (native, RTL8211F)
> > - 2x 2500 Base-T (PCIe, RTL8125B)
> > - 1x HDMI 2.0 Output
> > - 12v DC Jack
> > - 1x Power key connected to PMIC
> > - 2x LEDs (one static power supplied, one GPIO controlled)
> >
> > [1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html
> >
> > Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
> > ---
> > Changes in v2:
> > - Change deprecated "rockchip,system-power-controller" to "system-power=
-controller"
> > - Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@=
gmail.com/
> >
> > ---
> >
> >
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> This patch series was applied (using b4) to base:
>  Base: attempting to guess base-commit...
>  Base: failed to guess base
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/rockchi=
p/' for 20250925092037.13582-1-jjm2473@gmail.com:
>
> arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dtb: mmc@fe000000 (rockchip=
,rk3568-dw-mshc): status: 'oneOf' conditional failed, one must be fixed:
>         ['disable'] is not of type 'object'
>         'disable' is not one of ['okay', 'disabled', 'reserved', 'fail', =
'fail-needs-probe']
>         from schema $id: http://devicetree.org/schemas/dt-core.yaml#
> arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dtb: mmc@fe2b0000 (rockchip=
,rk3568-dw-mshc): status: 'oneOf' conditional failed, one must be fixed:
>         ['disable'] is not of type 'object'
>         'disable' is not one of ['okay', 'disabled', 'reserved', 'fail', =
'fail-needs-probe']
>         from schema $id: http://devicetree.org/schemas/dt-core.yaml#
>
>
>
>
>

Thank you!
"disable" is a typo, should be 'disabled', `./scripts/checkpatch.pl`
doesn't mention this.
I'll fix it after review if there are no other issues.

