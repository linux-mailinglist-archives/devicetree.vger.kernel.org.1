Return-Path: <devicetree+bounces-44428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D112485E2DD
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 17:17:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D27F2868EE
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB65481759;
	Wed, 21 Feb 2024 16:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ay5AXwqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B7681725
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 16:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708532225; cv=none; b=fQEaUlgXXfYLbgLjKegwoRT7+tUpMwPtAx+V3JfMy3ZpcemQqXGNG3ObdYt9ylRdXKP8CqIexO5hh953DsE4k2guXhhUZ1YZ41E9kCINwSJfR20t/KRPKMHO8dPxtfHwgj2SNRBknsoLabSbnPFAWDPrDz5BJr9gXcsnDEBv9UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708532225; c=relaxed/simple;
	bh=WRewCTUMFvJojccCXJQHDaJg3H2bAUHoIWqDu+A/JqA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qzxgEQUY9rk8Wt+UHKtYl9H1xabxGmhHo8oYQ1IVVyVW4o0scT2t4e+9qK12OUWD0l159p1y9Izb7WT1Sg2AeAIzDB4ECScpd7cU9vFq56wIBxeHYrUf53UDk9Ftflh8qqIri0Vc/B5nVAVULzo6Uv1OX8lAtFOrSlqbfRLSXuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ay5AXwqH; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7c72294e3d1so260069539f.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708532222; x=1709137022; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVAwH35/MlacXlWKifCgH1KdwHWqIayMmoX/ai0O0Uo=;
        b=ay5AXwqHgzYpgLRjYO+ViPgWbZXDRJXitEiH8zMOdKGkcW9S3cizNhfqh34/aTCQB2
         mxgANz8FIhECbB3IL/N2CwBR5ZjchGk4ZwSMkXYAipovGbjXvqb24aFbclTkf6s9nQTH
         fnuQdh3IWA+N7xB4/brF078n0ORO2iEuNDdlb9eh0bQo2g6Ur7z1zImmWnNDY/Pwcv/V
         uV5UpHs5Uyq2sc8GN7Kvluz2LWP/Frp33B3FbK4HzZkRmfzqSN2pcVqBu5U828bTQi/T
         NLDDnt2tqtGBBaZQjlKHh08lak4U+/eCfBNlxxkHN+OjPU5Gy4lL58vroZ+GX/7vlWOV
         tVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708532222; x=1709137022;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVAwH35/MlacXlWKifCgH1KdwHWqIayMmoX/ai0O0Uo=;
        b=oMwqGJD/2ALWzycYO+vw0uneJSYE5WkWwYMq//OU5PRn1xEvH6E3IVS2myVYoSbjoA
         RjF+mthqRQmx5HpPYwM1JlIzBZG/EsBmWmVElu35gNZNjN2z/RHXm854BsygpdhydPPC
         Rul6BQESk1DpCpe7BWBg3w6SV34wZySW7j3vo0cLL8Zwe2o4WWuHXvYnVjKaGu0q/4QQ
         xVVkELMuxsdaqSxPUcYgm8Huj1qsfaXSQLHvnq3l9Su/du9ST8+wTx2pdzc8DAVIxs1b
         pKobBfq/bZYqRnE9k3XRKtX1Ub9eZ5gF9yNYwfERqu1PUof4EBQqu7mruPchwRblOoWq
         BbFw==
X-Forwarded-Encrypted: i=1; AJvYcCVHafZ1bJTAJDat4cq9DX+d0c8R4SYrkmgd0iq2kO4w7IW5GQT7i0FB4A6DUIpjVZnyainNewXEPSS6yOsdMvEhPojnITL5cIAqHw==
X-Gm-Message-State: AOJu0Yxrqo6Xz4mjWN1gxQhNslpD/M4M9Q0g+M1E77KvI7nzJS5Eo1tP
	vwZAg9oN46fQzGWufsvq4RwY3fJre6ojsCAMr2mlVGDVK3ieLnV1KKQ6wZTTdxiDNeqYkTBvJhs
	dsCtvluggRu2opXmt3DpEhj/uxMmX9xZnT3cXxrwIpDT131XVcYVm0Is=
X-Google-Smtp-Source: AGHT+IGKtzqWfqGsQxp2PAZXjjjL1F5fGxrtKTKiLrxLV9Vn49jWwfGTnaRMgOOBP2ZDNbAnqBAuR5kT7Bu5a0qC/eo=
X-Received: by 2002:a5e:d504:0:b0:7c7:5ebf:d021 with SMTP id
 e4-20020a5ed504000000b007c75ebfd021mr6663294iom.8.1708532222178; Wed, 21 Feb
 2024 08:17:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240212131323.2162161-1-panikiel@google.com> <20240212131323.2162161-8-panikiel@google.com>
 <20240215-supervise-concerned-55a18554a120@spud>
In-Reply-To: <20240215-supervise-concerned-55a18554a120@spud>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Wed, 21 Feb 2024 17:16:51 +0100
Message-ID: <CAM5zL5pL5qduQvs1FPf5pg1z5BBLjKk4Ads0E1vF=j=wSx-ddQ@mail.gmail.com>
Subject: Re: [PATCH 7/9] media: dt-bindings: Add Chameleon v3 framebuffer
To: Conor Dooley <conor@kernel.org>
Cc: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, chromeos-krk-upstreaming@google.com, 
	ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 15, 2024 at 6:29=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Feb 12, 2024 at 01:13:21PM +0000, Pawe=C5=82 Anikiel wrote:
> > The Chameleon v3 uses the framebuffer IP core to take the video signal
> > from different sources and directly write frames into memory.
> >
> > Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
> > ---
> >  .../bindings/media/google,chv3-fb.yaml        | 77 +++++++++++++++++++
> >  1 file changed, 77 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/google,chv3=
-fb.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/google,chv3-fb.yam=
l b/Documentation/devicetree/bindings/media/google,chv3-fb.yaml
> > new file mode 100644
> > index 000000000000..ba6643cc7232
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/google,chv3-fb.yaml
> > @@ -0,0 +1,77 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/google,chv3-fb.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Chameleon v3 video framebuffer
> > +
> > +maintainers:
> > +  - Pawe=C5=82 Anikiel <panikiel@google.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: google,chv3-fb
> > +
> > +  reg:
> > +    items:
> > +      - description: core registers
> > +      - description: irq registers
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  google,legacy-format:
> > +    type: boolean
> > +    description: The incoming video stream is in 32-bit padded mode.
> > +
> > +  google,no-endpoint:
> > +    type: boolean
> > +    description:
> > +      The framebuffer isn't connected to a controllable endpoint.
> > +      The video interface still works, but EDID control is unavailable
> > +      and DV timing information only reports the active video width/he=
ight.
>
> Why does this need a dedicated property? Is it not sufficient to check
> that there are no endpoints in the devicetree?

Yes, I think it is sufficient. I removed the property and added a
check in the driver in v2.

