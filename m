Return-Path: <devicetree+bounces-58139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B447C8A099C
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 09:24:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 414BAB24C56
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 07:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 937CC13E028;
	Thu, 11 Apr 2024 07:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b="ZIuRE8mM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0112032C
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 07:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712820232; cv=none; b=PkT71IT/KBlPIiqJpVY161EtXD+txP9UbF0NHBW6n5tRZWp3YIutjqkOdPNcEZPKIbu/z0Dp3xBy6KQFNG+M13HeiFWqlVEVVG0smgKTOcy37M1W7srCJOHAq7Wr7xVgvLnZah/Wfb5vtu9Ruxy9JbBsKEl1BSrI9YcfT3MDo3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712820232; c=relaxed/simple;
	bh=gGeW9R0z/8e8cHc5xDnZttqxGEuV/KvsYGHiztgMhTI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eCPTwyUuVGntg2GKbmBw3OSF2gJBn32uIUBUwO1kfNHyrQ+53/xgpsMQh7HVN18H1N+s7tmioyzVQ0TN1KBx9xcI564xWwDsmRpkvZTWrjnqvdIjh6r56XOP3ctW4yAsUwkJgov07/3n8SSkRkSJUSI3qQH4SVqYiiwYMxTabBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro; spf=pass smtp.mailfrom=shruggie.ro; dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b=ZIuRE8mM; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shruggie.ro
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-516c97ddcd1so9204389e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 00:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20230601.gappssmtp.com; s=20230601; t=1712820227; x=1713425027; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dkOVgTaaGrXLtVM87ktxrc8mZTfhRT2o4/E/F6KN6Bk=;
        b=ZIuRE8mMVj95qNAJ+4JMQjCiskC8DYJcoS7RvE/RZhRzzXicB7E8OJjIupVoq9b6Ob
         DDGQENAO7Ec9Ma/gqm5Tv4i9yRl8MUrQeTu3kNJATJpQ2Tt0a34rkyCPeLdyb07R2Mam
         0W2ohISkv1uFb8oSRvZzcKsDXb41kYCoHzP2JsoG7Uz+T4CSJOi4ZFab5NORH8uxod8j
         3ViwcjafBqOwg8S56tpULmiX+BClJp1SepH9XNQoHwD1KKO0kawVmM5sVu6abdbO/oDi
         d9LNDQbJELk228BYO7GzxoOx1ggZ00CEwYBhkM90d3PRGgu7jItcwvC5yzENgC/CSPxE
         4JvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712820227; x=1713425027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dkOVgTaaGrXLtVM87ktxrc8mZTfhRT2o4/E/F6KN6Bk=;
        b=s263ApCnsL9lf4K5c8TWeTBcTe1dOnxubQjYhrrywuWOkNkOJfH9V2y+m+elsaPTl8
         N/EWorq+TzaVs8/ip0rhsdHowjW2mCAVfbBBTsn27v0nHZmTz0MEnRQYBsB7nOk91kAs
         c65nt1lS3WV247iY7tcIxJlZTrYkh6hexIQZybKDeloF4OLAQK5AnZJdd/3baO6gG8cD
         NowzdG2UShyqky6FuTZ7oSuhEFI3fYx5H/VjrkJ1SRQRkAEyyvdkp7gbiw7f6Jrm9eBm
         cxN822OG2eMeupmydXhYVMvzfgmI33lvIfLjTCsR1nl5Zd23YvNUems7TDG9FVvsCqdT
         +Urg==
X-Forwarded-Encrypted: i=1; AJvYcCVSaC4HhImOgoYJDhbS0Y10Kd2Z1BOR1qUTNJPtjPEQyleQkkcHl/o6DGOwg56J9uuCwRXCYMfpkKhnDrE5+1Jg/gRgaBMTsJ7/YA==
X-Gm-Message-State: AOJu0YxIxfJ45wxBsRLO71vCjnfT4vzRas9+4+uW+cA0ORiSXP8UxdqZ
	fxKhYm7nszzmCvy6MbruZEmqR4CUEav6zpl0t6pQqYmdjo/XhzEjsZ3NhnxoQDu/Pbh0ZWFaxzP
	H7Ghl/A0V3W0rPLBeXAJe/XCEa0YBSiImtIb1CA==
X-Google-Smtp-Source: AGHT+IFZZUKJ4M2JhpqzsUa3DBvNjlIu3bgNrsSmIxv09/CKGpbc9Zg/QoI/y4VRWj7pcSaPz1WFPMmYuLejmaOVLVY=
X-Received: by 2002:a19:f70b:0:b0:513:b90f:f4dd with SMTP id
 z11-20020a19f70b000000b00513b90ff4ddmr2683370lfe.49.1712820226865; Thu, 11
 Apr 2024 00:23:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402105925.905144-1-alex@shruggie.ro> <20240402105925.905144-2-alex@shruggie.ro>
 <dxm3js6qpcw3n4duid4vmhnkxacmzgq4rnvpbdx62pcn34ybzc@q57pst7lyumf>
In-Reply-To: <dxm3js6qpcw3n4duid4vmhnkxacmzgq4rnvpbdx62pcn34ybzc@q57pst7lyumf>
From: Alexandru Ardelean <alex@shruggie.ro>
Date: Thu, 11 Apr 2024 10:23:35 +0300
Message-ID: <CAH3L5QosgOBTYgyHUcstNqh+JMBW93j+dk2JuDhdz1=Sfj8i_Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: display: bridge: lt8912b: document
 'lontium, pn-swap' property
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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

On Sun, Apr 7, 2024 at 11:31=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, Apr 02, 2024 at 01:59:25PM +0300, Alexandru Ardelean wrote:
> > On some HW designs, it's easier for the layout if the P/N pins are swap=
ped.
> > The driver currently has a DT property to do that.
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
> > +    type: boolean
> > +
>
> I'd like to point out the standard `lane-polarities` property defined at
> Documentation/devicetree/bindings/media/video-interfaces.yaml. You can
> define and use it for the corresponding endpoint in the lt8912b schema.
>

Ohhh.
Interesting :)
Many thanks for pointing this out.
This will make things much easier.
Will do a V2 with this in a week or two.
I'm traveling now.

Thanks
Alex



> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> >
> > --
> > 2.44.0
> >
>
> --
> With best wishes
> Dmitry

