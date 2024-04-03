Return-Path: <devicetree+bounces-55759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FDA896471
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 08:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 636711C214EF
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 06:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C15C4D9FA;
	Wed,  3 Apr 2024 06:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b="WYnKe0dG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62057645
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 06:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712125006; cv=none; b=gHnX4VOEyJpXOOJmO5prNDmipg3Kr1W0oReFi2cscCLT97Rn1EoKRmYuKomw/1o6nmmc+HXsn1b7EVVS3DDtwAspa9AcLJiklMkAPVYjLYphoCRSuhrA6KciOYrgn1EJxCcSDpuLuETViQ8kN2kbyD3IICyy1v5HieWhF53ZUT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712125006; c=relaxed/simple;
	bh=kIy7qWFiBqN1u57DhH/gWej2UMvzk3eu0cayWgZ2JQk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XUvCC15pMNJW0opier/ljQyJlLUIDuwmY8XTRR+qdO2ZnsGKC6VaXGq6TpFMHJnKyhvUsRaLStLF8J1hZKNEty2TPtGyAB3jQ/pYOBYHNIo2ALDRAkZJBjf16MZ0ojPIsVHSNMs1su2LPsTGhKBGuzrhF7ctAMRW96P42Fl858M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro; spf=pass smtp.mailfrom=shruggie.ro; dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b=WYnKe0dG; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shruggie.ro
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-515b3077d09so6491101e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 23:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20230601.gappssmtp.com; s=20230601; t=1712125002; x=1712729802; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TUWOAlRew8Y9zlqvI12IsW4qhw1mXgmiBgk1qsYuJAE=;
        b=WYnKe0dGvTr9j6X5aXCcWIfdx2bUHfe74Jj6bJL7ZhwSMSMLFuRU7YifVtqiGayr22
         KRWYtxbZi/9tp5/AjRmH1p7LiG4OmN5ubZVp/WiNkZFXWUrKnBrJk8NsdwXAlwZXKV8N
         GI2iQlHDmFqA0KVpaG22dRYOUXejHjJBXEgjzerLPtnMrvksMxuOFfrClLOARj3YRbPg
         Y68Tu1U1Vo6FdqMBh5RJ4NtqSqfbuh+xDRgwJaMoHSb8KhSLoXN4eRb6MUl7rFr6MVkY
         c6uoys7i/MTqBZydngoJ0OaXRMAoM8frvu4+jR9V734i1WNJaLQDHSIfdGjHQxzftRKU
         r3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712125002; x=1712729802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TUWOAlRew8Y9zlqvI12IsW4qhw1mXgmiBgk1qsYuJAE=;
        b=sozQtEQx4JCY/aUTp5IfCbFl9c2fQ8jfUfzH+GTC0A16OtSdUBE8pZ6D3k0+MnzGLa
         eaG8T1yMrBB8lxdH19dDUxlheb/YCIaUBsPDyCtsaRPxktjAp5hDu+Qm+TGjGvlS0sNm
         G+m16a79Lfptv6/x7nSZvcDttBcW+QBeO0PNPCaFgqpidBN6MrX79dYAF2Gz/s7MNsOF
         0VlC85yvFpkg3pU4VAVWajoJp16NXTZBDhqoV6qKBfyZdB9q8FNcO73mYjPoc6mHqmSo
         zxyi1lA0iyuw5yEAHH0IIllaXF27ehwNENYnngHqaYsv7iVAi2LqqZKuQ9OJuiEn5kil
         nOZw==
X-Forwarded-Encrypted: i=1; AJvYcCU19yf9n/WRXCDS/LczQ4hge/YpHrDHMUXhlu32jpt5FQ7/fgwVyLr7+gQwjb6h1AIlDmVK2hxtdhYKIS3a69cb4EQRBQwV32VOkQ==
X-Gm-Message-State: AOJu0YxfF36gBPA/L2cgHpJG4SPPnwmsS+FUqLqPiLcdAasJU+JrnTZj
	W+lGQSrI2X0gGYNXZ3M2cBm4RugCxr+tgItsyxBgZhRchqp74WQY4kr7PLigC9cTjlR2r1TcjpV
	xVGKmnop2+0WLmUSC1cNyyke5WCX8f6PnbYfxMA==
X-Google-Smtp-Source: AGHT+IHxy5L7IuAClTzOQvPqVmBmGzm4Jxd5dXHEawLJyCom6nIx29NzDwr6gHy4UOjn+UPEdfsKmGeIOhgk1vX2hCY=
X-Received: by 2002:a19:6a13:0:b0:516:a0a5:a444 with SMTP id
 u19-20020a196a13000000b00516a0a5a444mr8832014lfu.2.1712125002295; Tue, 02 Apr
 2024 23:16:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402105925.905144-1-alex@shruggie.ro> <20240402105925.905144-2-alex@shruggie.ro>
 <20240402-sheet-retread-025759b22faf@spud>
In-Reply-To: <20240402-sheet-retread-025759b22faf@spud>
From: Alexandru Ardelean <alex@shruggie.ro>
Date: Wed, 3 Apr 2024 09:16:31 +0300
Message-ID: <CAH3L5QooAXDYAxOdMkPrW1mx04ZgTv_kMU5VSAby9J3Hb_RFOg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: display: bridge: lt8912b: document
 'lontium,pn-swap' property
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, adrien.grassein@gmail.com, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	stefan.eichenberger@toradex.com, francesco.dolcini@toradex.com, 
	marius.muresan@mxt.ro, irina.muresan@mxt.ro
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 2, 2024 at 9:06=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Tue, Apr 02, 2024 at 01:59:25PM +0300, Alexandru Ardelean wrote:
> > On some HW designs, it's easier for the layout if the P/N pins are swap=
ped.
> > The driver currently has a DT property to do that.
>
> "currently", because 1/2 adds it. bindings patches should precede the
> driver patches in the series, so please swap the patches and remove this
> portion of the description.

ack;
i'll invert the order and remove this;

>
> >
> > This change documents the 'lontium,pn-swap' property.
> >
> > Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
> > ---
> >  .../devicetree/bindings/display/bridge/lontium,lt8912b.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,l=
t8912b.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt89=
12b.yaml
> > index 2cef252157985..3a804926b288a 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.=
yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.=
yaml
> > @@ -24,6 +24,12 @@ properties:
> >      maxItems: 1
> >      description: GPIO connected to active high RESET pin.
> >
> > +  lontium,pn-swap:
> > +    description: Swap the polarities of the P/N pins in software.
> > +      On some HW designs, the layout is simplified if the P/N pins
> > +      are inverted.
>
> Please explain what configuration of a board would cause these to be
> swapped, rather than why someone might want to configure the board this
> way. I've got no idea what this hardware is actually doing, so this is
> being pulled out of a hat, but I'd expect something like "Some boards
> swap the polarity of the P/N pins, use this property to indicate this to
> software".

ack
if it's fine with you, i'll use your suggested description;

for a broader context, we were using a DSI-HDMI converter [1] from
SomLabs on a different (than SomLabs) board;
and we were not seeing anything on the HDMI-connected display;
as I understand it, some DSI-HDMI bridges support P/N auto-inversion;
this one doesn't AFAICT;
on this DSI-HDMI converter [1], we've noticed that the P/N pins were
inverted from the DSI to the chip (vs what we expected to see)
after changing the register value (for the P/N swap), it worked;
our conclusion was that, the design of the converter (board) was done
as-such, because it made the layout easier

[1] https://wiki.somlabs.com/index.php/SL-MIPI-LVDS-HDMI-CNV-11_Datasheet_a=
nd_Pinout

>
> > +    type: boolean
>
> The type here should be flag.

ack; i'll change the type

>
> Cheers,
> Conor.
>
> > +
> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> >
> > --
> > 2.44.0
> >

