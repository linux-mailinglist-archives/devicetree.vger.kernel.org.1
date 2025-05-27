Return-Path: <devicetree+bounces-180968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DF9AC5C5A
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:43:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E6961BC03AE
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2142144B4;
	Tue, 27 May 2025 21:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Xv79H8hC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F370921146C
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748382200; cv=none; b=r3pH6QU2YHGtB/e+ANA0Xe3GFBCxoVaA9lI2urTzxiRy5l/J7WbnLkJptQUNVH2psKCrekqod85F1JlyLilFhWYAa2rtkY3x7FyY7dvwD4NoA8ZxBg7K9kXCr9qr9bgfc0YDfJZxKzwiLo4fSp1mEhAE6vVRT2osz/Z5NZouch8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748382200; c=relaxed/simple;
	bh=M3RV5BvOYh65O5sk+wePRJcg4h8qSTHZ1CP6Ebit1m0=;
	h=From:References:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N4872yPRvrF1ooIZKu/vNebmPkSgpomABT8/ykWxgSUB/BNhltIMkoF+tbJv/xOU71ek5tIbmek8gwV+zI7qlIceOcVGa8BBrO0a/7Akqq7SakADAlcHdmZqoIIUf3V94fzFpD+NeSkDOHFNPK1nTSGhki1VFLomwGLoQVS3GPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Xv79H8hC; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-4e47c2a9cdcso1336099137.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1748382195; x=1748986995; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xUkVaAO6HW3+X2/NasiMOH30namfUBD6Yp9NpoegZcs=;
        b=Xv79H8hCUxYiAOVEHFyS1jqhv6zCHVDupMpXU1qrrFuhpLDDl1CZfWhx/93hQQaxKC
         2SxiWcdl0XZqSojyA3AvgqQsCaOuvM/6zydAocOcWBMrCuqksUOkJixZKW/0NJi9JSnc
         1qkI/DGOD0A9Jx5/Z6m8M2Jldc3zQumjmTDxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748382195; x=1748986995;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xUkVaAO6HW3+X2/NasiMOH30namfUBD6Yp9NpoegZcs=;
        b=JJO8u0VNgA3Qb/uDt+91noqVfV3aIlg8N49iG/uvL+7zghlEDUVUCTygTksuSpxv+i
         Q/3lc9t8m8DP/3akH1qA8uJePC17u1wR29VbIhq4ivbSNjOh3kAEUXmvdPL+eJgitbqM
         HXHO0sU2Srf1AJFu1vOvRkWjjgGEEszW2ifNqLdkxTl1ilQvpzb4VTqB/Oz/2Lbz7oxM
         BxQjNlF5YIjiKL7GnZxN4UoRYlxEi6KpMCBrx8a0rbWOFLGMlqcbwg9/abqBTNCzsrhO
         seDjwTQV0D7Q62WAW9WzJSmuFWfXi+HF5Ly/aqgJ+TNkDnsHXCFoH7Q8wHj/jLXqQ1D8
         SUkg==
X-Forwarded-Encrypted: i=1; AJvYcCU/263kSr5pyLrQSJZ1TsQL7ilZibwVgjoFguF5eiRc8TiUOBjVHT1pv6wXJ5TyywySs9x0UImhoKJX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2oXHZdxwWEnlLKJdrW1K9P26VSArMzM8agxIV+0ta4VowvrhT
	mmhpX0/tbkbotSPf/YTQJLNo1Tjpo7cVW++shifChpAEviVXDm4Tt9/zobHN+5H4KgQScMA1htB
	j3hlfw0jQaiHPJIac1Kauo+yCrnkll8qi1wZMqDKc
X-Gm-Gg: ASbGnctJDSo00uSfwE4WYFiZoEonCqcEehqyZM/0S5JLfJ7AyXU8YgGnYm726wpfYpS
	5YEd3MpYVfAV1zLd9LGvetcH2XyyjMBvTF+CVFpaXI3sfAUIgn8Z8g1xvWhwOYWoV0R++pzk4Qq
	/HVOdyED2mNeJzVoTY/JQB3LyVqZoJ6cdR9w==
X-Google-Smtp-Source: AGHT+IHH8blkb2EGu+vUsDCG9H6qwaES3e1BZO4H4qleOpx8FB0dNnT+uRuT6ypJ6w35R5KBRvWGBYAiRhZHG9ol37E=
X-Received: by 2002:a05:6102:6f05:b0:4df:9562:8339 with SMTP id
 ada2fe7eead31-4e4241934efmr11744230137.24.1748382194802; Tue, 27 May 2025
 14:43:14 -0700 (PDT)
From: William Zhang <william.zhang@broadcom.com>
References: <20250525194333.1729443-1-shankari.ak0208@gmail.com> <fa348395-0526-4485-aea6-fd34f51a4cef@kernel.org>
In-Reply-To: <fa348395-0526-4485-aea6-fd34f51a4cef@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJcuu5kkhswclfZ1u6WPJEdgykg1gD4ysCXst1jCEA=
Date: Tue, 27 May 2025 14:43:12 -0700
X-Gm-Features: AX0GCFvRTiZ_ApT3EZ8dIkgnBLHitAYDg_IYb3dqHcNSaOWCA0yvqB7JVo_Qbwo
Message-ID: <c75d6f5644d5620442d3a3f6d3148fcd@mail.gmail.com>
Subject: RE: [PATCH] dt-bindings: arm/bcm: Fix and validate brcm,bcm63138
 bindings with no errors
To: Krzysztof Kozlowski <krzk@kernel.org>, Shankari Anand <shankari.ak0208@gmail.com>, 
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	skhan@linuxfoundation.org
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000ab1816063624f3f6"

--000000000000ab1816063624f3f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Shankari and Krzysztof,

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: Sunday, May 25, 2025 9:02 PM
> To: Shankari Anand <shankari.ak0208@gmail.com>; devicetree@vger.kernel.or=
g
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
> <conor+dt@kernel.org>; William Zhang <william.zhang@broadcom.com>;
> Anand Gore <anand.gore@broadcom.com>; Kursad Oney
> <kursad.oney@broadcom.com>; Florian Fainelli
> <florian.fainelli@broadcom.com>; Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.p=
l>;
> Broadcom
> internal kernel review list <bcm-kernel-feedback-list@broadcom.com>; Rob
> Herring <robh@kernel.org>; skhan@linuxfoundation.org
> Subject: Re: [PATCH] dt-bindings: arm/bcm: Fix and validate brcm,bcm63138
> bindings with no errors
>
> On 25/05/2025 21:43, Shankari Anand wrote:
> > Fix and validate brcm,bcm63138 device tree bindings by correcting schem=
a
> > and
> example files.
>
> Nothing like that is done here.
>
> > This resolves previous schema validation errors and ensures compliance
> > with
> devicetree core schema requirements.
>
> Which errors?
>
> > The patch passes dtbs check successfully, confirming the YAML bindings,
> example DTS, and generated DTB are error-free.
>
> Drop, redundant.
>
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-
> rc1/source/Documentation/process/submitting-patches.rst#L597
>
> >
> > Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> > ---
> >  .../bindings/arm/bcm/brcm,bcm63138.yaml       | 43 +++++++++++++++++++
>
> >  1 file changed, 43 insertions(+)
> >  create mode 100644
> Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
> >
> > diff --git
> a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
> b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
> > new file mode 100644
> > index 000000000000..5848f96128e1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
> > @@ -0,0 +1,43 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm63138.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Broadcom BCM63138 DSL SoC
> > +
> > +maintainers:
> > +  - Shankari Anand <shankari.ak0208@gmail.com>
> > +
> > +description: |
> > +  The Broadcom BCM63138 DSL System-on-a-Chip is designed for DSL
> platforms.
> > +  It supports multi-core ARM Cortex-A9 CPUs, a boot lookup table
> > (BootLUT),
> > +  and software-controlled resets using a system timer.
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: brcm,bcm63138
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  compatible:
> > +    const: brcm,bcm63138
>
> You are duplicating existing bindings - both TXT and schema. Maybe you
> wanted to do the conversion, but that's still duplication.
>
> > +
> > +patternProperties:
> > +  "^bootlut(@[0-9a-f]+)?$":
> > +    type: object
> > +    properties:
> > +      compatible:
> > +        const: brcm,bcm63138-bootlut
> > +
> > +      reg:
> > +        maxItems: 1
> > +
> > +    required:
> > +      - compatible
> > +      - reg
> > +
> > +additionalProperties: true
>
> No, this cannot be true. Look at other bindings... or is it soc/platform
> file? I really do not understand what you want to achieve here.
>
I guess we need to find a proper home for brcm,bcm63138-bootlut since it is
used in the kernel source.
brcm,bcmbca.yaml covers all the soc already including bcm63138.  Would it b=
e
the right direction to add a new
yaml file for brcm,bcm63138-bootlut block itself and drop the
brcm,bcm63138.txt completely?

>
> Best regards,
> Krzysztof

--000000000000ab1816063624f3f6
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
JOEwDQYJYIZIAWUDBAIBBQCggccwLwYJKoZIhvcNAQkEMSIEINQ598IGi+QsMqlb9k82KpJbVOac
voQ8+HO5geHejOwKMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI1
MDUyNzIxNDMxNVowXAYJKoZIhvcNAQkPMU8wTTALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQcwCwYJYIZIAWUDBAIBMA0GCSqGSIb3
DQEBAQUABIIBALmkHrG0sngmsHQVn1Vj3XA4ZXv2gkjegITQVp3WYhTqXJHxYzDKj2zDVqRpmceR
gvbSlazAl5czTd7j1QnT5BvfzW1h9+KzHNGmb1ripYSfVu8xChDbNFiWy0/d2nydl84K9B0mTw67
3AMLASZB5HxWPtlQJxp7UNMAYosnfQ56JJKma+LkHu0sdBOgigqanpnz21bubjvRgnMk/gBqyAhn
8/3Fw4QPvjafVFzSwc7z4TQEG/8jGD0x+1FF/y6BAznIfjFUaZ83ZsVcDZQIoFBbv97sNSWRbAUT
Kw6k2LZ0VZUsEFwoLvh6GXQO9omhP1rkznEBzybzisVqO4dxnz0=
--000000000000ab1816063624f3f6--

