Return-Path: <devicetree+bounces-261531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCIuNVP6fmnlhgIAu9opvQ
	(envelope-from <devicetree+bounces-261531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:01:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96494C50B9
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:01:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1AD253014121
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 07:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5108A2E093A;
	Sun,  1 Feb 2026 07:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jn9EfSA6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6323C21FF3F
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 07:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769929293; cv=pass; b=U8cyqx7L4jW95D3gA2UIEAHRu6nuaypdtUEYYpyYzzTuxps+rFQj3Chj92VGfH4604k8V0AUdRVBuTLJXwSpSkgcJU3u4M4gkwVi1zUL5aAAXtPvI721P6vzwssNYebxZOr/hmHnLe8JSQIgZ7tf4Bunq3NMWHqQe//fOTzDLN8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769929293; c=relaxed/simple;
	bh=4lwxL+MX5lYgnvQjumgh4AurnaGrE32hCgCl0vhDOYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TpFp6ZyxzFCCvTdhK0Z87DlkmdBjCwEUMcEa77iKq0BDYXj8+7e7BVEevh4B4d6VRVsNQHqOxSXAIKzyTkoIhbugmRZBk/xnLvO3Ihnhx6DQzTqsSN/0MiqjbK3gV1mlDTQxYcvYWA4MDrdPT/OM8p75a0PT24WfVOkMnQqu+fk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jn9EfSA6; arc=pass smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-432755545fcso2168472f8f.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 23:01:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769929290; cv=none;
        d=google.com; s=arc-20240605;
        b=kGxDYL5C/u5HgfzXhvETuRuCjv1fWm0I9JxCtJ3xSIuaPFDq98WoFsYjC6TmzXyqLr
         9ne8DGeDRikGldH74zOywmP9AQUinqNw5iaYKpBXp8hOulx1ORuVNjSo52jlEQ87/OWT
         OrPyHLCDWqkRbLIvuTVa3+D2IRvp4KLVuEcdpMWS1lTj6WZ9AqQuKlkfRD1hXqrMwCHA
         efUvcu1171vZYfyfWkwQxAKxXIE7CxEtAQqZ2eXiGGoih434xRwKkDDpAll64eYguLth
         HY4nMFQIedpUMTjCR4sW9c7SVvXrhtb/b52dKeORPnI5bUnOluiVFSRVN+MG7m1RKv9X
         +c5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ru6T+Kx+o+wF1O0sdT4WJIlvaSW/GAs5TSwcPEqdU2s=;
        fh=wwLPcZ1IamYXes7EDI7R3RdhHKaLnj1fnbCIPh+Ie0s=;
        b=Ytl31qWyEpy5/Qqa4k22OHjNjgqOLFBD1bfBJ2PBajvN/PoN8Xw6yyzaEhEBeFllfM
         MuQhXtdT9PwB2KLITFlHwb0IzQ8nBhKyH9lzT8nbI91diGrtNAWMrHPTiwQF6hgWk/2u
         61ELIp2fEKACEtI2I1JozJv9BuFQRu3oXiSgtn07ivbRB+HVLxoIGo7T8g9eZzbLdxXY
         sTQ8QjGjEgOB+TiSvMMs4aYkEBhQEjdomxj8QmIikLdNsDBYWSIZPY4llfu9tKTpD1Ym
         /i1M1cHaZl9EYfOvLW0/ugDz7UN5wGGt9JeRy2Bf0UfboRvG0SDcQKE+EK4YULXems3J
         mtEA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769929290; x=1770534090; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ru6T+Kx+o+wF1O0sdT4WJIlvaSW/GAs5TSwcPEqdU2s=;
        b=Jn9EfSA6fRuIVKLr4AaDLNSKBNL8pNLIzAn3ZvhMvVaTDKFsq+ipWeCMRNkekMrUgb
         A0Ln5mZ3LggiURzzV2WBXJxP6cuuWXb9TNIlrGVNUxwCIIaEem1gpptyrSPCZ5IlMDzt
         5fUbTS5GA6rBJL/oI1+pxmc1I/uBvhnJp+aO2sGBmNMcyl/Xyo7jAV9n5GbMdfk+o807
         NMKhRMYdWew37MtphMm6TqfcCIju0X+RKLvk8Vsd43Yo681J0zRY+sepZFOjGN7tkDRF
         PWC+YPRkx8zVPqfVGZwbFfwyirHPDJ+z/+3WyyRp0uY1XpuaRpWj7vuJVPrx6xv4dztz
         aa4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769929290; x=1770534090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ru6T+Kx+o+wF1O0sdT4WJIlvaSW/GAs5TSwcPEqdU2s=;
        b=OoZoelwv4ZT5hCI0AhPve5e6WR4CHGewdAC7pEi3hIPpFlp/TvPIQAKfNgAik5CRdS
         Nfo2Nu/Lr7HG6QE7iswo+oCvkb0ZahKYQmGFfm7vB46RcEIweBcgFl2rZ30raxjTXYNE
         SUUr2+9bVs1fLIcil7iADJ1XRnXzBnBthRIugfqRFKO4P8KqC5Y+jNzhjKEbSMe20RDZ
         Vu6ZQklAttPCViVg3tPc6m8pX0Cymx9sqBzBkSGxWY23OaEILhl5Wpv30uPBlcQprqBz
         ZQH8Fln7DkJDZWPwqGTfdxkS9UfF25brnFgGjZhUQY2XQ4dtlmyV4x/S/GFSbotT/UTC
         0snQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/NJIs05sU53oDJhdKr6zet2g1Iy5EkUU0RkOq/XBgWys//i/2ZAfDy/B6Rb7EXFLjSpRRFlqsinZ/@vger.kernel.org
X-Gm-Message-State: AOJu0YzUvD5Rw7q+KHkN9HsdNnRagBEcdYxhNK6Y6actoZXVtYGWXA4e
	vShMwMA2oSGZcc0Yg5XVs1dHJRevrIq7s8RZBQGjpitD+YVx+qKEClfqMulqet/4rqiLFJR8w2Z
	uiCjlM0/y35Dy5LrdN158G2m//KJuj/U=
X-Gm-Gg: AZuq6aLRXIF/nHGkJECCxdeySFhKzwKAZJFtA+cUA4e9rSLrs7WWOxmwHWVnAhjBvFb
	pmdBs28oGFWVp/4qc3djuD17z+deeF1ltex1T22Pv9xwMH5s7DwCSyxyHOU1G4QmYRmnoXpM0df
	IvXb+SB4FTXW1Z+5gW3NXoU8uAU8GW+4qTQSvoaJ01awh9N0jITW6U2sUHZ+Hgvdjuj61H5iiBM
	qgNNcKenIWl11hMCCFFo0/wF7n9UNYSP1ZdhWDx/U5vpLQNNpj9NR4jHBPF0h+BgYO6liSN
X-Received: by 2002:a5d:5f54:0:b0:435:693e:c03e with SMTP id
 ffacd0b85a97d-435f3a7e60emr11130004f8f.19.1769929289499; Sat, 31 Jan 2026
 23:01:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125134302.45958-1-clamor95@gmail.com> <20260125134302.45958-2-clamor95@gmail.com>
 <d7938728-fded-4d5e-b23d-a8346e3fab46@baylibre.com>
In-Reply-To: <d7938728-fded-4d5e-b23d-a8346e3fab46@baylibre.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sun, 1 Feb 2026 09:01:18 +0200
X-Gm-Features: AZwV_QgtHi-_En-5pR0mvFW293XW7g0IV-2szoIz-T-UyTapQDFggPFL8QY1fqE
Message-ID: <CAPVz0n205rKSAq2Jbtahn6xW2MYgSm61qxjRbsSs_4RBSEs34Q@mail.gmail.com>
Subject: Re: [PATCH v1 01/10] dt-bindings: regulator: cpcap-regulator: convert
 to schema
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dixit Parmar <dixitparmar19@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261531-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,bootlin.com,atomide.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 96494C50B9
X-Rspamd-Action: no action

=D1=81=D0=B1, 31 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 21:46 Davi=
d Lechner <dlechner@baylibre.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 1/25/26 7:42 AM, Svyatoslav Ryhel wrote:
> > Convert devicetree bindings for the Motorola CPCAP MFD regulator subnod=
e
> > from TXT to YAML format. Main functionality preserved and added compati=
ble
> > for CPCAP regulator set found in the Mot board.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../bindings/regulator/cpcap-regulator.txt    | 35 -------------
> >  .../regulator/motorola,cpcap-regulator.yaml   | 51 +++++++++++++++++++
> >  2 files changed, 51 insertions(+), 35 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/regulator/cpcap-r=
egulator.txt
> >  create mode 100644 Documentation/devicetree/bindings/regulator/motorol=
a,cpcap-regulator.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/regulator/cpcap-regulato=
r.txt b/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
> > deleted file mode 100644
> > index 36f5e2f5cc0f..000000000000
> > --- a/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
> > +++ /dev/null
> > @@ -1,35 +0,0 @@
> > -Motorola CPCAP PMIC voltage regulators
> > -------------------------------------
> > -
> > -Requires node properties:
> > -- "compatible" value one of:
> > -    "motorola,cpcap-regulator"
> > -    "motorola,mapphone-cpcap-regulator"
> > -    "motorola,xoom-cpcap-regulator"
> > -
> > -Required regulator properties:
> > -- "regulator-name"
> > -- "regulator-enable-ramp-delay"
> > -- "regulator-min-microvolt"
> > -- "regulator-max-microvolt"
> > -
> > -Optional regulator properties:
> > -- "regulator-boot-on"
> > -
> > -See Documentation/devicetree/bindings/regulator/regulator.txt
> > -for more details about the regulator properties.
> > -
> > -Example:
> > -
> > -cpcap_regulator: regulator {
> > -     compatible =3D "motorola,cpcap-regulator";
> > -
> > -     cpcap_regulators: regulators {
> > -             sw5: SW5 {
>
> Old example is missing the required regulator-names property.
>
> > -                     regulator-min-microvolt =3D <5050000>;
> > -                     regulator-max-microvolt =3D <5050000>;
> > -                     regulator-enable-ramp-delay =3D <50000>;
> > -                     regulator-boot-on;
> > -             };
> > -     };
> > -};
> > diff --git a/Documentation/devicetree/bindings/regulator/motorola,cpcap=
-regulator.yaml b/Documentation/devicetree/bindings/regulator/motorola,cpca=
p-regulator.yaml
> > new file mode 100644
> > index 000000000000..b73d32a86904
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regula=
tor.yaml
> > @@ -0,0 +1,51 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/regulator/motorola,cpcap-regulator.=
yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Motorola CPCAP PMIC regulators
> > +
> > +maintainers:
> > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > +
> > +description:
> > +  This module is part of the Motorola CPCAP MFD device. For more detai=
ls
> > +  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
> > +  regulator controller is represented as a sub-node of the PMIC node
> > +  on the device tree.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - motorola,cpcap-regulator
> > +      - motorola,mapphone-cpcap-regulator
> > +      - motorola,mot-cpcap-regulator
> > +      - motorola,xoom-cpcap-regulator
> > +
> > +  regulators:
> > +    type: object
> > +
> > +    patternProperties:
> > +      "$[A-Z0-9]+^":
>
> Why not put the valid names here? Or does the node name not actually matt=
er?
> (in which case lower case could be allowed too.)
>
>          "^(SW1|SW2|...)$":
>
> And $,^ are swapped.
>

This is an interesting suggestion, maybe schema maintainers can
suggest how to approach this? Node name and case matters, list of
possible names is in the description.

> > +        $ref: /schemas/regulator/regulator.yaml#
> > +        type: object
> > +        description:
> > +          Valid regulator names are SW1, SW2, SW3, SW4, SW5, VCAM, VCS=
I,
> > +          VDAC, VDIG, VFUSE, VHVIO, VSDIO, VPLL, VRF1, VRF2, VRFREF, V=
WLAN1,
> > +          VWLAN2, VSIM, VSIMCARD, VVIB, VUSB, VAUDIO
> > +
>
> If these apply to the regulator-name property, it can be written instead =
as:
>

Regulator name does not matter, any name is acceptible.

>   properties:
>     regulator-name:
>       enum:
>         - SW1
>         - SW2
>         ...
>
>
> Not sure if it is strictly needed, but this would document the optional
> property:
>
>     regulator-boot-on: true
>

this is covered by common regulator schema, along with other possible
regulator properties

> > +        required:
> > +          - regulator-name
> > +          - regulator-enable-ramp-delay
> > +          - regulator-min-microvolt
> > +          - regulator-max-microvolt
> > +
> > +        unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: false
> > +
>
> Example should go here.
>
> > +...
>

