Return-Path: <devicetree+bounces-105403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6F0986A3B
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 02:17:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E5DF1C211E2
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 00:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E2B16B3BF;
	Thu, 26 Sep 2024 00:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Ujc4kSpG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628AF1A28C
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 00:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727309871; cv=none; b=DyqpUwXaI+zBrVO9eRcIjYuVDYmJ3xZMsVcr6shtCCTxtY0InKZM7Rs7HSH76Iqstaf4h74iPIBpx9/BZf6nnLMBOwV6SErPLwlriIsSpWGvQkNPqawiLz5tEkaOmnCYeCLAOj9yyNszfZCm1a04OsuVv2ee78QMT77VQCiPOEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727309871; c=relaxed/simple;
	bh=sEZz/UhNX/tCuhvyBA2VTcBPphce73iItA1gLOr7d/A=;
	h=From:References:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r7Hx2PnYwljlo5WL1XoEY/MqFGKRVKuyEfHYsbnEdldIRTBjTvWKDSH3LIrw4Z13EbSeDNln5k5uU/CHDSF16r6x21WB3DHDGTPGVjICFFLt0QlUlKuvzaOhxYWc9Ifm0j5ivucca9yri1gFFWFCPT1iCQduUaSjBYS0ou4sRHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Ujc4kSpG; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-502b144f31bso177420e0c.1
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 17:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1727309868; x=1727914668; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X6ruFeElv+hIk3bcM0dlUdMhKMARUqfI4DwBZUMriYw=;
        b=Ujc4kSpGPa6mlX5XseJFgVp/jJxOd3M36JDqTRnpPh/gC5H9929NyACYrlnpW99MRj
         0wipNooEoxCTpXrE3bny6cRDwyc0NDPulhdZJ82S3g15pCJF0humBRWSWvB2+sZg85Yw
         OWueQcIeDwkbgyoEf25wcNQBe5kzkQSRXMm6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727309868; x=1727914668;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6ruFeElv+hIk3bcM0dlUdMhKMARUqfI4DwBZUMriYw=;
        b=L6Z9HqegIKraexcx5vGSjoBiFUvN19asIiyLAutjW0jqNBOLPxpKjqnAPYseIr0tKO
         fU6/WgaX9P5x86Sf2YXKysLtLh9oTW2V/GxRvz+F2/4GBhXu3yQdsjF/70n0NPEO60nw
         X4B2rT+5RmIGCIrqTfJh6yuwyYEqawWDdvLcKjncf6EGTyns/CBbWOhOppPDxw2mDJbc
         SqtCgblDcJOUIkLdeB5gx7253TQPmCSNpS4x/nao4tX9Nw5iiUQIOBijSjyD5U6klpav
         So3S6CKOXado+9oG+Xy1O/dA6B0nXlJzHoAgPrwl8Dk1n7Tfi0VRfZ33kUzx1ee3EheH
         ReYQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1tbhYdh9yVgY+pysMVMfEcDLC6rOV0Ce0KWz7S1t1athHbjJAh6xJ+PXmwTMNlkQIr3udl44DoUcT@vger.kernel.org
X-Gm-Message-State: AOJu0YxHYEv1qdmHAlBAHeJENlarRG4seTjjvtpVaKnVGNNmBav27JKP
	Vl7Nqzw1cNosUFn5AO5xZ0eQK43MqH3CrzCMJSD+LI5KwbHQiioL5MiNqLkrt3ZDehu/458XHs2
	qKi726o6dW8vWcosHm5ZO+MVz48vHg4/gvDFM
X-Google-Smtp-Source: AGHT+IGaFXreAcGuJdz3bCH4O7Ro+j44UOYvtZ5a9UofprnyIMZrJaQjs5MvwdqAJ6FTCdxW5aM0CgYSrOVJMR5TUrk=
X-Received: by 2002:a05:6122:1806:b0:4fd:18e1:ab0b with SMTP id
 71dfb90a1353d-505c1db5ae1mr4513360e0c.4.1727309868066; Wed, 25 Sep 2024
 17:17:48 -0700 (PDT)
From: William Zhang <william.zhang@broadcom.com>
References: <20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org> <20240920-bcm63138-leds-v1-3-c150871324a0@linaro.org>
In-Reply-To: <20240920-bcm63138-leds-v1-3-c150871324a0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGG15pIzi+CwgLuXH3ZqHYdv2u0PgJdlwU1sv628IA=
Date: Wed, 25 Sep 2024 17:17:46 -0700
Message-ID: <3083039c1f8ec79e8e0803fc43d84156@mail.gmail.com>
Subject: RE: [PATCH 3/4] leds: bcm63128: Handle shift register config
To: Linus Walleij <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000002083150622faabf1"

--0000000000002083150622faabf1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Linus Walleij <linus.walleij@linaro.org>
> Sent: Friday, September 20, 2024 2:59 PM
> To: Pavel Machek <pavel@ucw.cz>; Lee Jones <lee@kernel.org>; Rob
> Herring <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>;
> Conor Dooley <conor+dt@kernel.org>; William Zhang
> <william.zhang@broadcom.com>; Anand Gore
> <anand.gore@broadcom.com>; Kursad Oney
> <kursad.oney@broadcom.com>; Florian Fainelli
> <florian.fainelli@broadcom.com>; Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.p=
l>;
> Broadcom internal kernel review list <bcm-kernel-feedback-
> list@broadcom.com>
> Cc: linux-leds@vger.kernel.org; devicetree@vger.kernel.org; Linus Walleij
> <linus.walleij@linaro.org>
> Subject: [PATCH 3/4] leds: bcm63128: Handle shift register config
typo:  bcm63128 -> bcm63138

>
> This adds code to optionally read the width of the shift register
> chain from the device tree and use it to set up the register
> controlling the shifter hardware.
>
> If the property is not present, the boot-time default is used so
> existing device trees keep working as this is what they assume.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/leds/blink/leds-bcm63138.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/leds/blink/leds-bcm63138.c b/drivers/leds/blink/leds=
-
> bcm63138.c
> index 374f68f4f277..bf170a5bb12a 100644
> --- a/drivers/leds/blink/leds-bcm63138.c
> +++ b/drivers/leds/blink/leds-bcm63138.c
> @@ -2,6 +2,7 @@
>  /*
>   * Copyright (C) 2021 Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>   */
> +#include <linux/bits.h>
>  #include <linux/cleanup.h>
>  #include <linux/delay.h>
>  #include <linux/io.h>
> @@ -254,6 +255,7 @@ static int bcm63138_leds_probe(struct
> platform_device *pdev)
>  	struct device_node *np =3D dev_of_node(&pdev->dev);
>  	struct device *dev =3D &pdev->dev;
>  	struct bcm63138_leds *leds;
> +	u32 shift_bits;
>
>  	leds =3D devm_kzalloc(dev, sizeof(*leds), GFP_KERNEL);
>  	if (!leds)
> @@ -267,6 +269,12 @@ static int bcm63138_leds_probe(struct
> platform_device *pdev)
>
>  	spin_lock_init(&leds->lock);
>
> +	/* If this property is not present, we use boot defaults */
> +	if (!of_property_read_u32(np, "brcm,serial-shift-bits", &shift_bits)) {
> +		bcm63138_leds_write(leds,
> BCM63138_SERIAL_LED_SHIFT_SEL,
> +				    GENMASK(32 - shift_bits - 1, 0));
> +	}
> +
>  	bcm63138_leds_write(leds, BCM63138_GLB_CTRL,
>  			    BCM63138_GLB_CTRL_SERIAL_LED_DATA_PPOL |
>  			    BCM63138_GLB_CTRL_SERIAL_LED_EN_POL);
>
> --
> 2.46.0

--0000000000002083150622faabf1
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
YDZuuBJwnyCzevMoPtVYPharioL5H3BRnQi8YoTXH7/uRo33dewYFm474yFjwwnt82TFtveVZkVq
6h4WIQ4wTcwFfET8zMkELnGzS5SHCl8sPD+lNxxJ1JDZYwIDAQABo4IB2zCCAdcwDgYDVR0PAQH/
BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9i
YWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUF
BzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAy
MDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xv
YmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAlBgNV
HREEHjAcgRp3aWxsaWFtLnpoYW5nQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAf
BgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUq65GzwZxydFHjjYEU/9h
xHhPWlwwDQYJKoZIhvcNAQELBQADggEBAA2hGG3JPAdGPH0ZdohGUCIVjKz+U+EFuIDbS6A/5jqX
VhYAxZlzj7tSjUIM7G7IhyfqPC46GKJ/4x+Amz1Z6YxNGy71L68kYD6hIbBcA5AM42QBUufly6Oa
/ppSz3WoflVyFFQ5YXniZ+eU+2/cdnYZg4aVUnFjimOF5o3NfMLzOkhQNxbaDjFUfUYD8hKmU6v4
0vUBj8KZ9Gi1LIagLKUREn8jku0lcLsRbnJ5Ey5ScajC/FESPyYWasOW8j8/1EoJksmhbYGKNS6C
urb/KlmDGfVrIRYDbL0ckhGQIP5c6L+kSQZ2sHnQK0e0WgIaZYxaPYeY5u0GLCOze+3vyRMxggJt
MIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxuh2XG3FXRL1W
JOEwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIAy0q2n2dwpyNsf+s8t4MvDlnt+u
9QqCEwHa6aHKZevGMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0
MDkyNjAwMTc0OFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQDEZYuBxP5HueWrIjYWcaDkAqDOAeWp4OA62ujlAI/Ztkdb
mRQ9pGi6P1JyqeuzHjLUuJKAH6tVJ7/1BZQRJDSMS1dA8270AGEODc4nNVZIX02fsRYdG1tYcr0b
fGG1cK0WEpZrOrscK+4gu1Lz51D7lwItRJsqji9vsHXdIRknUCwviAbWVAdLUbdgNTNOEzF7o6/u
jTdiNkazjr5QZ94Aq9wPUyNqEMTAeslupV1ODGLBT1NICSAsluq+Db8OWm3MBH6MilPFXkd+X3rF
xMWFSPE5v7aCaUGgXFksjFd+Ys55vVTQKanirLFhgZKTByYcvfAZQuwSRgDEvm4pRPNO
--0000000000002083150622faabf1--

