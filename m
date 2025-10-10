Return-Path: <devicetree+bounces-225262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A152BCBFE6
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 89F664EF77E
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 07:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E906275AF5;
	Fri, 10 Oct 2025 07:55:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2353274FF5
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760082929; cv=none; b=jvFgXwo4RvDO3XDRVO1zQeWD8PmRY/0umhvr+wG5rfeAHV7kxDegVRrxh+H/TKB14IAiXYX4GAPKDBMftFPSpkuKUTmALTLG8DXJYFNTeo7jOKZTqXdz16EdZIj/e9iP9rWMei2JR0Zez3sp7XKAygyWGMUlkTSOMnanB9s24KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760082929; c=relaxed/simple;
	bh=GyMrdUSzxTxaoShfISf9Kv4vkeRyaQViM9pgJ0KDv+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E3dHsSaM1hMIAyyrGQFSP/ZPslFjqNVUKNMPODfdzQ7g5D2hqX+PjajYbTVYNgWWb2dL6ehLFFfsmOjscaNKsqeuY3uRC9VlP9ucw87tO4obn1aItQcntcGFgwWtqHfNhw08cGWxCoNej++TUogCI8XW4hrbY3yrUmNhcxXnDfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-54b21395093so1249581e0c.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:55:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760082926; x=1760687726;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BSqWlPqtUKmbPUvFOiSDBYm62ZRg96NdFDUtSMt7Zrk=;
        b=d5ONXWjuNSg13d4KX0BZRmeAnWq3RWW+E+VG93eYRw756bkTUzEEXSLqiSpbCf1Fxr
         Qe9wHxqlFfCV/uqZSL2vHOQ8TiHjhb6VRBTOjvSg1jWjOIv34jTi04pyFmm0XjWLJ4YM
         nnWaKFCRgSvhKK4PzlT/q3olUqOKiSp7rAWpCT8lAkpGBIYE1/Zk/lUK9yMwBPsNSZa6
         QLm+GfE1h5/8BB06TRHLinIGuoWI7BNCJ/gS8OvpG7sMcZn4+0NLSQ/1WfZ6nIH6EigM
         1/o6hKxlPRVmg+mz18ubY9LoH7UyQZVrJBLttzY8b5V7cRvdZX7OucwSw/MWQHBazpQH
         MMog==
X-Forwarded-Encrypted: i=1; AJvYcCV+k0BXapKxnvS38RXk9ltIJKiD1mf8sR827bgbELnlp3RfdVM1myUpUbfdUHU8zHlKQzhUmaNFA1b7@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ48OqYYjk6D8hlZqtDYt9Y6vKt01I2F32NX2uHewMxLGZDeLH
	QRBw6/X/ugw95xFzvNLYtUSFMoMjnyzLQP29v6opFBySUK+u8VpBWyctPmvL6qbe
X-Gm-Gg: ASbGncsWihZ/NCa4arjXyCmVy8L0AnCqhZAthKEOrlO2Llpf/9SqF6KTPLbb9olayh6
	3ifb5hwzsH9nJWIUEohZmzU1r3gSm61kzwotxfc/evS0atsGBsSTs5GOGosy2gylTQM3d5npE5v
	OzNJfTw2774bJoXU0Ka+ccuCWcmPlpXgI054QsGDo3ahd6/T2oiwnxfyD0EGEy+FeeADhNHAPbf
	w1LZf+SweO6HjNuzwTsts517hn3oEj0ObZtYsWeuJiWZVkDdkcRE47QZAlei3wQfFXf04ALKpX+
	x+SeJniwMM51RH8LpMkMC+G2U8UPSReWRlUPgVRJ8yFbrx4B8V1Nrpjkeqt73AXjga3n1O3d/2h
	RzmFog5QLNX8DSZkHV9vgkl1e5jLyJpUChxF3ZTOhpoY0PUVJkl+GrfZKqqh2buZ+ATlTPiuMm+
	Go63UdsJbCmzj5MA==
X-Google-Smtp-Source: AGHT+IGvjZySEUmK/y9/SLFxoCXF3C2YXjxwre1t1kMXlpxZhL+Eg0XRigJlGY53JbKzh+uRKKZ9Tg==
X-Received: by 2002:a05:6122:3296:b0:541:80ff:31a5 with SMTP id 71dfb90a1353d-554b93b1b43mr4254955e0c.3.1760082926066;
        Fri, 10 Oct 2025 00:55:26 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d7ecf4a4sm543847e0c.3.2025.10.10.00.55.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 00:55:25 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5d5fbfca7e2so687441137.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:55:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX4xbTnGvGVriRyG2xBsLF6AXJ2xIemSF28MRyhOgOkJIpdOKlHgVfR8RD+SsPg2CmDVMa4FSKg650e@vger.kernel.org
X-Received: by 2002:a05:6102:2ac9:b0:4e5:8d09:7b12 with SMTP id
 ada2fe7eead31-5d5e2590490mr5331971137.7.1760082924542; Fri, 10 Oct 2025
 00:55:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006172119.2888-1-wsa+renesas@sang-engineering.com>
 <20251006172119.2888-2-wsa+renesas@sang-engineering.com> <20251009204726.GA3306624-robh@kernel.org>
In-Reply-To: <20251009204726.GA3306624-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 Oct 2025 09:55:11 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXc6pchOxRWu_ZKUhR9zLoojjckFPB-pdwmM6pnJj8Edg@mail.gmail.com>
X-Gm-Features: AS18NWBJ-7Zse1vXv3tpHpxjY70K6erRYutOhSP9XUIFow6FgrAIep1olb_lk3g
Message-ID: <CAMuHMdXc6pchOxRWu_ZKUhR9zLoojjckFPB-pdwmM6pnJj8Edg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: iio: accel: adxl345: document second interrupt
To: Rob Herring <robh@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-renesas-soc@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Thu, 9 Oct 2025 at 23:22, Rob Herring <robh@kernel.org> wrote:
> On Mon, Oct 06, 2025 at 07:21:17PM +0200, Wolfram Sang wrote:
> > The pinout of all the supported chips in this binding have two interrupt
> > pins. Document the second one, too, even though the Linux driver
> > currently does not support the second interrupt. Boards may have it
> > wired nonetheless.
> >
> > Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > ---
> >
> > Passes dt_binding_check. But uncovers another issue. See coverletter.
> >
> >  .../bindings/iio/accel/adi,adxl345.yaml          | 16 +++++++++++-----
> >  1 file changed, 11 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
> > index a23a626bfab6..806b0250ec07 100644
> > --- a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
> > +++ b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
> > @@ -35,11 +35,16 @@ properties:
> >    spi-3wire: true
> >
> >    interrupts:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 2
> >
> >    interrupt-names:
> > -    items:
> > -      - enum: [INT1, INT2]
> > +    oneOf:
> > +      - items:
> > +          - enum: [INT1, INT2]
> > +      - items:
> > +          - const: INT1
> > +          - const: INT2
>
> This is better written as:
>
> minItems: 1
> items:
>   - enum: [INT1, INT2]
>   - const: INT2
>
> It is mainly better because using 'oneOf' results in poor error
> messages.

For those that missed the other email, where you explained about
listing strings like "INT2" twice:

    "That's because we require strings to be unique entries".

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

