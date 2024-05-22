Return-Path: <devicetree+bounces-68512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CE48CC79E
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 22:05:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8837B2107A
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 20:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D81E7D3E8;
	Wed, 22 May 2024 20:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FWcOJq5T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA20EF4E7
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 20:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716408348; cv=none; b=tOVNU7R+fpAebcXQU/uJzxeqPBic4oLZGm40og49mMaZau+6ftmW+tG2+zC6OwmqoOkrky2R1fa7sU0CEepbVvm6OBGEK3AxtofGBJRQkdMm3bS2eQNktrU3+BD+a5NSXgHECu4sdhyUwk2Gt6Z9wWWKthpD+OLzxFbJFzPHsz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716408348; c=relaxed/simple;
	bh=9qFYTEzr5EM54xRkpldur+CAwo/4uWeVmyh1E44+jGA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qeZGOE9M/ixa0j9FFWBtKkN6SxvE7Sfa3AaVqOzafuKNrWolyzX2+R+AWfFyGOiXACgQPZSw2Iq6phdEBpdZEu3nYznFn1XfNQOeMrFNFRs9W/4IAJTL+79kLHnRl9XGCHe24kfW4Lkk3FCrKVslwX1aF6xVGSMntY3i6G0zcYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FWcOJq5T; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-df4d7e3dc94so1864273276.1
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 13:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716408346; x=1717013146; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hk3jDe7FCuIhCM+FHY50wYnpF7qQKPUq+TZmlYJWz+A=;
        b=FWcOJq5THJ/wMTJMs4Z46retz73ngUAbc76imdCwT04ATIVGkd1D7Oec0DGcDqB5cg
         WJGq6dr0Ortir7bFqBTDDLP2LZS7XjvlRkHdoxLlgSI/9WTwWAgUqdBIicJKcTRJTzRM
         Mx++XGxoX0yafF81FAu6RV2vhF6LGNdfU7NKzuWdOsSepkcnYbWjFTp6CN5KoKBIdOf4
         rRdZidQr5R1wc0oPb67va3tB2QhMcaGzvZC2/uj+rO1U3+Td95FbFm6Z8XIhgEvLjBUc
         g02uzukmvkLU6hxYvzkxT+aYr3MOXw0By9Bs2KLY5gGA5pnvRwAeHMn8B7nifHsRueK/
         B5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716408346; x=1717013146;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hk3jDe7FCuIhCM+FHY50wYnpF7qQKPUq+TZmlYJWz+A=;
        b=d4x92QlYWHoSu9O7XAj3Jpv0yeANQQMtWMQjCeR+4DpPvEKLoVKIj44YDzI3TlGYXR
         cDJU6E3qwtc9uwtfCm0Pu/sesjDncZjUzw1UlndXYRflWY5R4QTMAFTvlrKr6bL5+Jrd
         MqSvcECc1nklcKMI3goT3o2w8YWUlDn9CB/IqsOgcKDn7gH5J89L2DhwIFacB7nf1fw8
         Rd2U2jnEuUY6VWz1upq6HVRW/2I1JSUkNg5uWdDmGq6JowR7IX1b0jAEq8J9h8ByiZX/
         Zref6HISGek4PW3FVztaDRdg41EuJJq7YHFXN7xcAXeL8VuBRYW56OLGzLTKbeskPvSa
         w/lw==
X-Forwarded-Encrypted: i=1; AJvYcCWbv/T/dnhcO7jiv8+tWu1tpvB+aUFP3mbRJ5KOcE1SaZ/Y74xs1cEFfEfTI4NA9wkpl6sybxyEGA08Pj84rMZNUlQdjYVq1hp4RQ==
X-Gm-Message-State: AOJu0Yw+aUQ/gB2R6zD3wXjsqUioC7dHs6Mb7HIkne+d+yJRh91r4F5N
	IC0ohY7kQ3uCf0vUc5tiocBfg2M4EJfAvJXA3ukQ8k1NbLZ6DjAxR1ZQaS9aLoYPRAn9tXRdKYs
	cnuXebFFtj/9/EJEl/8A2+LXy4oJ/4E2CRELLlw==
X-Google-Smtp-Source: AGHT+IGriJg+wB3ztmixivwvv97cgSoAQj2CfDfqQDNVbMaFx0uytg1e+rLooAVwAc90Yaum/PZOSVahorkiKNzK6YY=
X-Received: by 2002:a25:6b44:0:b0:de5:9ec3:6475 with SMTP id
 3f1490d57ef6-df4e0c1347cmr3111690276.31.1716408345943; Wed, 22 May 2024
 13:05:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240520-dpu-handle-te-signal-v1-0-f273b42a089c@linaro.org>
 <20240520-dpu-handle-te-signal-v1-1-f273b42a089c@linaro.org> <224fa477-07ba-e7b2-2f7d-8f7d21f4a0c7@quicinc.com>
In-Reply-To: <224fa477-07ba-e7b2-2f7d-8f7d21f4a0c7@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 May 2024 23:05:34 +0300
Message-ID: <CAA8EJpp8kRPKboHNHwD+R5f1AcndjaQdGG=Q4ygmRE9VMNievQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: display/msm/dsi: allow specifying TE source
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 May 2024 at 21:38, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 5/20/2024 5:12 AM, Dmitry Baryshkov wrote:
> > Command mode panels provide TE signal back to the DSI host to signal
> > that the frame display has completed and update of the image will not
> > cause tearing. Usually it is connected to the first GPIO with the
> > mdp_vsync function, which is the default. In such case the property can
> > be skipped.
> >
>
> This is a good addition overall. Some comments below.
>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   .../bindings/display/msm/dsi-controller-main.yaml        | 16 ++++++++++++++++
> >   1 file changed, 16 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> > index 1fa28e976559..c1771c69b247 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> > @@ -162,6 +162,21 @@ properties:
> >                   items:
> >                     enum: [ 0, 1, 2, 3 ]
> >
> > +              qcom,te-source:
> > +                $ref: /schemas/types.yaml#/definitions/string
> > +                description:
> > +                  Specifies the source of vsync signal from the panel used for
> > +                  tearing elimination. The default is mdp_gpio0.
>
> panel --> command mode panel?
>
> > +                enum:
> > +                  - mdp_gpio0
> > +                  - mdp_gpio1
> > +                  - mdp_gpio2
>
> are gpio0, gpio1 and gpio2 referring to the vsync_p, vsync_s and vsync_e
> sources?

No idea, unfortunately. They are gpioN or just mdp_vsync all over the
place. For the reference, in case of the SDM845 and Pixel3 the signal
is routed through SoC GPIO12.

> In that case wouldnt it be better to name it like that?
>
> > +                  - timer0
> > +                  - timer1
> > +                  - timer2
> > +                  - timer3
> > +                  - timer4
> > +
>
> These are indicating watchdog timer sources right?

Yes.

>
> >       required:
> >         - port@0
> >         - port@1
> > @@ -452,6 +467,7 @@ examples:
> >                             dsi0_out: endpoint {
> >                                      remote-endpoint = <&sn65dsi86_in>;
> >                                      data-lanes = <0 1 2 3>;
> > +                                   qcom,te-source = "mdp_gpio2";
>
> I have a basic doubt on this. Should te-source should be in the input
> port or the output one for the controller? Because TE is an input to the
> DSI. And if the source is watchdog timer then it aligns even more as a
> property of the input endpoint.

I don't really want to split this. Both data-lanes and te-source are
properties of the link between the DSI and panel. You can not really
say which side has which property.

> >                             };
> >                     };
> >              };
> >

-- 
With best wishes
Dmitry

