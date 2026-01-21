Return-Path: <devicetree+bounces-257879-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIqYOBaycGndZAAAu9opvQ
	(envelope-from <devicetree+bounces-257879-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:01:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A999455A4F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9FB5764A5AB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464CB3D5239;
	Wed, 21 Jan 2026 10:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iDp6n6Bo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCA23246EC
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768992455; cv=pass; b=nT1Rknju+CEDDwiUxgRr4ge1zZibMNvs5JPRV81VXwdH9P93eDbHFRLyT4mzNwI1kypX9z3YwgtsMjAqDqKvFvsDmHcZZqTNf3itrcQyVe73rh0ANrWQl2N0+TA1W6jDfUx8bYhf2B96qC7+ed2I2b1G+eiVw7MpjQqsg3pZX5g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768992455; c=relaxed/simple;
	bh=x1Jt80LN5/N4tHUEJT3M8l8NQh0Ouao1/CX6fzyd/jc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wj3sFvMzVtBqltJF3z1dm8Z1wa5Rr1h+/bkasUHkk7tekgBnpU/tyW6pKBskBZArr8lH8zbK9zSxyyiCJf12yhCYZpYYpw522wg2WGgw8LKY0fePojX5mM/heV0+suZPBwopquP6xqRDvuz356YJa5G5W7mlVoaLgalyy+LaKyI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iDp6n6Bo; arc=pass smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35305538592so403806a91.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:47:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768992452; cv=none;
        d=google.com; s=arc-20240605;
        b=PNyNrf1Ghq7EwaUPXiOM2mLmpDsL9MJSgKGNzCYF1Y0foSVN6tffcybD+HeLJ2Nqj1
         IGhG0wg3leKDgtGCaDyIh5XMkt2HA+SyyakdrSuz4r1Al0OhxnNlqopdR46AiN+/3plb
         0Xz4XiwzirkLivIVvRHMJ1A69g8VCVyq7SZ3Br68zoyZj06gubtt8Bs4Fr2/kN3lpKtO
         qirkMkYSgQvaOR1Z9165zFFud7j8bz/1Pjq8gR3RoPtC06bE9qsGCFcx6uA4zyh8ZHgE
         3BbGaLrA6hyruw4dSQFP1KOUiCW2ehG4L+n2hG1rf7KZ7YPWcD33R3gO3L3TKl3GbFUu
         rkmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/fMXkDh4NuIGqP7vK0ebKmRodxeqBxQ37RgaLup8t8A=;
        fh=cbUdA0AouxTpjlSPx1Hx2UM5IxpH8PYN7M2AQjX1mYc=;
        b=MMzV38oYYlr1HLDO4IPNQCFvDWFTXOax4PhGp9NIIEq7ZKPM+6t1xXZYQfT99vTBr9
         5wD8dQP6F1zPZvBO3QmYsmmCVmIT3MJwskbAfE9dp0VyS6gV6ZL99TAQ4NuUbfbyWOFx
         BW77EBj1jytB4Ap09Ktow7ctjjQCtawl5dSqAlfgsQ5Xu7oYuHsYzjhujj9bDmrjO5Sv
         P5B/bzwACxFRBdQEL0YPIY/l+MsLJWUqrVzgyOgn/9ztiUpueSf5F6ye8CDUS8MStz1V
         osxFyuFC+Acatg4Y0m5JwqD6HDXDaC+XQoS/7Sg+5LaZ3Bcp7IQxP6OLqVyyh3ItV727
         yuUA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768992452; x=1769597252; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/fMXkDh4NuIGqP7vK0ebKmRodxeqBxQ37RgaLup8t8A=;
        b=iDp6n6Boe8cdP+pifupFkzyavp/Qhl1D2sur8Ey/A1WmoG7Iez2Ykqbu59tCQ7yIHf
         eUBt2amdBcbf+bh9dDbR3sUH3Gvxq+VkLbeWukRi5sIq2xDnWL/MD62LAmC4JxO1nBYv
         SVWHJpA4R+B+yszJL3J9C5QfOyl3YKmThdkn9FrqRoDnkiLKJT4iWsTXkf2RSlQDrT4Z
         5p4EL9SUveN/Ww+dWnDe4ks5e6P2N9VaTilAEB3NCkHSQzbiGcOgSoJTA5zd++37p/tY
         U9IxZCO0eJ5ip0rII9oJiL1XoL4DtCWG5cSWMmYrNaiELcPecS1Kg9OSW1hd/255lbsf
         PcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768992452; x=1769597252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/fMXkDh4NuIGqP7vK0ebKmRodxeqBxQ37RgaLup8t8A=;
        b=ipq0ii+nHtAS33u84r8qtKkQ7RsIV2utz0J29XWFc+lwVbNXc6Oj1dBPBZKdJgGb6t
         t0VvXvN8+THa4491+qm9fJLIr1jjh6oLeVTAti/b8Z30QoICuR1tejZ/1fhCr/ViXYSq
         pSeCPqWa/7IWD68aeXNDNgOOEQoiAycAW5rwEwzx4M6YqzvwC5sH/jgPvOfO0cZbCYv/
         LMDDm4En/T426uT5wrVH7kiAfwDvhuS9CfVaMGLzuICJ5L+t9FD2AYdw0s5EyQcKztir
         25OJUwoGLYJYkFV3DE/Tvk0OFIARXCHlA10GRTr88iIO3EUrceTtQD7c7PWz+C+IpSfb
         j27A==
X-Forwarded-Encrypted: i=1; AJvYcCWf0Ewd+hFX+Twj1f/fptrbYUyjPcUoY3o1wn3h7EIjYd4NqpkI+drLJYWdXYGLT6yFPNyaIAqT5aY7@vger.kernel.org
X-Gm-Message-State: AOJu0YwSq4kP2XrlhmRBaGbu6GIzCExiISUIo5WC7rBZAE88YwPkLgQL
	arUXgENn/zDsZAA5QT+r1W/yF/e7JbSDdWOB1XN6G2WdUdBIx/MLUp8H19VnqgCCihlk+6Fqh2R
	yM57Vgv2MZJaIrsh6Pbj19bGJ9ea2KPQ=
X-Gm-Gg: AZuq6aJ0Pa8FNxwXeoysyfuAeFWWWeB6/30JokPVcLLlQP+CqAhSgXi20J1fnXhf4hm
	yfyuV7T+7j+9KFb2tFO4yZ8ZLo+05TK+7/QRJ9PwlA1qpNslsXta9BOAg6C5Z56N7UP1EFegqU0
	2grHlWBVloyb6TkqyKj5qvA50QmkH07l09GjzYl4I5VvDHWxZ4PvJWg6ZDXmgg6IL9CE2d2baEL
	scQaVdhzUJ9t0epORD+CnGNFjqSu02M6gOtG341oC+wdkYdaFNk30pgKALCFqwfW29GUdM=
X-Received: by 2002:a17:90b:3b8d:b0:340:b908:9665 with SMTP id
 98e67ed59e1d1-3527329ea06mr14234623a91.37.1768992452459; Wed, 21 Jan 2026
 02:47:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120035210.1593742-1-shengjiu.wang@nxp.com>
 <20260120035210.1593742-3-shengjiu.wang@nxp.com> <20260121-careful-beige-iguana-c32bbd@quoll>
In-Reply-To: <20260121-careful-beige-iguana-c32bbd@quoll>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 21 Jan 2026 18:47:19 +0800
X-Gm-Features: AZwV_QjDpxZv6jt8rBYtLCaZTNVLi3Y8jythwZEftwLkFpk7naOfOY6Hgw_qq24
Message-ID: <CAA+D8ANy6-e3RkhjSKWfqEcxEnsZrEuJvz7Bmp5q6ZO4x3RfVg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] ASoC: dt-bindings: fsl,sai: Add AUDMIX mode
 support on i.MX952
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, Xiubo.Lee@gmail.com, festevam@gmail.com, 
	nicoleotsuka@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, 
	perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257879-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,lists.ozlabs.org,pengutronix.de,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,spinics.net:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A999455A4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 4:03=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Jan 20, 2026 at 11:52:08AM +0800, Shengjiu Wang wrote:
> > The SAI can connect to AUDMIX, but AUDMIX can be bypassed or not on
> > i.MX952, so add 'fsl,sai-amix-mode' property for this feature, with
> > this property present, then SAI driver will try to config the setting,
>
> I am still not sure this is hardware static property. You say "can be
> bypassed", so I imagine same board could have it bypassed or not,
> depending on use case (so mixers).

Yes, depending on the use case.
1.  When bypassed,   the SAI output goes to codec directly.
      like: SAI -> Codec

2.  AUDMIX mode:  the SAI output goes to AUDMIX.
      like: SAI -> AUDMIX-> Codec

Will add above info in the commit message.

>
> > fsl,sai-amix-mode =3D <0> is bypass mode, fsl,sai-amix-mode =3D <1> is
> > the AUDMIX mode.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  .../devicetree/bindings/sound/fsl,sai.yaml       | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Doc=
umentation/devicetree/bindings/sound/fsl,sai.yaml
> > index d838ee0b61cb..7808c324eebc 100644
> > --- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> > +++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> > @@ -133,6 +133,13 @@ properties:
> >          - description: dataline mask for 'rx'
> >          - description: dataline mask for 'tx'
> >
> > +  fsl,sai-amix-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
>
> Anyway, string is more readable.

Ok,  will use string
>
> > +    description:
> > +      The audmix module is bypassed from hardware or not.
> > +      Bypass AUDMIX(0), AUDMIX mode(1)
>
> Drop last sentence and use enum [ bypass, mode-1-whatever-this-means ]
>
> > +    enum: [0, 1]
>
> What is the default? What is the meaning of lack of this property?
>

  fsl,sai-amix-mode:
    $ref: /schemas/types.yaml#/definitions/string
    description:
      The audmix module is bypassed from hardware or not.
    enum: [none, bypass, audmix]
    default: none

I'd like to use the above definition.  add 'none' for default.
Which means no audmix connection in hardware. then we don't need to
bypass or not-bypass audmix.


> > +
> >    fsl,sai-mclk-direction-output:
> >      description: SAI will output the SAI MCLK clock.
> >      type: boolean
> > @@ -180,6 +187,15 @@ allOf:
> >        properties:
> >          fsl,sai-synchronous-rx: false
> >
> > +  - if:
> > +      required:
> > +        - fsl,sai-amix-mode
> > +    then:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: fsl,imx952-sai
>
> There is no such compatible.

It is in another patch:
https://www.spinics.net/lists/kernel/msg6004158.html

Best regards
Shengjiu Wang
>
> > +
> >  required:
> >    - compatible
> >    - reg
> > --
> > 2.34.1
> >

