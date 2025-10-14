Return-Path: <devicetree+bounces-226305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 85ECABD7017
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 03:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6839B4EC2EE
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 01:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D1A2571A5;
	Tue, 14 Oct 2025 01:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="v4wBxSH8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE3E1F4E4F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760406439; cv=none; b=HxHezAXgxFfEcPxzFs8x3WST9EKqYnwjXcMWurSJUDCeVlupR/+04um5q0gREg0EYJobexPxY9xHTcm2f6rrKyKulGH1zaIDY0GtHbNMz9h/bu1trZD2NZC+egIkW8BvWTtThczM06x0ctAwDP2u/sMJdx99gRT940S3FAIBckQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760406439; c=relaxed/simple;
	bh=2CsPuuc7sXtpg4PefmMtwBtWIx1LnKQTXPGwO21uvw8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kng+ipIkyzZLC4IP9JW+vCJAUARLFc3OeO7OsKDpJNkvfi1T8j95b1Ge/7vZwHi1vpQZN+g0+J/2PsDY+VRIeEU+VDDIT2JYEwt7cEuwYDIMbzOnvGxOz/KDRQ+xKE4cPo8e2uu2DGiIYhaVjYPjnDUUn1K9ZR804jTw9SXMCKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=v4wBxSH8; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-26c209802c0so46561255ad.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 18:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760406437; x=1761011237; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGjEi7N29NLVZhXUSQ4DWylm+1B6zKlX/oEjJXnY15U=;
        b=v4wBxSH84Dw03LmIFtkvaIgk4SZDxJ1Gx1nKsIuoIvhidmL6h0tT8DUYWuLZnuSJyK
         1plIWRwu3Mqh/xfw8G4evCU4exh4xwR11w4gzAwKz/Eu8Lcv+3fY5KV4oO0wbe2vpYSa
         887wCOn5qDkLoUKfTgojP8DntC38AYQqPtEg9/MNZe5ArwRGc6ugv2H2McuaZ6iTOzOT
         nGzyEEFNZobtQaKvmkPE002nEp5kMJyXvCzD6dmZsSbkHedTKTkq915zPRCHlmEvtrKZ
         kjBF7kwfjW7reyNYGwoNzLUq8R6L1oPdGFE6eRXyxugqal9CR9aKhBIB1MYFwcvLYLe2
         umKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760406437; x=1761011237;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jGjEi7N29NLVZhXUSQ4DWylm+1B6zKlX/oEjJXnY15U=;
        b=TkmqrEL2q7MD26EuSHE/d9/HoXw3/tRQyd1YLVYYytveyC35l7FZx4EYAwLj29SvZa
         K+csVWNP/0l0i7crkXv1kO3u+YAUx7Ed2IzKf/Daq4EKX0YmOfjkm3L1E9fcvzfbdIk6
         e4zsFm3mHCHzTwqthFH+2XT3LbuzEalFSHmvYEq5lbHdHC1/TITL9qKnFmCdcR946uei
         kW/j+JA/M0fAGeI0bZahoquZvAvPsnEfuV9RYIAmAI5MQo/IS83u/uPz/EWybZAj4nM2
         ahIlRVIH4YYNcbMWicdE0m8NQDNLDdlWuZ1XqnUAIZpBwvUcWfC6PGCk7/vwPrgnzoyk
         6GtA==
X-Forwarded-Encrypted: i=1; AJvYcCXMr7x9TMGB4OdYIwvPvcOgZk5pdyjLLWdH40UCK/YDibj2S2DEc7+Rtb8Gbx9TVE0fPgP3XSGBOBlF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6JpXZ6yGqkI26izVlvOMMpXTciLlltYvDc5ni+bvdRfZmey5Y
	UdNGlFkwXalrGcXwWy4TmskmUS1n9LpZJwd8nsIlnuXueWRuYtei6uMhYV9G+D52rBr40ZnlQni
	MndOS//uF0JaOad3g/oo9QrdzrMU+eMsIfEKt2nDL
X-Gm-Gg: ASbGncsimgYnG/1fDDjDvTRIp/Rc68KVlhPxX4kDLdjVqAtx8QjIa7TaoYKOQtmwdtp
	4zFeEQEVhmsdbYZNJKEjlpTNDyuWS6IDcWUGCh5R2rmbEmq8RN/tCCscOBzdcQoc17+RGBzlvWb
	W7u1/V2dMiNP1EmdBDR9Snvgts0R8txR8592k9iZmXTC4ZagU0r6rGQy4Aj7w0RAf5sq9f7alY0
	yOCfaEkAtT/vn4l2DmlMYg90yFScFw1JWR5y8QX+cIZPnxBzAE+ei/zfbf7WF4RqdSHzTiEGD25
X-Google-Smtp-Source: AGHT+IFfPTj8w4BDR5D6JCsus2aD4rztuewWvMbCmVCgUqrOKGYsSJJX4teAZRKcnFjdoRF0OnNBqOS96lWMLzstGuY=
X-Received: by 2002:a17:902:e952:b0:262:4878:9dff with SMTP id
 d9443c01a7336-290273567a8mr277763005ad.12.1760406436203; Mon, 13 Oct 2025
 18:47:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-4-royluo@google.com>
 <75756635-b374-4441-8526-175210e01163@kernel.org>
In-Reply-To: <75756635-b374-4441-8526-175210e01163@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Mon, 13 Oct 2025 18:46:39 -0700
X-Gm-Features: AS18NWCzy6Gx5qemaFGw2t6jXb-2epsDNHczVHslksbyWgF7Radr-Z781gw06UU
Message-ID: <CA+zupgwHFpP5GEwGxOksmLJBU7+Kr_o0p50Pad1NmwNB0AxcGA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
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

On Fri, Oct 10, 2025 at 5:11=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 10/10/2025 22:16, Roy Luo wrote:
> > +  reg:
> > +    items:
> > +      - description: USB2 PHY configuration registers.
> > +      - description: DisplayPort top-level registers.
> > +      - description: USB top-level configuration registers.
> > +
> > +  reg-names:
> > +    items:
> > +      - const: u2phy_cfg
> > +      - const: dp_top
> > +      - const: usb_top_cfg
> > +
> > +  "#phy-cells":
> > +    const: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  orientation-switch:
> > +    type: boolean
> > +    description:
> > +      Indicates the PHY as a handler of USB Type-C orientation changes
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - "#phy-cells"
> > +  - clocks
> > +  - resets
> > +  - power-domains
> > +  - orientation-switch
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    soc {
> > +        #address-cells =3D <2>;
> > +        #size-cells =3D <2>;
> > +
> > +        usb_phy: usb_phy@c410000 {
> > +            compatible =3D "google,gs5-usb-phy";
> > +            reg =3D <0 0x0c450014 0 0xc>,
> > +                  <0 0x0c637000 0 0xa0>,
>
> You probably miss DP support and this does not belong here.

This register space isn't solely for DP operation, a significant portion
manages the custom combo PHY. Consequently, this space is essential
even for USB-only operation. We can expect more registers in the space
to be utilized when DP support is added.

While I acknowledge the current name is confusing, it directly reflects
the hardware documentation. We can either adhere to the hardware
documentation's naming or propose a more descriptive alternative.
What's your preference?

>
> > +                  <0 0x0c45002c 0 0x4>;
>
> That's not a separate address space. I really, really doubt that
> hardware engineers came with address spaces of one word long.

I initially created this space to access the usb2only mode register,
which must be programmed when the controller operates in high-speed
only mode without the USB3 PHY initialized. Upon review, I now
believe the controller driver is the better location for this configuration=
,
as the register logically belongs there and the controller can tell
whether usb3 phy is going to be initialized.

That is, I'm removing this register space in the next patch.

Thanks,
Roy Luo
>
> > +            reg-names =3D "u2phy_cfg", "dp_top", "usb_top_cfg";
> > +            #phy-cells =3D <1>;
> > +            clocks =3D <&hsion_usb2_phy_reset_clk>;
> > +            resets =3D <&hsion_resets_usb2_phy>;
> > +            power-domains =3D <&hsio_n_usb_pd>;
> > +            orientation-switch;
> > +        };
> > +    };
> > +...
>
>
> Best regards,
> Krzysztof

