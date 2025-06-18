Return-Path: <devicetree+bounces-187289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3EEADF5DA
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 20:30:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 775CE16380D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 18:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D18B427E071;
	Wed, 18 Jun 2025 18:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="beE8Yhl0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21691624FE
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 18:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750271435; cv=none; b=jrzlwM03uHlM7Eht2M0ISENRGvsIDZzMD3GA5nu2a0ReDwaJCjGijeAwVpN+Aip3rusIBbJz4Qyh+gO+hFcWo8sPib3VzMxXXC4Nf3mYPtC8uaOgpCY2PiRWbBJ9q920vnJP0u1qxRRNI4HMT4ojvYPtR0s7RObcmC5vrqSDns0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750271435; c=relaxed/simple;
	bh=TM0iUtuSGttZvY+F3duDm0+3NU1dVHc/oHDdU5GRTyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KBPGRP3/ENFnbhACn8asIwvH7FnjeOEk7s5p0OngqlVaof+BC+u1w7MdA64ojNA5kjXfrSA7zg+fQNccBXsPOVSkCYjcdq+U5yXrzovPxaqe74Qta/9DznPzC4V+wUf6UAGOc28mghypoWGIw4muvIwcIQPhs0I06vecS8sx+yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=beE8Yhl0; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-adb2bb25105so1233646666b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 11:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750271431; x=1750876231; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X7lUi7npYS0LrQcLxFEVa4tlTggcMcFSSiLkXJeqeLM=;
        b=beE8Yhl0ZRfjZDeNz3ZalyWAla7XQe8vYrmLCX0h6XE4dEZ5D4XpZgeGh97QF6YAqQ
         9mIkQ2d8D6yl2uELrbsfIMe30hb/JdWNjV4QI/xt69/t9vCa8jhZkUdwxryt3NxiiJwy
         Fm50CYho3HZIfMskiqV1PUzB3V+Q/VA/lmd9Qh1GneQS/o0iFDUCgOD46V20ewngI9LN
         d7n5d04kD3Yh21vDFFKQ8R+Vg05mZpVKIkLKtHMVy1Jb4j3M+KHzHW2KBRiWUVCxYiKT
         o5BbtZ4jbstrmJCyDpwwUpOijulm3mAMkQ7pg3seplyUE8w1XJfvNITNcrrcdh3WKB0F
         xcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750271431; x=1750876231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X7lUi7npYS0LrQcLxFEVa4tlTggcMcFSSiLkXJeqeLM=;
        b=XVT2HhFxjbBfq1Cpy7RtnLx5Bm6RP22Kdz/WqxhH1ZT2nod1oiR/Bcx3KbV4qylz5w
         uGlFBhuU4lzhAS+AU7xEpfocR+IXvA/lrPkjDxbKJ5+vSPfw7ZRDuyTXR06NwY16phVE
         SPe7M4jjIo/yZm0KJLFs2q8mbKhyp1a9eYzV+eo4HUSp+xYtO+agsKVDbYBLOIxY5g0K
         fyd65I7mKLgM8PIpmxzP9ebfDSllg9GQr5D17ISCu1F++ZCPyKLfTvCYdER+36QrNbgN
         SdglQszvIloLx6Fsa1rwFkEkCKK2+lNUBP5FTr28ml9q6e+z3QZpAkTGKwJVCSju0nGn
         E6Jg==
X-Gm-Message-State: AOJu0YwYJhrEYfWkWmpD+K13FLBDeWUeVuGRQ0IPJ9NY3uDkq1kdgkO/
	Zw/TGAjX3MqR0X+VURQ49vS3WbSsV1UIkjZZtN7yWkmd3BTKMbM9aRgbBRp9vf1KqMM+axbS0rP
	HNAv/20Zkf84FNK7DmFgG4ttoqB7ucIqV8yTf
X-Gm-Gg: ASbGnctlyT7hE+kSl2uWNM0Zz0ulegKSTzLv3Qc/m6CNSaDw10IFQu4gUCYkLJMfB/f
	wyA9UYkdfs6xCgxoS2lu9z/Qe54HvEhVZzHa210VkB9xLS7n2s6Eqimm7VYGsLIyanctRn3/DSx
	wPmNi/BxJDIaJ4nFknIxJ6i5SVw8zOdkTc37rQadEdMIpOSF6Jz9/7F+w=
X-Google-Smtp-Source: AGHT+IHvg2hURWaN2l1lY0/Zki1fpVUE/sHv0VAB00YIuy16xfBAFJ86FgcTLJdEojvzQsivDK4R2TqDqw2MdSsZpgg=
X-Received: by 2002:a17:907:2da9:b0:ade:4121:8d3f with SMTP id
 a640c23a62f3a-adfad29dd50mr1518229066b.8.1750271430511; Wed, 18 Jun 2025
 11:30:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
 <CAMuHMdXVEOBRU+pzcmRXq7YJXhYnhPjK72Oh31y=n33VZR2JKw@mail.gmail.com>
 <CAHp75Vd8U-zJ1b+Atpr=8WXhPpB9sFcYJsmC0aStiRKSZWYKBg@mail.gmail.com>
 <CADsqogCfvR7b02HowsbZ5qkhCOi92TGkJMeCn_sFwn8=KbaWGw@mail.gmail.com> <CAHp75VewPpAy3JeOGt-uotiir7=hfXWvA=-h4Hu5fA-8jw7mdw@mail.gmail.com>
In-Reply-To: <CAHp75VewPpAy3JeOGt-uotiir7=hfXWvA=-h4Hu5fA-8jw7mdw@mail.gmail.com>
From: Jean-Francois Lessard <jefflessard3@gmail.com>
Date: Wed, 18 Jun 2025 14:30:19 -0400
X-Gm-Features: Ac12FXyk3OrubQ-tP3NSTdSy2lBqHKlncfWBoJmuHwpl4MSAEVA7NU5fxDI4tkQ
Message-ID: <CADsqogBTRG1osg61C_Le4OLZ-y3_AwShMXoEzHJ=GYBrbEoTqg@mail.gmail.com>
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
To: devicetree@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, andy@kernel.org, 
	Andy Shevchenko <andy.shevchenko@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 17, 2025 at 2:41=E2=80=AFPM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Tue, Jun 17, 2025 at 4:39=E2=80=AFPM Jean-Francois Lessard
> <jefflessard3@gmail.com> wrote:
>
> Please, stop top-posting!

Well received!

>
> > Thank you both for your feedback, it=E2=80=99s much appreciated. I=E2=
=80=99d like to
> > clarify a few points that I hope will help explain the design choice
> > behind the proposed DT properties.
> >
> > While these LED controllers are related to traditional 7-segment
> > displays, what I=E2=80=99m trying to describe in DT is somewhat distinc=
t. The
> > controllers manage a grid (matrix) of outputs, where =E2=80=9Cgrids=E2=
=80=9D represent
> > rows and =E2=80=9Csegments=E2=80=9D represent columns. This follows the=
 terminology
> > used in the controller datasheets. The 'segment-mapping' property is
> > not about logical digit-to-segment mappings (which the driver handles
> > through 'map_to_7segment.h' and similar helpers), but about the
> > physical wiring between the controller=E2=80=99s matrix outputs and the=
 actual
> > display elements on a specific board.
> >
> > In other words, these properties describe board-specific hardware
> > wiring: how the controller=E2=80=99s generic matrix connects to the
> > manufacturer=E2=80=99s particular display layout. This varies significa=
ntly
> > between devices. Some boards wire grids to digits and segments to
> > segments; others wire grids or segments to icons. Some even transpose
> > the matrix so that grids drive segments and segments drive digits.
> > That=E2=80=99s why I proposed the optional 'transposed' property to swi=
tch the
> > matrix rows and columns in software to match the board=E2=80=99s wiring=
.
> >
> > Importantly, the 'compatible' string already maps to the specific
> > controller type and its protocol, but it can=E2=80=99t capture the boar=
d-level
> > wiring configuration. The same controller model is reused in many
> > different boards with different wiring. For example, across 74 display
> > configurations I=E2=80=99ve looked at, there are 39 distinct combinatio=
ns of
> > controller type, digit grids, segment mappings, and icon assignments.
> > There=E2=80=99s no standard wiring for a given controller chip that the=
 driver
> > could infer from 'compatible' alone.
> >
> > That=E2=80=99s why I felt it was appropriate to describe this board-spe=
cific
> > wiring in DT, keeping the driver generic and agnostic of any
> > particular board layout, while letting each board describe its wiring
> > explicitly.
> >
> > I hope this clarifies the motivation. I want to make sure this
> > approach aligns with upstream expectations before preparing formal
> > patches. Please let me know if this seems like a reasonable direction
> > or if you=E2=80=99d recommend a different solution.
> >
> > Thanks again for your time and guidance.
>
> You need to talk to the DT people for this. I'm not an expert, but as
> I said it feels (and you confirmed it) as PCB level of the
> description. I believe it may be part of DT, but I can't tell you how.
>

Thank you Andy for clarifying. Since this question was originally sent
to the devicetree list (with [DT] marker in subject and DT maintainers
subscribed), I=E2=80=99d like to kindly follow up to ask if any DT maintain=
ers
could provide guidance.

Patch for guidance below:
[PATCH] dt-bindings: auxdisplay: Add TM16xx family LED controller bindings

Signed-off-by: Jean-Fran=C3=A7ois Lessard <jefflessard3@gmail.com>
---
 .../bindings/auxdisplay/tm16xx.yaml           | 150 ++++++++++++++++++
 1 file changed, 150 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/auxdisplay/tm16xx.yam=
l

diff --git a/Documentation/devicetree/bindings/auxdisplay/tm16xx.yaml
b/Documentation/devicetree/bindings/auxdisplay/tm16xx.yaml
new file mode 100644
index 0000000..f3d411f
--- /dev/null
+++ b/Documentation/devicetree/bindings/auxdisplay/tm16xx.yaml
@@ -0,0 +1,150 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/auxdisplay/tm16xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Auxiliary displays based on TM16xx and compatible LED controllers
+
+maintainers:
+  - Jean-Fran=C3=A7ois Lessard <jefflessard3@gmail.com>
+
+description: |
+  TM16xx controllers manage a matrix of LEDs organized in grids
(rows) and segments (columns).
+  Each grid or segment can be wired to drive either a digit or
individual icons, depending on the
+  board design.
+
+  Typical display example:
+
+           ---    ---       ---    ---
+    WIFI  |   |  |   |  -  |   |  |   |  USB  PLAY
+           ---    ---       ---    ---
+    LAN   |   |  |   |  -  |   |  |   |  BT   PAUSE
+           ---    ---       ---    ---
+
+  The controller itself is agnostic of the display layout. The
specific arrangement
+  (which grids and segments drive which digits or icons) is
determined by the board-level
+  wiring. Therefore, these bindings describe hardware configuration
at the PCB level
+  to enable support of multiple display implementations using these
LED controllers.
+
+properties:
+  compatible:
+    enum:
+      - titanmec,tm1618
+      - titanmec,tm1620
+      - titanmec,tm1628
+      - titanmec,tm1650
+      - fdhisi,fd620
+      - fdhisi,fd628
+      - fdhisi,fd650
+      - fdhisi,fd6551
+      - fdhisi,fd655
+      - princeton,pt6964
+      - hbs,hbs658
+
+  reg:
+    maxItems: 1
+
+  tm16xx,digits:
+    description: |
+      Array of grid (row) indexes corresponding to  specific wiring
of digits in the display matrix.
+      Defines which grid lines are connected to digit elements.
+    $ref: /schemas/types.yaml#/definitions/uint8-array
+    items:
+      minimum: 0
+      maximum: 7
+    minItems: 1
+    maxItems: 8
+
+  tm16xx,segment-mapping:
+    description: |
+      Array of segment (column) indexes specifying the hardware
layout mapping used for digit display.
+      Each entry gives the segment index corresponding to a standard
7-segment element (a-g).
+    $ref: /schemas/types.yaml#/definitions/uint8-array
+    items:
+      minimum: 0
+      maximum: 7
+    minItems: 7
+    maxItems: 7
+
+  tm16xx,transposed:
+    description: |
+      Optional flag indicating if grids and segments are swapped
compared to standard matrix orientation.
+      This accommodates devices where segments are wired to rows and
grids to columns.
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^led@[0-7],[0-7]$":
+    $ref: /schemas/leds/common.yaml#
+    properties:
+      reg:
+        description: Grid (row) and segment (column) index in the
matrix of this individual LED icon
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - tm16xx,digits
+  - tm16xx,segment-mapping
+
+additionalProperties: true
+
+examples:
+  - |
+    display_client: i2c {
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        display@24 {
+            compatible =3D "titanmec,tm1650";
+            reg =3D <0x24>;
+            tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
+            tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
+
+            #address-cells =3D <2>;
+            #size-cells =3D <0>;
+
+            led@4,0 {
+                reg =3D <4 0>;
+                function =3D "lan";
+            };
+
+            led@4,1 {
+                reg =3D <4 1>;
+                function =3D "wlan";
+            };
+        };
+    };
+  - |
+    display_client: spi {
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        display@0 {
+            compatible =3D "titanmec,tm1628";
+            reg =3D <0>;
+            tm16xx,transposed;
+            tm16xx,digits =3D /bits/ 8 <1 2 3 4>;
+            tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
+
+            #address-cells =3D <2>;
+            #size-cells =3D <0>;
+
+            led@0,2 {
+                reg =3D <0 2>;
+                function =3D "usb";
+            };
+
+            led@0,3 {
+                reg =3D <0 3>;
+                function =3D "power";
+            };
+        };
+    };
--=20
2.43.0

> > On Tue, Jun 17, 2025 at 7:58=E2=80=AFAM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > >
> > > On Tue, Jun 17, 2025 at 12:43=E2=80=AFPM Geert Uytterhoeven
> > > <geert@linux-m68k.org> wrote:
> > > > On Mon, 16 Jun 2025 at 22:06, Jean-Francois Lessard
> > > > <jefflessard3@gmail.com> wrote:
> > >
> > > > > I=E2=80=99m working on preparing a new driver and device tree bin=
ding for
> > > > > auxiliary LED display controllers of the TM16XX class, and I=E2=
=80=99d like to
> > > > > request guidance on property naming conventions before submitting=
 a
> > > > > formal patch series.
> > > > >
> > > > > The driver (tentatively named tm16xx) supports LED controller chi=
ps
> > > > > that share a common hardware design and programming model, produc=
ed by
> > > > > multiple vendors, including:
> > > > > - Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
> > > > > - FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
> > > > > - Princeton Technology Corp: PT6964
> > > > > - HBS: HBS658
> > > > >
> > > > > These devices are functionally compatible and appear in various
> > > > > consumer and embedded hardware (e.g., Android TV boxes) to contro=
l
> > > > > both 7-segment displays and custom icons that may look like this:
> > > > >
> > > > >           ---    ---       ---    ---
> > > > >  [WIFI]  |   |  |   |  -  |   |  |   |  [USB]  [PLAY]
> > > > >           ---    ---       ---    ---
> > > > >  [LAN]   |   |  |   |  -  |   |  |   |  [BT]   [PAUSE]
> > > > >           ---    ---       ---    ---
> > > > >
> > > > > My current binding defines properties describing hardware layout,=
 for example:
> > > > >
> > > > >     tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
> > > > >     tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
> > > > >     tm16xx,transposed;
> > > > >
> > > > > These describe hardware characteristics (grid/digit arrangement,
> > > > > segment mapping, transposed display output) that apply to this cl=
ass
> > > > > of compatible hardware, regardless of vendor.
> > > >
> > > > Personally, I am a bit reluctant to try to describe the segment map=
ping
> > > > in DT, as it can become rather cumbersome.
> > >
> > > Yes, the segment mapping is implied already by the mapping table for
> > > the characters and...
> > >
> > > > The alternative is to use
> > > > a device-specific compatible value, and put the mapping in the driv=
er,
> > > > like I did for the Adafruit 7 and 14 segment Featherwing displays i=
n
> > > > drivers/auxdisplay/ht16k33.c.
> > >
> > > ...as Geert said, if required, can be bound to the compatible string
> > > and hardcoded in the driver.
> > >
> > > The problem is, that often segment mapping is PCB level of the wiring
> > > and to be honest I dunno how to distinguish such a scenario easily as
> > > one would need to check compatible string for the component _and_ for
> > > the board.
>
> --
> With Best Regards,
> Andy Shevchenko

