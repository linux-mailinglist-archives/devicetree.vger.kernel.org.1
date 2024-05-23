Return-Path: <devicetree+bounces-68681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 348CB8CCFC0
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 11:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD9F5283FF1
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 09:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C0A13D61E;
	Thu, 23 May 2024 09:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yLE7n8mI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFBE13D521
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 09:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716458302; cv=none; b=alEy7eg9rapNbW4gYwQ4RLa07pHCL1Rkomd0WNZZdULLXbg1SxHMlEGkwB238CsVTwoFF5VKOxLS2/A+6xmUcxKj25tHNbILXY1rSDOzIM8W6uxfiLCr+fdthdKutXj1pBFUfDIX6I93nJotglQj8+/wAWGVsj0H17GDMtvWrjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716458302; c=relaxed/simple;
	bh=MeQhY+H63qfrwa+ZV9kpemLqTZnKVQF3cpOAfLeW+7w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rddRb4PMGj4Cb7OkcS0c7RWGpvDeENNnpS4YtzVFrRxLrJlclrRJrAJpUTHee3abk61meoFrMHVjcTcuIlrDF1CPK+DtZ4HCtUDo0s3FVeYaT00YqICTj0AjlA61MYvGC/cnGzJR141l/IXLe1KKyB1KhtMu4n5VCEFDwB/nV5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yLE7n8mI; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-627dfbcf42aso18545647b3.1
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 02:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716458299; x=1717063099; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y1sOYJIvzvzoC2yvl9zoEh4JKtXSdU2JwzVDJiDmqfo=;
        b=yLE7n8mIg5EmGbVB2vV9x3KqXwPYqq+7m2+JVDM6gIezCcQz8OgzPJ/3WamOpI0M7t
         uuaZxqSSZM4HPcgxIegpijGNwZPCixRyt0AOKWfrtK+Pz93TA3SHfhbGx3udUGdHQ3OT
         5f+fusRXSkaMaZ6V8q2/EZHsHC65cfDcmsf05HH5wbuUVORK7GuVnglTlZOyzhJdmixU
         zTWBB1FlGDPtdO500Ci1Gcdp8eoyE7rJUWfF5akC7ewR/Iz5asTqB21B+MYpTDoKIhOY
         Yge39OX1XQ4vxwdrxzhRl4EggfmLmXItlrZqm/1hG5z5w6BGnytMRf3/PQVCQX7FwEDP
         QHYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716458299; x=1717063099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1sOYJIvzvzoC2yvl9zoEh4JKtXSdU2JwzVDJiDmqfo=;
        b=dsR72rio5l8/k9Yr56x14YWPzPWVGLe+2NG3oZu+2OhsSDbjS5uqcbZRG0RgZcHZ/M
         o36HzCHBIooBdhGyJwZExVW1tNCV8TVpRVGOBp4wBnpGkMirjnUPamQh/DqdDFvBlybN
         bdL4TSAlB8DFFyr6m/Ryy6cIkhIR9bnY+o/7loCQBI/HmdSWl3GNRsbYgcIW8xQXpC8q
         DSswM+DGko8oiUOBZN3Kf2syTlsu8M4jd3CJ/eV7eqRzTULdMy8KHNE2cmW6nrRzdr1d
         iwJuey4eEJuw1ukxc0chbE6EzTVAy0cpGSpPoEwVG/yvqC9eeJgNszM2erXFGgXo9agy
         fwGA==
X-Forwarded-Encrypted: i=1; AJvYcCUxwdwxmg6KIOlGBFyNKbYa9E8yx8TeLb2Pjs3i27DZxH5WxBsZeNnhCou1WOyvoq70slvaVe9xW2w4PeRDbDFqBpshQg/V7uNz0g==
X-Gm-Message-State: AOJu0Ywv8bTcygMU2cwr5EK4p8JqkGlT0P9uy8AsGQStQNw5K4KOH2Wc
	yndt0osAJVmFwk7ZgP8isMm53lP0uG5HXc8cZcJPcwWnnugDFTZHPfk6+EhK6Jtp8VmIxjh9jBU
	PAUazwZy6OJq5KhcdV1LII5lvQ1CBa2S6xnmyUA==
X-Google-Smtp-Source: AGHT+IFSx7eH9OK/hI8iq0vTScgxcbZqJWA8/FXYjaRvJCffCTFJs80i56nCHfpAt38cyIIYw5RoPljn2ZLPu/XiJlY=
X-Received: by 2002:a0d:e206:0:b0:61b:3304:cdc7 with SMTP id
 00721157ae682-627e4824bc6mr43478167b3.29.1716458298915; Thu, 23 May 2024
 02:58:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240520-dpu-handle-te-signal-v1-0-f273b42a089c@linaro.org>
 <20240520-dpu-handle-te-signal-v1-1-f273b42a089c@linaro.org>
 <224fa477-07ba-e7b2-2f7d-8f7d21f4a0c7@quicinc.com> <CAA8EJpp8kRPKboHNHwD+R5f1AcndjaQdGG=Q4ygmRE9VMNievQ@mail.gmail.com>
 <5cde2f43-89ab-d2d4-d68e-605f8f5d1da7@quicinc.com>
In-Reply-To: <5cde2f43-89ab-d2d4-d68e-605f8f5d1da7@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 23 May 2024 12:58:07 +0300
Message-ID: <CAA8EJpoMtr6OGjL8qq-cHadQSOVyDAaL8=2TLvOjBbYV2Z7+Mg@mail.gmail.com>
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

On Thu, 23 May 2024 at 02:57, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 5/22/2024 1:05 PM, Dmitry Baryshkov wrote:
> > On Wed, 22 May 2024 at 21:38, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 5/20/2024 5:12 AM, Dmitry Baryshkov wrote:
> >>> Command mode panels provide TE signal back to the DSI host to signal
> >>> that the frame display has completed and update of the image will not
> >>> cause tearing. Usually it is connected to the first GPIO with the
> >>> mdp_vsync function, which is the default. In such case the property can
> >>> be skipped.
> >>>
> >>
> >> This is a good addition overall. Some comments below.
> >>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >>>    .../bindings/display/msm/dsi-controller-main.yaml        | 16 ++++++++++++++++
> >>>    1 file changed, 16 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> >>> index 1fa28e976559..c1771c69b247 100644
> >>> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> >>> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> >>> @@ -162,6 +162,21 @@ properties:
> >>>                    items:
> >>>                      enum: [ 0, 1, 2, 3 ]
> >>>
> >>> +              qcom,te-source:
> >>> +                $ref: /schemas/types.yaml#/definitions/string
> >>> +                description:
> >>> +                  Specifies the source of vsync signal from the panel used for
> >>> +                  tearing elimination. The default is mdp_gpio0.
> >>
> >> panel --> command mode panel?
> >>
> >>> +                enum:
> >>> +                  - mdp_gpio0
> >>> +                  - mdp_gpio1
> >>> +                  - mdp_gpio2
> >>
> >> are gpio0, gpio1 and gpio2 referring to the vsync_p, vsync_s and vsync_e
> >> sources?
> >
> > No idea, unfortunately. They are gpioN or just mdp_vsync all over the
> > place. For the reference, in case of the SDM845 and Pixel3 the signal
> > is routed through SoC GPIO12.
> >
>
> GPIO12 on sdm845 is mdp_vsync_e.
>
> Thats why I think its better we use mdp_vsync_p/s/e instead of mdp_gpio0/1/2

Sure. This matches pins description. Are you fine with changing
defines in DPU driver to VSYNC_P / _S / _E too ?

>
> >> In that case wouldnt it be better to name it like that?
> >>
> >>> +                  - timer0
> >>> +                  - timer1
> >>> +                  - timer2
> >>> +                  - timer3
> >>> +                  - timer4
> >>> +
> >>
> >> These are indicating watchdog timer sources right?
> >
> > Yes.
> >
> >>
> >>>        required:
> >>>          - port@0
> >>>          - port@1
> >>> @@ -452,6 +467,7 @@ examples:
> >>>                              dsi0_out: endpoint {
> >>>                                       remote-endpoint = <&sn65dsi86_in>;
> >>>                                       data-lanes = <0 1 2 3>;
> >>> +                                   qcom,te-source = "mdp_gpio2";
> >>
> >> I have a basic doubt on this. Should te-source should be in the input
> >> port or the output one for the controller? Because TE is an input to the
> >> DSI. And if the source is watchdog timer then it aligns even more as a
> >> property of the input endpoint.
> >
> > I don't really want to split this. Both data-lanes and te-source are
> > properties of the link between the DSI and panel. You can not really
> > say which side has which property.
> >
>
> TE is an input to the DSI from the panel. Between input and output port,
> I think it belongs more to the input port.

Technically we don't have in/out ports. There are two ports which
define a link between two instances. For example, if the panel
supports getting information through DCS commands, then "panel input"
also becomes "panel output".

>
> I didnt follow why this is a link property. Sorry , I didnt follow the
> split part.

There is a link between the DSI host and the panel. I don't want to
end up in a situation when the properties of the link are split
between two different nodes.

>
> If we are unsure about input vs output port, do you think its better we
> make it a property of the main dsi node instead?

No, it's not a property of the DSI node at all. If the vendor rewires
the panel GPIOs or (just for example regulators), it has nothing to do
with the DSI host.

--
With best wishes
Dmitry

