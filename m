Return-Path: <devicetree+bounces-248595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AA221CD4443
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 19:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 20B183004F16
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 18:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266CD3093DF;
	Sun, 21 Dec 2025 18:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KzfXdfh6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48BC307AF4
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766343177; cv=none; b=uv1obkikjOyWf+TRHuYYmgdjoXdGlFGb/gHwakrDIwVILCtpdRdyX1eMXk5An7QmyZtmP40AlO5krB6tFo5EflzmNA7+0iRQFF0ulAiA2U6B1fW6jqRsw87qHm0f82tmqSDVNAExW4jT0z1ktd+hie08Fxxx9UmWSb9Be4KtEzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766343177; c=relaxed/simple;
	bh=wTYyJ6KNs7lcO1LDw5mry706MHNd9SS12sadjX2FW+o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bCubiyCEWwbLZfuLOaAGfrMPF9duXvEGZ49fQoDYeCs42UO8vFA4ueCVXUm5+M2NhcLnc3RU0ExZ60qZOtavmEZe8sCPqMh55sSAgm7Il1/tXKWDfDnUVnCSU7sXWK406YRkxRGzxGdFpsK+a8fyQgRMiRb5VDDe3GFY8TIRz/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KzfXdfh6; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42e2d02a3c9so2200660f8f.3
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 10:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766343172; x=1766947972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkFUuskD3aXQcMoKgf00kBQMcF6mPoLg5bi7MGfjH3A=;
        b=KzfXdfh6NwIpnEQ4xNJnZZg+yOATN0UgK0sDOfv83+I7tzjFOsfhCiCOfWou024bSY
         EMD90GWxJYj22UpfJPEDq+7Sg2rowa9AVgDxPZ/udfGKvDRk3CRtfoXY3v3DtZBM12Td
         DIDYD4f5mgRF5XliMEgO5SoNHPQBgJWoO4YkU4Wdmf8SiMSYrdd/bvBIrKeA8MfzDcjf
         wz/8t9zs0Cb5Kbc3mCPBqqmsVtgg5MOJXuBQZk5THfpGDCePrZfr7T8J/YMIiQ6MvL0q
         5cV7C4bmeDJ4RCLxjRh1vmELDTuzCFUQt4lJukGsaW1HKDF5goh/KSCSN2c/Pl9fzt9d
         CQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766343172; x=1766947972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EkFUuskD3aXQcMoKgf00kBQMcF6mPoLg5bi7MGfjH3A=;
        b=ZnZxDf41KTf3gps6jTcWdxdkXBJoDhEIoxvmPQuAytgiq5TxbRuEoj+CNEKehHSnim
         PJUO7TspJIDrKapobl/miDW8xw7cjhTDm6afon696M8MzmAjYKREpZxtTZV+q/Dt3lMA
         3Q4AP2pA7VzIB0F5m+/W4Q9YXUQ8I7CQx+zWTSOFxXBYAIrukAoEC67ZOVQcreXU1QOs
         0wGGsR7wEB4zPjFEvgzBbgAyYX87crw2Rxg8QplcurCIEvRVDjV9eZo7JL6BAZtFJnTR
         rOe2c7B04NiWCzwZHtuCxkmQkwy7ctHZmccEX42MxNaYcWbC42FOcZhzHsQ0D6V9qKQi
         aUnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUx89NOSqPXm6aSTd1AhwANX3YNAShWu0yamynPdpVL7wMvWcX4karhtIflEmUAMPq1PPaBDRAduzEP@vger.kernel.org
X-Gm-Message-State: AOJu0YyJB8aLNoxFS9gW+T++3pcaa+tnKZj2GGt/lz8RjJM649nYnWH5
	3ayLcRdYKqFPYX8IPEhuFZJ9Ao8RCLWj9MgvJLB1veazzZYNC9FRqFNx
X-Gm-Gg: AY/fxX4C7jwrPPrxbVblypOzUIz2/zcE/QCjKAdGEuUKS1wSfqOiSoO0TS9b+Cuv0Dl
	NXqcJgu0s9AowLvp0lWN1KwMFn97YdRKfslLK48ffxnrWB7iP+HGcMBNwXbAZYzrvDmM+JYm9iw
	Lcr0ycFJaOeeCPmWp0Tj1vXdxfsgmGu+P6IBX72Euvw4uJp3SHutgdGlHGCbrMcSi42+RyLQIX/
	DM+Sm4zGkEKodyc4uF7ZwqAMMdmkJI+mPqrk0+o8VqGbutGv+RD7NFBdRE8MDmwHkLpVQSS57fF
	laH9BRUL76azEb7pUk/ycTK2onX4m4VgmsBQdv1BMk6/jxoefQZfJBmLcg5oIGvlQI6EnAZtPq9
	wSyS3iNvX3TCJmmb/jftScVStQCz+pPB8F9Qt0uccDWsDNhsgEjHkZQ/b9Z5O+5sEM4WDRiqysp
	SkXC93zS3BRzlK5WnUAzLa2kbMT56M2jZVrfc7duRRJrad7J1mJYWonwTVhVIaHzoSjiHQ
X-Google-Smtp-Source: AGHT+IEkkDr9J9+zdibSJ3aQ9iWL0xgIJ5GrJUheHH61EjSouzXE+O5/goeHQ+aazrE5IYrzxVO9HA==
X-Received: by 2002:a05:6000:4008:b0:430:f241:a11f with SMTP id ffacd0b85a97d-4324e4fa8a7mr8787306f8f.30.1766343171984;
        Sun, 21 Dec 2025 10:52:51 -0800 (PST)
Received: from jernej-laptop.localnet (82-192-45-213.dynamic.telemach.net. [82.192.45.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4325d10cc48sm7775667f8f.16.2025.12.21.10.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 10:52:51 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject:
 Re: [PATCH v2 1/4] dt-bindings: pwm: allwinner: add h616 pwm compatible
Date: Sun, 21 Dec 2025 19:52:50 +0100
Message-ID: <10771871.nUPlyArG6x@jernej-laptop>
In-Reply-To: <20251217082504.80226-2-richard.genoud@bootlin.com>
References:
 <20251217082504.80226-1-richard.genoud@bootlin.com>
 <20251217082504.80226-2-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sreda, 17. december 2025 ob 09:25:01 Srednjeevropski standardni =C4=8Da=
s je Richard Genoud napisal(a):
> Allwinner H616 PWM block is quite different from the A10 or H6, but at
> the end, it uses the same clocks as the H6; so the sun4i pwm binding can
> be used.
> It has 6 channels than can generate PWM waveforms or clocks if bypass is
> enabled.
>=20
> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
> ---
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pw=
m.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> index 1197858e431f..4f58110ec98f 100644
> --- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> @@ -14,6 +14,9 @@ properties:
>    "#pwm-cells":
>      const: 3
> =20
> +  "#clock-cells":
> +    const: 1

Why #clock-cells? I don't see any reason to add it.

Other properties seem fine.

Best regards,
Jernej

> +
>    compatible:
>      oneOf:
>        - const: allwinner,sun4i-a10-pwm
> @@ -36,6 +39,7 @@ properties:
>            - const: allwinner,sun50i-h5-pwm
>            - const: allwinner,sun5i-a13-pwm
>        - const: allwinner,sun50i-h6-pwm
> +      - const: allwinner,sun50i-h616-pwm
> =20
>    reg:
>      maxItems: 1
> @@ -62,7 +66,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: allwinner,sun50i-h6-pwm
> +            enum:
> +              - allwinner,sun50i-h6-pwm
> +              - allwinner,sun50i-h616-pwm
> =20
>      then:
>        properties:
> @@ -83,6 +89,17 @@ allOf:
>          clocks:
>            maxItems: 1
> =20
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              const: allwinner,sun50i-h616-pwm
> +
> +    then:
> +      properties:
> +        "#clock-cells": false
> +
>  required:
>    - compatible
>    - reg
>=20





