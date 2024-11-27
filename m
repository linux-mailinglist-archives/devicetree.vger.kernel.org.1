Return-Path: <devicetree+bounces-124913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 098679DA53F
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47C86B211E5
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F9B1946A0;
	Wed, 27 Nov 2024 10:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cSVedzIU"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0843C140360
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732701644; cv=none; b=CMG9YyjoMKkx3fa83bfOdX236RmMMAPliIYVaKjfOO3LGOoR0FtF12rIG2UiqN5QspGtpn+V1/ydG6+BHCpLDMiQ0XH+HjGIFiq3x23vuOSxaNhYVlvWekV57g69YXa5z5daOhexMnquU5Ks0MYK5I/0CTu+vkGIOhz66UU13/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732701644; c=relaxed/simple;
	bh=zRYsYbGf/cDqfHjKWgxhLuI5WTXoZE+rVWtmg6t0YJw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qI6W2sIPFC8eF5vbu3W/89qtZxY8LNNn9ltRvtAHl/gkNzPUG1VXDTQ0MzPo5x7asMK2HdCHfcoj03VZlN5qDRCfjmzJRc6F69/Sos41ZlJ33dEhrvgI5879ze8E8wc8307NjCFCHAp9m7HFfHskNMWFfxBbc9czhQ9f4melmDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cSVedzIU; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732701642;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s0wPBAaMjSnNTX8RqBZAQUWmuUVI0sWePXuVzRgZ7Qw=;
	b=cSVedzIUwf/RTRIJDAotC2W5j7pQNetA0/yGVeDgUT3C2VEKnOcnJQkr7D/F2fUDuuEICS
	f/JmJxSssF+gute1mSm9RQF7Q9axvnyf2VzP1qNhtlOAE9kqAcPhVIKQ4iS0W8vC/SvX+x
	ARHbYDAMKXmis1PsiHLd2JyfJfd/Dww=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-517-fg0xS5WhNW6H3k9x7AfAlA-1; Wed, 27 Nov 2024 05:00:39 -0500
X-MC-Unique: fg0xS5WhNW6H3k9x7AfAlA-1
X-Mimecast-MFC-AGG-ID: fg0xS5WhNW6H3k9x7AfAlA
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5f1f269bb5cso227395eaf.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:00:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732701639; x=1733306439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s0wPBAaMjSnNTX8RqBZAQUWmuUVI0sWePXuVzRgZ7Qw=;
        b=HXUId3SsLQNITzw6mRtsPGpjoLOYsgK6vf6u/IDL6H00Ae12XcLW0dgFNsaLiOjNlN
         4lqXUf81/woT+PTTrWka12hKxoi+8CX9AvREi5eXUh/DE8ofUuCNYh4+32SjkIrrPPgA
         wd2gLe+TDvgjiTQyRUpH4qYl38809tTfURrlyU9OvPklJkez50UUNZ/dKAFpIG06VaS7
         9LgETSGhSYR5XxVGefsogt3YOyZCh6gZJtEUYRS2Uf84pxslIBAZw0Y/YyvkzP7mkuza
         SdDQ5XYNFFUvn2zJ+ejMFexNDLpKK4XfpDclvqklyZ22yCVi2ZmK9tkTJ8EGXdX/EbN7
         Mq2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUvPg8yQzWV+DQWWUcLMChO3Kt5DKa34UXrrF53Jd8tp3ib1/FnIDOM+MDJ+I/6JP1BgS4ZEKXgDXyN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyel1XZ4bYEq+y0Wm0l5wQr38Ckg1Z7xBV3z7azgKrEA9C7ysaY
	4B8nqhgRpNM3onh2+vdZKY7Q3xgOPk6aHtGsrKtxBOPJ+k5SSwpD+Y1gxctLbHL7sWA/WjK6f/5
	GzNr5rBR5341eAP/SpiKwfYTD5PMJD7bib12U72LO8dVtXlko3kiol6O7qVcWxDqmis27ayfZtL
	tr1DiOFhH24uecauKSyxCaSykMAeKxbp7YWg==
X-Gm-Gg: ASbGncs+8RRJg8De9AWGc4Euc8aJSzbI5u8EfgUHFtLdPVDq8tIbtJHBqROKoiP+oBG
	xQL8i8Tsu0qKXRDvV1ZmxIpBvh4I5BA==
X-Received: by 2002:a05:6870:c152:b0:27b:b2e0:6af with SMTP id 586e51a60fabf-29dc3fb9cd2mr485573fac.2.1732701638783;
        Wed, 27 Nov 2024 02:00:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxVRugfM1h6RP4poBOiNX8qRrDOehBisqylVM+eiLebPmXpS2cMHMjj58RYifbv8/vFUZK4bOyHhB27KGFiHc=
X-Received: by 2002:a05:6870:c152:b0:27b:b2e0:6af with SMTP id
 586e51a60fabf-29dc3fb9cd2mr485554fac.2.1732701638432; Wed, 27 Nov 2024
 02:00:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241126-am69sk-dt-usb-v1-1-aa55aed7b89e@redhat.com> <2nuncc5rscu6h74ylaiu6yozg34aoigaj5d4uzvdtolt5q7bmv@6hacpxyb2532>
In-Reply-To: <2nuncc5rscu6h74ylaiu6yozg34aoigaj5d4uzvdtolt5q7bmv@6hacpxyb2532>
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Wed, 27 Nov 2024 11:00:27 +0100
Message-ID: <CALE0LRtUN2N_Z05jH_BMSg7yvirSRob0pSErmQxTu8AatmODgw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
To: s-vadapalli <s-vadapalli@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Nov 27, 2024 at 9:27=E2=80=AFAM s-vadapalli <s-vadapalli@ti.com> wr=
ote:
>
> On Tue, Nov 26, 2024 at 11:08:19AM +0100, Enric Balletbo i Serra wrote:
>
> Hello Enric,
>
> > From: Dasnavis Sabiya <sabiya.d@ti.com>
> >
> > AM69 SK board has two stacked USB3 connectors:
> >    1. USB3 (Stacked TypeA + TypeC)
> >    2. USB3 TypeA Hub interfaced through TUSB8041.
> >
> > The board uses SERDES0 Lane 3 for USB3 IP. So update the
> > SerDes lane info for PCIe and USB. Add the pin mux data
> > and enable USB 3.0 support with its respective SERDES settings.
> >
> > Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
> > Signed-off-by: Enric Balletbo i Serra <eballetb@redhat.com>
> > ---
> > I've been carrying this patch for quite long time in my builds to have
> > support for USB on my AM69-SK board without problems. For some reason t=
his
> > patch was never send to upstream or I couldn't find it. So I took the
> > opportunity, now that I rebased my build, to send upstream.
> >
> > I have maintained the original author of the downstream patch as is
> > basically his work.
> > ---
> >  arch/arm64/boot/dts/ti/k3-am69-sk.dts | 33 +++++++++++++++++++++++++++=
++++++
> >  1 file changed, 33 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dt=
s/ti/k3-am69-sk.dts
>
> [...]
>
> > +&usb0 {
> > +     status =3D "okay";
> > +     dr_mode =3D "host";
>
> Since the Type-C interface is also connected to USB0, shouldn't "dr_mode"
> be "otg"? Also, has the Type-C interface been tested with this patch?
> Please let me know.
>

Yes, all usb from the board were tested. I'll try otg mode for the
Type-C interface and resend the patch.

$ lsusb -t
/:  Bus 001.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=3DHub, Driver=3Dhub/4p, 480M
        |__ Port 001: Dev 003, If 0, Class=3DHub, Driver=3Dhub/4p, 480M
            |__ Port 001: Dev 004, If 0, Class=3DHuman Interface Device,
Driver=3Dusbhid, 1.5M
            |__ Port 001: Dev 004, If 1, Class=3DHuman Interface Device,
Driver=3Dusbhid, 1.5M
        |__ Port 002: Dev 005, If 0, Class=3DMass Storage,
Driver=3Dusb-storage, 480M
/:  Bus 002.Port 001: Dev 001, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 5000=
M
    |__ Port 001: Dev 002, If 0, Class=3DHub, Driver=3Dhub/4p, 5000M
        |__ Port 003: Dev 004, If 0, Class=3DMass Storage,
Driver=3Dusb-storage, 5000M
        |__ Port 004: Dev 003, If 0, Class=3DMass Storage,
Driver=3Dusb-storage, 5000M

Thanks,
   Enric
> [...]
>
> Regards,
> Siddharth.
>


