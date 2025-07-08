Return-Path: <devicetree+bounces-194086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2CFAFCA19
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:09:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE5A356159B
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 12:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CA82D8DC8;
	Tue,  8 Jul 2025 12:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ETdcJTfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB79238D53
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 12:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751976585; cv=none; b=dmHMc74dH6RlRiHwmBK7FO1ycM9RHo6Znq2QxZVwVDuUn+XVDeosdEoHBvpvPt6HDTF+XDips5DGmlbAQ1ouKHLs9qQYyQT4oGPozcrSIxD8Te5wQpRF2Dze0pmogDsqZ9thNiRnKVaU6ywWqwFwXLaircGAOnuapQaibilUwN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751976585; c=relaxed/simple;
	bh=dyXUujHTnYYHwk8qxqITJQ9BmoorGjnNWrcKqYxBG+s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dDXlAWvXTTvVn0WJtXr8ptoeJP9sY5ncMYlxmkoZlRR4+qUocCb5Nq8ktwWznzb++QP9FF/0eBp/escyvvQ/Ri0odB5RPe6JtRA4m0b5/IQW1F7NxWL3fccBmmJJbndP8wGdCgHihFyGa6Fv/09Wbeh1MX8paFlnj0WoNrYyJcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ETdcJTfI; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-32b49ac6431so34488891fa.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 05:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751976582; x=1752581382; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LMrJyzq+XGe4XZwQoy4OMfTD6mqi6tUL9Fg2sLgmdig=;
        b=ETdcJTfIA00FVACpUMO3DEU/72yFyGQod6+8RRRc5I1uau7kOzKTNtYTL0WhtnzDdH
         X4OoSXXlGYsQKg7nMZIAUaIPrprx8jG3XdSpzKnTtY2qSjqXF/veCoRfWWiHupGJLodi
         MHU6Dhh6kIQhsZ8y7XZAG5i6ZlnsN0XwqGQPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751976582; x=1752581382;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LMrJyzq+XGe4XZwQoy4OMfTD6mqi6tUL9Fg2sLgmdig=;
        b=NxdJo7QUvopwykxx1cq1puI6uiDQz+LpeqDlNo+XNuxtSBQIwYhuHW5wI+xLGZFWhR
         X046NVhmf+M/GDM3Jx2LNZOPUcvClpOeK7De3NR0IaSKqscj+xFKoXMuolkbnLqfFK6A
         v/1Aera9k/BkZI6J8AsuybQMSFFBAk8QuckArebHJKNDkOs3EL11oyZ1b3pbG7v3LwDI
         ZZCMd8UFk3EpiLyDZfteksXfG+ZKXMIpcMLZ2/UlZWcfDFjzsn4X3DqIzuG3mc3KjJ7x
         pHwap2FXKk8asAE0kg1hSOjOB2ag4zg3LOHjVnTTrU46JGrMmp7MV55805LsA2pteN+N
         y52w==
X-Forwarded-Encrypted: i=1; AJvYcCXdsKjbA15sgyCLHKTf8CRIi/qaBky5I5kXLRccI5Y5vN/IMbxnSFLyW+wSCLoOlT9/eVTWMYNe2JAJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxMFz25cqd0Y5fvr0Sv/uSKMDfJ8y97RMxM0NnMDHJWoKBkdg73
	ghIqqkxR12kvUFICdl0iZum0pHq0BPE3zj8ZHM/Mzi0yGO+8LbdnEW5WxDO220QxjtxPGMBnXC0
	oMgmvP/hz
X-Gm-Gg: ASbGncv+PQ45oEzTd7QSGDQiVZJOST1HLmLAewFZGeeQYozgyorMxRZVNnGod7mwqL0
	k+SOq8zv5u9Id+X1LEopCE8fabs2fUc//sKz5m/q5OoJKDnLh5IfsfB487xC8Lxlm3ADxD3xjlQ
	HvH76y43IF4F2dXuHri9XUvr+PR3RsLT02J8SyovjPTVYxO+0ncYhotZp9rXMpm/J82gx2FHQv4
	aWVFLbGgOf8sSd3KBP1m7Ue0ZDTdtZu3C4ZmkzhiiFGCgeY9bSniVFWWqxBfydth3I+qL8gZahC
	AcIJ92sSOQeQhNE/Jaj0/MWI4eEEciTjRlEaXv34eROhZAR8Eru5FWeGoGpbeRVE23DZGm/gRA4
	sUxnSzXXof5vNuaBnmKA7f4Cst0ka
X-Google-Smtp-Source: AGHT+IHl6q6H6BF4p7NO0tAZgICR/uZfXUmO6cEcjN7znr5ei5L5rwBHwlZMNOPYDNClwf7yKrU81A==
X-Received: by 2002:a05:651c:98e:b0:32c:bc69:e921 with SMTP id 38308e7fff4ca-32f39aa8f97mr9033071fa.9.1751976581893;
        Tue, 08 Jul 2025 05:09:41 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32e1b144c24sm15674391fa.91.2025.07.08.05.09.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 05:09:41 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-32b595891d2so32806251fa.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 05:09:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUeu91UCLquNVvcyk1aN8nYI85udn084pgyMEAnsbzvBCJSJr0Z3yACtKJFC3g4vXCeBwBrfRwzHTlC@vger.kernel.org
X-Received: by 2002:a2e:8e3c:0:b0:32f:1c0f:fb74 with SMTP id
 38308e7fff4ca-32f39b2409amr8468421fa.22.1751976580861; Tue, 08 Jul 2025
 05:09:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-5-5710f9d030aa@chromium.org> <aGw_1T_Edm8--gXW@kekkonen.localdomain>
 <CANiDSCup2iRx+0RcaijSmbn04nBY4Ui9=esCPFsQzOKe=up9Gg@mail.gmail.com> <aGzjTRSco39mKJcf@kekkonen.localdomain>
In-Reply-To: <aGzjTRSco39mKJcf@kekkonen.localdomain>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 8 Jul 2025 14:09:28 +0200
X-Gmail-Original-Message-ID: <CANiDSCsqEHTnbvzLMoe_yxi8JRzp+2PQe3ksXhD=Y3+AqC_9hw@mail.gmail.com>
X-Gm-Features: Ac12FXyPY8jp6OO5y2rUkBGCgm071L0BZh3437cx12a8IP9Dnshn9sW-VSnuQ7c
Message-ID: <CANiDSCsqEHTnbvzLMoe_yxi8JRzp+2PQe3ksXhD=Y3+AqC_9hw@mail.gmail.com>
Subject: Re: [PATCH v2 05/12] media: ipu-bridge: Use v4l2_fwnode for unknown rotations
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 8 Jul 2025 at 11:22, Sakari Ailus <sakari.ailus@linux.intel.com> wr=
ote:
>
> Hi Ricardo,
>
> On Tue, Jul 08, 2025 at 11:16:25AM +0200, Ricardo Ribalda wrote:
> > Hi Sakari
> >
> > Thanks for your review
> >
> > On Mon, 7 Jul 2025 at 23:45, Sakari Ailus <sakari.ailus@linux.intel.com=
> wrote:
> > >
> > > Hi Ricardo,
> > >
> > > On Thu, Jun 05, 2025 at 05:52:58PM +0000, Ricardo Ribalda wrote:
> > > > The v4l2_fwnode_device_properties contains information about the
> > > > rotation. Use it if the ssdb data is inconclusive.
> > >
> > > As SSDB and _PLD provide the same information, are they always aligne=
d? Do
> > > you have any experience on how is this actually in firmware?
> >
> > Not really, in ChromeOS we are pretty lucky to control the firmware.
> >
> > @HdG Do you have some experience/opinion here?
> >
> > >
> > > _PLD is standardised so it would seem reasonable to stick to that -- =
if it
> > > exists. Another approach could be to pick the one that doesn't transl=
ate to
> > > a sane default (0=C2=B0).
> >
> > I'd rather stick to the current prioritization unless there is a
> > strong argument against it. Otherwise there is a chance that we will
> > have regressions (outside CrOS)
>
> My point was rather there are no such rules currently for rotation: only
> SSDB was being used by the IPU bridge to obtain the rotation value,
> similarly only _PLD is consulted when it comes to orientation.

So something like this:?

static u32 ipu_bridge_parse_rotation(struct acpi_device *adev,
                                     struct ipu_sensor_ssdb *ssdb,
                                     struct
v4l2_fwnode_device_properties *props)
{
        if (props->rotation !=3D V4L2_FWNODE_PROPERTY_UNSET)
                return props->rotation;

        switch (ssdb->degree) {
        case IPU_SENSOR_ROTATION_NORMAL:
                return 0;
        case IPU_SENSOR_ROTATION_INVERTED:
                return 180;
        }

        dev_warn(ADEV_DEV(adev),
                 "Unknown rotation %d. Assume 0 degree rotation\n",
                 ssdb->degree);
        return 0;
}




>
> --
> Regards,
>
> Sakari Ailus



--=20
Ricardo Ribalda

