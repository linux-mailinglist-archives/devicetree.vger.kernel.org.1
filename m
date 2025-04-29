Return-Path: <devicetree+bounces-171752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3A5AA017C
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 06:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59F481B61523
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 04:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F8102741A0;
	Tue, 29 Apr 2025 04:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="M8cC3Xge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F6A1B0435
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 04:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745902745; cv=none; b=b60K+wFXHfMP8OHKdyciZz8jZAudXip90Gb2FMvHVS5LxacGYkQyMQyc0AUYeAUtYeKYu53Vl5fKXI5zJVQeM9I3RtWAUoLQL5eQd4jmYXH3+Ffx9MzieNQ4+64NgZ4OR4Ly4WzX9xb4VfumiwfIjgI+nmdFLN9kjyQQTq1bEJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745902745; c=relaxed/simple;
	bh=r2egfHG/o9rywaGhXtRfH5/dNsnyX7ka9ebavZJ3r/4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dg3EFTH3acZ+Yf24NgvXO2m1HmNlZc38XVpyOxxi2xyWO/moEw2Tp9Y6Ni2aNkUorhc52E6yRpYxdLhR73hLeTe+/MH9JudrnIuj+pUmX98Z2OgIVPzeANK3ZcQ7C9sy0Gvcucmi6wtws1z8+md++K95awDvj7ngTd2a8DT7lLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=M8cC3Xge; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-72bc3987a05so3213860a34.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745902742; x=1746507542; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPFbqY4TtlTgd9PBnL1wwi2MkEi4cL7dCryLXZhxk3M=;
        b=M8cC3XgeaZM7FfUxf60NKn9KSOiTWHR6LR5MlYFmZuQM3a7daHl4SOvex+QCqzXdYI
         uK5/fCUIx0ppJq5CmPP4gekWZeX920MUhMcs8z1me6RqH1QOIO61L8D6L6lr6qIAa9jb
         HRoC4ySciciJ9hJ7BkuriWTeJ9wcfmKEgrV3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745902742; x=1746507542;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPFbqY4TtlTgd9PBnL1wwi2MkEi4cL7dCryLXZhxk3M=;
        b=J0BWuek7ImHmcgLKGdVB7oJKoxS1QM9VkVkfFQdp3ZmA+pe9VTav4WYlaEMM6nY0Mn
         dFJ9b4+YisIbfaMwX22KfRgc/mSDRBTQb7UsYulTqwIsOWHwq9weiqFlHfj96OA5+Y+k
         bUdGRdcf2iB6OlizghxJckulP7FDszksdzw3jagpR7S4jeGDbC26QHWWlFv15tJmzQ3M
         qmxYzwjmfgcSxLxfan7R5/te7kj6AfmqmjOVJxY2JqNdssGjg4VcoRPkw4Eei/O2faXv
         yILv1M4aTnMw5cEmXTyXYFcXocIbZT9Yuy/QWnX/21rdbxMq2Sz/eK6Yai0gZYo7GaOW
         /c+w==
X-Forwarded-Encrypted: i=1; AJvYcCXvaQb+vx1pfIw3XH9IRnMixtizHh0DnQ0XSOJ2FqQuw0zrBj0J8CA4C8ATw5FTyZBqwXxd1R4hXZSw@vger.kernel.org
X-Gm-Message-State: AOJu0YxABk15dKcC1JTAdo/uO/NEKz1WAOp3OBNfmc6RKIqyh+lfmr5r
	HizFRWPTtmc6kM90TEHvn5FzjAh15TTaC1L1TqET8YrMogHdJleb1SlaSiWWLMyupGpTxZysFxg
	b3nEeI7j4zW/A7pa5gGuEukLo2hkY3H2TLTP3
X-Gm-Gg: ASbGncudwY7jBxGougpMPZxJx9ux1E7DrITKqBtguS5ERzaxOWCaR71Mhlw3uNVQhvs
	IFTwtFqob+zCoYUWz80ZpxDUP4X09uW1lHprMq5+MsvlweR8vRiIBupDjfT23nF54b4oRr+Xhcb
	qyP9lq0HPUpn3pBjJHuVe9gNRApDsd2TSyY3hxFiIv0XGWkgxKSw==
X-Google-Smtp-Source: AGHT+IEHHOhL3uf7p8RmbeVh74rw6IIF5gobTHqSM4O2V55sbl8D98HXGWB0umdEIN3BCAoM+7xDnqorwRMdjaKu6+I=
X-Received: by 2002:a9d:7e8f:0:b0:72b:2513:ad54 with SMTP id
 46e09a7af769-730899335b9mr1135507a34.10.1745902741852; Mon, 28 Apr 2025
 21:59:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250422082957.2058229-1-treapking@chromium.org>
 <20250422082957.2058229-2-treapking@chromium.org> <CAE-0n52fsf37Xg+Qpj-VwAiUO-kOWFRXKtqLL4VmxtCzAck2dA@mail.gmail.com>
In-Reply-To: <CAE-0n52fsf37Xg+Qpj-VwAiUO-kOWFRXKtqLL4VmxtCzAck2dA@mail.gmail.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Tue, 29 Apr 2025 12:58:51 +0800
X-Gm-Features: ATxdqUGINPAVfcgBQD43dTdCzBEyRh3surtkZJHG52MVRPO0oFEKPZOMbVuvqvo
Message-ID: <CAEXTbpcK_uP89431RJe9V9=hFFJ5iPc0rRNz+NZFCd6p=nUXLQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: usb: Introduce usb-hub.yaml
To: Stephen Boyd <swboyd@chromium.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Matthias Kaehlcke <mka@chromium.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

On Tue, Apr 29, 2025 at 7:47=E2=80=AFAM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> Quoting Pin-yen Lin (2025-04-22 01:28:27)
> > diff --git a/Documentation/devicetree/bindings/usb/usb-hub.yaml b/Docum=
entation/devicetree/bindings/usb/usb-hub.yaml
> > new file mode 100644
> > index 00000000000000..5238ab10576308
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/usb-hub.yaml
> > @@ -0,0 +1,84 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/usb/usb-hub.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Generic USB Hub
> > +
> > +maintainers:
> > +  - Pin-yen Lin <treapking@chromium.org>
> > +
> > +allOf:
> > +  - $ref: usb-device.yaml#
> > +
> > +properties:
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  peer-hub:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      phandle to the peer hub on the controller.
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    description:
> > +      The downstream facing USB ports
> > +
> > +    patternProperties:
> > +      "^port@[1-9a-f][0-9a-f]*$":
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +
> > +patternProperties:
> > +  '^.*@[1-9a-f][0-9a-f]*$':
> > +    description: The hard wired USB devices
> > +    type: object
> > +    $ref: /schemas/usb/usb-device.yaml
> > +    additionalProperties: true
> > +
> > +required:
> > +  - compatible
> > +  - reg
>
> Can 'reg' be dropped because usb-device.yaml requires it?

As I replied in patch 3/4, I see other schemas still re-define them as
required. I can send a new version to drop this if no one comes out
and say this is actually a convention.

Regards,
Pin-yen

