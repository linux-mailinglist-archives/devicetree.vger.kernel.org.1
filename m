Return-Path: <devicetree+bounces-10405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2367D10DB
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:53:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DE70B213B3
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D61B1CAAC;
	Fri, 20 Oct 2023 13:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUuheCVf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378441BDC5
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 13:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABDA4C43391;
	Fri, 20 Oct 2023 13:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697809983;
	bh=iUqj2P4pPCFQw2K6lkAXr5VVwb6UDJX9gatQQde1WIY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SUuheCVfdUrMjqyAOA2gdLzOlR9ftnasWC9FXTIP7sPQsFYVm0p3eA196PQtJMcY6
	 DsLWb0lU4JrLpsEn0V/U4psYkuSM39JItqEwPgRRe7yZVh+5ueRNqKJSWjZV37WOwk
	 HsK9lQU78dvMy2dFkperks6+7cTlSyUdweuoSK1yLAhdDslS4EdQXtKnIRpjIC/Z5V
	 p/9ZuM81p1mREhFctd/BjZnA35ahMD1h2rH/tx4QNL8uDe5b1KTg/l1xHHTTWfbnWS
	 VLPa7Al/XxUkhWJCCTFtOyIcIyaeRiXxmoWrRoKs9UCS0yFMaUw67OgSGJHZQ+uq8y
	 2XoASIRp8O68A==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-507a29c7eefso1192550e87.1;
        Fri, 20 Oct 2023 06:53:03 -0700 (PDT)
X-Gm-Message-State: AOJu0Yz7HVxhZyBFABimy5N/aW0rKT1wpfc+j/WqXKcfp8JKq08EI2Tb
	nba6HlY+zJRe8ZcfTUybIbMFjSWGMlMd8USSHg==
X-Google-Smtp-Source: AGHT+IFGAJDMZmGvzCnWIJp/hGyYrMc0HjACQ3Aj8uQbznqhduI+ugLmfdsp4wYk8K/KbrOOPnL4xvWzAQND6tY2wjo=
X-Received: by 2002:a05:6512:3052:b0:4fe:711:2931 with SMTP id
 b18-20020a056512305200b004fe07112931mr1562124lfb.22.1697809981756; Fri, 20
 Oct 2023 06:53:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231020034921.1179-1-jyanchou@realtek.com> <20231020034921.1179-5-jyanchou@realtek.com>
 <c779d973-2f3e-44b5-91e0-1ad0910fa016@linaro.org>
In-Reply-To: <c779d973-2f3e-44b5-91e0-1ad0910fa016@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 20 Oct 2023 08:52:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ4_9cvG3CuvV-L00k6P8COqML0eXfgudY+DJ17FAWSwg@mail.gmail.com>
Message-ID: <CAL_JsqJ4_9cvG3CuvV-L00k6P8COqML0eXfgudY+DJ17FAWSwg@mail.gmail.com>
Subject: Re: [PATCH V3][4/4] dt-bindings: mmc: Add dt-bindings for realtek mmc driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jyan Chou <jyanchou@realtek.com>
Cc: adrian.hunter@intel.com, jh80.chung@samsung.com, ulf.hansson@linaro.org, 
	riteshh@codeaurora.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, asutoshd@codeaurora.org, p.zabel@pengutronix.de, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, arnd@arndb.de, briannorris@chromium.org, 
	doug@schmorgal.com, tonyhuang.sunplus@gmail.com, abel.vesa@linaro.org, 
	william.qiu@starfivetech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 1:50=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/10/2023 05:49, Jyan Chou wrote:
> > Document the device-tree bindings for Realtek SoCs mmc driver.
> >
> > Signed-off-by: Jyan Chou <jyanchou@realtek.com>
> >
> > ---
> > v2 -> v3:
> > - Modify dt-bindings' content and description.
> > - Fix coding style.
> > - Update the list of maintainers.
> >
> > v0 -> v2:
> > - Add dt-bindings.
> > ---
> > ---
> >  .../bindings/mmc/realtek-dw-mshc.yaml         | 150 ++++++++++++++++++
> >  1 file changed, 150 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/realtek-dw-ms=
hc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml=
 b/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml
> > new file mode 100644
> > index 000000000000..b1e37fb37be9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml
>
> Filename matching compatible.
>
> BTW, before you respond, be sure you have fixed your email client. In
> your last response everything was not properly wrapped (not matching
> mailing list discussion style).
>
> > @@ -0,0 +1,150 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mmc/realtek-dw-mshc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Realtek designware mobile storage host controller
>
>
> DesignWare
>
> > +
> > +description:
> > +  Realtek uses the Synopsys designware mobile storage host controller
>
> DesignWare
>
> > +  to interface a SoC with storage medium. This file documents the Real=
tek
> > +  specific extensions.
> > +
> > +allOf:
> > +  - $ref: synopsys-dw-mshc-common.yaml#
> > +
> > +maintainers:
> > +  - Jyan Chou <jyanchou@realtek.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - realtek,rtd-dw-cqe-emmc
>
> Compatibles should have SoC-specific part. It does not look like you
> have one here.
>
> Missing blank line
>
> > +  reg:
> > +    maxItems: 2
>
> You need to describe the items.
>
> > +
> > +  reg-names:
> > +    maxItems: 2
>
> You need to describe the items.
>
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  cqe:
> > +    maxItems: 1
>
> Looks like some custom property. If it is a generic one, where is it
> documented? If it is custom, missing vendor prefix and description.
> Detailed description.

There's common properties related to CQE. Use them.

Rob

