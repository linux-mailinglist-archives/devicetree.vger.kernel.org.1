Return-Path: <devicetree+bounces-171751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCA5AA0177
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 06:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE40B1B60DC7
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 04:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B97826FDA7;
	Tue, 29 Apr 2025 04:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="b5Myyv2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE34D2AE96
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 04:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745902649; cv=none; b=oB1L3935J+lrAN9OKThKVnvNSsFxCGkDowwhK7l+KrKaDfZZR+yoQxM6uYfToOyWcdduMJPrJJK+jfnJZfaGQvLJJRqHMjLgx0cjDBDwlTFUVf3xvI4NRVkOBMw7uxlzYOBnijtzUakf6QeDDZy5ObVhYdIU5pQnM1OFDD2uZj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745902649; c=relaxed/simple;
	bh=m6FGyiZkHMC+2yp8IbiBo7CjuQ9bcjs1Mm4nlu4EBhw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QCPbb41Fc3vQEAFUOMJJ5mPDGDhDrGkly2ZrIs5lxesUpCje+VqKfbmx8ruc1fVaD1Dyga8x9dOnKkkZjvMZWKEGUc8BAeOB2A2Y/MYksp5M29Ut0nO9FAHc9Bnke8PKye4aqJsgcXdb6avQVzNbsmVgBM0O51wf7/wcb1/QlGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=b5Myyv2b; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72bc3987a05so3213327a34.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745902647; x=1746507447; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxJjPKSvLNuwm8T8yyYWoXIiPFioN2J33NfgaoCKRgA=;
        b=b5Myyv2bVlHfQWpWI2rdYfx4K0qmOn/acjSe2C15k2s0+XT55KaN+c9aeebrJIFhe7
         2gxaxfslfagTFK8b7trQS7JngAF9R5r1/oDQeM4pyu/KOitPKh10GVFO5o4pivw4m7gO
         KIHAbusO6EObS+CAhbE3J7RKzPAOmAcbzZ/aU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745902647; x=1746507447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxJjPKSvLNuwm8T8yyYWoXIiPFioN2J33NfgaoCKRgA=;
        b=bRrLCSC6M+zVrMPEDRyEVQ7yHLNfn8HEeVdLnw7fOHZ0NxkzYPI7WhyxCb28EdBgK2
         EprF0HPhCM1wtgqufbqemLGuNhZ9F7aGUnC1TOUAu5XDM40H7PjRfVoDaX6y5t/wDB0A
         EychhXOGf43gQNYsovrRMRHid36PDqndKaRoZs6xmchbkelqTGessZ1MiYqf1gIhqDEz
         9YbyBESQY7Qo00gN34MMg8106eU/tXnSGdgkn49Y4ZEwsPd1l5F+XeT0MArPXa9epSbi
         PpdPYDbu5iqQMpz4PWW0RbmD2GQV3O4ZZpipTqfYwP0RF40x/a7lMhO74scEDJB7diiv
         AxyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTSCMeHj/lvVVAhKJYpiGiBj2BvO5PIQibBTCzCKZrpByWGZrlkdlICT/IDsJ/V6sZ41x1LRNoqLb3@vger.kernel.org
X-Gm-Message-State: AOJu0YxSSGBJOculZM2TwnMLNL/B2P0KgNClEA4xa/5uoSTZScvrc4+U
	VSEs/MZ+kYe5aF9wjTzQTbDmCKIpy/7c3HkqvcHyUFcauGtyZs3JFbmtaUxWJ7wk6W46OrxUwZr
	Bs+qOULpMjHdK6Jm9/S8uSchYQZ3gXj/OpKjm
X-Gm-Gg: ASbGnctXPQuzq6UyLX7duQBULUX82h8twnQ+Y+ywwweeD6lnhOV544L6MJMOIlLPmpr
	w8MmweezIUxUZ2cekSMi1iXuIKDqal4g0zZSW8jns1ckfAnqcwwIg3GzG4tOSvkMDMkHfHWgiVg
	YVUx8twowkMQoGRsJcrCURb4bHeZ/PcuoL/VrA1z+07Cd8/Ut/BB9g5RrC8J4O
X-Google-Smtp-Source: AGHT+IFUnSYiQTmvsck+KUotDYKkwXPoTLcg5O5KAVTySG21gdvW1WNGApyRqouuC1eL9JpZ/kRdvGBU+Ln7X1cOHQg=
X-Received: by 2002:a05:6830:40c6:b0:72b:77c0:7d7c with SMTP id
 46e09a7af769-730898e1330mr850088a34.6.1745902646915; Mon, 28 Apr 2025
 21:57:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250422082957.2058229-1-treapking@chromium.org>
 <20250422082957.2058229-4-treapking@chromium.org> <CAE-0n52cwBxJ3gYzSi1+nNcRRSgbMToYBFLJwdVWSMOxBmUN1A@mail.gmail.com>
In-Reply-To: <CAE-0n52cwBxJ3gYzSi1+nNcRRSgbMToYBFLJwdVWSMOxBmUN1A@mail.gmail.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Tue, 29 Apr 2025 12:57:16 +0800
X-Gm-Features: ATxdqUGMZR39bp0SrXhteoiQw82MbBr2R1yiXPTsRp7MUnVxU0r-Nptpe6H-Yy0
Message-ID: <CAEXTbpfb6KOqrU0oAvbzV76Wj_YORsjcukBVZx-d2evYtmwshg@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: usb: realtek,rts5411: Adapt usb-hub.yaml
To: Stephen Boyd <swboyd@chromium.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Matthias Kaehlcke <mka@chromium.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

On Tue, Apr 29, 2025 at 7:46=E2=80=AFAM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> Quoting Pin-yen Lin (2025-04-22 01:28:29)
> > diff --git a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml=
 b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> > index 6577a61cc07531..a020afaf2d6e7a 100644
> > --- a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> > +++ b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> > @@ -10,7 +10,7 @@ maintainers:
> >    - Matthias Kaehlcke <mka@chromium.org>
> >
> >  allOf:
> > -  - $ref: usb-device.yaml#
> > +  - $ref: usb-hub.yaml#
> >
> >  properties:
> >    compatible:
> > @@ -19,61 +19,35 @@ properties:
> [...]
> >
> > -      port@4:
> > -        $ref: /schemas/graph.yaml#/properties/port
> > -        description:
> > -          4th downstream facing USB port
> > -
> > -patternProperties:
> > -  '^.*@[1-4]$':
> > -    description: The hard wired USB devices
> > -    type: object
> > -    $ref: /schemas/usb/usb-device.yaml
> > -    additionalProperties: true
> > +additionalProperties:
> > +  properties:
> > +    reg:
> > +      minimum: 1
> > +      maximum: 4
>
> Is this limiting the 'reg' property of the hub node and not the child
> usb-device nodes?

Yes, but the regex pattern of patternProperties restricts the
downstream device nodes to '^.*@[1-4]$'. So the 'reg's of the child
usb-device nodes are also checked.
>
> >
> >  required:
> >    - peer-hub
> >    - compatible
> >    - reg
>
> Can 'reg' be dropped because usb-hub.yaml requires it?

I can drop 'reg' and 'compatible' in the next version, but I see other
schemas referencing usb-device.yaml still set 'reg' as required. Is
this some kind of convention, or people just didn't notice this?

Or maybe I shouldn't mark 'compatible' as requried in usb-hub.yaml to
make it more generic.

Regards,
Pin-yen

