Return-Path: <devicetree+bounces-36098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8BF83FEEF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 08:16:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77F5D2854AE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 07:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9EC4C3D4;
	Mon, 29 Jan 2024 07:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QigT3h7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6370E4D58F
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706512591; cv=none; b=gKQVW8qC5f8KlQJ2njYfDTfJFYnn9xRWEyQrbDmnNtuJcFauq61Uq7k6MEz5wTYMpVB4XT/yNY5w9YaUWp/Q6uIkIqAeDMnw+ZV1vuDzT1Gir9IMg/FswUmnjd0jMOeumucXwgHJi02fyppNQ5iRoLe950XA6EWLm3dgrlErvhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706512591; c=relaxed/simple;
	bh=hG7Vzfp17NEMbZ3kboNPbIEc5FlT8qqXwwpgqCE+nb4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rLCtEobrG9PtHVkdPiPrYJjAk3ZyTx4TYfLHm0hkloCvImo8yM7LKnqc07eLW2d13TSDiHgQqhIsZcfqE5Kv9GySpUqZynjr874H+ZQzGTB27bVtsvWqKrVw8dA+25qvjvN2RBNq3GCryj1eYhIhmdXRxdO71qF6zHJTWvLynM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QigT3h7i; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-510f37d6714so1512569e87.2
        for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 23:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706512587; x=1707117387; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GKVjPpRBlhrSt/tEcTU8BHnh+3o7uF091QzM4ro5QmU=;
        b=QigT3h7iNkQxGtwVgZk4mEthkLtatteMJZ8aD3L331FzmXtbTp1mVGJHgpRMsW+zJN
         7npXMpRFZZGpm2gcBDAuLkcpOO70zJO85a2uOUisB2DS+AECfYzLJqecwHZ0WDT9YKCF
         rhoQcGU1fg7hupR04dMQU5aM7gB5KAt6CpMBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706512587; x=1707117387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GKVjPpRBlhrSt/tEcTU8BHnh+3o7uF091QzM4ro5QmU=;
        b=emE4uE3gW5r/a77cwQzIfy7iEr86X5lolO3I1xcDFBizJ2sVZsuy9o9HiSjPMfCtO7
         unSiocTN5r99WPzv+U2jdktAuiU4xV7RrOCHo4XJGuYA9OPvom3f8GPt55fxcccuwodr
         x9oXquFUfGoTR4TSuDwB4mh1z/wH6nn2FceRMZzFFAro8UM8dys2LCErY1k5D73TFYar
         X6ZHDNdyBQf5DMyE8tfkNV2KqrJekPAb2nheQRAyvVlz3B33p1Ka945ilaqR70irrUkO
         YoWw+26c7q2hs+G29LEOq0ontdL7MMEGVYqRAEQLkIL1noe3vNqF+zXk1qZz5p8q90LJ
         ubwg==
X-Gm-Message-State: AOJu0YzuSTnZKjkqwX5rPJ4YeqikqxOWMm+seu5MBibLu9brfYBp4Tlh
	iyv1x9U9dfX/VROwf37patrDnlmzfqKU5YOb0eMzMIXiQ5mb/EBYPTba7+IBuGM6VFlLTOzU+XL
	aalxgp+ujdShhUgfIBS01+40z4nVocLA57nya
X-Google-Smtp-Source: AGHT+IEb0p1syRm7CrHn7mmVEwAtW1jrbzLAGOaEIdkZmX7QHvHCjeBg+3TTT52oNs9z67jT8ZgnE281V4VmoPUshog=
X-Received: by 2002:a05:6512:201c:b0:50e:ca2a:50f8 with SMTP id
 a28-20020a056512201c00b0050eca2a50f8mr2832350lfb.63.1706512587448; Sun, 28
 Jan 2024 23:16:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240126073511.2708574-1-wenst@chromium.org> <25e0a1c6-70dd-409b-927b-ef113e6a4cc4@linaro.org>
In-Reply-To: <25e0a1c6-70dd-409b-927b-ef113e6a4cc4@linaro.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 29 Jan 2024 15:16:16 +0800
Message-ID: <CAGXv+5FN+=Y-c74R2WguvP_2PZwArvsNd2SLy=aKEs06A4NhPw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: bridge: it6505: Add #sound-dai-cells
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Allen Chen <allen.chen@ite.com.tw>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:17=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/01/2024 08:35, Chen-Yu Tsai wrote:
> > The ITE IT6505 display bridge can take one I2S input and transmit it
> > over the DisplayPort link.
> >
> > Add #sound-dai-cells (=3D 0) to the binding for it.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> > The driver side changes [1] are still being worked on, but given the
> > hardware is very simple, it would be nice if we could land the binding
> > first and be able to introduct device trees that have this.
> >
> > [1] https://lore.kernel.org/linux-arm-kernel/20230730180803.22570-4-jia=
xin.yu@mediatek.com/
> >
> >  .../devicetree/bindings/display/bridge/ite,it6505.yaml         | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it650=
5.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
> > index 348b02f26041..7ec4decc9c21 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
> > @@ -52,6 +52,9 @@ properties:
> >      maxItems: 1
> >      description: extcon specifier for the Power Delivery
> >
> > +  "#sound-dai-cells":
> > +    const: 0
>
> In such case you also want to $ref /schemas/sound/dai-common.yaml.

Ack. I assume this also means I should change "additionalProperties: false"
to "unevaluatedProperties: false" in this file.

ChenYu

> Best regards,
> Krzysztof
>

