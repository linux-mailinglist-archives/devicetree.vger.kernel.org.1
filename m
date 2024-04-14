Return-Path: <devicetree+bounces-59012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7782B8A3FCB
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 02:47:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1C0A1F21618
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 00:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04A77D26A;
	Sun, 14 Apr 2024 00:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kIvA8Zhk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F11FC1D
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713055655; cv=none; b=JV7Frj8ADX7fkHmO76KZYVynT/STzsNi5eaDJNloTSYmbEKrIRxJDrnCcjaWLEv8O9FB83mR/1UkVSUzt3XBT0A6Tbj5NcTgd4+haYjOfmV9TrDiV0pXN2If6xBw2DoNWPdtJMikJeqrBqFV3LINjQ7QHx3voXjcB2P97oIFRNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713055655; c=relaxed/simple;
	bh=m+H2hLNT3bMz8Vjj7tR5D5dQSzyB7RAmz7NjC+eEZZM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FUI6CEpeVXrgWORqvS6WgrWeGv5NnkUuK9CyyKPEWD0/2bSwo1E6ia7Dqjo2sMc6w/SE1axtlXD1jXDz+mYlQ9QBWCPSPGDkmMUh4TsLqK5f8v/nnOkkY25aBuNrk0kfsl3MeMIS0r5F2CTGIyLRQftegXLC5TTcy7rm0BrDXoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kIvA8Zhk; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-ddda842c399so2225294276.3
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 17:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713055652; x=1713660452; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M5WQ2VkELMufrh3PSbIcwY5+0eXJqOqLipLr3+iVvbo=;
        b=kIvA8ZhkeI6/0HyRB5Smb9ervA921t91l9WUOSxlDjixk+V+25i5zvLpXDvX4aAFb5
         fX6NociJM2q/fjcoG9+4OeKQihS2UnXvTU3ZAnTF/iZNQE3rSSjGZotUIhn01tCowS7x
         rVYn5XSLJkHuih6pw0uKwJhM7X02NFH++rms6OvfffbyCYRMRnm57riesH+54SE9hoKz
         tDjKnU/Xa66rhf5aFdy7NU4IYYcUkJ/egLeSldRr4kNVwP2UBJs42LZvhmfgVmJ/IPw5
         pN2KN7TByiKVmGkhF3ltbr4BViIWdmrPVpB/MTYIXpmkvSCA82f86nr8mDzpkQ8dflNU
         Ak3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713055652; x=1713660452;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M5WQ2VkELMufrh3PSbIcwY5+0eXJqOqLipLr3+iVvbo=;
        b=S3puuitT1F1iEcA2QM34xJIYxeWJtM+VOK7MnErqmtw6ELRdRuVM8TKhmHieJ+48AN
         CN+5FYWC2SWeeU477uViURpjgg7uj3df5cnFzMlaGVundEfF8o2U1JGybIjNmrcwZi9b
         OkFxZw6oP6kk0vPtaK8DfTk/JdVxCSHFrZp7GRBwJ3Ad7vDqu4KD+ld1sf1DWNhUrxeu
         0SEVgXtUe+ZE1ixiXnrOYR0kGeSRWiV2BsQE+4r3HkMeP3GxQHLFuGSKkQzlffYcNZTq
         mHLyLXstMPtL5fNkpH2Pf+sFOOUNeBKjdgOyvpMhJLRE+aLcFycy4t4scMM4sEjNXwFi
         1dnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXM0OgJAfDSfPT94a75wZQQ8qCvSac99vZxgXFEK6dxdWlOnOGSzA7B6enPXM6SOByKmoXN/dORd+lh7Jjok8o67i2qJjhu1cW0fg==
X-Gm-Message-State: AOJu0Yx/+ffUrm94n2Sr24Ej4Qz4BOwVRAQ8SwL3IbqDz6qt5BH6JH+Q
	tP38XvJlInO/qOLQp0FjRm0URmzPcjb4pb4CtInSleZ8dsUdW9e3PEd2szmlLAJSLv4Tr46HyFv
	P2tfjUmv60wje1YMUE37SU3toQeQf+uls5Bx2Vw==
X-Google-Smtp-Source: AGHT+IHLB+pvVSDkKjVIvDhV7D0P5GDfzk2zNdz4llnTJwlJaVNQV+26IFC0nbG7NFfWoohzs94togDkWq8owAecWe8=
X-Received: by 2002:a25:ea52:0:b0:dcd:128:ff3b with SMTP id
 o18-20020a25ea52000000b00dcd0128ff3bmr6150611ybe.38.1713055652276; Sat, 13
 Apr 2024 17:47:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122094406.32198-1-krzysztof.kozlowski@linaro.org>
 <D0H3VE6RLM2I.MK2NT1P9N02O@fairphone.com> <051c6e44-4844-48b9-846d-cf9b81611415@linaro.org>
 <D0H4CHG4KSRF.10Z6DOI8PORI8@fairphone.com> <07210bf0-b262-422a-ae97-83efb9cbe6de@linaro.org>
In-Reply-To: <07210bf0-b262-422a-ae97-83efb9cbe6de@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 14 Apr 2024 03:47:20 +0300
Message-ID: <CAA8EJpqpBfD4Do_y=BnvLq5BM97VYgkWm1Pd-P5yG+NVc7S7aQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: usb: add common Type-C USB Switch schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 13 Apr 2024 at 14:31, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 11/04/2024 09:35, Luca Weiss wrote:
> > On Thu Apr 11, 2024 at 9:25 AM CEST, Krzysztof Kozlowski wrote:
> >> On 11/04/2024 09:13, Luca Weiss wrote:
> >>> On Mon Jan 22, 2024 at 10:44 AM CET, Krzysztof Kozlowski wrote:
> >>>> Several bindings implement parts of Type-C USB orientation and mode
> >>>> switching, and retiming.  Keep definition of such properties in one
> >>>> place, new usb-switch schema, to avoid duplicate defines.
> >>>>
> >>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>>
> >>>> ---
> >>>>
> >>>> Changes in v2:
> >>>> 1. Fix language typos handle->handler (Luca)
> >>>> 2. Drop debugging left-over (Luca)
> >>>> ---
> >>>>  .../devicetree/bindings/usb/fcs,fsa4480.yaml  | 12 ++--
> >>>>  .../devicetree/bindings/usb/gpio-sbu-mux.yaml | 12 ++--
> >>>>  .../devicetree/bindings/usb/nxp,ptn36502.yaml | 12 ++--
> >>>>  .../bindings/usb/onnn,nb7vpq904m.yaml         | 13 ++--
> >>>>  .../bindings/usb/qcom,wcd939x-usbss.yaml      | 12 ++--
> >>>>  .../devicetree/bindings/usb/usb-switch.yaml   | 67 +++++++++++++++++++
> >>>>  6 files changed, 92 insertions(+), 36 deletions(-)
> >>>>  create mode 100644 Documentation/devicetree/bindings/usb/usb-switch.yaml
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
> >>>> index f9410eb76a62..8b25b9a01ced 100644
> >>>> --- a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
> >>>> +++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
> >>>> @@ -27,13 +27,8 @@ properties:
> >>>>    vcc-supply:
> >>>>      description: power supply (2.7V-5.5V)
> >>>>
> >>>> -  mode-switch:
> >>>> -    description: Flag the port as possible handle of altmode switching
> >>>> -    type: boolean
> >>>> -
> >>>> -  orientation-switch:
> >>>> -    description: Flag the port as possible handler of orientation switching
> >>>> -    type: boolean
> >>>> +  mode-switch: true
> >>>> +  orientation-switch: true
> >>>>
> >>>>    port:
> >>>>      $ref: /schemas/graph.yaml#/$defs/port-base
> >>>> @@ -79,6 +74,9 @@ required:
> >>>>    - reg
> >>>>    - port
> >>>>
> >>>> +allOf:
> >>>> +  - $ref: usb-switch.yaml#
> >>>> +
> >>>>  additionalProperties: false
> >>>>
> >>>>  examples:
> >>>
> >>> Hi Krzysztof,
> >>>
> >>> This patch seems to break validation for fsa4480 if data-lanes is set in
> >>> the endpoint like the following
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
> >>> index f9410eb76a62..3aa03fd65556 100644
> >>> --- a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
> >>> +++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
> >>> @@ -102,6 +102,7 @@ examples:
> >>>            port {
> >>>              fsa4480_ept: endpoint {
> >>>                remote-endpoint = <&typec_controller>;
> >>> +              data-lanes = <0 1>;
> >>>              };
> >>>            };
> >>>          };
> >>>
> >>> Similar to how it's already used on qcom/qcm6490-fairphone-fp5.dts
> >>>
> >>> I'm guessing the 'port' definition in the common schema somehow
> >>> disallows the fsa4480 schema from describing it further?
> >>
> >> There is no such code in qcm6490-fairphone-fp5.dts. There was no such
> >> code in the example of fsa4480 when I was testing my changes (and
> >> examples should be complete), so this did not pop up.
> >
> > Right, I'm sorry this is just out-of-tree for now, I've forgotten this.
> > There's some dependency chain with some unsupported DSC configuration in
> > DPU for now that blocks upstreaming this.
> >
> > My tree with these patches is here if you want to take a look:
> > https://github.com/sc7280-mainline/linux/blob/sc7280-6.8.y/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts#L628
>
> I think fsa4480 schema is incomplete. I looked at HDK8450 board diagram
> and fsa4480 sits between and connects:

I'd second this

> 1. Type-c connector
> 2. USB phy or controller

USB SS PHY or controller

> 3. DisplayPort controller for altmode

Also:
4. Audio HP / Mic pins

>
> I think nxp,ptn36502 is done correctly. You need three ports and
> data-lanes would be on only one of them. usb-switch.yaml schema is ready
> for this and assumes data-lanes will be on (2) above.
>
> >
> >>
> >> You right, new schema does not allow extending the port. However the
> >> true question is, why muxing happens on the port to the SoC controller?
> >> The graph in commit msg fad89aa14 shows it happens on the side of the
> >> connector.
> >>
> >> Looks like fsa4480 mixes connector with the controller.
> >
> > Could be honestly.. I trust you with knowing better how the ports are
> > supposed to work.
> >
> > The property is for telling the fsa4480 driver that essentially the
> > hardware is wired up the reverse way. So with this info the driver can
> > handle the orientation switching correctly.
> >
> > There's another layer to this as explained in the patches there that the
> > OCP96011 essentially works reversed compared to FSA4480, that's why it's
> > all a bit of a mess.
>
> Maybe Bjorn, Dmitry or Neil have some more ideas how this should look
> like, but as of now to me it feels we should add "ports" property and
> move there to port@1 the data-lanes part of fsa schema.

It might be done if this benefits HW description. However I don't
think it is really possible to define the usb-switch schema that
covers all mux and retimer cases.
Let's cover major usecases:
- simple SBU mux, is connected only to the SBU / DP AUX lines.
  - gpio-sbu-mux misses the port connected to DP AUX

- SBU switch. It is connected to SBU lines and to two other ports
(e.g. DP AUX and USB4/PCIe SBU)
  - gpio-sbu-mux in some laptops, not supported yet

- Audio accessory mode MUX. Connects USB-C DP/DM and SBU lines either
to the USB 2.0 controller + DP AUX (or any other usecase) or to the
audio codec
  - FSA4480,
  - WCD939X

- Debug accessory mode MUX. Connects USB-C DP/DM, SS and SBU lines
either to the USB 2.0, USB+DP SS and DP AUX or to the JTAG port
  - Qualcomm EUD?

- USB/DP MUX: Connects USB-C SS and SBU lines either to the USB 3.0 or
to the DP and DP AUX
  - pi3usb30532, no bindings

- USB-C SS retimer. Is connected to USB-C SS lines and and to the SS
lines on the other side
  - no known examples

- USB-C SS + SBU retirmer. Is connected to USB-C SS + SBU lines and
and to the SS + SBU lines on the other side.
  - nb7vpq904m Second SBU port is missing in bindings
  - ptn36502 Second SBU port is missing in bindings

There might be some combinations of these mux/switch/retimers.

Hope this summary helps.

>
> Driver then should check whether there is port or ports and use
> ports->port@1 in the latter case.
>
>
> Best regards,
> Krzysztof
>


-- 
With best wishes
Dmitry

