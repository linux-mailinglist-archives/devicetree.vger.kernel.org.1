Return-Path: <devicetree+bounces-8130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 255C97C6C2B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3D3B282809
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C60823767;
	Thu, 12 Oct 2023 11:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JphU1rxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB28312E42
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:19:55 +0000 (UTC)
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FC6DC6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:19:54 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-66cee0d62fbso5079256d6.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697109593; x=1697714393; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nNHmIfPj5WqNXPVt4ki8AWS+T3aJ218ouKELPyitkbw=;
        b=JphU1rxJHP/VNxswTXRm85oyTdRr0gGM6uwoAolfHLpGt/IhyLVX2gvzpzoGS1oCg4
         RfEBylw12KD4KbrBi+HNE3pXZZiJ6fbTf/4AVMuiuL5PaVO20l6XECTJZfhXaH+qenSm
         w6hZ4aN5n3+o7qio8nYDakyEWGUgagCQ9WPdoNOlDcoAnpKuuIY7MuoS7QxgqFHNcD0P
         zvVEX51ZiMM8MPDI0FrTL6qBVG8wU/TimS3UNu45kIr1saPRq2uQTesQYIhvmfDG2hSf
         Jx2gy8mOvpOu1NeMf6NCtj3OlVFRd2bSwXJ6XbLFJxKxzkh/LPbMymme4cA1XyfoIITu
         iq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697109593; x=1697714393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nNHmIfPj5WqNXPVt4ki8AWS+T3aJ218ouKELPyitkbw=;
        b=Zc3XvX1EpLfcLxtK9Wv/U2Lp8/f0XANOU2iWI/9w+v67qQzHSQuxYzIju0yjN68M4d
         OEQ4g1V/0j6yQmHhVMIcsZsn7IapG200tqCDSs00WONgaMW5PH3EVIq3223NWpaJMIyF
         rV+7d9fz/ytnxDVeMYDN0mdP/FHKBHm/KRd1TIS2alHwOQZ4sgSzNMEE09RnAWL9IfTY
         0HUN68hEDQl8RpRGRaQPY+5/LgbbCag49eo05N4cX3yrnZ7G6px0ta+h9P47IED1WNxq
         c28WPGbehhadmpA0IhydSIS5fRew0HWMpQtQKX48GcaW3zkwfBM4/ENhpM/vhE62zuBd
         b1vA==
X-Gm-Message-State: AOJu0YyvXn0j385E+kCA+YnrylyOW6nl277QDiujwomNUCkVuvuk/mNl
	fhOxPujTxX+oUPxK7EojoIXCILzE33W2JPtEex0/jQ==
X-Google-Smtp-Source: AGHT+IGHlD2Lg3LFEDnxkXR7a8pgs/reNT+udP2T2si5zTff92WNhLXapfeVmVbapsPEpQqTLDasQ78TvPGrzcPB10s=
X-Received: by 2002:a0c:e042:0:b0:66d:daf:32f with SMTP id y2-20020a0ce042000000b0066d0daf032fmr3117885qvk.21.1697109593194;
 Thu, 12 Oct 2023 04:19:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-6-peter.griffin@linaro.org> <CAPLW+4kK_hhkht7OPgyUCinwaEPMyVq3DJ4mnbRVkGXJvPWbwg@mail.gmail.com>
In-Reply-To: <CAPLW+4kK_hhkht7OPgyUCinwaEPMyVq3DJ4mnbRVkGXJvPWbwg@mail.gmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 12 Oct 2023 12:19:41 +0100
Message-ID: <CADrjBPpDvfyZCyCpXqDALLbe5POaBnKbzyyrEEfB2QmpChY7ug@mail.gmail.com>
Subject: Re: [PATCH v3 05/20] dt-bindings: arm: google: Add bindings for
 Google ARM platforms
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Sam,

Thanks for the review.

On Thu, 12 Oct 2023 at 00:06, Sam Protsenko <semen.protsenko@linaro.org> wr=
ote:
>
> On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@lina=
ro.org> wrote:
> >
> > This introduces bindings and dt-schema for the Google tensor SoCs.
> > Currently just gs101 and pixel 6 are supported.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/arm/google.yaml       | 46 +++++++++++++++++++
> >  1 file changed, 46 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/google.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Docume=
ntation/devicetree/bindings/arm/google.yaml
> > new file mode 100644
> > index 000000000000..167945e4d5ee
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/google.yaml
> > @@ -0,0 +1,46 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/google.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Tensor platforms
> > +
> > +maintainers:
> > +  - Peter Griffin <peter.griffin@linaro.org>
> > +
> > +description: |
> > +  ARM platforms using SoCs designed by Google branded "Tensor" used in=
 Pixel
> > +  devices.
> > +
> > +  Currently upstream this is devices using "gs101" SoC which is found =
in Pixel
> > +  6, Pixel 6 Pro and Pixel 6a.
> > +
> > +  Google have a few different names for the SoC.
> > +  - Marketing name ("Tensor")
> > +  - Codename ("Whitechapel")
> > +  - SoC ID ("gs101")
> > +  - Die ID ("S5P9845");
> > +
> > +  Likewise there are a couple of names for the actual device
> > +  - Marketing name ("Pixel 6")
> > +  - Codename ("Oriole")
> > +
> > +  Devicetrees should use the lowercased SoC ID and lowercased board co=
dename.
> > +  e.g. gs101 and gs101-oriole
> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +
>
> Is that empty line is actually needed here?

Will fix in v4.

Peter

