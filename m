Return-Path: <devicetree+bounces-230554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D0FC03AAF
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 00:23:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7700D4E2B6D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 22:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B290926B2A5;
	Thu, 23 Oct 2025 22:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2SbePHD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF951C3C11
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761258191; cv=none; b=c1xOU7Ll5LrsiNibFPAyD5ZeG8TQe9t6T+OaDkAJRzfKz229F9xzi7bfmYVxxHmxT6xJV2TY5qU6id15BDFI1x9SGQHQR89ccWtM1K8hybLuoogSfFuAuWudpcjfhTRNKCRyEKIOsF2f5nq1AxxXvydbn5mFqWxgEgNhyOYfjYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761258191; c=relaxed/simple;
	bh=MVe+v9KcwNtkJuqhP8yhYRz/ezPwcZFtou635fuXLm8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KMRvL32dwqZtO3VKvabvncXsasjNyso/wgpt2VwE68JhKOE2AeceAca2cZTvp4kviIo/pHWkoN5t8iGlZPyNp7qf4r6TTEw2iQvSEs7E2Xc0pZ9f75g/oeD2ph1y5qaHWY0qh9Ds9EYiw22Z7nLTc7CJaOkRfpq0RNIJii8DrT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2SbePHD9; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-79a7d439efbso10999946d6.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1761258189; x=1761862989; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+oAqH47cRsHD+glZ5Q5KatVvZ4QYYjYdLprWcY98JU=;
        b=2SbePHD9MK4625pBVlDRRqQLLVmlle4EuuSU7pOpOxgnHApbO0fe56Fan10aOPouph
         nt4EdYXjVixN3IxJZeBeR9SRUJJaYNLxj87H4BVM7V3E8qr/pLmfgk8JUAbZJSSvuv/H
         dX7NQIH1kcrFB/+7+kz19/eZ0J3UJDjXdYpHlw26PafS6FQ2yzAWFCfGYTfqvjsAkf0Q
         m4EgnV5Kz4xtJmk44cMuUutEsS/oIboidavTswSjg0kGyjudoLXrjNJeUE56mAXiGp8h
         KxeLtyd/ELzGs0Q9ITCBmFIrEP/x2VOcKUWs5tq3jORpp0uz+gvDp20MCPoMcqvQXF5w
         KGGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761258189; x=1761862989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+oAqH47cRsHD+glZ5Q5KatVvZ4QYYjYdLprWcY98JU=;
        b=qYSTnuj6pK1zr+5ugUnq4UTdOobBrDPnsvsj+ui/52st/FKLHpjrqTfwxSqS3eXiS+
         R6xT4KeW3piCERWezF965GHOFXJuN60/OWbHf6BqUOSAZlOYxO5PnWmevXs+N8/nMZhp
         G4ArHBTe/xh3mCJWRJ3s6XQxpxqTtNolfFNKINSe6j38RIOo85Fqmpio2yiGHmRGj34T
         89toL/NLdHKsJbLIIqX4XiGthq75Ls/c97ieUkEBmilxaSn+4pQ9y3jjbrV4/rysvFOC
         X4gWewNuoN8W0eB5m6SeOY/HAEnVs8+vzneRcwlT7SvBf8ecDsnjNeYSb+74XLQJwr3Q
         SZwg==
X-Forwarded-Encrypted: i=1; AJvYcCXI70HONmPzN5sYfuSY+Hn/WpMUJJ130gnoyYTVxvII5HZi0XUty9fTiuV/46sCw1SvQ0PZHWkZUPhT@vger.kernel.org
X-Gm-Message-State: AOJu0YyDEIBlK/8VgQ1fD+m5XE4Bkq8wiN77ryEmSioABeNsgoMzAl2c
	QZR4HaDM01cP6rIPUBKp4xfRDtpH3dxys0/Pf9NMj/MevEKlf7Mvm7vsxvcNKXGU/hamS55ZnuG
	Ll1SVQy9GI9e32Xe+ZCitZqd6vjb8K47d4aLGmjWm
X-Gm-Gg: ASbGnctaAS+6dpSoNy87+8dvCxHf9yxQqpARNry0bjvRb9xwguavyq7iKVeRSHYzwmd
	p9A7Zwk/WpYbxyXG691sbuzyoTgrU4ZjdHksllNdJPmfsHxi6sDaebeFrYnjKlnBW5rv6aBUyLw
	fO+/X0e8+R6+uVjvteK+dW9iWqcTRzzCiucnrehsK+PCpB6VWc0lr4uRU6GqI/iQ5eRSbPbnizC
	tVgZVIatthnZKclARkKnWqVbHSJActfv0FbDQXguOea4LX8Z1jPys/wPBRiypyK9xcoFYIjkahO
	ciIive4t375y5DPEFD5GQNyd9Q==
X-Google-Smtp-Source: AGHT+IGuCtYibPzQqqrjGNwM0zHaChLdpzHrb0geAS9qmAdlqFhgbwbFHzP5YvFRilqFdVAT8PX1Hff+wlSfn57dinQ=
X-Received: by 2002:ad4:4ea4:0:b0:81c:6455:ec77 with SMTP id
 6a1803df08f44-87f9ee7d0f6mr50574026d6.40.1761258188413; Thu, 23 Oct 2025
 15:23:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017235159.2417576-1-royluo@google.com> <20251017235159.2417576-2-royluo@google.com>
 <20251023-collie-of-impossible-plenty-fc9382@kuoka>
In-Reply-To: <20251023-collie-of-impossible-plenty-fc9382@kuoka>
From: Roy Luo <royluo@google.com>
Date: Thu, 23 Oct 2025 15:22:31 -0700
X-Gm-Features: AWmQ_bmWas4lIuJKQxW2zSsbNKRRFte9quUEFbVLot4b-vV1AO7q94wTEgHcExg
Message-ID: <CA+zupgwQTLEs8_7i-VsGbGV7O2Y3XFA1C3aV7iuv2HLOwKns3w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 22, 2025 at 11:43=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Fri, Oct 17, 2025 at 11:51:58PM +0000, Roy Luo wrote:
> > Document the device tree bindings for the USB PHY interfaces integrated
> > with the DWC3 controller on Google Tensor SoCs, starting with G5
> > generation. The USB PHY on Tensor G5 includes two integrated Synopsys
> > PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo PHY IP.
> >
> > Due to a complete architectural overhaul in the Google Tensor G5, the
> > existing Samsung/Exynos USB PHY binding for older generations of Google
> > silicons such as gs101 are no longer compatible, necessitating this new
> > device tree binding.
> >
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  .../bindings/phy/google,gs5-usb-phy.yaml      | 104 ++++++++++++++++++
> >  1 file changed, 104 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-us=
b-phy.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.y=
aml b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..c92c20eba1ea
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> > @@ -0,0 +1,104 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright (C) 2025, Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/google,gs5-usb-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Tensor Series (G5+) USB PHY
> > +
> > +maintainers:
> > +  - Roy Luo <royluo@google.com>
> > +
> > +description: |
> > +  Describes the USB PHY interfaces integrated with the DWC3 USB contro=
ller on
> > +  Google Tensor SoCs, starting with the G5 generation.
> > +  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.=
0 PHY IP
> > +  and USB 3.2/DisplayPort combo PHY IP.
> > +  The hardware can support three PHY interfaces, which are selected us=
ing the
> > +  first phandle argument in the PHY specifier::
>
> Just one ':', anyway this sentence and below does not belong to
> description but to phy-cells. You describe the cells.
>
> Or just mention the header with IDs - here or in phy-cells.
>
> > +    0 - USB high-speed.
> > +    1 - USB super-speed.
> > +    2 - DisplayPort
> > +
> > +properties:
> > +  compatible:
> > +    const: google,gs5-usb-phy
> > +
> > +  reg:
> > +    items:
> > +      - description: USB2 PHY configuration registers.
> > +      - description: USB 3.2/DisplayPort combo PHY top-level registers=
.
> > +
> > +  reg-names:
> > +    items:
> > +      - const: u2phy_cfg
> > +      - const: dp_top
> > +
> > +  "#phy-cells":
> > +    const: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: USB2 PHY clock.
> > +      - description: USB2 PHY APB clock.
> > +
> > +  clock-names:
> > +    items:
> > +      - const: usb2_phy
>
> core
>
> > +      - const: u2phy_apb
>
> apb
>

Just to provide the full context, these two clocks/resets
(usb2_phy and u2phy_apb) are specifically for eUSB2 PHY.
USB3/DP combo PHY has its own clock/reset that hasn't
been added yet, we would have to differentiate them once
USB3 support is added in the future.
I'm fine with the suggested name change, and we can
address the naming again when USB3 is ready for
integration.

Regards,
Roy Luo

> > +
> > +  resets:
> > +    items:
> > +      - description: USB2 PHY reset.
> > +      - description: USB2 PHY APB reset.
> > +
> > +  reset-names:
> > +    items:
> > +      - const: usb2_phy
> > +      - const: u2phy_apb
>
> Same here
>
> > +
> > +  power-domains:
> > +    maxItems: 1
>
> Best regards,
> Krzysztof
>

