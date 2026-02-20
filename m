Return-Path: <devicetree+bounces-267050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBHLHzmrmGn5KgMAu9opvQ
	(envelope-from <devicetree+bounces-267050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:43:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA43A16A289
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAE7E305CABC
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F32C366817;
	Fri, 20 Feb 2026 18:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="J0/AXPPs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F46366815
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 18:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771612935; cv=pass; b=YuFRAieePjvBgV1XHLMZkgV5qwdB4y6pJU931W/Ux9UnQYaDC8q4Qi1IeP2V69ZCPD/JKzbeKY6PBzpwVyWXpAOKksjFGtm1DPhny2/0SwC0csPlYyFvxGCdFc/azETMlz72KxH7eSkBv7vz0By1p0Mh9fCyhvVlW9aQoGeTXI8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771612935; c=relaxed/simple;
	bh=MEbnmaRSVOaD3qvUhFZbrCco3pz6n4O0mEK+V2687z4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=anxd9QnSAJd2rUtM9HDZZR9C7tGY6ZNPR2CxNHPII2pbF4arXZy3maljth3v5Ruurk51xNIqSKdgZVdkhZO2hoGWbGSdvLccSCI1JQykHFDnujNAJq6kt99a2rF2DQXF2yuhiEAK+lk87cAN5XJZjXlk8rA4DgjGoZEl41PUaa8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=J0/AXPPs; arc=pass smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b8f9568e074so448652466b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:42:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771612933; cv=none;
        d=google.com; s=arc-20240605;
        b=AyRo/WVHicJLEDfURg2LECyB+d7rZ94zrXvG9tJ15sg39FLcN3pj55KtUEULhpdXIV
         HIQZTV/Zen3f7jnNQ4XgK5/Db6kFQ1b61pSjKYsrCyQonRmDD9z+t9wLuYRvgsstI/fJ
         LdNTAN484+uYWs7xiDfAhdjwTP3/JDgSdg/Pw9TNfo6KmI+aveKA7F7kHY47OQCVepgj
         rjxdGko46qerkGg6/mamBDebHnmRtxneYGRPfPGZuNx9trYhvOKo71jGoAFYN+Vl0TX6
         45hcC//S1MLeswhAL1T54Y8yYczpkhFoZzWf1TfhoFSJguiHwWQofNLy/nxQHoWkb1IV
         0CYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=p11SnN2G51FYoourvAP9oOti3rvVoOX0gxT1KHWDCOM=;
        fh=7HuVdlIQRpQ731r1DGKiy34S8pzNc4Jaf6e4Ciegjd4=;
        b=bszZsfgA6t8QHmZgdVmKghzpljq/njRREVD39+2ob+jEo6/T8L1meSqh8PO+yUA4i5
         Z4Q0slJq1iwhx7b+hUjH10jbRdH3yHj+kNhLLGYhussACS3EICbG7dNCSN6pwTAY5gXn
         RFOu+n4P2LmIBDdV4IJnIozmQakt7vldyahAQYUzLbYnFGjtmDAlW1JJz0z2ThZE6gIu
         ol4zg7o//vgEBXxxSVQEYo8jJJqLuMwbv5ha0duVd18DYLpZ0yWiOQHAFwDlYy5vJ6jk
         igM2BtONQO1uXM4PAJpI7pyUcb/6k0Nw3o+t6aqLiu6PajYEHuVJFGUrwWt56djX+0uI
         pDtA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771612933; x=1772217733; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p11SnN2G51FYoourvAP9oOti3rvVoOX0gxT1KHWDCOM=;
        b=J0/AXPPsDMt0+BYRAxbHaUFZSFi/I7N7w9Soi52mD+M+BfIXiLcnKk4+TmL1Wg8x8H
         YacNL9+3PikPbi7vkl8VbeJ6C4cSas2yFrcFiOZvwe3YvvLfEiLhUDDb+mtmcpCCxPua
         ruXBXJy/0ua+U4Ffu9gsdg+Pga931eJEUGe6PO4uch0QPyKrjDaAsbjkd9XYqVq1jxBR
         dDTJ0ehRE6TgpLtLokJXJ/36kROm4WDD52INEsf//KmaE+4RhrfYvg49DfJx4Ayz4E8D
         YeJ7Z8AWRGsxaMSwS2ifFlIjmpg0NqNzccrN1JqafVFPEV3uc54rCkgeOVu3BopizXPj
         3hMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771612933; x=1772217733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p11SnN2G51FYoourvAP9oOti3rvVoOX0gxT1KHWDCOM=;
        b=DQQPXqYds+9cj08G/DV7AkFaxbAnbjCwGRtGqdXyBUME5WqQhDT2gp9lM36gNecmuG
         gBM7n0/x1wBEg1d2kyKogpx2z+anKzjKIywMT8u0EMOzA0DEvXL26EM+eVtcqlZqIu8j
         092wgMs1unUa/HmfzyRMEX5V3S348TjQkEcHFTShmlZ8FuDoEcmCa+LGJQ6lRrkg93c1
         QQdMv0P3snQvjF1lXzTvr0ZnwyF1tacc016nxZtx5xhsISv3FHKE85uCyKkIo+UwWtRr
         b3v+qCWJMIN1rZ8yoiPEpQA7fKfGVONSVCB8wCVG4r0FVeFUwG8YAxoBPnAmEZvXu/O3
         COMA==
X-Forwarded-Encrypted: i=1; AJvYcCX6OvSitbv8JrOEpfmGELW80XOX4p1byJsEfeh5Gteu5hDpch3uHASGvmiR71ywgMXRfzDpnfcDUiVS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2jMcP3ROw4mKaLSg0LG62b6TKuIuxrb7QRWWm/ViPVFXOMcO8
	ZlV7MeTKmKGO/R3rMNL9KC+S+Fe/66dJkYqF/2AlthAz7KAmIRE71IUbHjDaLu0vLJ3C3qEywth
	Qw6xMbUX8KFcjNllNO9nR2YSrvVy+tB6NPM7MxCg4Dg==
X-Gm-Gg: AZuq6aKjeyHSS0ZRgRNjejv8a8eB69TZesQUKRo7WqR226jKv4l2+bbDzt1H9zOYpnK
	ypcd5ekYyeoE8xOqCv87G+POpWUxQDgYOUF//7bOO1t19sM+UUvZ8MhN9052LugFvW02i58yym4
	5///aArtKuTe0TOonBC1j+JCNmlPOYwYRjUluMbBXhOteZBz+Vf/GIxi6+RwQCZxQNHbRvvQPPC
	xuT/EOAjX7XTMsN/eNmIstoYL2W1hrJcEO5HUA4rBYU2qYq+CL2zELcgZg2i9Cz6xCOGKRYHxp4
	VsUbxFJ2pg==
X-Received: by 2002:a17:906:f590:b0:b8f:c4be:f1f3 with SMTP id
 a640c23a62f3a-b9081c1021amr28639066b.59.1771612932640; Fri, 20 Feb 2026
 10:42:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-fu740-v1-0-c8af54130c58@sifive.com> <20260220-fu740-v1-1-c8af54130c58@sifive.com>
 <20260220-repeal-glitter-acb73cc75564@spud>
In-Reply-To: <20260220-repeal-glitter-acb73cc75564@spud>
From: Max Hsu <max.hsu@sifive.com>
Date: Sat, 21 Feb 2026 02:42:01 +0800
X-Gm-Features: AaiRm53jWwDc1WCYeQ_HcYo-kwfyEnIvzDX6KWSIO2LiUkTSOMUZyC3C08_aX24
Message-ID: <CAHibDyyV4Ss_2HCqWxHo4hcW4x2_VJGnFsP02gkWVyjo=XNf=A@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: net: macb: Add SiFive FU740-C000 support
To: Conor Dooley <conor@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Thomas Gleixner <tglx@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267050-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sifive.com:email,sifive.com:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: DA43A16A289
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 09:29:28 +0000, Conor Dooley wrote:
> I don't think this is right, since it is identical to the one on the
> fu540 (as evidenced by how it has worked until now and the contents of
> your driver change). I think you should add the fu740 with a fallback to
> the fu540, like the devices from Microchip that fall back to the
> microchip,sama7g5-gem. The rest of the changes to the driver and binding
> can then be dropped as they'll be redundant.

Thanks for the feedback, Conor!
I'm taking your suggestions. and will prepare v2.

Thanks,
Max

On Fri, Feb 20, 2026 at 5:29=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Feb 20, 2026 at 04:27:05PM +0800, Max Hsu wrote:
> > Add the SiFive FU740-C000 ethernet controller compatible string to the
> > Cadence MACB binding documentation.
> >
> > The FU740 ethernet controller uses the same GEMGXL management block as
> > the FU540, which is tightly coupled with the Cadence MACB IP. This
> > follows the SiFive IP versioning scheme which requires SoC-specific
> > compatible strings for proper hardware identification.
>
> Your rationale for this change is misguided, as this is not a SiFive IP,
> so that document does not apply. On the other hand, the general rules
> for devicetrees require this so this just means a change in the
> rationale provided.
>
> >
> > Signed-off-by: Max Hsu <max.hsu@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/net/cdns,macb.yaml | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/net/cdns,macb.yaml b/Doc=
umentation/devicetree/bindings/net/cdns,macb.yaml
> > index cb14c35ba996..b46dde1da170 100644
> > --- a/Documentation/devicetree/bindings/net/cdns,macb.yaml
> > +++ b/Documentation/devicetree/bindings/net/cdns,macb.yaml
> > @@ -63,6 +63,7 @@ properties:
> >            - mobileye,eyeq5-gem        # Mobileye EyeQ5 SoCs
> >            - raspberrypi,rp1-gem       # Raspberry Pi RP1 gigabit ether=
net interface
> >            - sifive,fu540-c000-gem     # SiFive FU540-C000 SoC
> > +          - sifive,fu740-c000-gem     # SiFive FU740-C000 SoC
>
> I don't think this is right, since it is identical to the one on the
> fu540 (as evidenced by how it has worked until now and the contents of
> your driver change). I think you should add the fu740 with a fallback to
> the fu540, like the devices from Microchip that fall back to the
> microchip,sama7g5-gem. The rest of the changes to the driver and binding
> can then be dropped as they'll be redundant.
>
> Thanks,
> Conor.
>
> pw-bot: changes-requested
>
> >
> >        - items:
> >            - enum:
> > @@ -74,7 +75,7 @@ properties:
> >      minItems: 1
> >      items:
> >        - description: Basic register set
> > -      - description: GEMGXL Management block registers on SiFive FU540=
-C000 SoC
> > +      - description: GEMGXL Management block registers on SiFive FU540=
/FU740 SoCs
> >
> >    interrupts:
> >      minItems: 1
> > @@ -181,7 +182,9 @@ allOf:
> >          properties:
> >            compatible:
> >              contains:
> > -              const: sifive,fu540-c000-gem
> > +              enum:
> > +                - sifive,fu540-c000-gem
> > +                - sifive,fu740-c000-gem
> >      then:
> >        properties:
> >          reg:
> >
> > --
> > 2.43.0
> >

