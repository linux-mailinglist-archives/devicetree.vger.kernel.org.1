Return-Path: <devicetree+bounces-111345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9500A99E2F0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 11:40:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E3271B22968
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 09:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 181191DEFE9;
	Tue, 15 Oct 2024 09:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="aKQLPhAY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB301DDC08
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 09:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728985225; cv=none; b=H9IQrjyn+WBm4BlekYVyXbb6HcCFjH8c0a5vIQP1vLqalY9xcubwukOH0oBfkh/V/XQQ1A+ERuCo/+YZABOl7aD9dgB13Kt0xrUH+quYFuFSUDXaB5a7LTIA3FVfdzZY+kwgHa1N6DGBtWoLS3/rcphKgNrISX4RDXOITR+uDoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728985225; c=relaxed/simple;
	bh=QxaFcWIKPJ8iCwiZ3xSCh9drqiiq2s5rdNvLH1y6ucc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NTlTd1qXYeRCr+aUQN4uZsATMGI0UxpYwG3RzxCaR0Ka18tStIznAZCKBeUC8t0wDqHyxGp5le1Z4e+7NwlC4Z4ud3Fv9RZZ/kdXRozy28FW04e3/eQy1qxEBDfgZNzZGHHxKudnRxz729stSGrsxCKRHO2WIbYVYWCQE8NWOVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=aKQLPhAY; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-71e6d988ecfso1162506b3a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 02:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1728985222; x=1729590022; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0odRJi4e9UP6nWytcjiH6A/NCc2DC743koxdsYHVSec=;
        b=aKQLPhAYi3XKyixSpPqZ+degie5FznAQnbCr7xpFRAF4mWlhLVgi8+ruSnR0ThKrV2
         YtGEpZNBQvBG5L7z6HVdc0ryr7D2CikZUd/Kzo5LMjEesmboAVYCjxrxLnVnzOmChKsb
         MJhYXAIw2RNVlzTTke2u0OKohDreKT95DMxGEM7Tn6oLH9L/s3F+MtU6cfplzMLXXsPA
         rWG12CUOjF8HGCVZNTioVq6RlOt1JVPeOXmTyu9DIgY/3K++l5ChgjNFMKg/82VW9rz8
         i+8/79CxcFmW2KeDsK0d4VmaX5RRNfpFpHhvk219nSpksqpiv/hTZjXAUvnacmdbf9tc
         z+jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728985222; x=1729590022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0odRJi4e9UP6nWytcjiH6A/NCc2DC743koxdsYHVSec=;
        b=JO6YUCmFI0velpr/Ck/h6yeJ/sJCTn9LNk4apOQoSg1GkfZLyyO8LY/6hZ9AnE4WNN
         kselFVKDo9B7BrcaDEDwmb/hPKucS1gHeD1mc2kUMXSLAXHE0m0qpOCU1r/MBIUtYtvO
         PNVutKCYzbgMMsesf9q7nUDatdzFYysc0XBfE1lNnfKMqaxz5krfyByU/4uADY7oTOtt
         UxjIFB6VfAhPcZap979neIs31WJke7D3EhpIG2/RakeuWcvVknsvcvSolUlKHuR/zKuO
         YkUrRvIvB3s/engHDIoPEu1sG7/W++rsZ3tKCv7+aw1F4OVDkPhvOyN8S8rJ9mjbRKKg
         Os1g==
X-Forwarded-Encrypted: i=1; AJvYcCWHHRZDtKZJkM4Iwp8KZKZpx5k6gJ3TxRPKYiDwHRqiNxlpe6D3uDIcxrbBgGuhuqp7Hv2iWKPGc1d5@vger.kernel.org
X-Gm-Message-State: AOJu0YyCVMbYH7W3jZTECHCu9fXMCXlaQ310qkDYlnRP5GIQBOewOuqX
	TybwrXczUt6skw25E8NaqFR9VuHzkZrwBBcvKaPkO8zFsJtupiQmTrE8r3rKJr2MFHIMnSrY0gX
	+DBWJrKZVL4RHHoKUFwb4HnlcXneD6n+pYEXGQ4kpsHMf1aqSSBs=
X-Google-Smtp-Source: AGHT+IF3+W3l2NbmiDb7THGeOKPUra1IxKZZTIVZtQaA9zttfX3iwZabD0hHcuUB7HHNoAXudsZ5EZlbjm8YXFH2dcg=
X-Received: by 2002:a05:6a21:1789:b0:1c4:9f31:ac9e with SMTP id
 adf61e73a8af0-1d8bcfc21f5mr20687458637.42.1728985222426; Tue, 15 Oct 2024
 02:40:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241010112337.3840703-1-naresh.solanki@9elements.com>
 <172857036038.1533242.5775916298170949713.robh@kernel.org>
 <4d596ac9a2215be8510369c948e0b9680ee2fce3.camel@codeconstruct.com.au>
 <CABqG17gmjvBmpp2a7tgVwR+q3tsrbejVmezWaXH__txytr30hQ@mail.gmail.com> <5ca25b137b955dc5e0d9607df104097e3de7b782.camel@codeconstruct.com.au>
In-Reply-To: <5ca25b137b955dc5e0d9607df104097e3de7b782.camel@codeconstruct.com.au>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Tue, 15 Oct 2024 15:10:10 +0530
Message-ID: <CABqG17j1-Vd6qN_En7ATjPBOuSgGTgvVNimj++H+bFasEnwXnw@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>, Joel Stanley <joel@jms.id.au>, 
	Conor Dooley <conor+dt@kernel.org>, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"

Hi Andrew, Conor,


On Tue, 15 Oct 2024 at 06:08, Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Naresh,
>
> On Fri, 2024-10-11 at 13:38 +0530, Naresh Solanki wrote:
> > Hi Andrew,
> >
> >
> > On Fri, 11 Oct 2024 at 05:15, Andrew Jeffery
> > <andrew@codeconstruct.com.au> wrote:
> > >
> > > Hi Naresh,
> > >
> > > On Thu, 2024-10-10 at 09:30 -0500, Rob Herring (Arm) wrote:
> > > > On Thu, 10 Oct 2024 16:53:31 +0530, Naresh Solanki wrote:
> > > > > Document the new compatibles used on IBM SBP1.
> > > > >
> > > > > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > > > ---
> > > > > Changes in V4:
> > > > > - Retain Acked-by from v2.
> > > > > - Fix alphabetic order
> > > > > ---
> > > > >  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > >
> > > >
> > > > My bot found new DTB warnings on the .dts files added or changed in this
> > > > series.
> > > >
> > > > Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> > > > are fixed by another series. Ultimately, it is up to the platform
> > > > maintainer whether these warnings are acceptable or not. No need to reply
> > > > unless the platform maintainer has comments.
> > > >
> > > > If you already ran DT checks and didn't see these error(s), then
> > > > make sure dt-schema is up to date:
> > > >
> > > >  pip3 install dtschema --upgrade
> > > >
> > > >
> > > > New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-sbp1.dtb' for 20241010112337.3840703-1-naresh.solanki@9elements.com:
> > > >
> > >
> > > ...
> > >
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mux@77: interrupts: False schema does not allow [[44, 4]]
> > > >  from schema $id: http://devicetree.org/schemas/i2c/i2c-mux-pca954x.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > > > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > >  from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > >
> > > These still must be addressed as mentioned on v3 (with more specific
> > > comments regarding the infineon,ir38263 on v4). Please look through the
> > > binding documents for the affected nodes and make sure the nodes in
> > > your DTS conform to their definitions. You can check your work with
> > > `make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-sbp1.dtb` prior to sending.
> >
> > These are the warnings coming for trivial devices. Even for regulator@5f
> >
> > grep -rsn mp2973 Documentation/
> > Documentation/devicetree/bindings/trivial-devices.yaml:286:
> > # Monolithic Power Systems Inc. multi-phase controller mp2973
> > Documentation/devicetree/bindings/trivial-devices.yaml:287: -
> > mps,mp2973
> >
>
> Right, but if they're generating warnings, then you haven't specified
> the nodes in accordance with the bindings. From here one of two things
> is the case:
>
>    1. The bindings' specifications are incomplete, and you need to
>       introduce patches updating them to match how you need to use the
>       hardware
>    2. Your devicetree is incorrect, and the unexpected properties need
>       to be removed from the listed nodes.
>
> The only third option is "don't use the hardware how you need to" (i.e.
> remove the unexpected properties despite needing them, because you
> don't want to update the bindings).
Will do what needs to be done.
Will introduce binding for those devices which need them.

Thanks a lot for your inputs

Regards,
Naresh
>
> Ultimately the tools are telling you something is wrong, and I need the
> warnings I've identified addressed before I can apply your patch,
> otherwise the hardware is not going to do what you might expect.
> > I've rebased it on top of for-next branch in [2]
> >
> > I rebased on top of [1] & the volume of output did reduce for CHECK_DTBS.
>
> Great :)
>
> Andrew

