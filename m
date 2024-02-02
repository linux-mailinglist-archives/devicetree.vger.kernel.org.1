Return-Path: <devicetree+bounces-37941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7781B846E52
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:53:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80B2F1C26550
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F032813D4F0;
	Fri,  2 Feb 2024 10:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="PUlIxPO/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7813413DB8A
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 10:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706871175; cv=none; b=M92roeKZ2F0KnVgmQ7U2Fg96qeyjke20UFWjknULtVbPo9HSgcqkfBQjalr/kuAerKmI3jpt/IOncRPx2HgIz8q9ewzi7WC96Lu3fthDH3q0C+bwYEzx+EDfjVJPUlO706PTb3xZlWRv+8Uj5i8XdyA704MdtO/2dxP2rtCJmkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706871175; c=relaxed/simple;
	bh=7UJeNk8SiED9yCAZG/fAWeHMgxw0oDG/V8oLEX03H2s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bivUzXLdniEtN2z5JDl42ahr5wIiYXPAPWRs4A+cdIHBPkE5lxqjGwnf6Om5rWM9QX5BNYMqaX/Qp5NUDthbQcBKFQbrmNXKXSZYAk/htDAdMgCX08MbAwmVN0XRdgDjdhpX3FcndbVdq+r4othFUGoBOWhwF3/Cb8nc4JM6Lyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=PUlIxPO/; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1d7354ba334so16539365ad.1
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 02:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706871174; x=1707475974; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kOP4h2DtrQ3eGd2gjxHPsKG03MfGRQ7P7hCdzTURGhs=;
        b=PUlIxPO/b2maTrliN1Azs6RvKUdrpjtW251kDqmEApuvaKETnnz0hcUX7V0JN2zyQl
         Lnxlol8EtyE2VxE8TTyDTr9WVvLZMTV5fLB9FQrjQ9+CK9dHCbXCEIJ9DqGodmsZVPsv
         n/z3bGkSGLjg2e0B6X/sA4oI8kPSGEBb60V3mhG2L8G+iJxb2Owvc0NN/fcoCijNqaCA
         T0JormCeZWt0K5XO1wyHBWneFQD/5fRPuLC2GAjSGtOYno/EkFo4feZfDP4gYNFD1uNc
         sTNt2Lvlo+CAoy/a8u/0isu0a5H9mX3Xdl+0SBFXuzyRMc0EDQUag0Rduj+VPSneJy3a
         VH/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706871174; x=1707475974;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kOP4h2DtrQ3eGd2gjxHPsKG03MfGRQ7P7hCdzTURGhs=;
        b=ImetW56c/qCh0y4/46+yOonSNEiIihPpWmQmkroOBG+l1M3OTh3bmDFMGGF74M7xPz
         rkjtz3ulT3rI/LfnYWfpRxFg8Rv6D8qIklYVb4C8FYNjXzzbWljQX8lWRwZb8/k9p9Iu
         cxNJDzVKzJbvc61rWV7xoLaCijoXFZxB87L4HwGasoSaeapQnPKy/HHsWgSwdmj9ypqT
         AqCzy2L6RIItnm8LbgfxIAB+IF+MB5rVnhEzc1erfHdqm5ltyMADNWeh3hd/jKxQXXtQ
         BOXI3DjwsvrSxtMHSf7+Vfr4zwKqV26uTrkMOc5+ysgQJTl2xJjCSEcDvf2kbtUFAMYk
         Munw==
X-Gm-Message-State: AOJu0YzblN2lGwezLldoNFx3yH6JNrWRij9tZTmiLNG8nVL0967pXQ7Z
	fVQumUVOiIdxkm4YN1TrqA5uEufReVUSFeCRyK7f4di/WPjIWcqJvnFw0B2FQa+mwTs4cZaBQeh
	URmy+wwdcNx7nNWZLx4fGztYAMSA04zC+2PQBfw==
X-Google-Smtp-Source: AGHT+IEkJP0L3xT2bwErOuiu7V5owciTi/CRmQ50HIFOTE/E57jyLi7R3nqwVwCvKwYNtUGvE3yoO5rSIUwKLuNyRLo=
X-Received: by 2002:a17:90a:4591:b0:28c:8eaa:e5e3 with SMTP id
 v17-20020a17090a459100b0028c8eaae5e3mr8264623pjg.17.1706871173799; Fri, 02
 Feb 2024 02:52:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240130125602.568719-1-naresh.solanki@9elements.com> <52f1e76e-0953-4625-94ae-2208600f5729@linaro.org>
In-Reply-To: <52f1e76e-0953-4625-94ae-2208600f5729@linaro.org>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Fri, 2 Feb 2024 16:22:43 +0530
Message-ID: <CABqG17j5io7S=U6oHktwWjBxaVRnEryWvX7yD9bVAV5cr2ueKg@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: cy8x95x0: Minor fix & update
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Patrick Rudolph <patrick.rudolph@9elements.com>, mazziesaccount@gmail.com, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Wed, 31 Jan 2024 at 14:02, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 30/01/2024 13:56, Naresh Solanki wrote:
> > Update maxItems to 60 for gpio-reserved-ranges to allow multiple gpio
>
> Subject: everything can be a fix and everything is update. Write
> something useful.
Sure. Will update as:
dt-bindings: pinctrl: cy8x95x0: Update gpio-reserved-ranges

>
> > reserved ranges.
> > Add input-enable property to allow configuring a pin as input.
> > Update example & fix alignment.
> >
> > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > ---
> >  .../bindings/pinctrl/cypress,cy8c95x0.yaml    | 38 ++++++++++++++-----
> >  1 file changed, 28 insertions(+), 10 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
> > index 7f30ec2f1e54..90dda5d3cc55 100644
> > --- a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
> > +++ b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
> > @@ -45,7 +45,8 @@ properties:
> >      maxItems: 1
> >
> >    gpio-reserved-ranges:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 60
> >
> >    vdd-supply:
> >      description:
> > @@ -85,6 +86,8 @@ patternProperties:
> >
> >        bias-disable: true
> >
> > +      input-enable: true
> > +
> >        output-high: true
> >
> >        output-low: true
> > @@ -125,14 +128,29 @@ examples:
> >        #size-cells = <0>;
> >
> >        pinctrl@20 {
> > -        compatible = "cypress,cy8c9520";
> > -        reg = <0x20>;
> > -        gpio-controller;
> > -        #gpio-cells = <2>;
> > -        #interrupt-cells = <2>;
> > -        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> > -        interrupt-controller;
> > -        vdd-supply = <&p3v3>;
> > -        gpio-reserved-ranges = <5 1>;
> > +          compatible = "cypress,cy8c9520";
>
> I don't understand why you change from correct indentation to mixed one
> (2 and 4 spaces). It does not make sense.
Yes indentation is missed. I'll correct to 2 space in next patch revision
>
>
> > +          reg = <0x20>;
> > +          gpio-controller;
> > +          #gpio-cells = <2>;
> > +          #interrupt-cells = <2>;
> > +          interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> > +          interrupt-controller;
> > +          vdd-supply = <&p3v3>;
> > +          gpio-reserved-ranges = <1 2>, <6 1>, <10 1>, <15 1>;
> > +
> > +          pinctrl-0 = <&U62160_pins>, <&U62160_ipins>;
> > +          pinctrl-names = "default";
>
> Missing blank line.
Will fix in next revision.
>
> > +          U62160_pins: cfg-pins {
> > +              pins = "gp03", "gp16", "gp20", "gp50", "gp51";
> > +              function = "gpio";
> > +              input-enable;
> > +              bias-pull-up;
> > +          };
>
> Missing blank line.
Will fix in next revision.

Regards,
Naresh
>
>
> > +          U62160_ipins: icfg-pins {
> > +              pins = "gp04", "gp17", "gp21", "gp52", "gp53";
> > +              function = "gpio";
> > +              input-enable;
> > +              bias-pull-up;
> > +          };
> >        };
> >      };
>
> Best regards,
> Krzysztof
>

