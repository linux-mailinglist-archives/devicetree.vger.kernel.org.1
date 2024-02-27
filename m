Return-Path: <devicetree+bounces-46337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 488C4868EC4
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 12:26:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD551B249BC
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 11:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4DA113A248;
	Tue, 27 Feb 2024 11:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2xupuvuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB8E139589
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 11:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709033204; cv=none; b=BkVxcjcFOsTQLYRrVVSQZ/ZN5lXMtBjooVZROcM7GhyTWp2KOsFR/3FclGgUwTSyy/G+6X893f8FuCq8Sx/O3f2NwpJfOg3llVU9mwiwqUD9LVQ+LMxN1yKvGtQhayBuKSTu5Xz+s8B5wyYvHIyi2Jyid4v4iAZ6Lrg1ukA9jJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709033204; c=relaxed/simple;
	bh=6LEpNgOi1GSNcqOgi2znAWD1/XFEjfJ+3V/za/pe8xU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G5XIBTokqAwdl3EpagsbDensDFAbd+zYC+fzayVSiOi2IBP7cNI/Xi8Ek5mUko30kjfFh0hkhIIlwDquJDA7LepCGi1qpZumpUXrv6M7cnb6hiKLN/uVsxFy88+BnUwCMm65vcgixlay8Sx4lkNffZBN6wN2plMXinJ8uzCLS6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2xupuvuA; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-7c48e13e0d7so236366339f.1
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 03:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709033201; x=1709638001; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FmS1fmjtFOepekF9OghDxYFpAXEvAMzTVh2ZnQm3g+0=;
        b=2xupuvuAeeZf/QvZiwB/dTWtTrCWa2oKR73mNfX+5DHgFChWxMNfQiGLSQfseBerb+
         jn5TeA8ivauKylYK2QkuFyoD86N0MH2RQugmAt0WBwb6O/YVGKA26F5b87KnxdfddxS2
         4j8FUsG9fA9f87JPJEhXlsylMHZkKKnDpYFTkv7ojEgVfw3aZ4E8T63fpEHik656EYOq
         YvwDhYt0vBtHPMmj0eanjb5HI1P8Fz1xPeg+sgPZySpc9NePWSveKYcVkpk8YWRKeil8
         ZAjfFeNP+uo67+iRAzjz8lGFmVMNeVd6FWNYNeaxs7eUdl8NJMfi5Lzdfak8YBWXpXg9
         nzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709033201; x=1709638001;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FmS1fmjtFOepekF9OghDxYFpAXEvAMzTVh2ZnQm3g+0=;
        b=cODdgXrODamIlUEIe5clnwLSxBn8zIRTPY946U/xQI3dXo8227psSyzUOwt+6Ekzkk
         QjZ8+C5dBFaZt0SdTXTGQIZBT6eBDHBPS9QghCfyNtYpx82vmsU154+Xqi/Z/i/bWFje
         0G9Yt44uCUb5j17TkeQfReUT2aWjf/UnQDaPNVubEZZ2+H80ldff/OXlY3kGmfjR+cvn
         WnxtTpptnapPj95wJIr/5Z7yTUXGta5o4F0M5S4MX3JTp/BlItUBqhNaTxeOu2RrHXc2
         rtEAf8C2szvY4unUOq1tNZKsDTZ3beRBr8bFXBBu0AGKUGJwHiMCO0QGM/LxjYIiH1gy
         z88g==
X-Forwarded-Encrypted: i=1; AJvYcCUZ+jrgbZqJ6e1GeO+ZArchUnUhDfmUN6oqRg7awZx6WDrTDzFLaPzm6AIvypxK4mEhmFDo/BWM53UxPsCt69JTh3MYirUPVDU7Bw==
X-Gm-Message-State: AOJu0YxsxYr6Ls0lTXhyfyuWS+LyIcw09JG6ZgdzDGUTZfEVSr12deqw
	bdfWr2kHXNPqPRqCZQMDdMtGVafZXU4KhzTDp6+oSB+nb3kvCtNGFaEi26ar7bOcvo4r2tNtHBP
	VHzyCsQGPWKy+BCOpo3QzsJP4d0NJrXKU7upA
X-Google-Smtp-Source: AGHT+IE2fW6rEQg7HcmlpVe7tfHw8EZXpdlB0fKwjX3otFyjepZ7vQ2TUz43JF/WSjntx66KZF//1lllOC+iM+l+o0c=
X-Received: by 2002:a05:6602:f10:b0:7c7:b5a6:42f4 with SMTP id
 hl16-20020a0566020f1000b007c7b5a642f4mr8390166iob.3.1709033201056; Tue, 27
 Feb 2024 03:26:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com> <20240221160215.484151-10-panikiel@google.com>
 <310cefcb-a4d5-4f4f-a482-ba2ff08a57f6@linaro.org> <CAM5zL5rQsYuo3+rW9+YPmvUg9PtNiR0Dy59e8Kf787ranfLh3Q@mail.gmail.com>
 <e2ae7bfc-fb51-4a60-bb52-c6ccca7a4189@linaro.org> <CAM5zL5pz0K5ro4-UjiYojM4h9Lqo_af5ZmH1FoZ_ajde_3+Dcg@mail.gmail.com>
 <e210b318-dcd7-4c0e-b08e-e1c4da1a8cd9@linaro.org>
In-Reply-To: <e210b318-dcd7-4c0e-b08e-e1c4da1a8cd9@linaro.org>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Tue, 27 Feb 2024 12:26:30 +0100
Message-ID: <CAM5zL5rDKMbgN7P=KF2ZayN5ipUB7AYpVccZdLunSUNTR4_f1A@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] ARM: dts: chameleonv3: Add video device nodes
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, chromeos-krk-upstreaming@google.com, 
	ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 26, 2024 at 6:30=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/02/2024 13:27, Pawe=C5=82 Anikiel wrote:
> > On Mon, Feb 26, 2024 at 1:07=E2=80=AFPM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 26/02/2024 12:09, Pawe=C5=82 Anikiel wrote:
> >>> On Mon, Feb 26, 2024 at 10:15=E2=80=AFAM Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 21/02/2024 17:02, Pawe=C5=82 Anikiel wrote:
> >>>>> Add device nodes for the video system present on the Chameleon v3.
> >>>>> It consists of six framebuffers and two Intel Displayport receivers=
.
> >>>>>
> >>>>> Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
> >>>>> ---
> >>>>
> >>>> ...
> >>>>
> >>>>> +             dprx_sst: dp-receiver@c0064000 {
> >>>>> +                     compatible =3D "intel,dprx-20.0.1";
> >>>>> +                     reg =3D <0xc0064000 0x800>;
> >>>>> +                     interrupt-parent =3D <&dprx_sst_irq>;
> >>>>> +                     interrupts =3D <0 IRQ_TYPE_EDGE_RISING>;
> >>>>> +                     intel,max-link-rate =3D <0x1e>;
> >>>>
> >>>> Rate is not in hex! Rate is in Hz, at least usually...
> >>>>
> >>>> Fix your bindings...
> >>>
> >>> This is the DisplayPort link rate, for which the allowed values are
> >>> 8.1 Gbps, 5.4 Gbps, 2.7 Gbps, or 1.62 Gbps. The standard way to encod=
e
> >>> them (used in the DisplayPort DPCD registers and this device's
> >>
> >> Then it is in bps or some other units:
> >>
> >> https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas=
/property-units.yaml
> >>
> >>> configuration) is by multiples of 0.27Gbps. This value (AFAIK) is
> >>> usually represented in hex, so 8.1Gbps would be 0x1e.
> >>
> >> No, the value is represented in logical units. Frequency in Hz. Rate i=
n
> >> bps/kbps/etc. Voltage in volts.
> >
> > Okay, thanks for the info. So if I understand correctly, the max link
> > rate should be represented in bps in the devicetree, and then be
>
> or kbps

The one that's already present in dtschema is kBps (kilobytes per
second) which isn't right for this case IMO.

>
> > converted to the per 0.27Gbps value by the driver?
>
> If driver needs some register-based value, then yes.
>
> >
> > One problem is that the values here are too large to be represented in
> > bps (since the datatype is uint32). Can the property be in Mbps
> > instead?
>
> Can be. You can submit a patch to dtschema (patch to DT spec list or
> github pull request) adding '-mbps' as well.

I sent a PR with both kbps and mbps.

