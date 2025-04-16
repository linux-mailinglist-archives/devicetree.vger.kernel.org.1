Return-Path: <devicetree+bounces-167919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA90A90B4B
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 20:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F08071906FE7
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19346221DB5;
	Wed, 16 Apr 2025 18:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GLIuSvsp"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7788B21D3E6
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 18:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744828191; cv=none; b=MiCdcFlU0fVSy1v+Xpu9EYr6DHJgFKmfeyQB6OfH0alsf/zHbzqKMJsxou2iRqQ1SFi85dALVYi6BSxY0fd15IySAkoLLP75xGerjUb0OVKNvM5tfm1U9WUmNyJ9Lc43soe/C2S3dTEGMSCYwyPawevtzYyBPOYNK1PZzWPpXm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744828191; c=relaxed/simple;
	bh=7izFUHwou8CGTKQBC+Pj5lbCiJDPpF4vHPruu69zHJQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hKvNsxup2DTOrChMKEUPuAekkISEQBvcKkOMd+u8ETitJ1ZCVml7lJ4uuVSm+O2TWfJihGX9sMGLrOWqmosbPv3momVq7S2UkkUzg99X+BsAts0tbLc1HHvFfxgqNJC4oX8rC/R8V/EkgN94TQUTWPaLor4Ia+ukHNANDimfz38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GLIuSvsp; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744828188;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bwx5WjZbeRXciIDl7fHepP+WhVSAom/fNWecyvJ7Kms=;
	b=GLIuSvsp1trp0B5lWVIZaq1OlTEI8CP4LrtmRp2DCn07bejcbm9Hf3SbqJgj15tw3Vka0O
	h9zXkGd84wdIV190rn+SopqxxB8MnGu8ELGrfN698FaWsGR7/4NRAGD8/nwznGUEI0DMxZ
	x9vxyCoGfT0TyeWSw1cvG4F7ymeFdR0=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-602-AXokHgSSNzOmiIkAQF3prQ-1; Wed, 16 Apr 2025 14:29:46 -0400
X-MC-Unique: AXokHgSSNzOmiIkAQF3prQ-1
X-Mimecast-MFC-AGG-ID: AXokHgSSNzOmiIkAQF3prQ_1744828186
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-5f4c30f881fso704104a12.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744828185; x=1745432985;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bwx5WjZbeRXciIDl7fHepP+WhVSAom/fNWecyvJ7Kms=;
        b=RcuQXRnA2fdm/8xWblCGPBRhWW5p5crKHeiCBstjEDG1yshLxOQMjUVLKz3xHx8ZTi
         ptS4a0ubDZJwE5lV7N0wD8ezxuOjKcQPWyIWiVPgP9ZVTrCYhDNVkDog819BEbhvQsKz
         tx+KrI4kDXQAPGvk6hwKtHooGcacsqgcMQQJXdejJZlYvt0x0tEWzp87TvW9NEko+Gcn
         N55ghHIdfbBLxlfkPZjdc4+uclb6ji1WfP64iy/rEnsjg2MorQHVqRRS4NAI9UckxIjD
         jI5UoG3SJ66vMkuFlOr9+C3IvRE2yzEwdJYkeuCYmgL3KR7CwOPubJ5VTLrunialg/Uc
         GSrA==
X-Forwarded-Encrypted: i=1; AJvYcCWRrD0e6bRLipd+YSB8CLrcBmPTAm9O34g2Yf7ehkIiyvqrMgAXMj2JxEa6EtypJufaIIRwcQrfZr+g@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6wfMBBitVAeMVrrVXgMza2ocO80QC7bymRWY6C1v0WbUANh/b
	1D9Aquoqn0BG7QenrCqjUII0rskSmM1hGn9cnKAqeS5N60+IFaTvLq26dKagUHxc7Zly4Y1kvo/
	S/8yv48HqLo83I14kr5zLmowPovuie8k62mZqec4DjonTZDn8AxYZfsVTVgxnKlF2dUUWoHFc6X
	GHTFH6IrAThhd0sG3VhvoEB/5WUP3RQDdjcg==
X-Gm-Gg: ASbGnctnGSmKl2E4ZNyNonNubtVWV3HlzX550zGECOkTBKbEx4/GM2e5BX26MiFRYZE
	WurbVEiVlTknGKz9S1A8LQGEYA3GE8QADJImjyligB+aOvpBR/tTjKQKZSgTUWNsZBn23LI3EVh
	WVKJXh+7+TtL9CYrOyQk+PV0I=
X-Received: by 2002:a05:6402:3512:b0:5ec:96a6:e1cd with SMTP id 4fb4d7f45d1cf-5f4b71ea271mr2425972a12.2.1744828185633;
        Wed, 16 Apr 2025 11:29:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGF/O1rE4UuagKpLxQYRmJg58OWmw/yYHcF3mGNfOJqHYqMB1tcEn3p6wwEn2otzHPid/a/IRWXPHhHp9kWxYU=
X-Received: by 2002:a05:6402:3512:b0:5ec:96a6:e1cd with SMTP id
 4fb4d7f45d1cf-5f4b71ea271mr2425953a12.2.1744828185248; Wed, 16 Apr 2025
 11:29:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416162144.670760-1-ivecera@redhat.com> <20250416162144.670760-3-ivecera@redhat.com>
 <174482532098.3485034.14305412993449574460.robh@kernel.org>
In-Reply-To: <174482532098.3485034.14305412993449574460.robh@kernel.org>
From: Ivan Vecera <ivecera@redhat.com>
Date: Wed, 16 Apr 2025 20:29:33 +0200
X-Gm-Features: ATxdqUFxjsZ_qFD__UPQiAZpI42mRoG1aY9Q_T20uCxi5IG-wqWWDZ5JjJEfrNM
Message-ID: <CAAVpwAurYhW1Eyw7C_gPY0cTrQJrw7o_FL3-npLdWsxE=FGXkg@mail.gmail.com>
Subject: Re: [PATCH v3 net-next 2/8] dt-bindings: dpll: Add support for
 Microchip Azurite chip family
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, netdev@vger.kernel.org, 
	Prathosh Satish <Prathosh.Satish@microchip.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
	Kees Cook <kees@kernel.org>, Michal Schmidt <mschmidt@redhat.com>, 
	Conor Dooley <conor+dt@kernel.org>, Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
	linux-hardening@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>, 
	Jiri Pirko <jiri@resnulli.us>, Andy Shevchenko <andy@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 16, 2025 at 7:42=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Wed, 16 Apr 2025 18:21:38 +0200, Ivan Vecera wrote:
> > Add DT bindings for Microchip Azurite DPLL chip family. These chips
> > provides up to 5 independent DPLL channels, 10 differential or
> > single-ended inputs and 10 differential or 20 single-ended outputs.
> > It can be connected via I2C or SPI busses.
> >
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> > v1->v3:
> > * single file for both i2c & spi
> > * 5 compatibles for all supported chips from the family
> > ---
> >  .../bindings/dpll/microchip,zl30731.yaml      | 115 ++++++++++++++++++
> >  1 file changed, 115 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/dpll/microchip,zl=
30731.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
pll/microchip,zl30731.yaml: $id: Cannot determine base path from $id, relat=
ive path/filename doesn't match actual path or filename
>          $id: http://devicetree.org/schemas/dpll/microchip,zl3073x.yaml

Oops, my bad... I forgot to update $id after rename of the file...
Will fix.

Thanks,
Ivan


