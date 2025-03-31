Return-Path: <devicetree+bounces-162004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6142FA765B4
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 14:20:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5BE9188724A
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 12:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09F3C1E5207;
	Mon, 31 Mar 2025 12:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="wpi7o1UZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98A01E5205
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 12:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743423612; cv=none; b=ZtfDdeNTAdX3u6N+8FVlJ3H1TnnzNMgD0jw4Wlq7GFE3WLObPXruow+9fFqAvmoHO5Vqi8gYCRjW0+cso/0dH98xmtfIjvd51cvQj5Ubd52EWdMnPLFX1jvdJyJuCTZGoixuASv3bGkFKxJOP9hDDwLsrUiUvr6Ia6oZ61NED3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743423612; c=relaxed/simple;
	bh=V+HIpf0XYtcXMdWG8h49zKmgGkavahAxXenAd7JQ9oo=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=QO3BbAuYeswEol0OSjsNPi6Ey0HCJSqUNylmhGCHutrFD3A4Fyyu1UsQ1x1UZb56W5vIyiPUx9bc7lE7fCgyOqJZcISPFlnnPQEeL21W4f366p2cOuUKf2FIcRDIG9IdK2erW6zUande74WNQWilOtIosALVg8/NY/HGKFuvNiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=wpi7o1UZ; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac298c8fa50so740958666b.1
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 05:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1743423608; x=1744028408; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/6UhGoeHcC4SZvbq63mZ678Tm+9OYBR5DKjiDwyXcqg=;
        b=wpi7o1UZcdhdWgMCCybT15uAxIqlic0xih88C4WGx7ZkKBwBnsRi+FNJlDJi8lcT8U
         k4wzdJJ1HvFBurnjCffwrmi16U4kaJgsggdQ7m/o4AjpskWLMKTlGerW57oQyo/TSPFp
         KTWNFwAH8FO2cLXmdyZa511Bjg/dV9LR3hbUR6TDuodXpD+0hbcJ9hIuI6T/+0rsvV84
         rGvjvzgVf2+Dx9ZFTAdqQrcU6QPe4INPEqP4aPUWJ3GOeU5hLL7+4sK55L44YtVEbd23
         LOAdTfSGBWGQwDsHHo1LUp0vGMwUZRiBmZ7bujwVzZvBShiGtjz+bW4SRckStfD6I0Vt
         fiKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743423608; x=1744028408;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/6UhGoeHcC4SZvbq63mZ678Tm+9OYBR5DKjiDwyXcqg=;
        b=REwqyzU6p3GalGK7WEmuZkU6Ddr33V7uqPXXGJLK/BBhlnZTWfCV6rTZZnHhq3J+Ez
         usgi//e8W0uWfg6BUGtzx6XUF41ahSXYKhCr8a6whoRpwAuYdrHSfakNZ4QDP5FkOAey
         1m5PRWxhLWslPfzEKUD4dvLO++OQqQmYC9dXVw4cbb9IcdFJOpwmVvqKWtjSeRbX98el
         Wtzyucgl7/MGjKzA7MAjDJM4yxjZ7hyt77Yk8x+SXIBXMVMp2oBjy8SV5t4KB/gvsnkH
         DI/BDaUNtJQf63cPUU2Wemg8J5iQG+pBeyZ3i6Edi1hEzP9EoWTBGsn/O4IMSNRQk/ca
         myeA==
X-Gm-Message-State: AOJu0YzUWHgIBbVm0CqVtEC9tZk0gBgsfbZnXFEyJquWvuU5r1A2dACo
	Fdj51Izlqi5N0dIkzH8Ihi1ckO0bBAvHvfkhxr8tvv6Fqo23sM2vsEPmrU2XuEwHHt8R9I9b9RG
	A
X-Gm-Gg: ASbGncs+oKY2C1EjZJiGM7dvrZV9YE90NtHOYDXlBYKJUt5on3ie4JmWMK7f3ARJFam
	xCG07hGyP007SlOvpQSSVQBvdBeK4/kxIrCgQ7J541bE6KO4Xsv9r4IajojFtJmsH3/U0MQWnA3
	e5BUF34JGDS6GSxFPACqRareZeYhOVjKjVe/mKJQPxZTnUUxAUGfm6BE2rdjeDaIAYG9x98CpaP
	DpB4RttDa0K26LKCkvZKwxPGqeKKCnBvcUeQnX+YhkbyioZPiayNqz7KMc1k3uW4ySm/MmgEeIO
	5dPYGRdSsA+dD88TURkyYBtIqsBbsLnEymZAhhwed4D1HV0ruIM+WpBsB8DKPTblkUeSxAIo9R/
	cxBHItXggWgm3DyQL+m8ruGDhU8R7TK+Z3a7NzT15UeK0RvoUBMXe6woC
X-Google-Smtp-Source: AGHT+IHTeHXgzQx9nBe7ZuxYvDPZW6eexOSde6sU5uGzolFYjQErhchMnqWKKOUDN7l4/orwes2PJg==
X-Received: by 2002:a17:907:3d89:b0:ac3:4373:e8bf with SMTP id a640c23a62f3a-ac738932d65mr708179066b.10.1743423607866;
        Mon, 31 Mar 2025 05:20:07 -0700 (PDT)
Received: from localhost (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71967fdc6sm609704066b.127.2025.03.31.05.20.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 05:20:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 31 Mar 2025 14:20:06 +0200
Message-Id: <D8UG37Z20WLF.1EH3L1KZTJKO8@fairphone.com>
To: "Caleb Connolly" <caleb.connolly@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Konrad
 Dybcio" <konradybcio@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Rob Herring" <robh@kernel.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: align gpio-keys label format
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250331121011.385250-1-caleb.connolly@linaro.org>
In-Reply-To: <20250331121011.385250-1-caleb.connolly@linaro.org>

On Mon Mar 31, 2025 at 2:10 PM CEST, Caleb Connolly wrote:
> Most devices follow the practise of capitilising all words in a label,
> this seems to be the standard elsewhere too (e.g. run "evtest" on an x86
> ThinkPad).
>
> Adjust the stragglers to follow suite, and standardise on "Volume
> Buttons" over "Volume keys" as the label for the entire device where
> applicable.

In theory some weird user space could find the correct input node based
on that label, which would 'break' if we change that label?

Not that anyone should really do this I believe, checking the supported
keys on a device is a much better solution.

But good to keep in mind.

>
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>
> This is really a drop in the ocean, a good next step would be to fix the
> pm8941-pwrkey driver so your power button doesn't show up as
> "pm8941_pwrkey".

"Power Button" would be good there, that's what my Intel Dell XPS 15 report=
s.

> ---
>  arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi | 4 ++--
>  arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts    | 6 +++---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts   | 2 +-
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts     | 2 +-
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi       | 2 +-
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi  | 6 +++---
>  arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts | 2 +-
>  7 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi b/arch/=
arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
> index e6a69d942a4a..452c455294d0 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
> @@ -90,17 +90,17 @@ gpio-keys {
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&vol_keys_default>;
> =20
>  		button-vol-down {
> -			label =3D "Volume down";
> +			label =3D "Volume Down";
>  			gpios =3D <&pm8998_gpios 5 GPIO_ACTIVE_LOW>;
>  			linux,code =3D <KEY_VOLUMEDOWN>;
>  			debounce-interval =3D <15>;
>  			wakeup-source;
>  		};
> =20
>  		button-vol-up {
> -			label =3D "Volume up";
> +			label =3D "Volume Up";
>  			gpios =3D <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
>  			linux,code =3D <KEY_VOLUMEUP>;
>  			debounce-interval =3D <15>;
>  			wakeup-source;
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts b/arch/arm=
64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> index 0cac06f25a77..2a62d58195fd 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> @@ -124,16 +124,16 @@ zap_shader_region: memory@f7900000 {
>  	};
> =20
>  	gpio-keys {
>  		compatible =3D "gpio-keys";
> -		label =3D "Volume buttons";
> +		label =3D "Volume Up";

Not sure where the label from this wrapping node would show up, but you
maybe want to keep this one as "Volume Buttons", like in some of the
other files?

Regards
Luca

