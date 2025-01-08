Return-Path: <devicetree+bounces-136518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A386A0574A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:49:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0FC77A1E7D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48ED91F1302;
	Wed,  8 Jan 2025 09:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dGlEkGEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DF71A8403
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 09:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736329732; cv=none; b=Py8ERwkvlvvlalpk05sgcjmmNUpm06PF9n2VUbpE88x0x1REwtRkWYA4usaAgR/1pWwu7ZcA1lVQJ/R7M+luR0dLarSbj7mjSPX6m8N7M1lQ4Xma4Wf3pFao4zlhhmd6Ua9t7ZihKcnq83ALPONVRg7y4vKgBAW6k1XFEiw/65c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736329732; c=relaxed/simple;
	bh=dQncI0ktjel5xSqHF4JOm7H0UK94916iCb8DNc4ymJQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BWyGXehgCwAh73uqNSvk9wFU0reIlqDv2XVi2OdCPYMBWkWq507N5ndmDT3jS68vX66iFlV/xTtCxK0O1CHIg08s+1k5g34IigRbwAp0RLc1BOf+MgVYkTCQLueJsS/U4sXZIplhq3qMH8z7TpqCTeu+Ii38JZZFtX/pOxMJyhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dGlEkGEM; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5401c52000dso18136170e87.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 01:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736329728; x=1736934528; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Flo+9iY1gDry166LdLpjdtxxxCGnY5ixUXhDKm+YgbI=;
        b=dGlEkGEMVbMP9IS+MDbsXrQ0l65Wr/y5IfLcGzwqP4eGc0/IBdvYU/+cphFunVEsT6
         s2BiOSPAOwSI8JOqgJno43RCjuBZtTxLoujUsGpVe8ZyIaBV0poMv0dxp7FhSOYLrlFH
         6e9PSKpR2KQrWWuh38PgRqzv7nmDt+xehtNmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736329728; x=1736934528;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Flo+9iY1gDry166LdLpjdtxxxCGnY5ixUXhDKm+YgbI=;
        b=r8LPHYQYk7X1xE6bNrn053iwNW6Blp1vCvR+6Pr+Sm2RARLM/D3YIzquo3g6Gk8Fn4
         3yTMo3mOItTyJsl7xdzmpexDCj4vYY7VqXI2xRAGKH3ncxFadJcaElavR1v2Yc0amle6
         nrUdK/Q6qEgYiutesB3FpPGnbrSNdkFSX4YuQvZwyu6DJl1nw3YpkZnQ4vRGpmp+NKXQ
         zO5By7pUVp4Vg0AJaXeln90TVa8KF0TYKH+QpEJJJ/iUZ+43a0cuIYCbKEv8D8DkMyLY
         Fg2ZtA4o5IzvFGtGNmliMsby+oceLkXeS9AKJ6PxNtXfVgDSkfDwwJPj1gdOTifsnJj7
         fgaA==
X-Forwarded-Encrypted: i=1; AJvYcCXra2i3U2zSdhg6uB7HQZ/guXR5xuavDf45bXTOm00qJaYRfSL1hOfzTGYy0BL/plYAi5JLj8HAWgmj@vger.kernel.org
X-Gm-Message-State: AOJu0YzBpWOmajgco6YVOvR0U2fbneg15EcXwhmDqgn0gsdupRKaEllv
	SnuuFb8jyFpHcAxV6prE8PzH0SIUjJ8CHuW0+8Vw76UhYk/SxsMVK6YQP4R4Mn34vzZZJz5hyN9
	TOA==
X-Gm-Gg: ASbGncs07N7XO+SA7qTb9cf7k2821cSFRJyqi7EPR3s/pMcKbpw3lbBE1/ZHbsJNirB
	qcMADwwgXNEhTRdqiwGiYDklLDvvxC8iinZPywsbOWCwSTAcolMA1QCJ+Tib4eNybqc9o5RPzBk
	R8lxIaZ433cOKUKOzr/SresEQa9qW+HkG45kaKlKYj8SnlTKIvMHDyzFmkNI8Cyxj5/f0xsLQMP
	e8OzDktDcLHtUuhhaSxaidKqR55kaO3zTyIGhANjOQFZDhT7DwMufTJgxvI7NjQVoSejKPV4wnh
	fkbWjRjK6LWoav5jsbE=
X-Google-Smtp-Source: AGHT+IHiD0MMVS0h11s3sanQ2aHHEuIjghH3ruioLGvSea+ZYDYaZASUfBD7jApu1b5Ca6YJE+E5Jg==
X-Received: by 2002:a05:6512:3c85:b0:53e:3a7c:c0b5 with SMTP id 2adb3069b0e04-542845a703emr614601e87.10.1736329728495;
        Wed, 08 Jan 2025 01:48:48 -0800 (PST)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5422360010esm5524992e87.79.2025.01.08.01.48.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 01:48:47 -0800 (PST)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5401c52000dso18136140e87.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 01:48:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXf9v1hT9Y4D8TnyT/4pTGXr/ZXuFi8VKAI4KskBstQtSK98YoymI2/xI4t1/sSVjKPwxuuCdImSSqr@vger.kernel.org
X-Received: by 2002:a05:6512:b98:b0:53e:94f9:8c86 with SMTP id
 2adb3069b0e04-542848162f1mr595357e87.35.1736329726841; Wed, 08 Jan 2025
 01:48:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241212-usb-orientation-v1-1-0b69adf05f37@chromium.org>
 <20241217145612.GA1652259-robh@kernel.org> <CANiDSCu_mFQQVkDb_gSyXeb1_Tu+DxSeHYvGsGp6XVDuOdPyjQ@mail.gmail.com>
 <20241219122453.GA4008177-robh@kernel.org> <CANiDSCt+LAE-LzCDZgrWP_V-Jc-ywTF1-PuQtyDJMfV9v_ZzGA@mail.gmail.com>
 <CAL_JsqLON5xKoYtowKdk49s-YHbk9bq9akZSH1kHdQ_9vxKSQQ@mail.gmail.com>
 <CANiDSCvRfZiMafeJ6==oyduZCzJsv74pg9LbswnjoXFS2nTm=g@mail.gmail.com>
 <Z347NA00DMiyl1VN@kekkonen.localdomain> <CANiDSCs37N79MnFZxvBJn2Jw3062EdLRuVP4EkJVfJcfMMuPAg@mail.gmail.com>
 <Z35BnplCOVyboSBs@kekkonen.localdomain>
In-Reply-To: <Z35BnplCOVyboSBs@kekkonen.localdomain>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Wed, 8 Jan 2025 10:48:34 +0100
X-Gmail-Original-Message-ID: <CANiDSCteoJ_Lk_G6KQKyK1MWikEHF36bYaSHwFEhJh0BFxb6Dw@mail.gmail.com>
X-Gm-Features: AbW1kvbkaO87sj3WnOUVmKsmBXbh4rZ7j_XWg9A-agvWreDOsdce04sffPDW3Wg
Message-ID: <CANiDSCteoJ_Lk_G6KQKyK1MWikEHF36bYaSHwFEhJh0BFxb6Dw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: usb-device: Add panel-location
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Sakari

On Wed, 8 Jan 2025 at 10:13, Sakari Ailus <sakari.ailus@linux.intel.com> wrote:
>
> Hi Ricardo,
>
> On Wed, Jan 08, 2025 at 09:51:34AM +0100, Ricardo Ribalda wrote:
> > > > diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml
> > > > b/Documentation/devicetree/bindings/usb/usb-device.yaml
> > > > index da890ee60ce6..5322772a4470 100644
> > > > --- a/Documentation/devicetree/bindings/usb/usb-device.yaml
> > > > +++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
> > > > @@ -37,6 +37,10 @@ properties:
> > > >        but a device adhering to this binding may leave out all except
> > > >        for "usbVID,PID".
> > > >
> > > > +  orientation:
> > > > +    description: If present, specifies the orientation of the usb device.
> > > > +    $ref: /schemas/media/video-interface-devices.yaml#/properties/orientation
> > >
> > > Do you need this for a camera or for other kinds of USB devices, too?
> > >
> > > What about e.g. the rotation property?
> >
> > I need it for cameras. I do not have a usecase for rotation now, but I
> > might have in the future.
>
> If it's specific for cameras (UVC kind I presume?), wouldn't it be
> reasonable to add specific bindings for it?
Yes, they are uvc cameras

Do you mean something like this:

diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml
b/Documentation/devicetree/bindings/usb/usb-device.yaml
index da890ee60ce6..bc80c1e7360f 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
@@ -75,6 +75,12 @@ patternProperties:
           configuration value.
         maxItems: 1

+      image-sensor:
+        description: Video interface properties associated to USB cameras,
+          typically UVC compliant.
+        allOf:
+          - $ref: /schemas/media/video-interface-devices.yaml#
+
 required:
   - reg

@@ -113,6 +119,9 @@ examples:
             interface@0 {
                 compatible = "usbif123,abcd.config1.0";
                 reg = <0 1>;
+                image-sensor {
+                  orientation: 0;
+                };
             };

             interface@0,2 {
>
> --
> Sakari Ailus



--
Ricardo Ribalda

