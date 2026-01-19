Return-Path: <devicetree+bounces-256661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 147EED39E74
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA922301FF71
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAC926CE25;
	Mon, 19 Jan 2026 06:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VldwaKEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638D626B76A
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768804057; cv=pass; b=IHQs9Mr3kHg+uzlyIvRtAFwnbSgcvVYGXa6zMWOcaejElI6FFiNqkrKXg5dNp0mC4kzaXLI1Q5PD4lIC98cuo/kC3z1XOiWGerAtLA51/W/9WLUHb6UlV1wVmBfkZwRvdjDrWg0/yPj+klkKVDFlQ7ELG7DiunD7fqVRBAFHjAM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768804057; c=relaxed/simple;
	bh=oieor7VL7XmLcFuWp2WFAIYBHFITLArY/5uQmoKHexk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ctsj7VVVydFPPc9B6/73r/H+QusuhiiXAABWJ8j9wyaiI8kog7ikDjpaOtfgKD41blYFgJBP1CygVf6ElJ8589KueugCL8KZtGRWSk63MLm7+ELbL2yi+LtKq9xaIRl6ofoeKYXkZRw7RNCaRMRPi42EDj4+CKTaHgKljqyYgsI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VldwaKEk; arc=pass smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-34c3cb504efso2641291a91.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:27:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768804056; cv=none;
        d=google.com; s=arc-20240605;
        b=ddxrt/LZjhgCCChvQ25hwf0FKe5y7e6tYDdY7FL4+fNX1isChD6MYIjjyo3G1yZiLp
         0D9Sk3qXqpvpd1AOSQVsUG12jePmBY9xXjLIBYQ2wLjBQcSCWIcu/4xgkRU4XocZeQ5O
         YTJQiq9MAKNjLmTkXTHdrzEyf3XJ9LKok1Pead0SJLuZxmgWozyqCL1r57AtLzVCG04J
         4+Gg9/kAi04moaH3PIf4rrs4LOpagkSLot2MvfHfvWl2oh/gaxTRHGF/ivLQ2RYz8dXb
         PWAlv9TylGvBqrtGJVvjB0hmv4Z4HxFzEkUc0fIPzfmqOw7TuMYOGTG4RpM/41VIV/0I
         aAXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kcxGM/H9ZkFQ5SWC+rNZTfsrD0aCTEHeA1hsk+XXsT8=;
        fh=apwJTpFca3gpXC1ZuwMrP3hxrIc0w2V+WNO2nyaQ+dI=;
        b=HFG1+X90YVfVcyENPm2TcCNgWxbtWKOvziYplfZaFoQe2NLdIsPB9k4coElBcdVawA
         sSlq6XtO24HzJ4JmhssN4Go/u9thOYAWAzZ6huIFmUG3uM+URpfBQqdcwqacG24RGku2
         gBzw9y0EMAmsg6mH7FXgk+64bEiXMm/xZz6Uayl68Lm+IjUjK2SbqbYU08Y+KKSkRP+T
         +y0P9JCTduK5oo8YNn0plboKydXTY1XTEDq44ajPZ8pziyynrZv0UJUPt+uOCOOzpuN7
         Y7I9Cm2pJH/Zp0Ke9iYp5xvSO6zJo+/KBZVwOuz4xMBmCK1fe51G3Yz0ZZdgY+JHwdBc
         VzbQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768804056; x=1769408856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcxGM/H9ZkFQ5SWC+rNZTfsrD0aCTEHeA1hsk+XXsT8=;
        b=VldwaKEk9B3fXkomO9WgFGdXfCliMYo6jVe85PkV1RI+IAjH+lcrzLoxFmkv0InZPV
         TbHbzOffF6kYl56HEUDtu0LMe60BXjSqtdh7qR/95/U78RuWtC0YFp5B/kZHwB+t17qd
         yOeq4eVj1g37AX2wbQJRXqOAKe2GVbpw1w57/RkrAk4GO3QpbBT74/iAwh2TioH0+PXv
         J3mt76dgGQnflxIxF2qrnRSalXTh1qYzwYct6czLqadNWeS0SciHva8x0M6kAsPmg6cU
         IsgDREnwM4d4kL0wEQ/lvXYAOAQHBTZKqhU2e9+yoV/Un8ImnD3JRh4HsvgHq5hd3Jil
         p++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768804056; x=1769408856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kcxGM/H9ZkFQ5SWC+rNZTfsrD0aCTEHeA1hsk+XXsT8=;
        b=lBCAFbli6PbadWeWxUYza7+/bHNzLMR7gkKNoEeaMCI24XnJwhBdkKQNpZRN6whhig
         unEUdaos71SqsHpGe8i1FCrmoLk7WkbJNkfcASCvnuIj1fmHSgNE5XnQ/SXAFgrqarYK
         9/jGep029JdLqMgfWm+UMwklvkU/tgATctPLuZ1uqbWSrGMflrCWv2vKjq2X9ImONayE
         zXfGpk6ZCuYjiJlxgp3eC3FKXTsNE7wJ/K+ke6kv9Y3Hbl0fU1mtbrTXyvjXD/+aBRCC
         ECBkmEu+6yijCQARsatIWlSpBgtrJCiC+uIrq4kQ4qm5awZCXD4WJZQYWrCZ1IyBTg+N
         F+/w==
X-Forwarded-Encrypted: i=1; AJvYcCUS7eQopTbPWSVUNc0Z7knKX7pg3HyDDKn+PLSJ2lXZ14r5jJ8HRT9R6VLBJL0SNl+NQCOnqUQajYNl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy08uO4PB7y443E0LxvTXLuZ1BAM47I8nklUnUvGilliLOqWCFG
	mMFdyz/sHYFadaIET5oqWifjRrzG+JB/oxEBPA/Gtzi+ZgDZJHCmZLb+y1AN5usqvMgK8jBiFmH
	h0Adc4BP4SgR+Tg8qPZYuGt9rP7kZ9Do=
X-Gm-Gg: AZuq6aLDEaE17y0pGzF2kSns/CcQqVU/+bLvkIHbO4wmfCoSGclMA0Oium10vAQvMd0
	kTY8koXxmmGxknj4Jf/5RO9bBwKFtFDQs7C8faGqeE18yM8mz67x7m2+TwlydTShQW6RRMy3wNE
	wxSSy+GBkgbcx7D8YcR3xnp5OArdjqXwrLi7/jGatTaNoTUhR4SoN/1ufj4AF5wWJ5n5r/OKLl6
	zap8yhzTVDlkdIOq2bh4CVlFqwKgvI9Q09Pu+MkDuJpKJ3uk0go4m7GiF0pGLKrmXqdOLZFZn7T
	OGX/Hw==
X-Received: by 2002:a17:90b:3b8d:b0:340:b908:9665 with SMTP id
 98e67ed59e1d1-3527329ea06mr8752017a91.37.1768804055769; Sun, 18 Jan 2026
 22:27:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116101648.377952-1-shengjiu.wang@nxp.com>
 <20260116101648.377952-2-shengjiu.wang@nxp.com> <20260117-versed-proficient-pigeon-bd0b2a@quoll>
In-Reply-To: <20260117-versed-proficient-pigeon-bd0b2a@quoll>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Mon, 19 Jan 2026 14:27:24 +0800
X-Gm-Features: AZwV_Qh2xtpI3oElyCcH4AM0eV_DbnEZq9du-jVlcZi7tddPI18dsGW5cus42Lw
Message-ID: <CAA+D8ANrcjvOCfRN7gGGW+7YzvVieU7P2uexUpVYTw6MEHAKYQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: fsl,audmix: Add support for
 i.MX952 platform
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

On Sat, Jan 17, 2026 at 7:44=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Jan 16, 2026 at 06:16:47PM +0800, Shengjiu Wang wrote:
> > The specific feature for AUDMIX on i.MX952 is that it can be bypassed,
> > so add fsl,amix-bypass property for this feature, besides this there is
> > no power domain defined on i.MX952, so make power-domains to be
> > dedicated to i.MX8QM.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  .../devicetree/bindings/sound/fsl,audmix.yaml | 35 +++++++++++++++++--
> >  1 file changed, 33 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/fsl,audmix.yaml b/=
Documentation/devicetree/bindings/sound/fsl,audmix.yaml
> > index 3ad197b3c82c..50fb08460b4f 100644
> > --- a/Documentation/devicetree/bindings/sound/fsl,audmix.yaml
> > +++ b/Documentation/devicetree/bindings/sound/fsl,audmix.yaml
> > @@ -34,7 +34,9 @@ description: |
> >
> >  properties:
> >    compatible:
> > -    const: fsl,imx8qm-audmix
> > +    enum:
> > +      - fsl,imx8qm-audmix
> > +      - fsl,imx952-audmix
> >
> >    reg:
> >      maxItems: 1
> > @@ -75,12 +77,41 @@ properties:
> >          unevaluatedProperties: false
> >          description: Output port to SAI RX
> >
> > +  fsl,amix-bypass:
> > +    type: boolean
> > +    description:
> > +      The audmix module is bypassed from hardware.
>
> I don't understand why device AUDMIX would have property saying AUDMIX
> (so itself) can by bypassed. If you bypass the device itself, what do
> you configure here?

The case is that the SAI interface is connected to AUDMIX,  but AUDMIX can =
also
be bypassed by hardware configuration.

Yes, adding this property in the AUDMIX module looks strange.  Another
choice is to
add this property in the SAI binding document.  Is this better?

Best regards
Shengjiu Wang
>
>
> > +
> >  required:
> >    - compatible
> >    - reg
> >    - clocks
> >    - clock-names
> > -  - power-domains
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - fsl,imx8qm-audmix
> > +    then:
> > +      required:
> > +        - power-domains
> > +      not:
> > +        required:
> > +          - fsl,amix-bypass
>
> fsl,amix-bypass: false
>
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - fsl,imx952-audmix
> > +    then:
> > +      not:
> > +        required:
> > +          - power-domains
>
> Not sure what you want to say here, but disallowing properties is shown
> in example-schema (:false).
>
> Best regards,
> Krzysztof
>

