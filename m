Return-Path: <devicetree+bounces-143210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA04AA287D5
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:21:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7C423A2524
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B964922AE42;
	Wed,  5 Feb 2025 10:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="b+GKZ/Tk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE1C22A80E
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738750898; cv=none; b=d4KwwdDQ399Q2i4vJQ2eWQiSZP+5KhszgLZ82EppCoXzyM24McKfagm9NfgKemP5t6cuYsCmQGTf1WyrO6qAP8imdPtQA9C9Ph9pPPuWqCjGjq1nZJaiwXH0iTLY4YwPzjZvlSa2sWJiS8AQ8+VcGxQc1O7QhufC51ra52EFiJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738750898; c=relaxed/simple;
	bh=anD1hX4vyABnouaiaiLF/noQ9Xhmr7W6cDfU7pFNGW0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QFXwUVA/Ye8KXfBUMmtZob0BBmBrxzca270hjOq1/Wdruquw/G92NyrxKKqKt7EaMqYkkwNcbIpvbg/UvJqZXTrTBo7AyYDBgN5Z1yFl751w4AnJjGbGnPfuxuWDKl1FoFuyUyD84e2bT3oH3QUk8MWraGCYczg7ajLPXl3Ikro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=b+GKZ/Tk; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2f9c3124f31so2517630a91.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 02:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1738750895; x=1739355695; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EuQ3J4kWJ3ri60Lfegtwjc7QriqYdwD8vaVj4liUaDg=;
        b=b+GKZ/Tkn3gyUuwU3mcd9xz1FHDYXXK0RVW4GU4BJgMrfg3SVbr47AZ0Lo7bDh56n6
         ABoGdQ8oSGgkjgHWk8bTHZQ6SR7KgP/KFx7cUedNYB+aO4CUz4YDpfezeJqj25hdVGDB
         ywGWaclnyRhng814j5FduWVUIiKCWvsjiRTwSDOiKiscIClE+loeYOOqxWnPljmDMZ1E
         T3HytKrjVmqDSOqFYdnaw/5Tq7i34wxuNQe/bA5pAETGK8qdDFhWfUcm5XOllYc6AEut
         VhhAUEhwKWaTFVas546eWLtccOm6bVz8k2h3Y2bPbnN2e3MaldLq/3qOJrzJ2FKWurhK
         dYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738750895; x=1739355695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EuQ3J4kWJ3ri60Lfegtwjc7QriqYdwD8vaVj4liUaDg=;
        b=KaxaPdfx0EarqCVnEi7tcaisgDFcjWKKFXQfrSCq2or7T3byIj5r2f/s4uAIBauY84
         MFUcvWUVMnXN+cjPluJB0pyxCpemrwP0yr9tHCNEysRrSOg/P+LkSLcnHvPj84kMfXa/
         KINcykRqzrihYeSrSTaP3MhEDUcvaJ/xtPoQGq1r0Y2aTKNh1aD13WSGFDFRuOkx+cdu
         WZmvbLMiXA59ir5+8hOT39mwPH3AIBxBh/PiT7xPqtX8wntCp1oFu2JDES2AmdzkcROC
         jEq1HTBGzVIR0kitEjshAKUbYSbCtaDSIW3wC9ljDRGygOF3Mi5I9ExrZbH7hfbcrtI4
         VLcQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3rbMGEo0eM1fR0rft7avuG7iOI3bpcrkZeEk1xC11WpUEYEwN74pvbZTozlz+SW2Fto5diyWc+FhX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8iCE+ZYiFm+TtROwqgAJTU1KC+a9VFXUyhDdJoiljJkOdujmD
	yor2wQQp8b/Yfn8MEMvk3wvhyv6BjJEVtgNuWvZuUkDPnMV8/ugHpc4jYvCwX1XHRCLx7TW864o
	x0S5rI/rT4wGTsAWO3lObNpZ1ZDqaPpQzB4bp6A==
X-Gm-Gg: ASbGncuk8j0mk3Ulm87R6jjee6CYcIyGKA6EnLk9XcfI9lKLfJvLjwrnt8SBWQX3++I
	YP4m56fdyQUdGBmjh3VgCNmuQiicKs2cgIxa9x3G1Q6x+lMdPjIxfIB9FG1uB+nnbomMsx4o6
X-Google-Smtp-Source: AGHT+IE4mWtWl3q8deE4V0jA5EbYfQzg28VPhIr52IYthmXy/9uOjjBqU4UmKtU6hUdsMQrwjiU19akf5MZRt9Tf3jE=
X-Received: by 2002:a17:90a:d605:b0:2f1:30c8:6e75 with SMTP id
 98e67ed59e1d1-2f9e08625d2mr3048419a91.32.1738750895521; Wed, 05 Feb 2025
 02:21:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250204180306.2755444-1-naresh.solanki@9elements.com> <20250204-mulled-evaluate-8a690cdfbd4d@spud>
In-Reply-To: <20250204-mulled-evaluate-8a690cdfbd4d@spud>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Wed, 5 Feb 2025 15:51:25 +0530
X-Gm-Features: AWEUYZmtaSVzMmCyygCiwlcJ57XcbjkpPoJ4c8qlHOFqnBIImbd_vRZ_P4tzlOw
Message-ID: <CABqG17jHKfwJEfZxto_YA4opS8=QwqTqfNdkku8kcEv2_iW+XA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: ir38060: Move & update dt binding
To: Conor Dooley <conor@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, broonie@kernel.org, 
	Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Conor,


On Wed, 5 Feb 2025 at 00:52, Conor Dooley <conor@kernel.org> wrote:
>
> On Tue, Feb 04, 2025 at 11:33:03PM +0530, Naresh Solanki wrote:
> > Move dt binding under hwmon/pmbus & align accordingly.
> >
> > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > ---
> >  .../hwmon/pmbus/infineon,ir38060.yaml         | 61 +++++++++++++++++++
> >  .../bindings/regulator/infineon,ir38060.yaml  | 45 --------------
> >  2 files changed, 61 insertions(+), 45 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml
> > new file mode 100644
> > index 000000000000..e1f683846a54
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,ir38060.yaml
> > @@ -0,0 +1,61 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/hwmon/pmbus/infineon,ir38060.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Infineon Buck Regulators with PMBUS interfaces
> > +
> > +maintainers:
> > +  - Not Me.
>
> How the hell did this get merged!
>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - infineon,ir38060
> > +      - infineon,ir38064
> > +      - infineon,ir38164
> > +      - infineon,ir38263
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  regulators:
> > +    type: object
> > +    description:
> > +      list of regulators provided by this controller.
>
> Can you explain why this change is justified? Your commit message is
> explaining what you're doing but not why it's okay to do.
This is based on other similar dt-bindings under hwmon/pmbus.

Regards,
Naresh
>
> Cheers,
> Conor.
>
> > +
> > +    properties:
> > +      vout:
> > +        $ref: /schemas/regulator/regulator.yaml#
> > +        type: object
> > +
> > +        unevaluatedProperties: false
> > +
> > +    additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        regulator@34 {
> > +            compatible = "infineon,ir38060";
> > +            reg = <0x34>;
> > +
> > +            regulators {
> > +                vout {
> > +                    regulator-name = "p5v_aux";
> > +                    regulator-min-microvolt = <437500>;
> > +                    regulator-max-microvolt = <1387500>;
> > +                };
> > +            };
> > +        };
> > +    };
> > diff --git a/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml b/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
> > deleted file mode 100644
> > index e6ffbc2a2298..000000000000
> > --- a/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml
> > +++ /dev/null
> > @@ -1,45 +0,0 @@
> > -# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > -%YAML 1.2
> > ----
> > -$id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > -$schema: http://devicetree.org/meta-schemas/core.yaml#
> > -
> > -title: Infineon Buck Regulators with PMBUS interfaces
> > -
> > -maintainers:
> > -  - Not Me.
> > -
> > -allOf:
> > -  - $ref: regulator.yaml#
> > -
> > -properties:
> > -  compatible:
> > -    enum:
> > -      - infineon,ir38060
> > -      - infineon,ir38064
> > -      - infineon,ir38164
> > -      - infineon,ir38263
> > -
> > -  reg:
> > -    maxItems: 1
> > -
> > -required:
> > -  - compatible
> > -  - reg
> > -
> > -unevaluatedProperties: false
> > -
> > -examples:
> > -  - |
> > -    i2c {
> > -      #address-cells = <1>;
> > -      #size-cells = <0>;
> > -
> > -      regulator@34 {
> > -        compatible = "infineon,ir38060";
> > -        reg = <0x34>;
> > -
> > -        regulator-min-microvolt = <437500>;
> > -        regulator-max-microvolt = <1387500>;
> > -      };
> > -    };
> >
> > base-commit: bfbb730c4255e1965d202f48e7aa71baa9a7c65b
> > --
> > 2.42.0
> >

