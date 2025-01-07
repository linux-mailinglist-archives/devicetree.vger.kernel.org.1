Return-Path: <devicetree+bounces-136093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 308F7A03C97
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DDD21885C9D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8FA01E0DD1;
	Tue,  7 Jan 2025 10:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IE+zz3GL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403A91E0E16
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736246258; cv=none; b=nkRvEIRKUPtAoMotAF/p5Gx+JmjfE59QZmiW+rksn0rycwonHxSXO7ejKKychnPY8Td3AIz6By6LmwHF6ylgTx9NKnTXWLFno6PXO7I/4xkrhAwg3w3BysO3Lb3ZSw+EEagX0oD2sQoekCErXOnG13DbfToEllNxiSF0Qva7jik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736246258; c=relaxed/simple;
	bh=Lh+/n9HnEBEdAUCCTHJ4xwiF31BrECarqzPMxOH/DsQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iJLBVeoH5h8w83SIM+uHZggVvsmL1amSPu7y16lS3ftbgXX5AkEFtxTF7UzONUTemkKqq+33kqjoGu24wSPdLVKZD5Z2Dn9woXbiUcMq8HIJIpQQ89iKHIgONsvF/MO5wtgyFgIjPujA4wUbaImKSLVNWf4arKIyIOUT63OAOMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IE+zz3GL; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3035046d4bfso140265451fa.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 02:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736246252; x=1736851052; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o1O4mtrUA8xb3bKiTsY1DsUybpMpm9vxH06xb7zcVj8=;
        b=IE+zz3GL2NzDqZgq9DgDqeDn3aU/lpDAF3sohEn2AcCq27yLH+MQeuNbdREdXfeiJY
         x7j5F7IZNK7gtdRRHXTV7Sn1RrZDPNEKm4JrqlMRKvdm+HHHqHIYZbdfkeitZ/nbuvSB
         /gXua24gENpmq2FnCsTrzy0DwUuEANUVOeAhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736246252; x=1736851052;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o1O4mtrUA8xb3bKiTsY1DsUybpMpm9vxH06xb7zcVj8=;
        b=Uej6SJGMeNoXFoj1aem9wEVxcQP4EdOP/0ayqPBiSAfdx5bQ+am2qTsiMoXKoBf0zP
         bLoBxX+mGLHAX60Brvy4t/sx3eapWrs4W4kkmsSi/i4wcoSUd3wwJSSPgurED3fUQjiT
         IvYfNDb6Nr0hcAO/A4tZL8KyXOr2XSy1PRMdQ7sDnQQSCla+lo8Y9W2h+99k0A4JwtRa
         M696QyJmyWWNnz4fU1Iu8bZ3TZ6pVhwjfKiWYwOHPStxJ5a2I9vr0p/VzuL4CMgQaBYC
         +eWPQ2UL036yX+9lQXbI8dm7RCA59cz1+TFHzMskuu+nURyU6sG72ahXlCWuXhT2GF5K
         BQAw==
X-Forwarded-Encrypted: i=1; AJvYcCUV6a0uKx2LrE0M34FixZ50AFkPhr3ZGqZaF7VGqc4rLmXouPAE0mSZa555O8FiF6sTtw242/WF0MYb@vger.kernel.org
X-Gm-Message-State: AOJu0YwU8mkygiFBHhZhGbCWbKORxCEIXs3vLtzEXas/isQRQJjz+9lS
	WDREjMvFiiJaWWFDJ+OQhlK3iajxDRXdPW++vHqxYC2Y9v3FAYBzDzvjVSbhCefz0xr+crYbua7
	X1Q==
X-Gm-Gg: ASbGncuoEayWk99y1Pw6pWqOz1cWLekILQOg/T5Sp6tF9rLYvAkCBTWduTUwbQ0LODW
	fYyTzfkqijoibm4I5V0YCWo36B1uBWZ3ZTWyCRXupGhpgj1DIdw1FcIujmgUtuDLF4IJZLh8/KX
	aptOQZH8JYBhjDpoAoAEH2R+RiQE3XFwkrOYzyx6BIv2apW0+29iEWdTNbqxofItlijPRXBWyBD
	2N++ul+KmIumK4EDHHGfYHln2KiKBc8sPzkqYapK3StoPGn43QWL0bQNKYSrNp4bId15EU4H9KQ
	plrfD3oyuTRyF0lhhlc=
X-Google-Smtp-Source: AGHT+IFgMqQx0AZiIXC/9suQX7Ig3yrcnshEpgD40uMUumpxcwwnRPSqXEiTfcO6VSKjv2QHYhXW7g==
X-Received: by 2002:a2e:be94:0:b0:2ff:c242:29c8 with SMTP id 38308e7fff4ca-304685e6139mr181430781fa.35.1736246252365;
        Tue, 07 Jan 2025 02:37:32 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adac821sm59939501fa.59.2025.01.07.02.37.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 02:37:31 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54252789365so8871835e87.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 02:37:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX6ZwDq94cpspx2P/fhsexgoayx87SvqNOJIWwUM81KpyCBFYjvg5Lb7ARYmhUscejoD5njlFELLD35@vger.kernel.org
X-Received: by 2002:ac2:4c47:0:b0:542:22a0:9b35 with SMTP id
 2adb3069b0e04-5422959cf96mr17743735e87.53.1736246250788; Tue, 07 Jan 2025
 02:37:30 -0800 (PST)
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
In-Reply-To: <CAL_JsqLON5xKoYtowKdk49s-YHbk9bq9akZSH1kHdQ_9vxKSQQ@mail.gmail.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 7 Jan 2025 11:37:18 +0100
X-Gmail-Original-Message-ID: <CANiDSCvRfZiMafeJ6==oyduZCzJsv74pg9LbswnjoXFS2nTm=g@mail.gmail.com>
X-Gm-Features: AbW1kvaLMLtXTjaById0Tmpn7DhVioJNoXfnhWB6MVdCLMx7bGwuyZWBT_mX3CM
Message-ID: <CANiDSCvRfZiMafeJ6==oyduZCzJsv74pg9LbswnjoXFS2nTm=g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: usb-device: Add panel-location
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Jacopo Mondi <jacopo@jmondi.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 20 Dec 2024 at 23:00, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Dec 19, 2024 at 6:42=E2=80=AFAM Ricardo Ribalda <ribalda@chromium=
.org> wrote:
> >
> > On Thu, 19 Dec 2024 at 13:24, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Tue, Dec 17, 2024 at 04:24:27PM +0100, Ricardo Ribalda wrote:
> > > > Hi Rob
> > > >
> > > > On Tue, 17 Dec 2024 at 16:02, Rob Herring <robh@kernel.org> wrote:
> > > > >
> > > > > On Thu, Dec 12, 2024 at 09:44:37PM +0000, Ricardo Ribalda wrote:
> > > > > > For some devices like cameras the system needs to know where th=
ey are
> > > > > > mounted.
> > > > >
> > > > > Why do you need this and why only this property and not the dozen=
s
> > > > > others ACPI has?
> > > >
> > > > Userspace needs that information to correctly show it in the UI. Eg=
;
> > > >
> > > > - User facing camera needs to be mirrored during preview.
> > > > - The user facing camera is selected by default during videoconfere=
nces
> > > > - The world facing camera is selected by default when taking a phot=
o
> > > > - User facing camera have different parameter defaults than world f=
acing.
> > >
> > > We already have "orientation" defined for this purpose.
> >
> > Do you mean orientation from
> > bindings/media/video-interface-devices.yaml ?
> >
> > I see a couple of issues:
> > - Orientation has a very specific meaning for USB typeC. I'd prefer if
> > we could avoid using that word.
>
> Yes, but this is tied to the class of the device, not the bus. I find
> defining the position for USB devices confusing.
>
> > - For other applications different than cameras it might be useful to
> > know the positions top, bottom, left, right, which are not available
> > in video-interface-devices
>
> Other devices may need some of the 20 other properties in the ACPI
> table as well.
>
> > - The value "external" does not makes too much sense for listed usb dev=
ices
>
> Then don't use it.
>
> > - It makes our lives easier if dt and acpi have the same meaning (less
> > conversion)
>
> We have little to no input into what ACPI does. If we're just going to
> copy ACPI, then just use ACPI instead.
>
> > All that said, for my specific usecase, reusing orientation from
> > bindings/media/video-interface-devices.yaml works... So if that is
> > what you all prefer I can send a v2 with that.
> > Let me know what you think
>
> We already have something for cameras. Use it.

So you are proposing a change like this?

diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml
b/Documentation/devicetree/bindings/usb/usb-device.yaml
index da890ee60ce6..5322772a4470 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
@@ -37,6 +37,10 @@ properties:
       but a device adhering to this binding may leave out all except
       for "usbVID,PID".

+  orientation:
+    description: If present, specifies the orientation of the usb device.
+    $ref: /schemas/media/video-interface-devices.yaml#/properties/orientat=
ion
+


   reg:
     description: the number of the USB hub port or the USB host-controller
       port to which this device is attached. The range is 1-255.



>
> Rob



--=20
Ricardo Ribalda

