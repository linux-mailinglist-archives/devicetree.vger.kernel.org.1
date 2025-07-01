Return-Path: <devicetree+bounces-191654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C60AEFFB8
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 18:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4453B1882A3A
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 16:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F1D2727E4;
	Tue,  1 Jul 2025 16:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFMHXUn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292B1271452
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 16:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751387032; cv=none; b=C0HO+hDOP2jP2xd2KgoPERSFeYfdt5p5Tg3xILdtqAsj3bPTJ2RAfVE3l1x560YgBONzb94JZ/Ck/b+rOw3/VIMFbmz8k21nUJ9L/VleN3vcwaHuaNI8yJAYt/ll4K3zxs/H5AZL4xtgJDSVQEUHldVmFllMNkTu5aHXqIOEj4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751387032; c=relaxed/simple;
	bh=TRyKPGlzqNiaAIc+Td0ze+LpUFf6sYZ4Ct+UtsDxJJ8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Ov4GqmlLprQ8/rVli5T7wRCTKmK94tJRtbSuF82Lk73NXb6gUvIp7sHI/aeoR9T7sivAJkpRUvpC6OKkWuDYVtPgSWavqr2JasfsYd8wncoTmIyBvcD2U1T9M6y4De95dexpkOUzCkxrILzJia+W0pVkdKZPC7m5wGG4Sknjb6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IFMHXUn2; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-453608ed113so35864745e9.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 09:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751387029; x=1751991829; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N84p1IfPOnU2LRyJ4jJI6ylTwqJRzAAmh1pUeFRFmtE=;
        b=IFMHXUn26XoQxgu1PEOhUk+1DwDCC0gLL1fvGvxN6KXwHj83WYK7MaMemjuyu6Bj6C
         s6kIMqsWWEeY8yBZuvpFt8JZmMrPDXLzxWb21dw+utltdf4Q9XhLNMkuhPzP6MKkXyvU
         dBcze56B2AcofUbbLP3R0xmh/GJEWkmBoR6NoOIu4g7IW8Gr7tZgju0zBQiknwyUR2IK
         ue+Vqe7Lp/z/zGd6Q9EBY7megXj46NTu3uPFLZZc78ubpCu7fSmApHW2EONsaOeOAMeK
         x8JfK+lv1V7mTm2i5A0ZoE7eOfbWSgacnkUcWgy4hR21+6XBUe+RNurXqFZY993daOIe
         AyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751387029; x=1751991829;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N84p1IfPOnU2LRyJ4jJI6ylTwqJRzAAmh1pUeFRFmtE=;
        b=KWKH/FAq5V8gpitNQXsyHoeJAKud5wB1dvnodJXM0PRQmD+Hfoi0ftzhPFYxfnla3Q
         jW5duZNWZIvV6KpwUIgkq2WCu27DujbP0R6cJJAqjLoc8JqOKLT4Bh0BwDCDipDkPs+H
         LPBLbj14Zod4P0IMxcwI4UByxHbBxrACN0rGIrpVev11coOhoZa9/asnXZgbUTFgltzV
         G71/mflc9meXorNni5aEqco9jK6aH8zroXZjtzldpdIiWf4a/9+NTSvQgghHIyggTsxR
         Gv80L3RIuEGi5whty4rHTWaKKlrNxmP1WJpMw0oQ/DUvkLOzc5bhVkP3KcBMjCuUftuM
         3B3g==
X-Forwarded-Encrypted: i=1; AJvYcCX0MNe+tgP/FbbBbARKbF4qwpyaTlLMVrFatUqijxe2fHYNKtYBcGxgx61EZJBM4u4UoWP85bwv9sg9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8fOwPwSz4ek9coMmBL65fKXmRiUH+kbGYd/j5peWmhwFygQpo
	FHgGWJmdetW5lF1VtNqXOHM4SFrYNZp1MQgLOosvGHlEGohz0PnLaxPm1QaQBcyjdkA=
X-Gm-Gg: ASbGncuMsifM80xMjqsL3QOsyJ9YGEl6Dd5G62XdaHXrp/d+7CKq/E+GZ7tWLCoTmFU
	0OoD+FIECdIUbAXihMvCbBlIzLUtdBfOyGcTDHNEL5JGLx/krPVk+tJqmvKNdCAhbD04ziwaFOq
	rKuQRvZpx0kPe45ud6gpBxiby/Ggdih5whJLZQEEfatBggJUg2iFI0vySjoZFurVrHn58zM9akb
	oZuLZgnY5W1fQPQigIPTjy1yWndXG1D6KnCilgSe3oUz1takLVu/7x4sPijB1EFcvyZHWaAKbNU
	WTrOtrJq6sB1hUr0hjReYYb888wF2ZktcOSjQvByiEwxOxi41WqR5heMMfhOWL0m3owOwmyCuQL
	zLVM=
X-Google-Smtp-Source: AGHT+IF76AvC+yZFLcI56pCMDzSJYwqFxY/61zrbScuKifRBlFHkGuW5GbezYGfN5iWuHq0HbK4jxA==
X-Received: by 2002:a05:600d:7:b0:442:cd03:3e2 with SMTP id 5b1f17b1804b1-4538eedf21cmr160209575e9.2.1751387029430;
        Tue, 01 Jul 2025 09:23:49 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:4dad:b69a:9c81:2e57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e528a9sm13932521f8f.60.2025.07.01.09.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 09:23:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Jul 2025 17:23:48 +0100
Message-Id: <DB0UVXK5ATOQ.3JOWJ0A1JNIAF@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Bartosz Golaszewski"
 <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: qrb4210-rb2: fix GPIO lookup
 flags for i2c SDA and SCL
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Bartosz Golaszewski" <brgl@bgdev.pl>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org> <20250701-qcom-gpio-lookup-open-drain-v1-2-9678c4352f11@linaro.org>
In-Reply-To: <20250701-qcom-gpio-lookup-open-drain-v1-2-9678c4352f11@linaro.org>

On Tue Jul 1, 2025 at 10:01 AM BST, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> The I2C GPIO bus driver enforces the SDA and SCL pins as open-drain
> outputs but the lookup flags in the DTS don't reflect that triggering
> warnings from GPIO core. Add the appropriate flags.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reported-by: Alexey Klimov <alexey.klimov@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/d=
ts/qcom/qrb4210-rb2.dts
> index a37860175d2733214f1b257e84d5cb4821033242..bdf2d66e40c62596b8b024de8=
33835a0750df35d 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -5,6 +5,7 @@
> =20
>  /dts-v1/;
> =20
> +#include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/sound/qcom,q6afe.h>
>  #include <dt-bindings/sound/qcom,q6asm.h>
> @@ -65,8 +66,8 @@ hdmi_con: endpoint {
>  	i2c2_gpio: i2c {
>  		compatible =3D "i2c-gpio";
> =20
> -		sda-gpios =3D <&tlmm 6 GPIO_ACTIVE_HIGH>;
> -		scl-gpios =3D <&tlmm 7 GPIO_ACTIVE_HIGH>;
> +		sda-gpios =3D <&tlmm 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		scl-gpios =3D <&tlmm 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> =20


