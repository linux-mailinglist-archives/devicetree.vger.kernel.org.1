Return-Path: <devicetree+bounces-186765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1422ADD16E
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 17:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C82517BF4F
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 15:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530742DF3C9;
	Tue, 17 Jun 2025 15:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="01+4asx1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C742EF659
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 15:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750174238; cv=none; b=mZimg2H8uiBOM3DJJDyiuOH+YOGpkCqNRZ7VZDsoBaRX59IfMGvfaAW+FWrE5s9aLXnutKzNMqTtNaDzspUu4Pa3EFgesW1O0P6mMhn7xNwAyoRvxlMPSwUsCxFPvMybPerIuwrB6yYA3D5n66Tl5LWRlL3qa4v9ssDd83NISB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750174238; c=relaxed/simple;
	bh=z+I5qH37dx7Z7X228/ZoY4AcNEMAQ//kADr5OGGxuHs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pnsfv1Misg95iHAL5yUqYHrzhhZKaX+GW/rMtjlGzJbMTLRazgnzhSbXyH6Ce1nZbvMHpfe31gkXPHT3yYElr+l/cy0qvdiB/qOsB2yQDye6ZAYjW0FGvBxHt53cIa3HsGSRcRTfazIVFOBvoVGNocfhnQCQ388ilylOJ1fMs/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=01+4asx1; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-71101668dedso50321207b3.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750174234; x=1750779034; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XtaHeL54CRLLWc8JGM9iw77gChwBgynEQ/zgI8VPeZg=;
        b=01+4asx1UFSloUHrr/ZZzkBdRMLUT5w+8R95/3+x9Nc70AuxA/xEV/HokidnvZBMlh
         LA8bhugoKgBa1n2LVCv1+H6RYavQewDocp6N0NowV44iFSB2MwDvTLD+WStWrgg02o4r
         VyEi2HtHgS9j3pk9NuGO0NIfIZFGA60kWYBIX0dEWCRY4fXkD3+mTIE2tWjQgcbVgW5C
         cxauA5x62IAIFZMlL/KWlFILWl+L7+isdcETV7LtNJcXwJvgVLPJC0RdJuuuG+Dz/EFA
         SjZZjropggoCT3RroD57iiHkwj5Tpr5kbJ7Is5G1xSZrxcSDdaglfwrvqdqRAa7/kJqi
         DOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750174234; x=1750779034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XtaHeL54CRLLWc8JGM9iw77gChwBgynEQ/zgI8VPeZg=;
        b=PRvrHCZIsr0uqMF2nB/lgH6ijR0OERYpm0lqhsKgvcvcimnQmIfyDMb1NRx8aufoSi
         Q7zMU6h+w3eYfJRLRYsO/lqRAcBiyHfqPOlndvTvVGj7jC0mcwaZ0aPM1utn+X0Db0Pr
         3htxCrXPoJp7I19RPBI6SFVgu4Soukfcpcs+pegxvx5e3y6rqCRE0o/QxSOsNLWFMhCo
         J4oerozSiWufMSP8CN4XZ0EKP9pj+M0q3B9GrYwTPwbIyQT/pCRqjLeu/VhU2517Mxb0
         iAZ6Yl2wIqN/RHdrUE4d5gG/vltV/F0+nMlmgP7mKCUHKWwRO05L7j345EP59hD7DTXo
         uKMw==
X-Forwarded-Encrypted: i=1; AJvYcCVcFnu6mHZU2zYMhpoO2fKaYz5cl2mlOBoS+TAxWDRI6LJoUJjc6MLkQXhp2MG9frREnbKiCLRdxx0p@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9FTb9J/6BkCGvPnbNghgFZeACApy4ERSb967H+0aND1sCeezy
	9/uhj8PIKlcYS7Vm8nbUP/dkRNl71R37cO5+4rQCsG0sAXQ+eBuPr8nKC5/YDyR99lyTjLaAXdu
	m/k2ZmtP22My2ICBdh5oj5jqQj5knHMQMwFI52wYcnQ==
X-Gm-Gg: ASbGncvi3Nc/ge6OoU+1Att7N6hUHz9TWJLGWvRskdM6GIQ0V4DdEvxVE8LN3RPxH7i
	6YkJIN4vDRx6mHv0dXFHZ0bVD7wibRZJF8VbKrkW0WxcDsUItDf2R8AI5v+zfAPVXZFqe2F19Pb
	LcENsxPhSK05HBoi8pcXsTPsmcHHpcLxxKEs2glhTV5GUH80p+i/06A/pshdG/rIX4oZYw/tg=
X-Google-Smtp-Source: AGHT+IFvK/LKyBjh9V5RaMLaLceovg/hr45M6KA5xEoYPvtRRDidjFHVg824TMb6fwh8i0nOmfU22tBBiBMXdQuHp+Y=
X-Received: by 2002:a05:690c:4d09:b0:70d:f47a:7e3f with SMTP id
 00721157ae682-7117544b8aemr194998057b3.20.1750174234534; Tue, 17 Jun 2025
 08:30:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250617103058.1125836-1-ezra@easyb.ch> <20250617103058.1125836-2-ezra@easyb.ch>
 <74402e94-6d1e-4a4c-9e50-d41fdf1080e0@kernel.org> <a999bc7d-a141-4ebe-9adc-0d64d3e67d5a@kernel.org>
In-Reply-To: <a999bc7d-a141-4ebe-9adc-0d64d3e67d5a@kernel.org>
From: Ezra Buehler <ezra@easyb.ch>
Date: Tue, 17 Jun 2025 17:29:58 +0200
X-Gm-Features: Ac12FXzp3wLAHtAHsQlHjq75pA2pfy60rsh1ySL3m70aFUY7SuRTDiV_QmTbbHY
Message-ID: <CAM1KZSnFsc1r+DUCC81aKiP-Pomd7dUYASg5e9VYJLu+v64_QQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: clock: mediatek,mtmips-sysc: Adapt
 compatible for MT7688 boards
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-mips@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Harvey Hunt <harveyhuntnexus@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Reto Schneider <reto.schneider@husqvarnagroup.com>, Rob Herring <robh@kernel.org>, 
	Sergio Paracuellos <sergio.paracuellos@gmail.com>, Stefan Roese <sr@denx.de>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, devicetree@vger.kernel.org, 
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 17, 2025 at 2:05=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 17/06/2025 13:40, Krzysztof Kozlowski wrote:
> > On 17/06/2025 12:30, Ezra Buehler wrote:
> >> From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> >>
> >> As the MT7628 and MT7688 are identical in most respects, mt7628a.dtsi =
is
> >> used for both SoCs. To prevent "Kernel panic - not syncing: unable to
> >> get CPU clock, err=3D-2" and allow an MT7688-based board to boot, the
> >> following must be allowed:
> >>
> >>     compatible =3D "ralink,mt7628-sysc", "ralink,mt7688-sysc", "syscon=
";
> >>
> >> Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> >> ---
> >>  .../bindings/clock/mediatek,mtmips-sysc.yaml  | 29 +++++++++++-------=
-
> >>  1 file changed, 17 insertions(+), 12 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mtmips-s=
ysc.yaml b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yam=
l
> >> index 83c1803ffd16..550807301fc5 100644
> >> --- a/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yam=
l
> >> +++ b/Documentation/devicetree/bindings/clock/mediatek,mtmips-sysc.yam=
l
> >> @@ -26,18 +26,23 @@ description: |
> >>
> >>  properties:
> >>    compatible:
> >> -    items:
> >> -      - enum:
> >> -          - ralink,mt7620-sysc
> >> -          - ralink,mt7628-sysc
> >> -          - ralink,mt7688-sysc
> >> -          - ralink,rt2880-sysc
> >> -          - ralink,rt3050-sysc
> >> -          - ralink,rt3052-sysc
> >> -          - ralink,rt3352-sysc
> >> -          - ralink,rt3883-sysc
> >> -          - ralink,rt5350-sysc
> >> -      - const: syscon
> >> +    oneOf:
> >> +      - items:
> >> +          - enum:
> >> +              - ralink,mt7620-sysc
> >> +              - ralink,mt7628-sysc
> >
> > It's here already, so this must be dropped.
>
>
> I meant mt7628 is here already and you are adding it again further, so
> it is now in two places.

My idea was to support these variants, as they are all valid:

compatible =3D "ralink,mt7628-sysc", "syscon";
compatible =3D "ralink,mt7688-sysc", "syscon";
compatible =3D "ralink,mt7628-sysc", "ralink,mt7688-sysc", "syscon";

And, for simplicity, I decided not to support:

compatible =3D "ralink,mt7688-sysc", "ralink,mt7628-sysc", "syscon";

Excuse my ignorance, but I do not know how to do that differently. Or,
is the idea to only support what we are actually using (within Linux)?

Cheers,
Ezra.

