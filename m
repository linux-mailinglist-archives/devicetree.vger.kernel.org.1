Return-Path: <devicetree+bounces-31076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C1D829DC7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 16:41:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30294B273E1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 15:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334B94C3DB;
	Wed, 10 Jan 2024 15:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b="KKa53fjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9344C3C3
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 15:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tomeuvizoso.net
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5e7409797a1so40704137b3.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 07:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1704901232; x=1705506032; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LPGs8xHU/Ucg5Eh2JZyutJ+LL1G8nkiyKu0z2j3NLks=;
        b=KKa53fjTn04VQapmEVUvycTK11UxmiduDSZSxaRsfLTeEqGdjEiPDB4O44flAEyXWO
         9l1fx6RWB4+zsjb0cWVUWttn7q5FiP2W7UTd8xwsfSwjfCu0rkYnHYSbK5gXS9H3ZZ47
         9E780qvoxt9oMunEsQViqYjoZV77+6y5+8I2rWubSkKpxJi0QpMB4oRQd9CRcJOxwzwI
         qB9LTu+nI0/6De1vSYB7ketQIGCQ6geo5EazSyztXpECQx1Ndh4g9YOS6VC3H5LljGjD
         L4WefNz8NSqHygOMd9hntsUgrO3qPixjJIFb/hpkoc7T7x7TCbKSaEJiRvVXpwpF7pVJ
         f8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704901232; x=1705506032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LPGs8xHU/Ucg5Eh2JZyutJ+LL1G8nkiyKu0z2j3NLks=;
        b=t2yxtm1weYcA8UFYWdiY7V2KSMD8FlWwNYBC6p5mWXsUluUahDAhkH4W+xcd1nNtlZ
         6uWoItbGrZXqexRgop3urEzdoZmvbeSPF06/nI6s4mGW1BdNqjKanzIfdHfqP7eoVPWb
         Al43+C+nRYHbw4OSPQs8obaLpdkVwbkjy9kImTd7Fjs0vgP0mavHo8+F4AJl0/+hvMcy
         UAjiEDcSMjS8ArZtMpMAyC01xSKGUR/DaOmzk3fprD1/U05hvlD3b2cbQuIMEELaQzBr
         q9TpAe47se42qMW1ANysY35bMeZ3L0GML2jxKqiTbmP2wTLd6umns/1uKFa6y3EoWdkH
         U/7Q==
X-Gm-Message-State: AOJu0YxSS9Hm1Zl3tJtXiUp37MfAChxTo3LDur0Sfj2PPNKNjjpBGOrY
	1efYpFuA7iWFn1g5g5Wq1SXApBZcVNMzawHfiub7CRZOutFAog==
X-Google-Smtp-Source: AGHT+IF3vwgXP+/dR+6Cre95yDBOCvCKUvPN+8p+eOxlmkEAHXCPDmxPbjW3qAtObCha7Zy3a4evkw==
X-Received: by 2002:a0d:c604:0:b0:5ef:fa4f:eec3 with SMTP id i4-20020a0dc604000000b005effa4feec3mr1203377ywd.25.1704901232075;
        Wed, 10 Jan 2024 07:40:32 -0800 (PST)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com. [209.85.128.175])
        by smtp.gmail.com with ESMTPSA id cj26-20020a05690c0b1a00b005f96476ad64sm1410278ywb.86.2024.01.10.07.40.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 07:40:31 -0800 (PST)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5e7409797a1so40703997b3.0;
        Wed, 10 Jan 2024 07:40:31 -0800 (PST)
X-Received: by 2002:a0d:d102:0:b0:5e8:dcdd:973e with SMTP id
 t2-20020a0dd102000000b005e8dcdd973emr1186189ywd.39.1704901231212; Wed, 10 Jan
 2024 07:40:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231106092202.11127-1-tomeu@tomeuvizoso.net> <569e39a0-b91c-46f1-b55d-c9324d66339b@linaro.org>
 <1jy1fb9n7d.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jy1fb9n7d.fsf@starbuckisacylon.baylibre.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 10 Jan 2024 16:40:19 +0100
X-Gmail-Original-Message-ID: <CAAObsKCnbH8nWPx0_OiZur=iXyobCpZ-9EOYkpUch48oOus0_w@mail.gmail.com>
Message-ID: <CAAObsKCnbH8nWPx0_OiZur=iXyobCpZ-9EOYkpUch48oOus0_w@mail.gmail.com>
Subject: Re: [PATCH RESEND] arm64: dts: VIM3: Set the rates of the clocks for
 the NPU
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, 
	Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Amlogic Meson SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 6, 2023 at 11:43=E2=80=AFAM Jerome Brunet <jbrunet@baylibre.com=
> wrote:
>
>
> On Mon 06 Nov 2023 at 10:26, Neil Armstrong <neil.armstrong@linaro.org> w=
rote:
>
> > On 06/11/2023 10:22, Tomeu Vizoso wrote:
>
> patch title is misleading. It does not target the vim3 only but all g12
> and sm1 HWs.
>
> It should start with "arm64: dts: amlogic: g12: " instead

Thanks, have fixed and resent.

Cheers,

Tomeu

> >> Otherwise they are left at 24MHz and the NPU runs very slowly.
> >> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> >> Suggested-by: Lucas Stach <l.stach@pengutronix.de>
> >> ---
> >>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +++
> >>   1 file changed, 3 insertions(+)
> >> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> >> b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> >> index ff68b911b729..9d5eab6595d0 100644
> >> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> >> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> >> @@ -2502,6 +2502,9 @@ npu: npu@ff100000 {
> >>              clocks =3D <&clkc CLKID_NNA_CORE_CLK>,
> >>                       <&clkc CLKID_NNA_AXI_CLK>;
> >>              clock-names =3D "core", "bus";
> >> +            assigned-clocks =3D <&clkc CLKID_NNA_CORE_CLK>,
> >> +                              <&clkc CLKID_NNA_AXI_CLK>;
> >> +            assigned-clock-rates =3D <800000000>, <800000000>;
> >>              resets =3D <&reset RESET_NNA>;
> >>              status =3D "disabled";
> >>      };
> >
> > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>

