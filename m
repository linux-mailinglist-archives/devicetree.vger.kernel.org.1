Return-Path: <devicetree+bounces-230552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E892C039F9
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:55:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B3E31AA2F5B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 21:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958A623C4F2;
	Thu, 23 Oct 2025 21:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tA6lyhxf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06BC17C21C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761256538; cv=none; b=QMTs0qyh8MS0dn9X87v0w24SuLoeqV+JpdL4ObqSBnrFm9E4CXTAHXX6GWTn+Z1aKYkzcXx/YbQt2JEJEL4Qkx4EYxPSBmvr085Q7+M0QHKGYmIHRCknMguWqJbCg0Ary/oWuECeZZrCR8B8MWPPBP1sG9MHILMql2w99cNdrPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761256538; c=relaxed/simple;
	bh=cog6S/R0M1m6Oqk0Kk2myV4ppTBdZBk+i/lE1k+LB6Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M9BOpMZVy0P7paKzC3R1oLCEO2op7AaCQtcRrK50O9TLwwg8lLzQOUx1S6O7pbgfkQ/qjsOFaHUzY7RyNl84K+hkALv6lB3g0etjzk0zGJp6GmplaxwCRk9O0dPPz0Tl6Zt5kq9skaLTdpsZfeIapfDTR8f7tvErh7qbBv7PYC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tA6lyhxf; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-78118e163e5so2374795b3a.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1761256536; x=1761861336; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyDCy69Q/3azt6BaC0jOoV9WgJt8g3WAXELT1WMNnq8=;
        b=tA6lyhxf1EzZb4irJcJFuvS8i0lkN5hHIoG0dS3Fs2QwrNpgtnslTVraXiDGA6Uubj
         7h+aGj1Ad7bouuXRc4RfZC12kjPxr0TkCqJFpsWxDzH+s0/4s9Xn8Yv4dXPtVjDAMS0R
         DaKSARzs4sesU3f9AFh6E2hIb+Nm7sbcB2NC0h9DnkRNnfVKg1PQBIIOPZ/ADkfKCwMn
         NxvgJ5LGnDp0Fok1IPwrKMvrPUk440jZVEGHZxXYtKhzf+On7IOhoeroZIGCFFWZpLAc
         P6Ed20pElUkZINhUMWm+a2FP4atAshBG9ItEDuLG71PShVS+/tNYcYjiDEnEAPupBblo
         hy0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761256536; x=1761861336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wyDCy69Q/3azt6BaC0jOoV9WgJt8g3WAXELT1WMNnq8=;
        b=uqhQVnFTn9Ndar1mv9HEzHfylB/SO+uzq0ycbRefRVcBXzmzO2bvaSHAtq2vV+lP8p
         hyiJCCMnKTw1NgD6tdchOxfMcbeQRPcdbRCuNEBreljv1eOksto2D3B12O1V6lOAEv6O
         Xsgwmhqfw9MmYlUFVFH5ZgF5GrWlLI5eI/R6Fcmgk6GTL70oWFztn8aQdPjP7szt2WJP
         jivCAoFqD0R5JKkqPcCq5Piji1fKuh7exM2EZxKXLzSQy8VnGPaDpy0A/cVE06IDFXfm
         b628MxcqisS8D7EjsHzLqkn/Buv6gWPCWhwL2MNkyTphYYUhuwvIbgcylxEAp86QnI2s
         JhbA==
X-Forwarded-Encrypted: i=1; AJvYcCWA3h55YsDKwuDn+6sSIy3QBjx4mWHeahAy2/QAVLFZbX+bZwnPXylurn1V+1P+ecEDbMSDr5N/iT8E@vger.kernel.org
X-Gm-Message-State: AOJu0YywB0yL4AtjYon88og40tLfhKtmGLkNuXSqAF3QA+wb3GrXDsJK
	cdDyAQOD1WPI5S6N6+HOaExYimy0T1XjbV74UsDmq+XLkqDhcGyJht97I3QLy4YdaAvQTKK7hlt
	Au3WcBi3XZihcEmTz4MzqgMv1Agnz3yt41TCebTxP
X-Gm-Gg: ASbGncs72uU0FMiVXnWgQBxyrVLzlMCdViDR48drwXBeW6PR6EKX8NCzKXsKMBb7365
	vnBIyi2uct2FJBuPlndB0ZuV7xV/O/r13vNMjsXKJBz8osvy/cQJ9WpvjXIInpV0xcvdKqly/YB
	EexUbWMAfGKfr8H1rRvZU8C6LUMutaOTDDM+jBO3ZoTNj2+aSw8qDH+LRtqB8qjwSahC8Bny7HK
	2JcdLZ1yuEVTqiW9SL0wr2O/iAJYLT7gG5t07mtUSdn3BjlM5Vodr8j8MnKGi+S1g5Y/zLOrg08
	YCAhVMsheZuq4gSUsatVZFCR+g==
X-Google-Smtp-Source: AGHT+IEqbJRbROlu/bm5j7ru2eVdv2x6DLq7HzQUwIw+dlex2w8ixWSRMneuISkc9NPo7yYqi/7YRgyhlNDhmAvraa4=
X-Received: by 2002:a17:903:1ae4:b0:290:ad7a:bb50 with SMTP id
 d9443c01a7336-29489e60c01mr3502165ad.27.1761256535858; Thu, 23 Oct 2025
 14:55:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017235159.2417576-1-royluo@google.com> <20251017235159.2417576-2-royluo@google.com>
 <20251023-collie-of-impossible-plenty-fc9382@kuoka> <698ba0ea-3367-4fc0-bd4f-0177283c2e77@kernel.org>
In-Reply-To: <698ba0ea-3367-4fc0-bd4f-0177283c2e77@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 23 Oct 2025 14:54:59 -0700
X-Gm-Features: AS18NWDaD_LUo2BMw-kgQvNid_X2lR-GtxBED31qsEqmuEgC28zy2xECKsvSUZI
Message-ID: <CA+zupgxv9h1jOW=Jnx29yJJQBHOqBrY6tSBhoUaLb4eYuXhW7g@mail.gmail.com>
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

On Wed, Oct 22, 2025 at 11:58=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 23/10/2025 08:43, Krzysztof Kozlowski wrote:
> > On Fri, Oct 17, 2025 at 11:51:58PM +0000, Roy Luo wrote:
> >> Document the device tree bindings for the USB PHY interfaces integrate=
d
> >> with the DWC3 controller on Google Tensor SoCs, starting with G5
> >> generation. The USB PHY on Tensor G5 includes two integrated Synopsys
> >> PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo PHY IP.
> >>
> >> Due to a complete architectural overhaul in the Google Tensor G5, the
> >> existing Samsung/Exynos USB PHY binding for older generations of Googl=
e
> >> silicons such as gs101 are no longer compatible, necessitating this ne=
w
> >> device tree binding.
> >>
> >> Signed-off-by: Roy Luo <royluo@google.com>
> >> ---
> >>  .../bindings/phy/google,gs5-usb-phy.yaml      | 104 +++++++++++++++++=
+
> >>  1 file changed, 104 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-u=
sb-phy.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.=
yaml b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> >> new file mode 100644
> >> index 000000000000..c92c20eba1ea
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> >> @@ -0,0 +1,104 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +# Copyright (C) 2025, Google LLC
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/phy/google,gs5-usb-phy.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Google Tensor Series (G5+) USB PHY
> >> +
> >> +maintainers:
> >> +  - Roy Luo <royluo@google.com>
> >> +
> >> +description: |
> >> +  Describes the USB PHY interfaces integrated with the DWC3 USB contr=
oller on
> >> +  Google Tensor SoCs, starting with the G5 generation.
> >> +  Two specific PHY IPs from Synopsys are integrated, including eUSB 2=
.0 PHY IP
> >> +  and USB 3.2/DisplayPort combo PHY IP.
> >> +  The hardware can support three PHY interfaces, which are selected u=
sing the
> >> +  first phandle argument in the PHY specifier::
> >
> > Just one ':', anyway this sentence and below does not belong to
> > description but to phy-cells. You describe the cells.
> >
> > Or just mention the header with IDs - here or in phy-cells.
>
>
> If you go with free-form text description in phy cells, then some
> example could be:
> renesas,rcar-gen2-usb-phy.yaml
>
> For the header (in this case clocks):
> display/msm/dsi-phy-common.yaml
>
>
> Best regards,
> Krzysztof

Krzysztof,

Thanks a lot for providing the reference!
I will go with the free-form text description in phy cells following
renesas,rcar-gen2-usb-phy.yaml in the next version.

Thanks,
Roy Luo

