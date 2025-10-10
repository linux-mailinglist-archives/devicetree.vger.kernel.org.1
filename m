Return-Path: <devicetree+bounces-225168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E70BCB44E
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 02:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CFDD54E9C28
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 00:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB011BBBE5;
	Fri, 10 Oct 2025 00:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LmHez3Tc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889B81A3179
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760055728; cv=none; b=LbHeDGUnjonu91x9nzIVim6kX6jLXZ86KulfT+0u8aBzrE21KdsGna2TpS5fGFjQdYlhXJSVjHgI72zr5Xizi9ENWonIfr1k9cf5KRbe0UfAK9ugC3qwIJs5H6Kvle31vw2cGZ9MVThIXCr5CdKR+pyxtPZh7mmbVCiSIpKegWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760055728; c=relaxed/simple;
	bh=uYaOG3as8+Fu80zufiFRcnYoSJ4AZt5P0mpgrO3fuA0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qNdiHr6NCT/e23Seu9ZZQ60iW7tyXyrWVQeqbw+HQEYopE5MARsR5+2hiBRylxXOxrEKu0US8X+wJFs2BdGkRwAwFzug66eQ/Fjj4KMzJhs+X8Cr4ZfavWKGiDbgJJLV3aoF73aMLs73mUtY+SEzvoylWiaPWAGFvpNDAWk55QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LmHez3Tc; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-330631e534eso1764800a91.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 17:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760055725; x=1760660525; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFIzsRx5u+TjLRxFDsuPe1onjkTRP2yLnHKqtm1kJjU=;
        b=LmHez3TcCmhRzWrK/xnrfGPLQMqciocX4A1RKd9u1uARqZupdFjHhyTcpLt/EntJPc
         o3Yv4diCYkwGDd5G5lUILBXNLnfyOfDygoZo1VJLvXVDZ1BO+vFtkX0HAKCTV79LTYOC
         ehAAnxaHpS4nGjLOvpJFMcdpRu9N1ylMzGgjtNf7o96AOZTAPo9KOvVpEcV/n8sL6qE+
         d9E7furnzuSqbtO9kc4LmUikcNgjHCj+4jELQ/psO+VzlrMLmYId0ag1bWnalSlUIy7D
         2d2NDtym0Wxj/x/W5SkYPuyVUxZGX/mYfhtxTlmmJiG0omvTfM0yUTF3EOK7kbb9RqXf
         i6fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760055725; x=1760660525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EFIzsRx5u+TjLRxFDsuPe1onjkTRP2yLnHKqtm1kJjU=;
        b=Zu2E1YpMNh8Syv7g07UwGdUTVs5iTY2nFvTGd5dRKzU7xWZLFXkKows5583+UuUmz2
         ZGkyy5D56oj/q8bI7oZGpI33SEni2eomzhXtlJG530MP2gItrEBJyfjuDu/+GbLH9r6F
         t1/N0pgcbeTcqJzUeoKY+ATHToy0aOwGdOeyJNf8a64KafYf+jApcV0POTptWCiYtPc2
         3WFNuZqu3YvrmfmQUPiHa2Qaox+CsERz4ONyw0fRtsll+lSKQqOdkRCzK6VPfEmrvo3R
         yBbqJbmh16eZzi4ge7IuL9/3UjeHzpONN0CUDOoxL9k7yX4Dm00HKR/IjBXXFYx2JF11
         jDBA==
X-Forwarded-Encrypted: i=1; AJvYcCV2ofti+ky6bpcrkBUngnhvZW70W/ZvIKDCL96dXvKV/gsBpJYAY9aeSlNOTbPH5vICcL5vsrx/lnRq@vger.kernel.org
X-Gm-Message-State: AOJu0YwI5L52H9VflBogLhHCMRHCwzXSE7DQ16850glc9fkZD5QGJHjt
	Bbw3Ce0RKNlHOr1214ZRum2olvEPAOlkVg78ZmtGz6Twt5WmqxuVTxKD+7eJMmLAmFVwIKy0wHx
	6Lhgq+hlyxirz62bXo/sHxkz0OXJzsdd/BVoNtmgU
X-Gm-Gg: ASbGncuGa9WhYkQX6NT3uPUD0gg6Sx8Pe2ih7x/5vKCJQs+37XmeJdvkCp+oyMni+Af
	8x8QVr6S0dOiveuUt0v+D8OqiwhhkSNZ5+YPRKsja5YBarqP0CbQieta2JBYvZR3APQRlMLFtig
	DQ4Ffnna/Rj9mLmkauqiZayb6/6fMcuz1wuxhOLwQhgj1VZirfHhs/pRNxc+5hPU32USjnE5//X
	VdABD0Fp+7i01G4g5NpziiwYMNOlcVTX3eJ1VCW/NLdHw5D+Q==
X-Google-Smtp-Source: AGHT+IGgcF8PSmTCucb4se7xEsYvasKr34DgUTWPZOYiUTBUmeR+w0x0qQVtaKpSbfh4u5srIAgqWPVaIcKX9+EuOes=
X-Received: by 2002:a17:90b:3844:b0:32e:d649:f98c with SMTP id
 98e67ed59e1d1-33b510f8fc3mr12348912a91.1.1760055725085; Thu, 09 Oct 2025
 17:22:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com> <20251008060000.3136021-2-royluo@google.com>
 <8966b6a9-ff70-4833-a5c7-c6d6c13c6c8b@kernel.org> <CA+zupgwLu-y26X9eiENyC28i9ZxCkuhb0X8X9H6HBpqkqJ7O3w@mail.gmail.com>
 <9ee299c1-edf4-4738-8b5e-6a684f683fbd@kernel.org>
In-Reply-To: <9ee299c1-edf4-4738-8b5e-6a684f683fbd@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 9 Oct 2025 17:21:27 -0700
X-Gm-Features: AS18NWC5EQBnjFzz6UkQXL4eyHUSSa6uRuaVLKwpG97sE-urd9eRzDvfbspqP2k
Message-ID: <CA+zupgxMfXE0YPTCFDsDOcwgQ0mzB40xZ=tLboMwzxxGfLj7kg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 9, 2025 at 12:26=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 09/10/2025 14:12, Roy Luo wrote:
> > On Wed, Oct 8, 2025 at 4:56=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On 08/10/2025 14:59, Roy Luo wrote:
> >>> Document the device tree bindings for the DWC3 USB controller found i=
n
> >>> Google Tensor SoCs, starting with the G5 generation.
> >>>
> >>> The Tensor G5 silicon represents a complete architectural departure f=
rom
> >>
> >>
> >> G5 does not have a model number like G1-G4?
> >
> > There's no model number for G5, I'm sticking to the existing "gs" prefi=
x
> > as they're still in the same SoC family.  Please let me know if you hav=
e any
> > concerns.
> >
> >>
> >>> previous generations (like gs101), including entirely new clock/reset
> >>> schemes, top-level wrapper and register interface. Consequently,
> >>> existing Samsung/Exynos DWC3 USB bindings and drivers are incompatibl=
e,
> >>
> >> Do not reference drivers. Explain the hardware.
> >
> > Ack, all mentions of "driver" will be removed in the next patch.
> >
> >>
> >>> necessitating this new device tree binding.
> >>>
> >>> The USB controller on Tensor G5 is based on Synopsys DWC3 IP and feat=
ures
> >>> Dual-Role Device single port with hibernation support.
> >>>
> >>> Signed-off-by: Roy Luo <royluo@google.com>
> >>> ---
> >>>  .../bindings/usb/google,gs-dwc3.yaml          | 145 ++++++++++++++++=
++
> >>>  1 file changed, 145 insertions(+)
> >>>  create mode 100644 Documentation/devicetree/bindings/usb/google,gs-d=
wc3.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/usb/google,gs-dwc3.yam=
l b/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml
> >>> new file mode 100644
> >>> index 000000000000..9eb0bf726e8d
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml
> >>> @@ -0,0 +1,145 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>> +# Copyright (c) 2025, Google LLC
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/usb/google,gs-dwc3.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Google Tensor Series (G5+) DWC3 USB SoC Controller
> >>> +
> >>> +maintainers:
> >>> +  - Roy Luo <royluo@google.com>
> >>> +
> >>> +description: |
> >>
> >>
> >> Do not need '|' unless you need to preserve formatting.
> >
> > Ack, will fix this in the next patch.
> >
> >>
> >>> +  Describes the DWC3 USB controller block implemented on Google Tens=
or SoCs,
> >>> +  starting with the G5 generation. Based on Synopsys DWC3 IP, the co=
ntroller
> >>> +  features Dual-Role Device single port with hibernation add-on.
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    items:
> >>> +      - enum:
> >>> +          - google,gs5-dwc3
> >>> +
> >>> +  reg:
> >>> +    minItems: 3
> >>
> >> Drop
> >>
> >>> +    maxItems: 3
> >>> +
> >>> +  reg-names:
> >>> +    description: |
> >>> +      The following memory regions must present:
> >>> +        - dwc3_core: Core DWC3 IP registers.
> >>> +        - host_cfg_csr: Hibernation control registers.
> >>> +        - usbint_csr: Hibernation interrupt registers.
> >>
> >> Drop description or move it to items in reg. See other bindings.
> >
> > Ack, will use an item list in reg instead.
> >
> >>
> >>> +    items:
> >>> +      - const: dwc3_core
> >>> +      - const: host_cfg_csr
> >>> +      - const: usbint_csr
> >>> +
> >>> +  interrupts:
> >>> +    minItems: 3
> >>
> >> Drop
> >
> > Ack, will use an item list instead.
> >
> >>
> >>> +    maxItems: 3
> >>> +
> >>> +  interrupt-names:
> >>> +    description: |
> >>> +      The following interrupts must present:
> >>> +        - dwc_usb3: Core DWC3 interrupt.
> >>> +        - hs_pme_irq: High speed remote wakeup interrupt for hiberna=
tion.
> >>> +        - ss_pme_irq: Super speed remote wakeup interrupt for hibern=
ation.
> >>
> >> From where did you get this style? Don't write bindings with chat gpt =
or
> >> whatever other tool. it is a waste of our time.
> >
> > I referenced the style from a recent dt binding change [1] that adds
> > "Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml".
> > I thought it would be a good reference because it's relatively new
> > and is also a binding for SNPS dwc3 glue logic. Perhaps that style
> > doesn't apply here because qcom,snps-dwc3.yaml supports
> > multiple compatible and here we have only one?
> >
> > Just to clarify, I'm a Gemini user and this patch is 100% organic,
> > hand-crafted by a living human brain :)
> >
> > [1] https://lore.kernel.org/all/20250414-dwc3-refactor-v7-2-f015b358722=
d@oss.qualcomm.com/
>
> Your code is not at all like above, you do not have any variants here,
> so you cannot use that syntax - is not correct here.
>
> Best regards,
> Krzysztof

Thanks for the clarification.

Regards,
Roy Luo

