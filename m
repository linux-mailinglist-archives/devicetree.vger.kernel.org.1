Return-Path: <devicetree+bounces-274820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHK6Bflks2lvVwAAu9opvQ
	(envelope-from <devicetree+bounces-274820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:14:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EB227C318
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6E5F3047513
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20AF30498E;
	Fri, 13 Mar 2026 01:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QNMdAt9O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6711A3029
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773364469; cv=pass; b=bo94UHHhDDNTa73gci2JDVrXxq5yxssaLEVluEQyfy5bIoE/6911qrpEVRzyRcnRTElRCWIdbU9wWkskqqs7C9B53g7U2hn4qoGkn1WJZLU2ub3DjqxoNoc4uccDBEMqbt1A5OoLtHhGHodk5FpaLQFvzehc4Xzi2Dk4cj5aiPY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773364469; c=relaxed/simple;
	bh=psKktp/nup6nZMgzTPATdryw8+DhKQuOchQeXOfmWq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GUiRnZlfmcu7ppV9R1uvs1g9+z5R8SrJUeTGKUqPa21wAKFJ+LEKkwN4o4C56Pd+oXmkXwZujFvKxNjQGXXpXAH7a8e9WxSzyNXMNqt/jhsJhhOWVi4Pu1OdmCfxRlwuFjfbs41pCx85klrtc++/c3x1ktI0UvH6sYKt2txecgw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QNMdAt9O; arc=pass smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-64ad79df972so1986490d50.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:14:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773364466; cv=none;
        d=google.com; s=arc-20240605;
        b=Wn7S6SjKqvQ0qCdsUdRvLFmlZIBfOKiUM+4R1ykferPJQRM/3XtFNevfqbXONVJk7z
         cClEUeWcnC44MzuD9G7wxkZXB/MAju9YZmnlKjGHoz5fMVR1A3zbDuiLfoubcLg4VHVJ
         iGsp1r1wVD2mtS1sVOE0O8dXuZG1+iRYPrTLAgO/GFz3NYK7VSQWeQsB0QcssBI8D9ft
         iObW4v2e9xPWD5tUJTNmD3ZUKMkZFSVU+CdZCYUGNEysSdWjT7xzvR8R8Fu2J3llmAT8
         XZEmeO0/uIeKkUOBBAf3BTcIc8IkVJQpO/Gju5hw5zOgSXzPdogJD345k9Cdcyp5po01
         eCyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XsVwh2464IoFcXnN+yaN2QavLIXog4pSrjEAjn/PCrA=;
        fh=sJHV4bZb5CV47yVpmE4hiZtWtFdRaalRt28IvYL9Ftk=;
        b=hYoefJA/9r2504XnSxWkmcCaeefNvCWVL3EKiNHoRBQmvUWb6LvBDOGp2Azw6Sk2Y2
         MPftDXoilp5z34I+lWweu5fpwHvZUBXhOebfMVTAHzN3r9NiwbEcjmQTznuqrubVWvRL
         6/K5W4/XLCmtml/rMb16gc1LX/j9pS6guf3Ph4a9Ug1F0JEydwjw5lxTclMvAemJXqbP
         5htquT9RvDkKTFK0DjQS9RaBZvpwWQJSrBzD0ln3fsW2JyDdOuoEcH2It9wqGOxlycg8
         h/LAGh/O2Ve3NkCpF9pw7uv2R1iUIRrtLmW88uSch8AaFhJKs15FG0RXYr5rEkgF2tkY
         owgQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773364466; x=1773969266; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XsVwh2464IoFcXnN+yaN2QavLIXog4pSrjEAjn/PCrA=;
        b=QNMdAt9Ov1YHfhL+lLr19x1w72S5dTMgRwKkyoaA/JlGg5OOeJKuh6tX/82tkcetHs
         65Qk4HvMBWhISc/eX8p2x8FTB9nC4218HQsRNK0aVyl6D2CHXn44UDN9Pnh9iPYk0uHJ
         HpDnW+Rk0E/JsHQjcdolwdxyt7gOkCR+SgoPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773364466; x=1773969266;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XsVwh2464IoFcXnN+yaN2QavLIXog4pSrjEAjn/PCrA=;
        b=dwZawaYpX5IoIZOJhcD7RDIEkr5p33yGaC7Z+vK2xDhU8C3/ZoENbRHA5psi11lioE
         0WQha2E8CjiNPTLi/oE+EJAo2E7fuqahc8NWmzpHf2Nk5ZUg3LrZEGbJmFLDG6JV3nvR
         vgkJfEDBZgy7lxX6xbgkj4oX6+VdMyxz08qbpr8rxasRJ2dplv2eHKSerHnMWbJherH9
         S1bq3G7LtJGWfaDADEcquamLKjSv4NoMofp1K+iFTTUuJcRVJ+EGThf+qwmMJpiYJ0r7
         eutCSJ/QftKWY4IjBEXgUJo54L/0btm/y1iqHCHrsnyYPVJy0k+qzio9gIXFA3WuaTFS
         IkDA==
X-Forwarded-Encrypted: i=1; AJvYcCXT8mQl3Yskx95gtbNRWy8Xxbxmu2Qt+g7LNiyV63CM9RpbL2O9r5HPZecgEcnby1C87BryXnSTkTKT@vger.kernel.org
X-Gm-Message-State: AOJu0YyG6mFCVLsHeAKDfGOoulnZiRLWFVeosjt3U1AETGJWwZlb6b3o
	4UcGrH2XU1eTbs6gogqeuFwh00dxHPdrjceNRXPkw5QCX5bNHaOOGQ3Lj/zrABNbDJreyXxhCGD
	Ss5+VMR3OvU+nBVNov/ZJt5raRknWuOqdfiwrifn8
X-Gm-Gg: ATEYQzyhJ5tvBcBKljc3TuLaVQdGd00gX4LLWHeGTLYEzimCjNd+jFi8J8r9Gp48QSK
	AKuWnoYupcwz6or8++gwpcFnghL3dyA8DWOAVCMQgPjcirCGTUW2qkbIMmuBjIDVUMydZNSKXVF
	7YX22tg6xbWVVbJ9ez1yk9gRDJB31Bc7BcK9hRqWtY9UbZDqabF7FpK3awR+jMJ+7Vd/4/gNECL
	Yi+l4r7lsBi4cgBxkNBUayj6iFtLocJzDO87WtMQhMsj4/y+wF3C8qJ5wX764gzOxu9rnHICxv7
	TQY9mNW4/As8zCZOAkNzTrbPV3tRyVqUKZngrMSb
X-Received: by 2002:a05:690e:4397:b0:64c:a4ab:e4e8 with SMTP id
 956f58d0204a3-64e62f82e22mr1347986d50.20.1773364466142; Thu, 12 Mar 2026
 18:14:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
 <20260303-send-upstream-v1-9-1515ba218f3d@chromium.org> <CAL_JsqKN45FswZjo+27OzoHMeM7ec3hS7piF7SKNykmXNSmA0g@mail.gmail.com>
 <CAEe3GZHSqepvjjopLwrWX3_n4+RnCeVVQnAO=Swixgu2z3OpUw@mail.gmail.com> <CAEe3GZE_79Lqtzv4ZRi6zWuV_DgkCREBDcZJjpR+X9OaGZCA2g@mail.gmail.com>
In-Reply-To: <CAEe3GZE_79Lqtzv4ZRi6zWuV_DgkCREBDcZJjpR+X9OaGZCA2g@mail.gmail.com>
From: Jingyuan Liang <jingyliang@chromium.org>
Date: Thu, 12 Mar 2026 18:14:14 -0700
X-Gm-Features: AaiRm53z2pwybc4kbLAIMgl_PixN23FG-WeD36EXTB7vuwi5JCVo-2fq7v7lJcI
Message-ID: <CAEe3GZEOYCFRfz8W3p2_JpYrRTfqSzp7mdGtS+wMHP7oYgSHDA@mail.gmail.com>
Subject: Re: [PATCH 09/12] dt-bindings: input: Document hid-over-spi DT schema
To: Rob Herring <robh@kernel.org>
Cc: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Mark Brown <broonie@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, 
	linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	linux-spi@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Henry Barnor <hbarnor@chromium.org>, 
	Dmitry Antipov <dmanti@microsoft.com>, Jarrett Schultz <jaschultz@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274820-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,goodmis.org,efficios.com,gmail.com,vger.kernel.org,chromium.org,microsoft.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyliang@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,chromium.org:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,suse.cz:email]
X-Rspamd-Queue-Id: B2EB227C318
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 5:58=E2=80=AFPM Jingyuan Liang <jingyliang@chromium=
.org> wrote:
>
> (Resending to the list. Apologies, I accidentally dropped the CCs on
> my initial reply!)
>
> On Tue, Mar 3, 2026 at 5:53=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
> >
> > On Tue, Mar 3, 2026 at 12:14=E2=80=AFAM Jingyuan Liang <jingyliang@chro=
mium.org> wrote:
> > >
> > > Documentation describes the required and optional properties for
> > > implementing Device Tree for a Microsoft G6 Touch Digitizer that
> > > supports HID over SPI Protocol 1.0 specification.
> > >
> > > The properties are common to HID over SPI.
> > >
> > > Signed-off-by: Dmitry Antipov <dmanti@microsoft.com>
> > > Signed-off-by: Jarrett Schultz <jaschultz@microsoft.com>
> > > Signed-off-by: Jingyuan Liang <jingyliang@chromium.org>
> > > ---
> > >  .../devicetree/bindings/input/hid-over-spi.yaml    | 153 +++++++++++=
++++++++++
> > >  1 file changed, 153 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/input/hid-over-spi.yam=
l b/Documentation/devicetree/bindings/input/hid-over-spi.yaml
> > > new file mode 100644
> > > index 000000000000..b623629ed9d3
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/input/hid-over-spi.yaml
> > > @@ -0,0 +1,153 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/input/hid-over-spi.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: HID over SPI Devices
> > > +
> > > +maintainers:
> > > +  - Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > > +  - Jiri Kosina <jkosina@suse.cz>
> > > +
> > > +description: |+
> > > +  HID over SPI provides support for various Human Interface Devices =
over the
> > > +  SPI bus. These devices can be for example touchpads, keyboards, to=
uch screens
> > > +  or sensors.
> > > +
> > > +  The specification has been written by Microsoft and is currently a=
vailable here:
> > > +  https://www.microsoft.com/en-us/download/details.aspx?id=3D103325
> > > +
> > > +  If this binding is used, the kernel module spi-hid will handle the=
 communication
> > > +  with the device and the generic hid core layer will handle the pro=
tocol.
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - microsoft,g6-touch-digitizer
> > > +          - const: hid-over-spi
> > > +      - description: Just "hid-over-spi" alone is allowed, but not r=
ecommended.
> > > +        const: hid-over-spi
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  reset-gpios:
> > > +    maxItems: 1
> > > +    description:
> > > +      GPIO specifier for the digitizer's reset pin (active low). The=
 line must
> > > +      be flagged with GPIO_ACTIVE_LOW.
> > > +
> > > +  vdd-supply:
> > > +    description:
> > > +      Regulator for the VDD supply voltage.
> >
> > Is this part of the spec? This won't scale for multiple devices with
> > different power rails.
>
> This is not part of the spec but is needed for power management. Is it ok=
ay I
> mark it as optional? Thank you.
>
> >
> > > +
> > > +  input-report-header-address:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    minimum: 0
> > > +    maximum: 0xffffff
> > > +    description:
> > > +      A value to be included in the Read Approval packet, listing an=
 address of
> > > +      the input report header to be put on the SPI bus. This address=
 has 24
> > > +      bits.
> > > +
> > > +  input-report-body-address:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    minimum: 0
> > > +    maximum: 0xffffff
> > > +    description:
> > > +     A value to be included in the Read Approval packet, listing an =
address of
> > > +      the input report body to be put on the SPI bus. This address h=
as 24 bits.
> > > +
> > > +  output-report-address:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    minimum: 0
> > > +    maximum: 0xffffff
> > > +    description:
> > > +      A value to be included in the Output Report sent by the host, =
listing an
> > > +      address where the output report on the SPI bus is to be writte=
n to. This
> > > +      address has 24 bits.
> > > +
> > > +  post-power-on-delay-ms:
> > > +    description:
> > > +      Optional time in ms required by the device after enabling its =
regulators
> > > +      or powering it on, before it is ready for communication.
> >
> > Drop. This should be implied by the compatible.
>
> Thank you, I will fix this in v2.
>
> >
> > > +
> > > +  minimal-reset-delay-ms:
> > > +    description:
> > > +      Optional minimum amount of time in ms that device needs to be =
in reset
> > > +      state for the reset to take effect.
> >
> > Drop. This should be implied by the compatible.
>
> I will fix this in v2.
>
> >
> > > +
> > > +  read-opcode:
> > > +  $ref: /schemas/types.yaml#/definitions/uint8
> > > +    description:
> > > +      Value to be used in Read Approval packets. 1 byte.
> > > +
> > > +  write-opcode:
> > > +  $ref: /schemas/types.yaml#/definitions/uint8
> > > +    description:
> > > +      Value to be used in Write Approval packets. 1 byte.
> >
> > Why are these and the address properties above not defined by the
> > spec? Do they vary for a specific device? If not, then they should be
> > implied by the compatible.
>
> These properties are not defined by the spec:
>
> "The Input Report Address (header or body) and READ opcode are retrieved
> from ACPI."
>
> Same for the output report address and write opcode. I will drop these in=
 v2.

Hi Rob,

Please disregard my previous reply about dropping the read/write opcodes an=
d
input/output addresses. The spec does not define these fields. Instead, it =
says
these values are retrieved from ACPI _DSM methods. If we remove them from
the binding, the driver is not very generic. Would it be okay to keep them?

>
> >
> > > +
> > > +  hid-over-spi-flags:
> > > +  $ref: /schemas/types.yaml#/definitions/uint16
> > > +    description:
> > > +      16 bits.
> > > +      Bits 0-12 - Reserved (must be 0)
> > > +      Bit 13 - SPI Write Mode. Possible values -
> > > +        * 0b0- Writes are carried out in Single-SPI mode
> > > +        * 0b1- Writes are carried out in the Multi-SPI mode specifie=
d by bits
> > > +               14-15
> > > +      Bits 14-15 - Multi-SPI Mode. Possible values -
> > > +        * 0b00- Single SPI
> > > +        * 0b01- Dual SPI
> > > +        * 0b10- Quad SPI
> >
> > We already have SPI properties to define the bus width for read and wri=
te.
>
> Will fix this in v2.
>
> >
> > > +
> > > +required:
> > > +  - compatible
> > > +  - interrupts
> > > +  - reset-gpios
> > > +  - vdd-supply
> > > +  - input-report-header-address
> > > +  - input-report-body-address
> > > +  - output-report-address
> > > +  - read-opcode
> > > +  - write-opcode
> > > +  - hid-over-spi-flags
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/irq.h>
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    spi {
> > > +      #address-cells =3D <1>;
> > > +      #size-cells =3D <0>;
> > > +
> > > +      hid@0 {
> > > +        compatible =3D "hid-over-spi";
> > > +        reg =3D <0x0>;
> > > +        interrupts-extended =3D <&gpio 42 IRQ_TYPE_EDGE_FALLING>;
> > > +        reset-gpios =3D <&gpio 27 GPIO_ACTIVE_LOW>;
> > > +        vdd-supply =3D <&pm8350c_l3>;
> > > +        pinctrl-names =3D "default";
> > > +        pinctrl-0 =3D <&ts_d6_reset_assert &ts_d6_int_bias>;
> > > +        input-report-header-address =3D <0x1000>;
> > > +        input-report-body-address =3D <0x1004>;
> > > +        output-report-address =3D <0x2000>;
> > > +        read-opcode =3D <0x0b>;
> > > +        write-opcode =3D <0x02>;
> > > +        hid-over-spi-flags =3D <0x0000>;
> > > +        post-power-on-delay-ms =3D <5>;
> > > +        minimal-reset-delay-ms =3D <5>;
> > > +      };
> > > +    };
> > > \ No newline at end of file
> >
> > Fix this.
>
> Will fix this in v2.
>
> >
> > Rob

