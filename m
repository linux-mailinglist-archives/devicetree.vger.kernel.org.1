Return-Path: <devicetree+bounces-247258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E563CC6594
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:17:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7FB4B30194C4
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5E831D63F5;
	Wed, 17 Dec 2025 07:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WT50kQCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324E2155C97
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765955857; cv=none; b=qRZ94L5Z/KCNkBm+2IiGvKymjNI182JMYCNmJxHrcA6db9CTaxmWE1RF9ms6elZQVQ4VBCfks5injuF8WoN8ZxR4ur4YU9rIlZHlmjvrvFNPqpOY4GlgjlZp4quL/grVuthz3Y+N+HBJ6fdT2i1CUlbcQzUByY0eFyDErJ/92Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765955857; c=relaxed/simple;
	bh=sGSFw6wrWWy3/bnR6CFHivvMHCvhSF4J7Dxsir/YNYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VvJ+yTX8pCZswuS5RPhWmGHO+awc/FyhbGGP9Avzo+rRTNjcNTKMRmvX75emOAu/w8m/f0sTyafJDJa4BkCp46lHrlh9Pa+BCC5zhBHLfYF7G04If4gy6NxGqISg6GzVYrq61Tv4Zx9C7ehdjCMVx7I3NvWJJkssQVlmkMwbKqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WT50kQCW; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6495c4577adso7556445a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 23:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765955854; x=1766560654; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7pH+BlCZQbXYqO+26tPiDrGWno89MfVLt4htiZPlW28=;
        b=WT50kQCWMvIAOw8CKKcSaeCLqhwpnCUcxtzS3dcplEoDPxrHtObSr4La2nBgoDS9q4
         InvogjO/7sirxACR4fxEBfb67Rrv/EtLw1vyiWspRm9gzm8PQQDxMjxlFTpgmV+I/u/t
         ug0W1V2cReq9w1j5gKX1Qicm7i+QoQXJyRR0notA4CYuawTyYdtC/6ZnOthr5udmFb/C
         i5kuB1g06ZmeM1YLrhtS/Rg3HzE2VeLhokw3f00Ee5fUk2RRrlvG/gANwefeo8NY+9GX
         BnOLgifqH8agkYmSHEyAp4yxdbPlD+0dwqJRuXlhov06wEvm5YRfW8jBii7d/sZ3vU6n
         JK3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765955854; x=1766560654;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7pH+BlCZQbXYqO+26tPiDrGWno89MfVLt4htiZPlW28=;
        b=eE159PVbsPXYnLqiANGLtkBUCs9w7u2PIHxKluGgl/v/0i+V+uS1nnCMjBp4LViVpF
         wRFLEb2pl8g2e2QrlV5NrB2ECrdm5QLeSyB+ACyydPtIBN+ZObtw08CQvWdLnLe6cQ3t
         a9Tc6KjECC4K1Cmem0fd5UCEGXF3hghpyPtYz0PBmGnHIHP4GMlXrWetz2VMWVAEZwIo
         fpsMxf+sRVSJeGgxt7Qq3BAYESfcZCCOihe1HHcV2kA1NSaSUgUH3qMmzTiHpbRlioKw
         PSsQdtKEW4MteWGivGCpEqI3UjLBTnDf05cOWBIwjKVMvY5kyUKfm5CdB16Bd9f+0Z0X
         AmrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjhKV2+2+8oudZXwrElmN2UJojSCnI0zxDwYRU3Ezw//gFvjEXG67rvh8FQCEV1s2bx+S3sguQ0N84@vger.kernel.org
X-Gm-Message-State: AOJu0YyPGdGacjeMcs1fbFzp1uTOIh7hiOm959L67TEne6XW+wdwyhfg
	geDrKISfQoku8ZHCvzGvv9b/5VtM+IVrYlybMKN4hd9/z5qE5/AXMRlKTUr1xw6Uuf1rwd1cX56
	kmNyryQ2xKcFenftQHKaFN5QKVOY45go=
X-Gm-Gg: AY/fxX7pT1f4K6xcqxnSt17iXeqGEVQpEX6b8Rud6uKsz+QveAWsWudiSLh6B6eSS1F
	skSGT9ZGaElVBqAL9t32+YtnfzxJZjCJDnlUFwtVDqZTLSMI4R0lQRCnqAzd3qWYGoF303Yc50j
	Ky5FvrlWmqYm2uP/opuOLq369qDu4W8i8aoczT0gSFsudFtBjwakEItWsia+Q76sodBap1clnVQ
	c6SBrEucHLbjdlMtRxZg2SGJSUHMg+f97qv0M0wp9B/m4+5KPUuHg802Y0Gew948BOtnVDPCw==
X-Google-Smtp-Source: AGHT+IHtoWqu9KIpjpAGTsT8eSeVzj6hClh0q487/PK/po+pRqU5dVKydRl7jwtPeUieGqGoWu0p2H4MVgHYuv7iX3g=
X-Received: by 2002:a17:906:9f88:b0:b76:f090:768c with SMTP id
 a640c23a62f3a-b7d23c19ce3mr1788182266b.30.1765955854222; Tue, 16 Dec 2025
 23:17:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765778124.git.zhoubinbin@loongson.cn> <db24b6366bb0d49e9dcc04328ffad7a37f687a89.1765778124.git.zhoubinbin@loongson.cn>
 <20251216161641.GA2573095-robh@kernel.org>
In-Reply-To: <20251216161641.GA2573095-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 17 Dec 2025 15:17:21 +0800
X-Gm-Features: AQt7F2qQrdS_pneRFz3w-uSIWdtleZiWhz-8aYHoPaaqOQqdhxOueQMyYHD3klo
Message-ID: <CAMpQs4KUze8TPXV0Lmk8fP9cc0s4PsJY9bU9YrF-_kWJ8dtBog@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: interrupt-controller: loongson,pch-pic:
 Change to unevaluatedProperties
To: Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Yao Zi <me@ziyao.cc>, 
	Huacai Chen <chenhuacai@loongson.cn>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob:

Thanks for your review.

On Wed, Dec 17, 2025 at 12:16=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Tue, Dec 16, 2025 at 03:55:13PM +0800, Binbin Zhou wrote:
> > Change additionalProperties to unevaluatedProperties because it refs to
> > interrupt-controller.yaml.
> >
> > Fix below CHECK_DTBS warnings:
> > arch/loongarch/boot/dts/loongson-2k2000-ref.dtb: interrupt-controller@1=
0000000 (loongson,pch-pic-1.0): '#address-cells' does not match any of the =
regexes: '^pinctrl-[0-9]+$'
> >         from schema $id: http://devicetree.org/schemas/interrupt-contro=
ller/loongson,pch-pic.yaml
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../bindings/interrupt-controller/loongson,pch-pic.yaml      | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/loo=
ngson,pch-pic.yaml b/Documentation/devicetree/bindings/interrupt-controller=
/loongson,pch-pic.yaml
> > index b7bc5cb1dff2..1f818316082e 100644
> > --- a/Documentation/devicetree/bindings/interrupt-controller/loongson,p=
ch-pic.yaml
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/loongson,p=
ch-pic.yaml
> > @@ -14,6 +14,9 @@ description:
> >    transforming interrupts from on-chip devices into HyperTransport vec=
torized
> >    interrupts.
> >
> > +allOf:
> > +  - $ref: /schemas/interrupt-controller.yaml#
>
> Adding this does not define the value(s) #address-cells must be. I'd
> assume it is 0 in this case.

Indeed, interrupt-controller.yaml only defines #address-cells, and
does not specify values. But the addition of interrupt-controller.yaml
is still necessary, besides that, I would add the following:

@@ -37,12 +37,16 @@ properties:
   '#interrupt-cells':
     const: 2

+  '#address-cells':
+    const: 0
+
 required:
   - compatible
   - reg
   - loongson,pic-base-vec
   - interrupt-controller
   - '#interrupt-cells'
+  - '#address-cells'

 unevaluatedProperties: false

>
> > +
> >  properties:
> >    compatible:
> >      const: loongson,pch-pic-1.0
> > @@ -41,7 +44,7 @@ required:
> >    - interrupt-controller
> >    - '#interrupt-cells'
> >
> > -additionalProperties: false
> > +unevaluatedProperties: false
> >
> >  examples:
> >    - |
> > --
> > 2.47.3
> >

--=20
Thanks.
Binbin

