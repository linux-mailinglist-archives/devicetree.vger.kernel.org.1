Return-Path: <devicetree+bounces-23651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE9480BF52
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 03:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2DE33B207C7
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 02:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D118F1401D;
	Mon, 11 Dec 2023 02:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="cbxefL5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E76ADA
	for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 18:49:52 -0800 (PST)
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4258b6df295so378191cf.0
        for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 18:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1702262991; x=1702867791; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xAKWZkH+/lnkBoBv416M+3qlIhJzFPIoQWktBVQdFFQ=;
        b=cbxefL5xpn51FpKhA18WVgq4YxQrsbDB+Uh1DbdrwjIw0CpBDDyvAdMtlVhdMw3Q3T
         5X8rC3ZKMi+PpVvEEk96DWGEdkrMaziaRItMPidBE/WnkOn6nB4HYtjDXef09kMLuggb
         wONwsxWcFFZaxn4+dRK9HBKAR3xUIDj7dtFptmAiEDeAe54nhceIeHsUgj+8jEkGgzDG
         0l0ztBDclI2E7MnsCj0qc42clcUE5xQrRhp6MXZAHNmIswIcy154Sbvr1236oBPGAUhv
         mkxreMuflAEfhpG/F8AuRCGy25s6WPDietwINapdk3DrU5YHWrsbBRVXq0brF571UTlX
         nnfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702262991; x=1702867791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xAKWZkH+/lnkBoBv416M+3qlIhJzFPIoQWktBVQdFFQ=;
        b=aqGu73VGKT/kgJubT6qFWk85wjyFUJbDXhaixdjYj4tmV9TLwBoB5qacU5gjWl4lFR
         T82whfQE5/Fq5tfPhpztDBYY8aKB/tr/AS/MyZ5v963dYiKcD8Axq3cDsiKLUShnw/B7
         CetKnQCnG0E1cDmfxJsIqqtsWHv/E1S2f46lfDFl3Vr77toSFlTqrzIQlcs2Jf/0Wrhv
         SnGK+KYaUsMYD+L3AsT8KF2oi1BkSbgvWtOskxkJFtZ6JWSjWW5vbYOPF/yuBEzPmnOC
         c+KyE6hP4tLfDCFUWS97NHXGi7eGgnH6NOfgwi0wJl7Fw9RoWDNQ9uG/yNP776tXbZd+
         3fCQ==
X-Gm-Message-State: AOJu0YwpnOTXD3qBBnl8yuEAWy+VvTUXrAiy2nJ3QI1ojn/LbLajyvKt
	k9qgaop5/WJNHeA4kO9+xdHb+OCZJB6Gfwul947MOQ==
X-Google-Smtp-Source: AGHT+IGtAkZ7CEXELZD8kIrd7WU2TqPRqxsegaLZE9xIsDpVMVAgmYmUSqDu0X+QbaslW+OGRI1klNYqhoP7SvcXAk0=
X-Received: by 2002:ac8:5908:0:b0:423:98a3:422 with SMTP id
 8-20020ac85908000000b0042398a30422mr470684qty.11.1702262991017; Sun, 10 Dec
 2023 18:49:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231205030114.1349089-1-kyletso@google.com> <20231205030114.1349089-2-kyletso@google.com>
 <20231208165039.GA1756077-robh@kernel.org>
In-Reply-To: <20231208165039.GA1756077-robh@kernel.org>
From: Kyle Tso <kyletso@google.com>
Date: Mon, 11 Dec 2023 10:49:35 +0800
Message-ID: <CAGZ6i=1FPUaN4Ji4T3t3-_g2KHEngCcZ0rLR9AyG5RBpv5OCeA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: connector: Add child nodes for
 multiple PD capabilities
To: Rob Herring <robh@kernel.org>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux@roeck-us.net, 
	heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org, 
	badhri@google.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 9, 2023 at 12:50=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Dec 05, 2023 at 11:01:13AM +0800, Kyle Tso wrote:
> > Commit 662a60102c12 ("usb: typec: Separate USB Power Delivery from USB
> > Type-C") allows userspace to configure the PD of a port by selecting
> > different set of predefined PD capabilities. Define the PD capability
> > sets in DT for better configurability in device modules.
> >
> > Define an optional child node "capabilities" to contain multiple USB
> > Power Delivery capabilities.
> >
> > Define child nodes with pattern (e.g. caps-0, caps-1) under
> > "capabilities". Each node contains PDO data of a selectable Power
> > Delivery capability.
> >
> > Also define common properties for source-pdos, sink-pdos, and
> > op-sink-microwatt that can be referenced.
> >
> > Signed-off-by: Kyle Tso <kyletso@google.com>
> > ---
> > v4 -> v5:
> > - Fixed DT_CHECK errors
> >
> >  .../bindings/connector/usb-connector.yaml     | 88 +++++++++++++------
> >  1 file changed, 59 insertions(+), 29 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/connector/usb-connector.=
yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > index 7c8a3e8430d3..7945d09d1f59 100644
> > --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > @@ -14,6 +14,8 @@ description:
> >    of a USB interface controller or a separate node when it is attached=
 to both
> >    MUX and USB interface controller.
> >
> > +$ref: "#/$defs/capabilities"
> > +
> >  properties:
> >    compatible:
> >      oneOf:
> > @@ -67,6 +69,15 @@ properties:
> >        model it as a regulator. See bindings/regulator/fixed-regulator.=
yaml
> >
> >    # The following are optional properties for "usb-c-connector".
> > +  source-pdos:
> > +    $ref: "#/$defs/capabilities/properties/source-pdos"
> > +
> > +  sink-pdos:
> > +    $ref: "#/$defs/capabilities/properties/sink-pdos"
> > +
> > +  op-sink-microwatt:
> > +    $ref: "#/$defs/capabilities/properties/op-sink-microwatt"
>
> With the $ref above, these aren't needed. But you have to use
> unevaluatedProperties instead of additionalProperties.
>
> I fixed this up and applied.
>
> Rob

Thank you, Rob!

--
Kyle

