Return-Path: <devicetree+bounces-97074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58636960980
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 14:04:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 168B728617C
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 12:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0D819EECD;
	Tue, 27 Aug 2024 12:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Wx7q2TgG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4C01CD31
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 12:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724760240; cv=none; b=ua+ekU+UcYpDtodwQEX3hRemI6XSOs5152ZMhcpqsbsw4AvjpNKtT0pvdGkswakLSkMbkapvyJ3RRtvsPDNorjQc8SHv81r92ghlDBEpJRR/MR9VgfYNljNGaxGWwz+VR76PW38XG8q3FREyK7y7kLAigH3bwYbJbrA9YAPInBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724760240; c=relaxed/simple;
	bh=ln8nZXJYTPhe1ZmtwQ9Nks+Do74knxVtB5zmVCuDXnQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GzsoWrIyUTVHB7lbBO7fBidbQQTBkWCTH153P7lX5AWDoWvluraTW6MifBv6BDMyg7Pqm0e3bm8mYtpuFBxQiUqLZ5V2uyvGwKi4YUdZ9o44y9Mx01ngmXPWR9Tz6EnRD8Nm2UleSPKyPz+MGPN0FH31hM8iSQITMyNIurxytfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Wx7q2TgG; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5334a8a1af7so5236112e87.2
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 05:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1724760236; x=1725365036; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S3P+qjnJFbHf83h/XH7Zznqd3488XVLRUKQbFjvatag=;
        b=Wx7q2TgGBPnx11ept+8Qv7fvSaNpZxC79J/F7nZUkcVIpp63KjvywHb7ReY/AsOZNz
         00pvqgneI+E+h0RtDM3Mp8MKflNpvp9JOa7v83LPpknvwtbMGEv+jF+zwvIC6RS45v0u
         goRUpCNYeU0z6MLzA78WLEaRqmzmAmDp5GJ1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724760236; x=1725365036;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S3P+qjnJFbHf83h/XH7Zznqd3488XVLRUKQbFjvatag=;
        b=poHOr9u1db4uU7YHH2xf0ep7PkBbw3JYLa9OPzAo3LHdwJoOb11iRd70dXELp7txs4
         pu4kT/GI4gUrLzHuMovbKgWUc6AD/qTZzC9Y7w27PzwKz1/TTKEHNMMROplTy1Wr95AO
         WF+2Ekv8c4uv27uXvJaOYrH9TuaQrmWwYrpHR0dTg34H+nY/tsnP7zU3JaMG4hILmv7k
         so9ix84ub/KtvleaqaQEHVQRzZtrh6otsJaeGPwPAkg5tbIrgUuHwKeXwi2LvjUiG4Vt
         kWDet8qpCIYym3/soKBNoxJRVu2BgKnY33/Kg5H9ybMk11ZgZPbpWmJQTLUGZFXZx50n
         Dugg==
X-Forwarded-Encrypted: i=1; AJvYcCWsp9ZZ4tp8W0NZfvqfDpZRKQW9stkqd2KLlN5i8rVd68vIz6SimjaJE98cC3iibkDbZYyC7nYF7Z9F@vger.kernel.org
X-Gm-Message-State: AOJu0YzMcFpK51ObIE6h8mnq3hgeGt6PXCDeHkDdDG09NIEVWKFAgfeH
	7RyK+IghdvBibeQqQhztFjWCLv98JP1Svo637AlvNJHr/9zOvM1JowabkRS5BgJhh54iGBywhk3
	fPcFY7dfQc3LRg20AueDFydRMQYrm2/SlyMSN4bsdO7fbGmuPDek=
X-Google-Smtp-Source: AGHT+IFppD7+L97m6BFDKW0husHdnT7cnz+evKXmLdIo2uNlIW5WSkmV2culk7eGbdRhkcak8U57Vd4KE69AJprWR/Y=
X-Received: by 2002:a05:6512:15a8:b0:530:ae0a:ab7a with SMTP id
 2adb3069b0e04-5344e3d0cc0mr1514306e87.17.1724760235790; Tue, 27 Aug 2024
 05:03:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240821143420.2564869-1-festevam@gmail.com>
In-Reply-To: <20240821143420.2564869-1-festevam@gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Tue, 27 Aug 2024 14:03:45 +0200
Message-ID: <CAOf5uwnUPDPVzM7vNPn-tGrt2ENuuUzVfKh1q7AiORcAMZm0UA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mn-bsh-smm-s2pro: Remove invalid audio
 codec clock
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, ariel.dalessandro@collabora.com, 
	Fabio Estevam <festevam@denx.de>, Dario Binacchi <dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fabio

On Wed, Aug 21, 2024 at 4:34=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> According to ti,tlv320dac3100.yaml, 'clocks' is not a valid
> property.
>
> Remove it to fix the following dt-schema warning:
>
> Unevaluated properties are not allowed ('clocks' was unexpected)
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts b/arc=
h/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> index c6ad65becc97..475cbf9e0d1e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> @@ -64,7 +64,6 @@ tlv320dac3101: audio-codec@18 {
>                 DVDD-supply =3D <&buck5_reg>;
>                 reset-gpios =3D <&gpio1 6 GPIO_ACTIVE_LOW>;
>                 ai31xx-micbias-vg =3D <MICBIAS_AVDDV>;
> -               clocks =3D <&clk IMX8MN_CLK_SAI3_ROOT>;
>         };
>  };

Let's just give a test to the board

Michael

>
> --
> 2.34.1
>


--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

