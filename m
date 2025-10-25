Return-Path: <devicetree+bounces-231015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 16183C08ABF
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 06:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1A9A400453
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 04:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3590288C24;
	Sat, 25 Oct 2025 04:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E29BKJNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26FC221FDE
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 04:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761366039; cv=none; b=AFKrZ5ox9SGsvrVd7mgdGQHYbt5UQRhvPe05xTAb1t4e8NVnqDsKC8ryyWo537VrZ5xnMT7GNr0Vx6JVfGUjcMta6xhi3z2nAYrXvlr6YhYji2uz5uR38zesJqul1XxL7LJfUdosTAprLsnHR2y0HQebad7Pv2IXaSrPdGzMrSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761366039; c=relaxed/simple;
	bh=P22wUr3x08sSd7YJTryjvh2rA+koFVJGCh9mK+4faT0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uWfQNOMvkdMyhTh/FpZgFBP+4bqR3SLXWWdR5qCkR5sHJrEU8Iw9yIak1svPlpWcBxWUGg5cYtqc4a6k9AyeXw+YAW9bX94FwOR3i1emeEsO6nnDNQpuwwJuL3vS6tIAVkm5nAY7DKP480lqs0e27KHeDF3SHVvjuv0zJBEc7x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E29BKJNL; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4710665e7deso13304985e9.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 21:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761366035; x=1761970835; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uLMsn4Fd4C/vDGn0sCjxZvTsu/rbZsiFR/9FbW92yMc=;
        b=E29BKJNLiO+WjEoKnVkkWgv1h6LGKAeMpyYUoW2Nu3JtE2bMCKLe/sTPVTSObhv6W2
         i9zeyVqEmUrKwVhVZW/cqifYrpDhqrzz6eIYlK+dFel7DFfWTavYkpPO585mRxaNyLpF
         UIFAbPlmHOau9kHWdKoO5jvOS9Zrrt3hCQPxHWffam9OSRpUaGUscKU3x0jvKpQGQpAX
         6KCkdgFREtplMpPbkjfclN+md6a2mjOtPnbx5MvLsIHb9AIdXlbJgOMw15U76bi1w4sX
         Y7ds3hBkjxF8LQIOeU5AVDo2EGIjzj4w0rHUobTNZAn6asyCiZhRbNpZWaMdTdqJjg2a
         JyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761366035; x=1761970835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uLMsn4Fd4C/vDGn0sCjxZvTsu/rbZsiFR/9FbW92yMc=;
        b=cp8XCtNV9luvbqrGU3HHe9jrjfzCG66ORh8Umb8KbRoKH+LX1wZqxLYZqcMKivHBJi
         wYefcI0JI4823xcOni9oki57SCaLeX+D4NIyeOmnAXRm+wXnGUOg0ZthkCOZt4cDuqp9
         JmqAZm9pJIFJ1ko5palWo9m4mHlcK40yf1ev2mi5n+j0r5WCBaCdITl0b/qHSQ4Dt1pY
         8K+5pN78snth4whX5TS1+0hmk0BfSQ6dd45PgGy4GEOz8mcf06llBdc4ptgqSzE93djf
         2JWz6/8px78sGpye+MRjBxlzvTCy6Dizigb27FgBuG6wCd2bwItdRUaeRFuskPgrl0MW
         nWig==
X-Forwarded-Encrypted: i=1; AJvYcCUseBEFnSR7XnekFa2RHMNzMZLyoRGEcm9Ypv5GiJOeceNs+yNXOas+wanow37Ijly9CxktOReyZOQS@vger.kernel.org
X-Gm-Message-State: AOJu0YwctOSTm3BPvgT6r9Qn3o6X4UezjBU+ime3muli1CRQz+cjoILN
	yvK7LKOuv2oAeTNUN5C1RC1OJfA4fyEt0AL34lc7ksnmwJ1CKN94JlzGjNljTZavA3LhLyamgYf
	+3YHbgLtmLocDVb0n2vBxlXRF9rcv0PQ=
X-Gm-Gg: ASbGncsa0JKM+hMpEW14Cqk/iiqj6OnGHzabajXUfQ1/vvdahfuLpSTVG6Bpor5KfJ5
	PZlK1pj2AZNjBRaiEm+Nt5qeRVByrRWjDF3dtrHzwrbesUXxt7WnT19E58xcgmxTZfXuT+c+o52
	H/lAFUUfwQ0i7NWHazQ9jOW9snfTqUye+t+2Xw1AiLWtzBTCDrczd8hzNuCY8CoxVJ/6ojpJFvA
	Ex2ybfynJMy3Kzoc4UjGP8yiSR/9e2exFDCG2DA7f8cyfoRxx2l9SSlLJTFhKFJ6JPhbEE=
X-Google-Smtp-Source: AGHT+IGJMyVz63yP/GSXaMJAOLGx6fyPfMoVX1/oUbB8QYAV7ZaUxvisSMyEQ+TczyPPANns36vEqiEvvX2UTQl+tX4=
X-Received: by 2002:a05:600c:4e45:b0:471:786:94d3 with SMTP id
 5b1f17b1804b1-475cb02faa5mr65058745e9.22.1761366034734; Fri, 24 Oct 2025
 21:20:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251024201836.317324-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251024232010.GA2992158-robh@kernel.org>
In-Reply-To: <20251024232010.GA2992158-robh@kernel.org>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Sat, 25 Oct 2025 05:20:08 +0100
X-Gm-Features: AWmQ_bkQw9el4GpprHOa5Iaqen28UQ8ewlt4yoguZG3z40AiI3DxWU0FJ_UjXs0
Message-ID: <CA+V-a8svLWD+qGTATNS5b4_4Oo7QuW2=v8jMZyNn-hJx99C_tQ@mail.gmail.com>
Subject: Re: [PATCH net-next] dt-bindings: net: phy: vsc8531: Convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thank you for the review.

On Sat, Oct 25, 2025 at 12:20=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Fri, Oct 24, 2025 at 09:18:36PM +0100, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Convert VSC8531 Gigabit ethernet phy binding to DT schema format. While
> > at it add compatible string for VSC8541 PHY which is very much similar
> > to the VSC8531 PHY and is already supported in the kernel. VSC8541 PHY
> > is present on the Renesas RZ/T2H EVK.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> > Inspired from the DT warnings seen while running dtbs check [0],
> > took an opportunity to convert this binding to DT schema format.
> > As there was no entry in the maintainers file Ive added myself
> > as the maintainer for this binding.
> > [0] https://lore.kernel.org/all/176073765433.419659.2490051913988670515=
.robh@kernel.org/
> >
> > Note,
> > 1] dt_binding_check reports below warnings. But this looks like
> > the same for other DT bindings too which have dependencies defined.
> > ./Documentation/devicetree/bindings/net/mscc-phy-vsc8531.yaml:99:36: [w=
arning] too few spaces after comma (commas)
> > <path>/mscc-phy-vsc8531.example.dtb: ethernet-phy@0 (ethernet-phy-id000=
7.0772): 'vsc8531' is a dependency of 'vsc8531,edge-slowdown'
> >       from schema $id: http://devicetree.org/schemas/net/mscc-phy-vsc85=
31.yaml
> > <path>/mscc-phy-vsc8531.example.dtb: ethernet-phy@0 (ethernet-phy-id000=
7.0772): 'vddmac' is a dependency of 'vsc8531,edge-slowdown'
> > 2] As there is no entry in maintainers file for this binding, Ive added=
 myself
> > as the maintainer for this binding.
> > ---
> >  .../bindings/net/mscc-phy-vsc8531.txt         |  73 ----------
> >  .../bindings/net/mscc-phy-vsc8531.yaml        | 125 ++++++++++++++++++
> >  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +-
> >  3 files changed, 126 insertions(+), 74 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/net/mscc-phy-vsc8=
531.txt
> >  create mode 100644 Documentation/devicetree/bindings/net/mscc-phy-vsc8=
531.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt=
 b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> > deleted file mode 100644
> > index 0a3647fe331b..000000000000
> > --- a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> > +++ /dev/null
> > @@ -1,73 +0,0 @@
> > -* Microsemi - vsc8531 Giga bit ethernet phy
> > -
<snip>
> > +$id: http://devicetree.org/schemas/net/mscc-phy-vsc8531.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Microsemi VSC8531 Gigabit Ethernet PHY
> > +
> > +maintainers:
> > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > +
> > +description:
> > +  The VSC8531 is a Gigabit Ethernet PHY with configurable MAC interfac=
e
> > +  drive strength and LED modes.
> > +
> > +allOf:
> > +  - $ref: ethernet-phy.yaml#
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - ethernet-phy-id0007.0570 # VSC8531
> > +          - ethernet-phy-id0007.0772 # VSC8541
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - ethernet-phy-id0007.0570 # VSC8531
> > +          - ethernet-phy-id0007.0772 # VSC8541
> > +      - const: ethernet-phy-ieee802.3-c22
> > +
> > +  vsc8531,vddmac:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      The VDDMAC voltage in millivolts. This property is used in combi=
nation
> > +      with the edge-slowdown property to control the drive strength of=
 the
> > +      MAC interface output signals.
> > +    enum: [3300, 2500, 1800, 1500]
> > +    default: 3300
> > +
> > +  vsc8531,edge-slowdown:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
>
> Use '>' if you have formatting.
>
OK.

> > +      Percentage by which the edge rate should be slowed down relative=
 to
> > +      the fastest possible edge time. This setting helps reduce electr=
omagnetic
> > +      interference (EMI) by adjusting the drive strength of the MAC in=
terface
> > +      output signals. Valid values depend on the vddmac voltage settin=
g
> > +      according to the edge rate change table in the datasheet.
> > +      For vddmac=3D3300mV valid values are 0, 2, 4, 7, 10, 17, 29, 53.=
 (7 recommended)
> > +      For vddmac=3D2500mV valid values are 0, 3, 6, 10, 14, 23, 37, 63=
. (10 recommended)
> > +      For vddmac=3D1800mV valid values are 0, 5, 9, 16, 23, 35, 52, 76=
. (0 recommended)
> > +      For vddmac=3D1500mV valid values are 0, 6, 14, 21, 29, 42, 58, 7=
7. (0 recommended)
>
> Indent lists by 2 more spaces and a blank line before.
>
Ok, will do.

> > +    enum: [0, 2, 3, 4, 5, 6, 7, 9, 10, 14, 16, 17, 21, 23, 29, 35, 37,=
 42, 52, 53, 58, 63, 76, 77]
> > +    default: 0
> > +
> > +  vsc8531,led-0-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: LED[0] behavior mode. See include/dt-bindings/net/msc=
c-phy-vsc8531.h
> > +      for available modes.
> > +    minimum: 0
> > +    maximum: 15
> > +    default: 1
> > +
> > +  vsc8531,led-1-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: LED[1] behavior mode. See include/dt-bindings/net/msc=
c-phy-vsc8531.h
> > +      for available modes.
> > +    minimum: 0
> > +    maximum: 15
> > +    default: 2
> > +
> > +  vsc8531,led-2-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: LED[2] behavior mode. See include/dt-bindings/net/msc=
c-phy-vsc8531.h
> > +      for available modes.
> > +    minimum: 0
> > +    maximum: 15
> > +    default: 0
> > +
> > +  vsc8531,led-3-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: LED[3] behavior mode. See include/dt-bindings/net/msc=
c-phy-vsc8531.h
> > +      for available modes.
> > +    minimum: 0
> > +    maximum: 15
> > +    default: 8
> > +
> > +  load-save-gpios:
> > +    description: GPIO phandle used for the load/save operation of the =
PTP hardware
> > +      clock (PHC).
> > +    maxItems: 1
> > +
> > +dependencies:
> > +  vsc8531,edge-slowdown: [ vsc8531,vddmac ]
>
> You either need quotes on 'vsc8531,vddmac' or use this style:
>
If I use the quotes I get the below error, so I choose the below option ins=
tead.

mscc-phy-vsc8531.yaml:104:28: [error] string value is redundantly
quoted with any quotes (quoted-strings)

> vsc8531,edge-slowdown:
>   - vsc8531,vddmac
>

Cheers,
Prabhakar

