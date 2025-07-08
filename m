Return-Path: <devicetree+bounces-194154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61576AFCE67
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 17:00:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E41FC1885AA9
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561052E0B5D;
	Tue,  8 Jul 2025 14:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="T+q0A+tc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931C22E041C
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751986724; cv=none; b=bYwHlCqHouxaJMOkkxo+BavrW4dYB3wCPaxBstEjp8fat6ja3JL1TZHw0uEgUSNfomqzxPeaTZK/YoZVwcHQ/GADLJDQH5YuIrO7G4zhYY+Hju2UQ+r5XFsnH3nuQrEIf4Q/Jdlc7wD8mpkk/7heHbz8+5ryAenf6GR2Kt4z6iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751986724; c=relaxed/simple;
	bh=HGTpVxEEJn+4Z8F/2vfMSUr1vMJyUPWvL7WDo/xrVN0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=luLV3sbeR+MY1MCjxMLsfSVwDlUc7bAF+kGtWc4G89F9FqPHByeTZtoncwsRqcDYnK23TbtinzWUG/AXOtHz1J1tpnyqojmBoB+gBh5av2gjXeKcQ2hDEX5GTcaBcO1fp7IvBSKWv0Nw6eAG2KsnhfZR6aCbegXzXHFPltC7gLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=T+q0A+tc; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-32ce252c3acso20266041fa.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751986719; x=1752591519; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lsjEc9LmeMOTlM1N3xvojXwrwvOBpBec3I1iTp5IlDk=;
        b=T+q0A+tcLVdKzFU+yOQ0k6BaEoc5AWhk6k1MsMu1cITFtwXThAqJb3RmygaNIGf31N
         /szqbHwyxB3ZDe52XXbLvE7d0L4NhKQeysd22oYr2EbvjSnkNB7jbV82mixUCasB11aC
         TXWBvIuoqia2FREsX6TsRxkhQefcmr9IWrw38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751986719; x=1752591519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lsjEc9LmeMOTlM1N3xvojXwrwvOBpBec3I1iTp5IlDk=;
        b=FRijX+gjt2HtYGrdhGSCCl9tVvu4rUhoc1xlxro92M8vL2rT4jG4n9A13yhx3qG08G
         C7YKYYVcCaralaT89br5fVrEFF6bt6HinyUk5FXgsQDKDqF3OU0aOQ93JyUms0a5jdYA
         st5zvn/Q4+109H8wX1PpZHgnuMgeVALhLDmydsbWlle46PmrE+stqz6NxLr+DKAy/vSb
         WN1k8Ks8ktUKdPTL+xDfzHo6rk3VWyme7Kow3YpHZfbSjFH9SdPlmuDzAMz98tJseeR4
         TutEeOFPeAnZUYli7zKEMxHHfgRu2bICLW9fgCXM0bBLfd3ezzqwoNM2mAQ11zMvB3Wk
         H30Q==
X-Forwarded-Encrypted: i=1; AJvYcCUGHIqJgFNebXGsMKDRmKPj2/BsPRin3/DYO9Cxkui1vATlrUisvij0iyuU+79vHKjKf/cNTou3sRk2@vger.kernel.org
X-Gm-Message-State: AOJu0YwTM+4MasCNxqEXW6NqNupBwvCuE9eQ4qpjDUIL9+3aTQ+k1YKB
	4muQQ+Quybaf0oHoMPhZbZFrb/IJea0PJiOduJ2i0J0CKUAXkuJ5yNZM8i9MfiF66q0UOJ23hiK
	U+HtfWxMR
X-Gm-Gg: ASbGncs4tKvxM31v7K/623eb6IkAliOSyhN9eLFpYh1SGfWPvEADWgGfpmeEJJYp8Wi
	l8XG3ETabxkFCHfHL+U2UZxKLuiDBqz4uWq4mO7DUjAlCTY6IvNK87NyPtD5eVvzyTKkkqVcEw3
	IS7rYQwnRA2qdVgzlCKcf8TxqL8KGX3qXd8DcTZuYzdwUBFAiiJnA90wrxBqon4PxoJ/My+jj66
	5Hy3jncKcHkIAsU339GTdkoOO/Z7o6BozX9wJCfCFFp/OGzsq2ipvfp6D8GS6TVXhyRD7LzhDeV
	2LkA+xzbGPw0n/HSODKqEBuX5BeSHxRbLfwHoi4bl9sJShoiOG+sRt/vKRgJo+DwIjcRFzRyabn
	cHmqCOYl56qmJz5kjnlyAI6g3
X-Google-Smtp-Source: AGHT+IHi0gH9l4Rb8FCnUZh5WWRKyKT6/kemOCVZkBPlnjM5S+b4eCtSbixb0prDw1Ut5jsbz/oL6Q==
X-Received: by 2002:a2e:bc1a:0:b0:32f:3e83:4379 with SMTP id 38308e7fff4ca-32f3e83474emr5345961fa.38.1751986719342;
        Tue, 08 Jul 2025 07:58:39 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32e1afc1c87sm14556191fa.28.2025.07.08.07.58.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:58:38 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-553dceb345eso5259766e87.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:58:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVNB//xA/e30LrQMv5HQSS1Mw237NTvLue5YOga7nEeNKcAx3IX0ykgauNJnCyN/GgV6AJu0wSUOkr7@vger.kernel.org
X-Received: by 2002:a05:6512:ac8:b0:553:3028:75ae with SMTP id
 2adb3069b0e04-556de076273mr5727105e87.46.1751986718368; Tue, 08 Jul 2025
 07:58:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-5-5710f9d030aa@chromium.org> <aGw_1T_Edm8--gXW@kekkonen.localdomain>
 <CANiDSCup2iRx+0RcaijSmbn04nBY4Ui9=esCPFsQzOKe=up9Gg@mail.gmail.com>
 <aGzjTRSco39mKJcf@kekkonen.localdomain> <CANiDSCsqEHTnbvzLMoe_yxi8JRzp+2PQe3ksXhD=Y3+AqC_9hw@mail.gmail.com>
 <aG0NI2V0Tfh2HZ6O@kekkonen.localdomain>
In-Reply-To: <aG0NI2V0Tfh2HZ6O@kekkonen.localdomain>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 8 Jul 2025 16:58:25 +0200
X-Gmail-Original-Message-ID: <CANiDSCu=wU_Oi7CLPcYTC3Xf_pGbDroaVitPAiAj7ND5pXy-6g@mail.gmail.com>
X-Gm-Features: Ac12FXx3zIz7eqEIVhgOFhdr-yyA-k97hK_sQ1bucetsK4DfnOnoX-8awEd9Sp8
Message-ID: <CANiDSCu=wU_Oi7CLPcYTC3Xf_pGbDroaVitPAiAj7ND5pXy-6g@mail.gmail.com>
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

On Tue, 8 Jul 2025 at 14:21, Sakari Ailus <sakari.ailus@linux.intel.com> wr=
ote:
>
> Hi Ricardo,
>
> On Tue, Jul 08, 2025 at 02:09:28PM +0200, Ricardo Ribalda wrote:
> > On Tue, 8 Jul 2025 at 11:22, Sakari Ailus <sakari.ailus@linux.intel.com=
> wrote:
> > >
> > > Hi Ricardo,
> > >
> > > On Tue, Jul 08, 2025 at 11:16:25AM +0200, Ricardo Ribalda wrote:
> > > > Hi Sakari
> > > >
> > > > Thanks for your review
> > > >
> > > > On Mon, 7 Jul 2025 at 23:45, Sakari Ailus <sakari.ailus@linux.intel=
.com> wrote:
> > > > >
> > > > > Hi Ricardo,
> > > > >
> > > > > On Thu, Jun 05, 2025 at 05:52:58PM +0000, Ricardo Ribalda wrote:
> > > > > > The v4l2_fwnode_device_properties contains information about th=
e
> > > > > > rotation. Use it if the ssdb data is inconclusive.
> > > > >
> > > > > As SSDB and _PLD provide the same information, are they always al=
igned? Do
> > > > > you have any experience on how is this actually in firmware?
> > > >
> > > > Not really, in ChromeOS we are pretty lucky to control the firmware=
.
> > > >
> > > > @HdG Do you have some experience/opinion here?
> > > >
> > > > >
> > > > > _PLD is standardised so it would seem reasonable to stick to that=
 -- if it
> > > > > exists. Another approach could be to pick the one that doesn't tr=
anslate to
> > > > > a sane default (0=C2=B0).
> > > >
> > > > I'd rather stick to the current prioritization unless there is a
> > > > strong argument against it. Otherwise there is a chance that we wil=
l
> > > > have regressions (outside CrOS)
> > >
> > > My point was rather there are no such rules currently for rotation: o=
nly
> > > SSDB was being used by the IPU bridge to obtain the rotation value,
> > > similarly only _PLD is consulted when it comes to orientation.
> >
> > So something like this:?
> >
> > static u32 ipu_bridge_parse_rotation(struct acpi_device *adev,
> >                                      struct ipu_sensor_ssdb *ssdb,
> >                                      struct
> > v4l2_fwnode_device_properties *props)
> > {
> >         if (props->rotation !=3D V4L2_FWNODE_PROPERTY_UNSET)
> >                 return props->rotation;
> >
> >         switch (ssdb->degree) {
> >         case IPU_SENSOR_ROTATION_NORMAL:
> >                 return 0;
> >         case IPU_SENSOR_ROTATION_INVERTED:
> >                 return 180;
> >         }
> >
> >         dev_warn(ADEV_DEV(adev),
> >                  "Unknown rotation %d. Assume 0 degree rotation\n",
> >                  ssdb->degree);
>
> Maybe:
>
>         acpi_handle_warn(acpi_device_handle(adev), ...);
>
> ?
>
> >         return 0;
> > }
>
> Looks good to me. Maybe something similar for orientation?

Do you mean using ssdb also for orientation or using acpi_handle_warn?


I cannot find anything related to orientation for SSDB
https://github.com/coreboot/coreboot/blob/main/src/drivers/intel/mipi_camer=
a/chip.h#L150

Am I looking in the right place?

Regards!
>
> --
> Regards,
>
> Sakari Ailus



--=20
Ricardo Ribalda

