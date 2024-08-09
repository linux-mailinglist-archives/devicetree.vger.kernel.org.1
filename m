Return-Path: <devicetree+bounces-92329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7C794CBAF
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 09:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA0DC1C21E3E
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 07:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749DE18C329;
	Fri,  9 Aug 2024 07:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Mrkp4qFw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0987155725
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 07:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723190028; cv=none; b=ZCeHMdorFSwH8UtBTCjUjhW1ilwW0XnRkX/Xh8nKsmFYie7Sxkyv5TmQjt/+dO46zysDcahj6fxESgaXTco4M0cRpueMCaevb9woVzxlF114GN8OCNsHSYSj7kpd6AhqL6cdTrhSZOU87aeKJwH2cp0M2lZHFtgI5fUSiAUl2hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723190028; c=relaxed/simple;
	bh=mx9XvqN8gfoztx5g8Hg8p3zrShD585HpqTze7i/V9sY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TbZiU6UAWlv7T0tYqlBKxsaPYtSiD1WPDidzvHxPDe6ieURVrsd58wMRdAy9RLZNknAdMKuzrtDwN3KR7q6RVzix3QJ4oNz410hIZ1pvD30jSG1aInjeeIohqV37cTi3uVmSWASPhgkAdWdASLUkLbcvnFMO0AvdMyJTY16MZNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Mrkp4qFw; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52fcc56c882so1930172e87.0
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 00:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723190024; x=1723794824; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tOhlBCGx3wgliIklN4sJ6vIsr9hRttzR53fydIf4y5g=;
        b=Mrkp4qFww3AZ4zSJchDIw5ZpwDtzlW67B+O3ljI5133Czf3Uj6RZFFJ9AGlLmJ3ka9
         bmJhvC4wq8SMTCRVkDBaIypsUSn3eTk6OK9UIS5HKkOvXJWXB8XxUg+x+OzVsCulXQv4
         zPYD9SF+6SQjoekyLWxiTDZa26sXUywn7q7uQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723190024; x=1723794824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tOhlBCGx3wgliIklN4sJ6vIsr9hRttzR53fydIf4y5g=;
        b=eiejRnRQx8DLfasij+3aDJyLCJVwRrQVjsX8IoyQWFNCCQ2KIjaa/fK7QR30KSX+nt
         Lt3aU0QFLB+pUvkfZEBI+Zi0SOViFHcFWv+h+wGEGZ9crwoMxT6QTZYpx5DtAnM0eqqN
         OJ21DyhHLPIizjY4BnPkckg8UHeNodE/7+1/3soRqAYZsrlQ7ApvdU7O/duHfoagYF7t
         5XUHnCfylGOrDnbZ9GN6rDxfQcA6aBC8x7x9hXnEpFHZ0hccaDZ69HeYGpOqSQp1itZS
         VtLkf1o/P4ucNgsGiydqB3iMM15wK7CKcZkgoWvokMAFpHOgtj6ptEc70GvU3C/PzPDv
         XyBw==
X-Forwarded-Encrypted: i=1; AJvYcCWKFOofe2Rqv5YAtE/b1twltXmavPRIT0HzXLJYbjr5Mg28KOgkr6h8XpB1diKYFbUdfp0xk2VK5gDS5Ruc/FAqIrV4MBA8aqOwFQ==
X-Gm-Message-State: AOJu0YwUXVBszKeQIjBs60pzJ190v1f0eMJ3UP/mO4O6YBqBvp/DfzfE
	PK8/y3dS5uNPLebc01JoKxJjpeadOSRtDXmlN7Wm40oikQxpiXsL4wbrGxhCwJzaINn6hIGP1Qu
	ke037XyBnast4cqJzpwJkNH/fFU9SQkphOqcPoANpYL8WoXBcGg==
X-Google-Smtp-Source: AGHT+IH6ychLenqDgOvMBzDQh2JMkFFn21GgkZRTJgCiT8vrbwbMMfUcAwkW9CQQCIA8Bgb7QPT8OmlAiGtufGVI5DI=
X-Received: by 2002:a05:6512:3f05:b0:52f:cc9e:449d with SMTP id
 2adb3069b0e04-530e5d210abmr1449084e87.3.1723190023966; Fri, 09 Aug 2024
 00:53:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240808-kukui_trip-v1-1-6a73c8e0b79a@chromium.org>
In-Reply-To: <20240808-kukui_trip-v1-1-6a73c8e0b79a@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 9 Aug 2024 15:53:32 +0800
Message-ID: <CAGXv+5GgmRiqkZdQo--XciuEgAvyOiR+XYWO=dZWziZ-pJzPDQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183-kukui: Add trip points to each thermal zone
To: Hsin-Te Yuan <yuanhsinte@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 8, 2024 at 5:09=E2=80=AFPM Hsin-Te Yuan <yuanhsinte@chromium.or=
g> wrote:
>
> Add trip points to the tboard1 and tboard2 thermal zones to ensure they
> are registered successfully.

The position of tboard_thermistor2 is different between end devices.
And both sensors are outside of the SoC. Having such a high trip point
probably doesn't help with keeping the device or user safe.

The SoC itself also has internal sensors which would be more suited for
this.

So I think it makes more sense to have the kernel not require trip points
for thermal zones, matching what the thermal binding says. I resurrected
an old patch for this [1].


ChenYu

[1] https://lore.kernel.org/linux-arm-kernel/20240809070822.2835371-1-wenst=
@chromium.org/

> Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 26 ++++++++++++++++++++=
++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/=
boot/dts/mediatek/mt8183-kukui.dtsi
> index 6345e969efae..1593ea14f81f 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -978,12 +978,38 @@ tboard1 {
>                 polling-delay =3D <1000>; /* milliseconds */
>                 polling-delay-passive =3D <0>; /* milliseconds */
>                 thermal-sensors =3D <&tboard_thermistor1>;
> +               trips {
> +                       tboard1_alert: trip-alert {
> +                               temperature =3D <85000>;
> +                               hysteresis =3D <2000>;
> +                               type =3D "passive";
> +                       };
> +
> +                       tboard1_crit: trip-crit {
> +                               temperature =3D <100000>;
> +                               hysteresis =3D <2000>;
> +                               type =3D "critical";
> +                       };
> +               };
>         };
>
>         tboard2 {
>                 polling-delay =3D <1000>; /* milliseconds */
>                 polling-delay-passive =3D <0>; /* milliseconds */
>                 thermal-sensors =3D <&tboard_thermistor2>;
> +               trips {
> +                       tboard2_alert: trip-alert {
> +                               temperature =3D <85000>;
> +                               hysteresis =3D <2000>;
> +                               type =3D "passive";
> +                       };
> +
> +                       tboard2_crit: trip-crit {
> +                               temperature =3D <100000>;
> +                               hysteresis =3D <2000>;
> +                               type =3D "critical";
> +                       };
> +               };
>         };
>  };
>
>
> ---
> base-commit: 21b136cc63d2a9ddd60d4699552b69c214b32964
> change-id: 20240801-kukui_trip-6625c0a54c50
>
> Best regards,
> --
> Hsin-Te Yuan <yuanhsinte@chromium.org>
>
>

