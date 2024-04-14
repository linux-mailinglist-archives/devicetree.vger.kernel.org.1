Return-Path: <devicetree+bounces-58978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3278A3E10
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 20:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6BBF8B21694
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 18:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298DF52F8A;
	Sat, 13 Apr 2024 18:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zCJXB4lp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930404AEF9
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 18:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713031518; cv=none; b=txCQEtxyIAiPmkT4MqmyV0kXyNl8oGnxlHvjo6uwDK+HpuuUjClNFXHF/iR5IjIEiPqcRU7pTQSFCMuZU5s4wcXJ0RGb00KQKYqCUKNg8klVELf0uQGD0IkFN1L9xbRwRJuKCX/xbBuV3VaOknX9RGsOu6qYa4uNS3szC/PJ2+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713031518; c=relaxed/simple;
	bh=xU8AWdw09sdQJi0ncss+TnMzhpb6i7Iz6NmzKQpVxMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hPXMqRGPCcjF5CB1Lgx2YyG7VDi7GFLUYZdKogJj50sW8tEv7Ml/cYv7fw8O4d0eVj9BbvdoFC8hneaUf7MM+tTeimCxI7a/VLqxRfRzut2GOnURURKbWW/ZRLInnua5a45W5lWre4JZ7qcehlGd3neNYy0hXx79g+hGSlYSoqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zCJXB4lp; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d48d75ab70so27640101fa.0
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 11:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713031513; x=1713636313; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RjmAmY6mBQ1oGnN53iqp9T7eFLLOILL/++Sux50ZvHM=;
        b=zCJXB4lplQhgfNouMCxLdJSOaj1kajPYXiIUhWUeV5xsUf44sa1EtHo2wtIwbNukWF
         VC9YpguKS8UkKM7vu4WJpPTy8u0MoUsoK4BxAN5cta01neRUa0ryyzwjpGY+PAilr09V
         N/gxgctrFWdpSdmVT4ohosprRR7looYRGvyXYqas6ovGWJpYAwrTfJOPyWNy+C1PzoU3
         5WLTW6PLfb89SCRF4hejwvfOT3Iwppo1JSXyt97Af35tChbCxmPw84+2bI6oC7rLjyuV
         9OU6/G8J2PWjxkDm2syU0/7yqjRtv38RuDN9YIx/EHNsnrPmyKFKHL1POidzI40rHDUT
         ILXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713031513; x=1713636313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RjmAmY6mBQ1oGnN53iqp9T7eFLLOILL/++Sux50ZvHM=;
        b=Nc/9hBR1Hqbg4KUrYIt2cUoFqMCn26Ryphv7ohuCkuH9JBRCnVuaTIZi51d8upGbJ2
         cK9d/MYA8oeA3zftlIe24ZUalKo4I1JfAQlXFuo1CoFLxktF8U/jZ0E71637wiTBHYK0
         RLPKIgVs5BoqYGhIjkvUpEDaRzr41qfnnw2zoVPWQ8df85QBhQbj8RgEXPBv6t5n54qx
         dpEH3iWDyAsD8t+npt3ffHN76Rs2DCqG0xYK0i+Yl6FQx3qPTEVrc0QHIYd5502o6l7E
         RWGh+VoyVgN/GvwP6T8gO6zx1Y26RqY4yfwYV/TbppYHOuSzbHoSk0OMSmh5y0FTtCHh
         daxA==
X-Forwarded-Encrypted: i=1; AJvYcCVWrvnS4Cqgmp7zIy6ZaJPBWnLRyUPYUXPjaXaAPWkjXNzu+4CIu49Kxyf6q82WF15j9mC49ictuKPB/qArUZcCpAoF1hUU/YOueA==
X-Gm-Message-State: AOJu0YxKO7eeKyM7JQ95WJO1MyHMykELvEGrODpy50oxlU+FTzYxa9ec
	SLDwJX6cSxBaARvuB4suQIXADJ0SPsioDk2nzVl+BmaYFkdFqxu+diBgx1Zv2qml7iFgziN6f+T
	pr2OMNxLTLQq5Cy91hEMb72RoDIwfpSDuGB5s8w==
X-Google-Smtp-Source: AGHT+IGLFrcrE0njG/Y3034rH32zmQVanzk/BzsxzsfG/+BIUfh1PSUnlIPxiLhp5Hroy+PgJ41zgV+Sb/sbnKAYcVk=
X-Received: by 2002:a2e:a586:0:b0:2d8:4169:3a58 with SMTP id
 m6-20020a2ea586000000b002d841693a58mr4205609ljp.41.1713031512592; Sat, 13 Apr
 2024 11:05:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240413151152.165682-1-alisa.roman@analog.com> <20240413151152.165682-3-alisa.roman@analog.com>
In-Reply-To: <20240413151152.165682-3-alisa.roman@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Sat, 13 Apr 2024 13:05:01 -0500
Message-ID: <CAMknhBEwS2O3gWnJcc2RDXbeiUZ54pPm8PskGTTKL9xKYBOZ4A@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] dt-bindings: iio: adc: ad7192: Add aincom supply
To: Alisa-Dariana Roman <alisadariana@gmail.com>
Cc: michael.hennerich@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	alexandru.tachici@analog.com, lars@metafoo.de, jic23@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	lgirdwood@gmail.com, broonie@kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	marcelo.schmitt@analog.com, bigunclemax@gmail.com, okan.sahin@analog.com, 
	fr0st61te@gmail.com, alisa.roman@analog.com, marcus.folkesson@gmail.com, 
	schnelle@linux.ibm.com, liambeguin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 13, 2024 at 10:12=E2=80=AFAM Alisa-Dariana Roman
<alisadariana@gmail.com> wrote:
>
> AINCOM should actually be a supply. If present and it has a non-zero
> voltage, the pseudo-differential channels are configured as single-ended
> with an offset. Otherwise, they are configured as differential channels
> between AINx and AINCOM pins.
>
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad7192.yaml          | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> index 16def2985ab4..ba506af3b73e 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> @@ -41,6 +41,14 @@ properties:
>    interrupts:
>      maxItems: 1
>
> +  aincom-supply:
> +    description: |
> +      Optional AINCOM voltage supply. If present and it has a non-zero v=
oltage,
> +      the pseudo-differential channels are configured as single-ended ch=
annels
> +      with the AINCOM voltage as offset. Otherwise, the pseudo-different=
ial
> +      channels are configured as differential channels: voltageX-voltage=
0, with
> +      AINCOM as the negative input.

This description doesn't sound quite right to me. The datasheet has no
mention of single-ended inputs. And how each AINx input is used is
independent of whether this property is present or not. And
voltageX-voltage0 is a driver implementation detail that doesn't
really belong in the bindings.

Also, just FYI, in a similar case, Jonathan recently mentioned that he
would prefer that these sorts of supplies would be required rather
than optional [1]. But in this case, I think it needs to be optional
for backwards compatibility since we are modifying existing DT
bindings. But the point still stands that this property being present
or not doesn't mean anything special (other than we might assume the
AINCOM pin is connected to GND if the property is omitted).

[1]: https://lore.kernel.org/linux-iio/20240413181025.39d1a62e@jic23-huawei=
/

In any case, a better description would be one more like what the
datasheet says for the AINCOM pin:

"Analog inputs AIN1 to AIN4 are referenced to this input when
configured for pseudodifferential operation."

> +
>    dvdd-supply:
>      description: DVdd voltage supply
>
> @@ -117,6 +125,7 @@ examples:
>              clock-names =3D "mclk";
>              interrupts =3D <25 0x2>;
>              interrupt-parent =3D <&gpio>;
> +            aincom-supply =3D <&aincom>;
>              dvdd-supply =3D <&dvdd>;
>              avdd-supply =3D <&avdd>;
>              vref-supply =3D <&vref>;
> --
> 2.34.1
>

