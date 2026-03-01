Return-Path: <devicetree+bounces-269690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Jon8LY8WpGm0WwUAu9opvQ
	(envelope-from <devicetree+bounces-269690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 11:35:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5691CF30E
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 11:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 883A430166F5
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 10:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C2C1271A9A;
	Sun,  1 Mar 2026 10:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gM5A0ndY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60ED1C7012
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772361355; cv=pass; b=tr7trHEVum9QUi3rcoytI082ri8zU+/NbJSoiusiempz1REb6KWIQ8ie3hDpfpMJ1MWAYdcjvoDVDC86aAufEgnE4PG4bvB3AEq5dj6LxDBZKxzO+opx0OtjCS5RCN/AWPsCUsVgiCP9LrhUNjBxr3Bdu0VC6YWp58BLocAkRzA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772361355; c=relaxed/simple;
	bh=ooO74DCPDtorA+8XyHgGRt5CUJIyB+Z1pwX/MtGzDKk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nXq0E145GLT2YzxmIx/Y7J/rJz5GCiIw54VnuefU/5GAyJM3czC7dkD1+fhqNHqWtnOvqkFM6BMhzf4rrZjXwnTXCce25yV6/xcwlvxDiZE4QqAXmniTTXVFMSrsgF46UbW4Y/O3zFDnazJr0FRmQg6sSlUDTptlBiVvKP368HQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gM5A0ndY; arc=pass smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-3598a0b982bso53280a91.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 02:35:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772361353; cv=none;
        d=google.com; s=arc-20240605;
        b=lajq8CAPdNxz6lTHCsEYqieowpKFJ/61Se9T6ZVvS2Hbn5n8uNO7RhzCiN1o8ZJ9ZS
         O8MGp1gDcV5KarEWJinpHt8KA7C925mr0ulch5GQq2F+EPIZ1rjoKokxgjPLhNvWF9OG
         S1MouhDkzZeLlr+IZKuogVoi2CrnsA2WfgTaINMPLAnGwW+RvnaJ2M7aQIvbW8w9GREI
         ESHRpNBUldcZpuT70rHzz4zsZ25LWiJNHvSjofw3nkjZ5utmZVOn57RMXmwxLu8ZN5Nd
         Va21LprTDhtVAaHk+VqK/hAx/d7lM4pQ7PE6KsktxmPrbxPQaQ5k+Q6/XXxe6qXKrxEp
         ASEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3lM/gNodqPoy5PWCpwDFXtTBPy8CE134cfAEvBT7k38=;
        fh=rJoNjOVUx7dN1Jf18ZE6PkHHeHJ3QEVtANCrTycmsnI=;
        b=fGy6CaTLqmfEAnfs8712ZFoTc8Nc6b4TeZG2qLWc0uWcXSeJFcRhQ0gNycquoz5ADu
         qPdI7R42w1Ig/amR6AshiZxmaNWJ/owE8HQJmC0rhcXHXc+l4M01SWdBAhL/FjIbdixB
         qcj3cAwKLxt9IwW5c+PP+K/HyK4j71IX5Rc7UOkrFHmMyP//3N58m23bhDMwnO0td1NG
         STokrAG80xlWG1+1lSzIxDUVN62nfiyF7hyX2TNH8DTfDVv2HdLItY8N5P2hoSzKGKHb
         rOBP1WjHx1ZmM6kmqSB0Wx9NIGkglgzpnpBk/4+DpHd5Z7DBuLJzB5oUszdHXFxQ3bYE
         veSw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772361353; x=1772966153; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3lM/gNodqPoy5PWCpwDFXtTBPy8CE134cfAEvBT7k38=;
        b=gM5A0ndY3Fh0AYH9exGJbjbQ7AlGLXOZLpVoXVL86rqdpZzSeV9rVRVEakP70vDdHS
         yctDT64dFX2P2OyUmHh8PPdhcx/7rT6zC6hAS9y2pX60EoIRu6gRX6Jz3Lp1rqhEFYFk
         7mD5DDAoEFZAmd2Z/SvQZmDA/mfgL0C7+SErnUZ2n8lk52tvm6N9MoXP3CM68mY6aPBT
         /QdW9FC3Cjavww0BI47nJkJbUHQ3USOq0HDX04Yfn031PyAr27M3py7YfNwfwp9xjsyd
         XhhWYVBA6udR/Z/SCrNWrY0+rLRzwreXPj+6qzNcHuLrdI/dXvu/XJBoZNQ+83wMFTiI
         Uz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772361353; x=1772966153;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3lM/gNodqPoy5PWCpwDFXtTBPy8CE134cfAEvBT7k38=;
        b=RwbIMHiGI9ug8X+c+wUqlviwD1IG3cPDIkwrIXARM0bIOD/0yK1iwfQK6oGGCzL8Uj
         HRUP5UmrAfJsBLp5x3j6fSPmrXEgplooPUfO7uz7BuZ1hl5qNFR0cNI+ZdDFehdHDWKC
         9fTxyN5pux+5Aq2yGwFtqBUIro1JGKM3yAZmcmEKTzX1/PVvuvHmmvCOpka3xV54WIpZ
         svQsdqvAFA5Xy6QIQ3zc+guJvNg8gwn8VIpFw0LuVUljs4y9/FOGEpuEoa3d1E0gFPAT
         g04h70E8/f1+h5zTc5DIcOQLjwe/nnJZYpuzlb9bavPdGPRbs9yuLVPFuEsJUEIQwchI
         XS+g==
X-Forwarded-Encrypted: i=1; AJvYcCX5Mi0hDc+pXAawvgnJrZv8W3brfp85MNq1v/Oh946kDmnzBlw/YqIHW/kF1tFgo0wu7hztQYcX9DX1@vger.kernel.org
X-Gm-Message-State: AOJu0YxBlxXpWNy5r+oNEptAAhNRRZqJgRhO94R/u1L0TouXYzVlCTdp
	wOOGFeYboGP+DS3Dzj7pXOC6B+z0uZDgbtneZo2QT1A/i0rU8kut2y14ozPuZRxuG/rIQKHM2pk
	Re6eNOS4jTNGeu7g4y1Y0uKHQUXiSB2M/caYL87EmVQUM
X-Gm-Gg: ATEYQzwLa/Qzl4pfG0XPPVSFJn0v7evQ11thWBuZgsFk9dp7RKvFlz4YE6gvtjYsU8Z
	tkCmq8EoiHDZic9isnOBk0dvKkdgEHA5AGZfz6A2nnLzacDsAl1ROVByhNPcWUGtWBciq1hRS5E
	gkPbBIKUsjfA1DbzvY7bkudJrvMGquxj4OHpFWQRGPWG5rBpR6Z4aW4OSUkeqSOVdUSDcwvVqKE
	fnWZr3fEvVxVXqEPNmmaDjyhgvqR4slPVH1LqH0YOuusi5TnBiMgrxDFHwy2qN1/sptPdKhZKFP
	x/QW062UooM3IhT7emokcJDxBfZ/uo2n6cQ02TDBJ8B+rql3tefwZY1TE0lzFF0XRBigkRBfgec
	spuh9rB+ZaMDOZr3RIo5Ppw==
X-Received: by 2002:a17:90a:da88:b0:356:46ad:a161 with SMTP id
 98e67ed59e1d1-35965ca1bd2mr5800066a91.4.1772361353129; Sun, 01 Mar 2026
 02:35:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260301050343.23258-1-officialsohamkute@gmail.com> <f7b854e4-c1cc-4444-93f8-2a815b890d68@kernel.org>
In-Reply-To: <f7b854e4-c1cc-4444-93f8-2a815b890d68@kernel.org>
From: Soham Kute <officialsohamkute@gmail.com>
Date: Sun, 1 Mar 2026 16:05:42 +0530
X-Gm-Features: AaiRm52zlrNhxDa1E_gnrYJsxNT4NHlyZEaKCe6JHYK6dwX0FimwDmDS20epZcg
Message-ID: <CAFxoRw3wakUDFXPcJJExny=40uts-fO6ig8EPJbrva8qR3GMKQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: greybus: Document google,arche-platform
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: hvaibhav.linux@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269690-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[officialsohamkute@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 0C5691CF30E
X-Rspamd-Action: no action

Subject: Re: [PATCH] dt-bindings: greybus: Document google,arche-platform

Hi Krzysztof, Rob,

Apologies for the noise. I am a kernel newcomer and clearly jumped
ahead of myself here. I wrote this binding based on reading the driver
code rather than properly understanding the hardware first. That was
the wrong approach.

I've noted all your points, the compatible string, generic node names,
standard properties, and most importantly that bindings must describe
hardware not drivers.

Sorry again for the premature submission.

Soham

On Sun, Mar 1, 2026 at 3:36=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 01/03/2026 06:03, Soham Kute wrote:
> > Document the Google Arche platform which enables the Unipro
> > link between the application processor and the SVC in a
> > Greybus-based system.
> >
> > Signed-off-by: Soham Kute <officialsohamkute@gmail.com>
> > ---
> >  .../greybus/google,arche-platform.yaml        | 71 +++++++++++++++++++
> >  MAINTAINERS                                   |  1 +
> >  2 files changed, 72 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/greybus/google,ar=
che-platform.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/greybus/google,arche-pla=
tform.yaml b/Documentation/devicetree/bindings/greybus/google,arche-platfor=
m.yaml
> > new file mode 100644
> > index 000000000000..6e176efc264a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/greybus/google,arche-platform.y=
aml
> > @@ -0,0 +1,71 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/greybus/google,arche-platform.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Arche Platform
> > +
> > +maintainers:
> > +  - Vaibhav Hiremath <hvaibhav.linux@gmail.com>
> > +
> > +description:
> > +  The Arche platform driver enables the Unipro link between the
>
> You need to describe hardware, not drivers.
>
> This wasn't tested, so limited review.
>
> > +  application processor and the SVC (Supervisory Controller) in
> > +  a Greybus-based system.
> > +
> > +properties:
> > +  compatible:
> > +    const: google,arche-platform
>
> Your description is insufficient. Is this SoC? Is this device?
> Compatible is way too generic and "platform" is not correct in the
> compatible. Everything can be a platform.
>
> > +
> > +  svc,reset-gpios:
>
> No, use standard properties.
>
> There is no such company as svc.
>
> > +    description: GPIO used to reset the SVC
> > +    maxItems: 1
> > +
> > +  svc,sysboot-gpios:
> > +    description: GPIO used for SVC sysboot signal
> > +    maxItems: 1
> > +
> > +  svc,refclk-req-gpios:
> > +    description: GPIO used to request the SVC reference clock
> > +    maxItems: 1
> > +
> > +  svc,wake-detect-gpios:
> > +    description: Bidirectional GPIO for wake/detect signal between AP =
and SVC
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    description: SVC reference clock
>
> What is SVC?
>
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: svc_ref_clk
>
> Drop names
>
> > +
> > +  svc,reset-active-high:
> > +    description: Present if the SVC reset GPIO is active high
> > +    type: boolean
> > +
> > +additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - svc,reset-gpios
> > +  - svc,sysboot-gpios
> > +  - svc,refclk-req-gpios
> > +  - svc,wake-detect-gpios
> > +  - clocks
> > +  - clock-names
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    arche-platform {
>
> Again, what is arche-platform?
>
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-device=
tree-basics.html#generic-names-recommendation
> If you cannot find a name matching your device, please check in kernel
> sources for similar cases or you can grow the spec (via pull request to
> DT spec repo).
>
> > +        compatible =3D "google,arche-platform";
> > +        svc,reset-gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> > +        svc,sysboot-gpios =3D <&gpio 1 GPIO_ACTIVE_HIGH>;
> > +        svc,refclk-req-gpios =3D <&gpio 2 GPIO_ACTIVE_HIGH>;
> > +        svc,wake-detect-gpios =3D <&gpio 3 GPIO_ACTIVE_HIGH>;
> > +        clocks =3D <&svc_ref_clk>;
> > +        clock-names =3D "svc_ref_clk";
> > +    };
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index e08767323763..46cb6825f4d6 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -10886,6 +10886,7 @@ S:    Maintained
> >  F:   drivers/staging/greybus/arche-apb-ctrl.c
> >  F:   drivers/staging/greybus/arche-platform.c
> >  F:   drivers/staging/greybus/arche_platform.h
> > +F:   Documentation/devicetree/bindings/greybus/google,arche-platform.y=
aml
>
> Don't send bindings to match staging code. This is not the correct
> process. You must come with proper bindings for hardware, following
> standard review process like there was nothing in the staging. It's
> second bindings this week, is this some sort of GSoC again without any
> supervision?
>
>
> Best regards,
> Krzysztof

