Return-Path: <devicetree+bounces-175837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0142AB20AC
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 03:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B4F69E5F6D
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 01:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7105F2620E5;
	Sat, 10 May 2025 01:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="JR8ai+Zm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC6722D4C9
	for <devicetree@vger.kernel.org>; Sat, 10 May 2025 01:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746839512; cv=none; b=HzEdyk3AZol9i9mmiodKKv2pg6K4s9s+dfjWWmkqUtTbTfral1Eo+66qy1sO7iY01k5I35JMAiABTL0+bOslbFQwZDJWAqQQo+2t7DoZka93Q/cgmEVlsir2ewegZnt1Invsqe0ncTIdY8wxGOZVNwWEgCUSBN9fntqHHah0N/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746839512; c=relaxed/simple;
	bh=fNxR99i+HFSHL47TMDmd1nUHg1L7CzLXggbf6LOkBs0=;
	h=From:References:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=guC+f3R3X69VnJWDLZg10mQwMhYlrHLthC2P6duqjPxFOU50I/OJVw9bhqX9XwV8nUKsi2R1QJhCdVgdi69+DRs1J/dB/pFXfpuAAY2gPxW/VhUgjc6nYY6y13cSzJfZ6BIItqa3sdvG/6ZblnNM1vX3ibF3e0ZkL8UgiUQ/N9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=JR8ai+Zm; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-51eb1a714bfso2043617e0c.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 18:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1746839508; x=1747444308; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fNxR99i+HFSHL47TMDmd1nUHg1L7CzLXggbf6LOkBs0=;
        b=JR8ai+Zmvb5LIFJyWiEkKyeLiuhANM04gsc98dQG9yTa600Wucur5XdafStMFhfn7v
         GcVR78mq3XY7M0u5rr2Lsi/86+BLngDHbqnHUhF5XNAko/s+Of8xq30ElLNNfaE5CMDz
         KK8bqaICJR+p6QpNywTGB+zvb5iu+jrb00VGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746839508; x=1747444308;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fNxR99i+HFSHL47TMDmd1nUHg1L7CzLXggbf6LOkBs0=;
        b=Epp4b79p41EAoWXKIpgxZ52f/ys6y49OaG0mup6mZX+C8H4NGwX59r7VWwaamfABn9
         mbMWYAKqrPAaj+TMStalgtyRoNmtYLaL1yv9kVLVEbxTsGaHr6ndYf1+UmvnFZC/3Qlx
         ZA5mPKltOOgfbcWET+uFjTFlVAvu+zSjpTPZpbA521p+LhLvvv0jdbEiqUd3SysJeCm1
         k3veKB+wip2DeOqRC7emLpXUIRjKn86t+BjghB2B2JhT2KkUywrjYprlY2WbK30WQ2+n
         PUN8QHPiEYnU0TI3vNvZ7dSXiHHmQKUt5YtMbO9Tp+zZs6Hl2+Yl392JwCYPHUTNRdQf
         IY3g==
X-Gm-Message-State: AOJu0Yw2sGGMTLqYSP1DhrCB4wkc6htZWETco9WxENQRDlvWYZjyuBqX
	kPDZo6lm4I1R4qNC0DR//okjIzIE1UKG6r0ZPn3KRd3YvaLRFPMxsqoNHLqTA+bTgBFaQkuBodG
	cMA/RtpGRVSvgfWi5totoujQfX+3r4q4/dvbg
X-Gm-Gg: ASbGncur8C4lRlDhAYhssHWewAdjwSov246e+fNBDnO6hXUp7qFMymGrsG0ga5YpM7W
	/QoZ9lP5pr8mZLXg9eT8lm7YlHJgEPOk/q0FekfQbbgju8aYY/U9yO20RgG4ai6XZRnCkRubjP9
	GsvrDhCTC+oNu6CYYFJyfjSOvLlyj6ZxtXgw==
X-Google-Smtp-Source: AGHT+IE4sXvyNXjG8WNaadif7bxOPhLOe1y6Ry36uIIGYYJZ+WmMezrfm/fmhMVuBl3XBtzwwZHReyMQPEltI3gIWXE=
X-Received: by 2002:a05:6122:3d0d:b0:529:1a6a:cc2f with SMTP id
 71dfb90a1353d-52c53d2f883mr5596955e0c.7.1746839508202; Fri, 09 May 2025
 18:11:48 -0700 (PDT)
From: William Zhang <william.zhang@broadcom.com>
References: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org> <dc47e9ba-e23d-45d2-bae1-cac8bac2310b@broadcom.com>
In-Reply-To: <dc47e9ba-e23d-45d2-bae1-cac8bac2310b@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKk0Iba5S5vFfMGFNn0Sizjy9mbxwHgAqlcsintLgA=
Date: Fri, 9 May 2025 18:11:49 -0700
X-Gm-Features: AX0GCFt3K95Ms68nC87j0n5IDLINSfLeg-FuKXyKdXYqk17d76prYmspWacWdcY
Message-ID: <ac86467d6f0b2c531f7d1356ade78e17@mail.gmail.com>
Subject: RE: [PATCH v2 00/12] ARM: bcm: Add some BCMBCA peripherals
To: Florian Fainelli <florian.fainelli@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Olivia Mackall <olivia@selenic.com>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-crypto@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000062470f0634bdc42d"

--00000000000062470f0634bdc42d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,
> -----Original Message-----
> From: Florian Fainelli <florian.fainelli@broadcom.com>
> Sent: Saturday, April 26, 2025 1:49 AM
> To: Linus Walleij <linus.walleij@linaro.org>; Rob Herring
> <robh@kernel.org>;
> Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
> <conor+dt@kernel.org>; William Zhang <william.zhang@broadcom.com>;
> Anand Gore <anand.gore@broadcom.com>; Kursad Oney
> <kursad.oney@broadcom.com>; Florian Fainelli
> <florian.fainelli@broadcom.com>; Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.p=
l>;
> Broadcom
> internal kernel review list <bcm-kernel-feedback-list@broadcom.com>;
> Olivia
> Mackall <olivia@selenic.com>; Ray Jui <rjui@broadcom.com>; Scott Branden
> <sbranden@broadcom.com>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-
> crypto@vger.kernel.org; Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org>
> Subject: Re: [PATCH v2 00/12] ARM: bcm: Add some BCMBCA peripherals
>
>
>
> On 4/6/2025 5:32 PM, Linus Walleij wrote:
> > This adds a bunch peripherals to the Broadcom BRCMBCA
> > SoC:s that I happened to find documentation for in some
> > vendor header files.
> >
> > It started when I added a bunch of peripherals for the
> > BCM6846, and this included really helpful peripherals
> > such as the PL081 DMA, for which I think the most common
> > usecase is to be used as a memcpy engine to offload
> > transfer of blocks from NAND flash to/from the NAND
> > flash controller (at least this is how the STMicro
> > FSMC controller was using it).
> >
> > So I took a sweep and added all the stuff that has
> > bindings to:
> >
> > ARM:
> > - BCM6846
> > - BCM6855
> > - BCM6878
> > - BCM63138
> > - BCM63148
> > - BCM63178
> >
> > ARM64:
> > - BCM4908
> > - BCM6856
> > - BCM6858
> > - BCM63158
> >
> > There are several "holes" in this SoC list, I simply
> > just fixed those that I happened to run into documentation
> > for.
> >
> > Unfortunately while very similar, some IP blocks vary
> > slightly in version, the GPIO block is differently
> > integrated on different systems, and the interrupt assignments
> > are completely different, so it's safest to add these to each
> > DTSI individually.
> >
> > I add the interrupt binding for the RNG block in the
> > process as this exists even if Linux isn't using the
> > IRQ, and I put the RNG and DMA engines as default-enabled
> > because they are not routed to the outside and should
> > "just work" so why not.
> >
> > I did a rogue patch adding some stuff to BCM6756 based
> > on guessed but eventually dropped it. If someone has
> > docs for this SoC I can add it.
> >
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> Linus can you resubmit a v3 addressing William's feedback? I will drop
> your series for now. Thanks!
> --
> Florian

I wonder if you get a chance to review my feedbacks on this series?
Let me know if you have any questions.

Thanks,
William

--00000000000062470f0634bdc42d
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
urb/KlmDGfVrIRYDbL0ckhGQIP5c6L+kSQZ2sHnQK0e0WgIaZYxaPYeY5u0GLCOze+3vyRMxggJg
MIICXAIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxuh2XG3FXRL1W
JOEwDQYJYIZIAWUDBAIBBQCggccwLwYJKoZIhvcNAQkEMSIEIIVPdrVjlcOl4I8Q0jep9/rh92DI
ogokI8lm7HZahfyrMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI1
MDUxMDAxMTE0OFowXAYJKoZIhvcNAQkPMU8wTTALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQcwCwYJYIZIAWUDBAIBMA0GCSqGSIb3
DQEBAQUABIIBAF2w0r0/SVecb3jpat3fLGJzTbzfy9dPfKkrUvKhxLFrHsjCpvaibjq9aI68I3yn
+E1CvE0fGBnQQcqexrcygBt1GD/uz0FpZq2bwNUzlsFpTrtgWdRGUlxGfWPqjOa062vzRzCaTA3E
QX5iH7uf9ZENKebD9dChv55mB3OQwpCWBQwiPqMOVkikujRa1ggStYgsqJTL93sVUyNYdiDGjzaK
+Jyq+HRJcRXoHHTzR1v815FBz5WHe6yBzutuUB97fkHgGVIe2BkebhT2H0Ybayjb8Qniy/y0+ysP
H1H1F3aJ9PWBuMxcYAHY/Uz3ekqiaDe8XwC9+zx5KWbpJcUCMxk=
--00000000000062470f0634bdc42d--

