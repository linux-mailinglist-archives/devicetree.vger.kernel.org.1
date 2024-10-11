Return-Path: <devicetree+bounces-110278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C86999EBD
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 10:09:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 848B01C21E50
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 08:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF58F20ADC7;
	Fri, 11 Oct 2024 08:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="bln+jBYv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A761CDA31
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 08:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728634147; cv=none; b=YvGjoWywQW4uT0DWRLTimx9KOnHexhhCx1aBYk3vM8pH4UVyp2HS/TMbtE/OLkCLQbAlTyGVZ7pypMn0O8bdqf7ZHCrq5pt5+uiceaeOVogBItTS/G7rbwg9PXHILRvZJmF2wGVfQ+RdHQFcMxUf5CAdrSeMTbDZH9M1KhEMfhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728634147; c=relaxed/simple;
	bh=ehgvHaPMZlUs3KfMwDsSErHy1HAg3wPwSL5C5hX7vZ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qHxaYw46xiqMrwVbDFuOdPVL9jJi8Cb6c5spa6FDBSUCDNhNwfxxBKARqVpQK4Rql3raR46pebyTnGJml/NT6k6Du+JQ/rPOm6utAwOJXgI+375uk0Ha7C6EUKgXiSMBHiZ2uls/YGahnUaADiqoUXqUaqjBAho0rIrukNYoAig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=bln+jBYv; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7c1324be8easo2025193a12.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 01:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1728634145; x=1729238945; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8WRD3jbo/tTNYRziqpYEKDmK590mjZZMZmbwUA+4tqc=;
        b=bln+jBYv+Q/GK5+Rmb4DhAqArEetjEWV9Wm+sZosjqXOqmg9+/oiNuj1g3DV3w0u9i
         Tmn7YUppUkhg1xBGWCwy8evvI0nA495jO76utMFZw6K39FL297F0E8Q01xKifpQHy9Oc
         exf8tCycU+4TMYOufRGuXwH3vVAzm2UvOSTL6poehQfNE9tuj9CCU49HB6JdIj0buBxY
         Tr9icrHqtPTRHQzNZwrXFthZxdlzqCxK7bnG4MCguCuQhzVV583B8fV3YN9xJtO743g/
         8l/ol25j7BeR2cz+NiYLd4KPJuVRjbnEqFW/cXWMFUnUZXQe0z+uErAsLwpZx913aB3F
         Z8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728634145; x=1729238945;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8WRD3jbo/tTNYRziqpYEKDmK590mjZZMZmbwUA+4tqc=;
        b=EFkbaNbOX7QWZ+0lCVHhhjnN99vqUb9rCqFqPYSlUFVjYUx6ZEMq9vktUKIfDQyKAg
         +hDZCo5jMPd9U6XnkYzCdLZ0u904Bs2eAlALEjAoSHDPkcyijx+E5SVNvqipJXT6FgMB
         PZSjO0QtojO9jyXfXqwfOiIH8fABcBZ2MDilS3em931mZHH8nsIDgf+wFaRww+WDMQla
         bPTGdEy8drJhTYJp1WDtGHDv9K0GwfU3qKOdpP9w9IWBg79RVIe03Zyc3qEUgAum7lS5
         uyX+ZauiRM6emqeABKmoZG/JKUcBrfcDsJ9RvgEX/bUlaalpki802pgN0jauS/21YuuK
         SUUw==
X-Forwarded-Encrypted: i=1; AJvYcCXbj95IE9gSunisCTy4fhyCola2BZMf4Pz1w6NsP1Ecly2GlLbUyhx/tKTaiMUk9zAfJOsOFm2xl+dW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4oUMTGjE+rQrjaSQg7uY/zXPHyg4wXwZrDRJcvjqUHf7kxFrH
	ujKdRdAxEHmfRPdn2ejZO92XATskxtd7DdWm7IFE3lMmAUiS8v1djzJTMSfB5nDOfqgPN7nTsPD
	dMRKtI2nZG0n6fRXpVzaxUcsLn9jp5GCBYuTD9G0/WAJGrGSYWR1gg1Lx
X-Google-Smtp-Source: AGHT+IHpBFNUg8lPaFZMK3Ci4US3g+WGiRqAJyR4Scr9ecI9A0vw9GhKESir6HVhQexRmf14eQePLKnaGmCv96bAcYM=
X-Received: by 2002:a17:90a:3041:b0:2e0:8780:ecb with SMTP id
 98e67ed59e1d1-2e2f0af2eaamr3042702a91.12.1728634145262; Fri, 11 Oct 2024
 01:09:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241010112337.3840703-1-naresh.solanki@9elements.com>
 <172857036038.1533242.5775916298170949713.robh@kernel.org> <4d596ac9a2215be8510369c948e0b9680ee2fce3.camel@codeconstruct.com.au>
In-Reply-To: <4d596ac9a2215be8510369c948e0b9680ee2fce3.camel@codeconstruct.com.au>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Fri, 11 Oct 2024 13:38:52 +0530
Message-ID: <CABqG17gmjvBmpp2a7tgVwR+q3tsrbejVmezWaXH__txytr30hQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>, Joel Stanley <joel@jms.id.au>, 
	Conor Dooley <conor+dt@kernel.org>, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,


On Fri, 11 Oct 2024 at 05:15, Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Naresh,
>
> On Thu, 2024-10-10 at 09:30 -0500, Rob Herring (Arm) wrote:
> > On Thu, 10 Oct 2024 16:53:31 +0530, Naresh Solanki wrote:
> > > Document the new compatibles used on IBM SBP1.
> > >
> > > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > ---
> > > Changes in V4:
> > > - Retain Acked-by from v2.
> > > - Fix alphabetic order
> > > ---
> > >  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> >
> >
> > My bot found new DTB warnings on the .dts files added or changed in this
> > series.
> >
> > Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> > are fixed by another series. Ultimately, it is up to the platform
> > maintainer whether these warnings are acceptable or not. No need to reply
> > unless the platform maintainer has comments.
> >
> > If you already ran DT checks and didn't see these error(s), then
> > make sure dt-schema is up to date:
> >
> >   pip3 install dtschema --upgrade
> >
> >
> > New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-sbp1.dtb' for 20241010112337.3840703-1-naresh.solanki@9elements.com:
> >
>
> ...
>
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mux@77: interrupts: False schema does not allow [[44, 4]]
> >       from schema $id: http://devicetree.org/schemas/i2c/i2c-mux-pca954x.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>
> These still must be addressed as mentioned on v3 (with more specific
> comments regarding the infineon,ir38263 on v4). Please look through the
> binding documents for the affected nodes and make sure the nodes in
> your DTS conform to their definitions. You can check your work with
> `make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-sbp1.dtb` prior to sending.

These are the warnings coming for trivial devices. Even for regulator@5f

grep -rsn mp2973 Documentation/
Documentation/devicetree/bindings/trivial-devices.yaml:286:
# Monolithic Power Systems Inc. multi-phase controller mp2973
Documentation/devicetree/bindings/trivial-devices.yaml:287:          -
mps,mp2973

I've rebased it on top of for-next branch in [2]

I rebased on top of [1] & the volume of output did reduce for CHECK_DTBS.

Regards,
Naresh

[2] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
>
> It may help to base your series on top of [1] to reduce the volume of
> output from CHECK_DTBS=y.
>
> Andrew
>
> [1]: https://github.com/amboar/linux/tree/for/bmc/aspeed/dt
>

