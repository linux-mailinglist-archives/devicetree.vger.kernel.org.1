Return-Path: <devicetree+bounces-170644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F820A9BD5F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 05:53:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A82171BA265A
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 03:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795761FBEA4;
	Fri, 25 Apr 2025 03:53:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDD21FC0E3
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 03:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745553222; cv=none; b=k8azAc6DlCvtNoa+nr0/1yxstT5ZT5xePjGsQwdA6wQrHykU56xcO0oT84ufFCZBAcPpPAxyldrzoNj6uM1eQM/drPH+Q0Po22JwRBKPYvTrAWbhzI2sf++T77lVqQnqUDYtV/jEeNgcCnJ7bHwFfiVhz0T7MWmF+upfQZteV/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745553222; c=relaxed/simple;
	bh=VztMRKzeOesNfHq7g9+wiowKS/oWGEpXbSGKWsDLxuM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Haq0EaBO7g5X6kb0B13Rif8EOcH0x2yJVAP27ouWoAugkd0II9L8IOEoSMTPQW+h0WKqJtRK3XCMFVo085fuQK7YNJuafz6a7MgyRb7Vp4LpdVVVTL5JXL15he0cQBxkfF9ptTZRzu0Jk/1FD0VieAJKIniIWda5Ss6XgvU4f3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3d92585938aso3946195ab.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:53:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745553216; x=1746158016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W4gLbG2Dv99fli5CpF3p4x5McAYSv7OcSMqvlFvR3oA=;
        b=hkj6dpUo3g4DtNWXPehY294vA19SpY92f+0vxpmbYbWPEnycUe4Gfdoh23nENyiNPw
         c2MgIXUAS80PNSlL5beh8e/B1FEPs4jVPWFmvcY6fLZF2OySvdolvl2QOQBOoUgOnXZP
         ISU5o2Gf6dNSiQmYCHjg6yHoDF+SJn0jp/uQyWf9WDwfzOM5smUrtGEsvHGksBRS6jbX
         w9hNIHfzZ2wcX6Bquq3MWtn1dXEatQhUPgCqMqclSURZ30JrL/V0gnyt84VusRciRUmN
         Vp9wsl/x4FRYxS84fvZzXfgTwSHKZUkiSGDMXvS+tTRCgDhrz/IdzMRPzJn9nr6tO/Ja
         q3Bg==
X-Forwarded-Encrypted: i=1; AJvYcCVl5OkgRyyHJHp39aB8wVV1dXr/Xu6BPGdvaEWYrYKj2jMkm5fcFKQUJ0p+WCssSOEFLu2TwBOalJkq@vger.kernel.org
X-Gm-Message-State: AOJu0YytwO+748hoUe3NEmxcp6PTHVQE+ebMzhpWUjCCiopsn49uoLrd
	PJCLrsNnfkTvNgJepCeYK/RjtqU1ZLRK1fSS5KN5ujDa8xr7Nhdy/7DbqZNU2c0=
X-Gm-Gg: ASbGncs51C9DHeCbcz799PvOnQo/37XSB4Gk7NAaBTSnxQdSXfwL7lzPIu2ZrZcy/4r
	S2tWNumsWYCcqG+CWHRa9y2Fba4bQrPXDGce0LSa7ZW/1H4cIU7+OaeWX16+1vaqLsm4BPRuCui
	OSSMG3yItQhng4WOVRbZSoKznX7EAWQ1WJ9UnFYxnVDqeYfcZed/AsldvW2z2flhtOuPgyzgUBU
	LrEyXBKwPnCd0g7jWV5Ut7rFRhOhis+yEs2PmpyMRGS8cw7AtFHw3l26D1QezkdyrEWBj6oBUC7
	pWnttCx8FxWGPLAlOAg2X4xW6JjTgXMeU7o8aA9gtrg2hiOkV56zo3L/xhtAJmvKIjO4OQrD3g=
	=
X-Google-Smtp-Source: AGHT+IGYPJFOLRPsuXr+j3sLZt1jnyS80LVRe9DixpeKl1Z+wTP+VPmgLoQPIx1lpR4BI1ndTsrk5A==
X-Received: by 2002:a05:6e02:1605:b0:3d5:8937:f419 with SMTP id e9e14a558f8ab-3d93b46d73dmr5571835ab.13.1745553216347;
        Thu, 24 Apr 2025 20:53:36 -0700 (PDT)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f8249f8b70sm592147173.12.2025.04.24.20.53.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 20:53:36 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3d81ea55725so5646005ab.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:53:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXiCO0K5yuQanw1HmAWeVe8BzUCibeyK3qPtBKKKLARFpFK5yQRX6LEQsOWSCVf16N9WFhvvkeao3Oj@vger.kernel.org
X-Received: by 2002:a92:cd8a:0:b0:3d4:3ab3:5574 with SMTP id
 e9e14a558f8ab-3d93b3ae9fdmr8037145ab.3.1745553215789; Thu, 24 Apr 2025
 20:53:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250425003422.3465-1-andre.przywara@arm.com>
In-Reply-To: <20250425003422.3465-1-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 25 Apr 2025 11:53:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v66vr_X3cB1g-On9opGQ7a4j1ASQyi4G=fqY07safrjfFw@mail.gmail.com>
X-Gm-Features: ATxdqUGK_blFRIEkriAwI7w8rQlOD9oM5XGsLLIwKX1qwqnzLE3yxYAXQjZKka8
Message-ID: <CAGb2v66vr_X3cB1g-On9opGQ7a4j1ASQyi4G=fqY07safrjfFw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a523: fix SD card detect pull resistor
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 25, 2025 at 8:35=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> Trying to use the SD card on the Radxa board revealed that the card
> detect wouldn't work as expected (insert not detected). Looking at the
> schematic shows that the pull-up resistor is actually not populated
> ("NC"), and the transistor just pulls the GPIO pin to GND, but it's
> floating otherwise.
> So using the pull-down flag is definitely wrong, we need the internal
> pull up to get a reliable signal. The same is true for the Avaota board
> (there is no transistor there, but it's floating in the same way). There
> is no schematic for the X96QPro+ board, but experiments show it's the
> same behaviour.
>
> So change the GPIO flag for the card detect GPIO property to activate
> the pull-up resistor for that pin.
>
> Fixes: 80e0fb4e491b ("arm64: dts: allwinner: a523: add Radxa A5E support"=
)
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
> Hi,
>
> please let me know if I should split this up into 3 patches, with proper
> Fixes: tags, or if you can maybe squash this into the original commits
> still?

I can squash them in if you prefer.

ChenYu

> Cheers,
> Andre
>
>  arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts | 2 +-
>  arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts  | 2 +-
>  arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts b/ar=
ch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts
> index 03c9a9ef5adc2..2d2f3af91d05e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts
> @@ -56,7 +56,7 @@ &ehci1 {
>
>  &mmc0 {
>         vmmc-supply =3D <&reg_cldo3>;
> -       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>; /* PF=
6 */
> +       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PF6 =
*/
>         bus-width =3D <4>;
>         status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts b/arc=
h/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts
> index c0bce3f4fa925..59db103546f65 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts
> @@ -56,7 +56,7 @@ &ehci1 {
>
>  &mmc0 {
>         vmmc-supply =3D <&reg_vcc3v3>;
> -       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>; /* PF=
6 */
> +       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PF6 =
*/
>         bus-width =3D <4>;
>         disable-wp;
>         status =3D "okay";
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts b/ar=
ch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> index 85a546aecdbe1..dea2acc1849bb 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> @@ -66,7 +66,7 @@ &ehci1 {
>
>  &mmc0 {
>         vmmc-supply =3D <&reg_cldo3>;
> -       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>; /* PF=
6 */
> +       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PF6 =
*/
>         bus-width =3D <4>;
>         status =3D "okay";
>  };
>
> base-commit: 1e5a69d67d1b3c55c9b0cd3933af1436b5d52aa1
> --
> 2.46.3
>

