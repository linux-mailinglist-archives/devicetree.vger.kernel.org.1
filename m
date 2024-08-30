Return-Path: <devicetree+bounces-98312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3E4965A9B
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C9B0282283
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D5D16DC27;
	Fri, 30 Aug 2024 08:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IqyVOyCA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED9A16D9C0
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725007367; cv=none; b=WhFKDLJtspX4xlI7BeXt2iN8phFdqrXTaSZxosO3yHtV6pJbyWfLf+QPnTKnYvGhGQBk57CqnB8QCoCTLd71fZd71fgrE0Wi/rR0AKSztZ6Mzp+vtrM4cSIU5GuP1DRxuIRVhKDEZgUOh0r0Lsnj183BMTsniYJOISeIWLuAkZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725007367; c=relaxed/simple;
	bh=3HZp0lzLztTvVH8SqxLgBJ8KySpa1DaNcgUQkAFt00k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GkmOb8HfWu9byg5nIApc79yBFMY7AtcdHXOVC2Yf0O1+a3yHaxOQra0uHga5SRXB6qxdiO3Ivokkkqd475bAGoPg9CGHJonsx7m4NCVnuLPOQNjm9NoKxRaJfk9xlJXyOStzZz3a3O6Af0l5lPic6f/fE3MH2d3cE5BVJGzPfW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IqyVOyCA; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5dccc6cdc96so963837eaf.0
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725007364; x=1725612164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hFoJ8uGU6Wt+2B+a3U8PT9o5qr4L6h8Nf/lLSdsGyCQ=;
        b=IqyVOyCAFA3zEgqjMLKlw3dt2A9ExgUu8lqdrp4x+OEnmbhAMHgWVDsHugaHIIrrvJ
         Mj2RrlY/kSOSN+4eXTNb9bB2B0FQ1127x2L4M25lNBmaSklo4zk36dCXOAj56nF4KjVz
         xteAzXHjy6kVAdRkgSshOMAQtDMSs4fwE5B/+mAMsrB3opLAyoEK7BwWiuBNZYyj7CHX
         1wzuwUMs0hP2LBgMsYiCx0mLaE0NpGJByOINsjvWtFkFOyjhDDqXhabMKTDdRe301CC5
         qEakr/W0058gHbvATJQMpAvwnrzPoIu8NT11VE6wGxg7jErQ++Fr5NHuc+uEhLAJU85f
         c6cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007364; x=1725612164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFoJ8uGU6Wt+2B+a3U8PT9o5qr4L6h8Nf/lLSdsGyCQ=;
        b=OnoQKNr307DSCcOZziJunJc/DJSV1ZNJasBa1Sm0T8H8jkpWOFw3GXxMKP02TOQhpq
         AhYvGpOwg5S1BpiCr6ZQJsQhOBYD1jGv9c2jHbppxH2Z61utYaLN2NidX0ulUbCBlvhE
         d+VNnHJZ9NU3pPMi7aubOvkTSdr8dAaYnD07FxcY3/+zJn3Hb2/RFY0KXAqWMFp5A1QZ
         8E1Iwlc0w4CPPqAKNuubZiR8kHSzcZdM6SHoqZZF6ZRohi31P9M9lbIv6RLfVqaliia+
         wyqGYEEnRigdCJb0NB12c09EoTKXPu3OCOP7jm+ZDVBH4xGU2/Gr5rafhZagaKiU2CUN
         rp4w==
X-Forwarded-Encrypted: i=1; AJvYcCX1pLSlcgxXteuZmCmj8o+YR8h2Bgk5peaRj6m+XAK/0whCsyhLsioN0nMI8w0SNU4djP0ZAiF+sXfE@vger.kernel.org
X-Gm-Message-State: AOJu0YyCTxzzjOGMi+tdNPXJvjp9IjWaSol0rDDSJJ21HxoEfzXZw19h
	dPT8vqqIRz/P6AT22CPtGZ3tRUxM5SZKMUaTglw+a4Y5GcAQpc8fDt1g61KuEjh1Uhdxw0pjAvd
	HG/phLVEIxzTLAavwXNZoEbk+niUeBSrFzhzoBA==
X-Google-Smtp-Source: AGHT+IHBEq2kXBcob7OwHZwxMgPl68xRTiaqYdA20dFyB6L5ns13TYFSRrWJQJLVdlnc+h48Q+Hs/qXBirYHpgAHAeU=
X-Received: by 2002:a05:6820:2216:b0:5d6:ae6:a852 with SMTP id
 006d021491bc7-5dfacf28289mr1998086eaf.6.1725007364035; Fri, 30 Aug 2024
 01:42:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-4-jens.wiklander@linaro.org> <3bqb6mktkvbdl6h4eekad4mpjhyvzx7mjidhnanboygbwu2asz@6ros56bp6isd>
In-Reply-To: <3bqb6mktkvbdl6h4eekad4mpjhyvzx7mjidhnanboygbwu2asz@6ros56bp6isd>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 30 Aug 2024 10:42:32 +0200
Message-ID: <CAHUa44Fd-Eo5-CUfxDgCFpRVbJP0gzA7LX_-5=cBfBd8NxhpDw@mail.gmail.com>
Subject: Re: [RFC PATCH 3/4] dt-bindings: reserved-memory: add linaro,restricted-heap
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 30, 2024 at 10:20=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Fri, Aug 30, 2024 at 09:03:50AM +0200, Jens Wiklander wrote:
> > From: Olivier Masse <olivier.masse@nxp.com>
> >
> > DMABUF reserved memory definition for OP-TEE secure data path feature.
> >
> > Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
> > Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
> > ---
> >  .../linaro,restricted-heap.yaml               | 56 +++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/l=
inaro,restricted-heap.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/reserved-memory/linaro,r=
estricted-heap.yaml b/Documentation/devicetree/bindings/reserved-memory/lin=
aro,restricted-heap.yaml
> > new file mode 100644
> > index 000000000000..0ab87cf02775
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reserved-memory/linaro,restrict=
ed-heap.yaml
> > @@ -0,0 +1,56 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/reserved-memory/linaro,restricted-h=
eap.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Linaro Secure DMABUF Heap
> > +
> > +maintainers:
> > +  - Olivier Masse <olivier.masse@nxp.com>
> > +
> > +description:
> > +  Linaro OP-TEE firmware needs a reserved memory for the
> > +  Secure Data Path feature (aka SDP).
> > +  The purpose is to provide a restricted memory heap which allow
> > +  the normal world OS (REE) to allocate/free restricted buffers.
> > +  The TEE is reponsible for protecting the SDP memory buffers.
> > +  TEE Trusted Application can access restricted memory references
> > +  provided as parameters (DMABUF file descriptor).
>
> And what is the difference from regular reserved memory? Why it cannot
> be used?

Good question. I need a compatible =3D "linaro,restricted-heap" to find
it, but it appears that's permitted with regular reserved memory.
Let's drop this patch. Thanks for pointing me in the right direction.

>
> > +
> > +allOf:
> > +  - $ref: "reserved-memory.yaml"
>
> It does not look like you tested the bindings, at least after quick
> look. Please run  (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.

You're right, sorry.

>
> > +
> > +properties:
> > +  compatible:
> > +    const: linaro,restricted-heap
> > +
> > +  reg:
> > +    description:
> > +      Region of memory reserved for OP-TEE SDP feature
> > +
> > +  no-map:
> > +    $ref: /schemas/types.yaml#/definitions/flag
> > +    description:
> > +      Avoid creating a virtual mapping of the region as part of the OS=
'
> > +      standard mapping of system memory.
> > +
> > +unevaluatedProperties: false
>
> This goes after "required:" block.

OK

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - no-map
> > +
> > +examples:
> > +  - |
> > +  reserved-memory {
> > +    #address-cells =3D <2>;
> > +    #size-cells =3D <2>;
> > +
> > +    sdp@3e800000 {
> > +      compatible =3D "linaro,restricted-heap";
> > +      no-map;
> > +      reg =3D <0 0x3E800000 0 0x00400000>;
>
> lowercase hex
>

OK


Thanks,
Jens

> Best regards,
> Krzysztof
>

