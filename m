Return-Path: <devicetree+bounces-143147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F29C1A284CB
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 686697A186F
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 07:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E21A72288CA;
	Wed,  5 Feb 2025 07:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="oxPngrbI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7A979FE
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 07:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738738899; cv=none; b=gAYRX7I1FxTY+Db2O7YbtX08NA0UKEOFzR11RYvkqoqsujqpcEz6isWuElRUnF9SD60T2g6mM+Ta0g9izYfbq+s0F2CQESbLaKqcwzhp7EVSOBvCHC/fU17zWZLXLA3pqD+Zs8Rrv0ABQRiNE9VXW6q9A5m8dSkY3PKrEyxMv+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738738899; c=relaxed/simple;
	bh=VquThC1P7xRhIkunqD4o5ESA2B7nVEhFyRffv7zLiW4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GAd+IMeWr9gy9C/SOIdH3m2kLL6QeZL53GWKwMJfU457ueQslNYyiMY44QmiJaaSjw7OB5mB0fxU6bf2/bjEVDxtNK+/6l1o8EUEO9qTZPDnU+P8VnrOZmyESr6T6kKEvURW/Y4/GE0wrZGIZ3AwbzSSHoAp7wX2Wcm6cAGYgx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=oxPngrbI; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aaec61d0f65so1145373166b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 23:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1738738896; x=1739343696; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6fF1eROQX3sxUXGc4VeyxV/l34nZf3RV2dnRfhS7BwQ=;
        b=oxPngrbIf33VSqUqAnXc5hjADFEX/8LmvSzLfUoqMtnz8a4HvoNNAwe3gilhgJfs0N
         mBNUvZpGgVdUmo7pbYGVkXb0gaJLfYb2zCDzE3YXDdnKhDt3DiXfjjLJAF84wjAGX5Lw
         kB5CtRKXqDY8lNJJkW0LIwB2w0ymeuWs9HEuoIrg8dxtCZC2Pa4FxFJQFDYpFr1e/lJz
         UJhcRyez3HSLFOhvagIYdnwUehr63J7TsU+ITiA+hee/MQ+oo52RWaW4S/VpOpPu2sRT
         tVCYmFLoQDuwYKYrfTAo4B/KGbG8/5rMaSi/7em+eFK8QS954dAgFQMKM6JebTFDoAnL
         PkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738738896; x=1739343696;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6fF1eROQX3sxUXGc4VeyxV/l34nZf3RV2dnRfhS7BwQ=;
        b=Dq78wdGslTP4oQzD8jdh9G284MTbSmlMPfVh1xdLdNvkHeAAHVjBg5eO6baaiJIZmP
         auphr+rWYNZ9CUU9T4abyI2lgWjch6GCcJc6yc1gQDUBFKVQ1nY4U/rnoxIz6TXJniAF
         hhtm84s6e9Zy+e3Ty8XUgKxFqF7bRHtCtC8QCGObPoDdR5rzhPJUrvAi9M9PrpYDrSlh
         xG2SVMAQcrvscGPWlJ3VfDteRWDd4uvnOOIVaAlBkpdPlGNC1NuFnurPzeVn21zrX94E
         tezge6vXiDDtadXHl8cFpUG2IxOVldoGZ4pP9t8wWoq+6w38rvTWj1QFWTCRSJmO1Sdc
         KwIA==
X-Forwarded-Encrypted: i=1; AJvYcCX8p3Zit/ly8SoCsMzE8YIuWy+/ezgAyjSyAhPXvuMuIPgJpdB9PUNuzKG2ebECqX6lms/SvqqLsm2O@vger.kernel.org
X-Gm-Message-State: AOJu0YypSB0+B3GWgjKNkgntXTycjnnfGXhKgo7JAJyvBfsV1Voba2Fo
	qTMCXiYfBjo2MrXtfjctY+pm3z2cgB8wuNLV0MVpSttwiv5epPh+QSF+pGSBz5a8CZVFr8i9CE1
	V5Xf/QUKBFPHh7zTnuQKpmO7D5uTbOU1Coc0=
X-Gm-Gg: ASbGnct55ELMtX7W4ij8Baw+XlCDCQjJS0BdeASDcOUvBEocOBVz43rqgX2BmJXkBGz
	HOy4bPq2qWP/u+ZYQ3zfopgwZWXvdVRxSNH4EY+aCtBgEDm54mUmz/mdewGHJSmshtB1hqWSlEK
	SIX4Vy28rgyyag/YqwKzd04sk1J2Zpiw==
X-Google-Smtp-Source: AGHT+IFI7oXEdlBj3f8jzL89HdDtlLGM7Z3J5KZB0+W2fMSSLaeuf+o0GJZWUeGTNxD5BtW3fkD03mVacNdtT4HuvS8=
X-Received: by 2002:a17:907:9708:b0:ab6:597a:f5ee with SMTP id
 a640c23a62f3a-ab75e24bff5mr117977666b.12.1738738895951; Tue, 04 Feb 2025
 23:01:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250131112849.120078-1-biju.das.jz@bp.renesas.com>
 <20250131112849.120078-2-biju.das.jz@bp.renesas.com> <TY3PR01MB113469AB8C9B228E73673F88786F42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB113469AB8C9B228E73673F88786F42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Wed, 5 Feb 2025 16:01:09 +0900
X-Gm-Features: AWEUYZlwinpeplzLNCplRUzuuHcgKuUzpp17FercCWalV20ptwh-43hQl1jXVhM
Message-ID: <CABMQnVJ6OrtAcbCQG4d_gdEDZBJ9C_Ghh1Yrrs=n+HwA8pNGzw@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] arm64: dts: renesas: r9a09g057: Add support for
 enabling SDHI internal regulator
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"biju.das.au" <biju.das.au@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Biju,


2025=E5=B9=B42=E6=9C=884=E6=97=A5(=E7=81=AB) 18:48 Biju Das <biju.das.jz@bp=
.renesas.com>:
>
> Hi all,
>
> I need to send a patch for fixing the build issue for r9a09g057h48-kakip.=
dts
> as this board is introduced in latest renesas-devel/linux-next[1].
>
> I will send next version, after getting some feedback on the current seri=
es.
>
> arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts:42.36-50.4: ERROR (dup=
licate_label): /regulator-vccq-sdhi0: Duplicate label 'vqmmc_sdhi0' on /reg=
ulator-vccq-sdhi0 and /soc/mmc@15c00000/vqmmc-regulator
>

You may have already made a patch, but I also created a patch and
confirmed working.

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
index d2586d278769e2..090d9c69fd75ec 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
@@ -39,7 +39,7 @@ reg_3p3v: regulator-3v3 {
         regulator-always-on;
     };

-    vqmmc_sdhi0: regulator-vccq-sdhi0 {
+    vqmmc_sdhi0_gpio: regulator-vccq-sdhi0 {
         compatible =3D "regulator-gpio";
         regulator-name =3D "SDHI0 VccQ";
         gpios =3D <&pinctrl RZV2H_GPIO(A, 0) GPIO_ACTIVE_HIGH>;
@@ -129,7 +129,7 @@ &sdhi0 {
     pinctrl-0 =3D <&sdhi0_pins>;
     pinctrl-names =3D "default";
     vmmc-supply =3D <&reg_3p3v>;
-    vqmmc-supply =3D <&vqmmc_sdhi0>;
+    vqmmc-supply =3D <&vqmmc_sdhi0_gpio>;
     bus-width =3D <4>;

     status =3D "okay";

> Cheers,
> Biju

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

