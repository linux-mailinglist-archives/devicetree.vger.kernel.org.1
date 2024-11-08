Return-Path: <devicetree+bounces-120314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 297109C2029
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 16:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 139BA1C23E21
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 15:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E04B1F6678;
	Fri,  8 Nov 2024 15:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fOcN++J+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D684A1F6664
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 15:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731078858; cv=none; b=Y49Di3cX9WABBPVIi/q/76zaCRGJdUpFK9g433NM2hXwN42lRH8FDrUY9dss3BuIA9uTFtCrfhKf+ULFbw8ywaNebHAHM7DHfx3TQLyRVHGJ8HkxZMEQpOs6XEqpir+xNlp/EBihtY7Bz62WvvV6vyGd5r2sawB1a3SfuDEh5+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731078858; c=relaxed/simple;
	bh=smY4h117cYR692sX/32C1fiEi9e/UhXm2F3tRfVz2OE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SipiM22RC3SH36f227hvxrRvqaOSDcsv+BWON4lZjxcHa6bneMTUwY0cIkt/7lDbZ1IVaLxN+KqW4f9J2LI1qboRh1aK1Go5bXoQwKxflTRDpvajxxLcFgTsClqXqqY71QF06Gk6UsobBWEuPs4vqUFjfQgLKYvq2shocuU6MKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fOcN++J+; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f4d8ef66so3384715e87.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 07:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731078852; x=1731683652; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EbptqwjZLNdVS9qjZW7J9pwzy8My758ZGi0V06mo61U=;
        b=fOcN++J+O7rjb3qWqdUYU1GVX1fvlvvH/RwQoiwYjTctSUUmMh2B9E6vvYXaSyemZv
         3TrE1UYjWuLziIkJT7VUKhulnGTV1BoONOKh4PNtqbMb40nq/fXSbBK6xQ9olxwdG/no
         c4v13hYm0MTzbajmZYaL+20Tk7z0/YXKve4EQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731078852; x=1731683652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EbptqwjZLNdVS9qjZW7J9pwzy8My758ZGi0V06mo61U=;
        b=VYz2XeyooxmTaQc5XXKENrTmPX2blEBQyTUBWXSfnqnqsfRFGHLzIK3ZoXhAC8+AXC
         AgeVMuI5ewjsm3veXQVW5Mz+vRuWyTuzzsS3d9hq6u5H8GuidEzXbr2wFRgy6dk4BZJa
         2t5IWDUa+l1ICh8mWkEXmDehLthF+dO71pP32BP0j308ElQl1zggc9AVv36s4RDcsMiV
         xU93Z+Tbvo9Df4b7nvcYyeqXC+JjVLR304DQCi0JTLZgKZzksc8acIJagcUp+LiVkhlF
         okTCNdR0VI5bBRUZeJ0dYIvARNlpfaNzAf/7zQjxKMQTr+QNVL2qjyIC0RTmTvE70prx
         OM9w==
X-Forwarded-Encrypted: i=1; AJvYcCV0U10W7yHGMLEiBidZy3vmxRmhnWB4Y66wAsByjwgJGUhwdCC9cmuMfe12W+iJpL/EtpJBMilJ62VQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb4CtmnyINVHyQYaQ/FIpe9+3SxPDvtDW9IRoN2epHfkRvOJJL
	KdJ5BEnnxXu8ETSebvLju0FBKSMzIfWMF3JAqoiBaRtymhnfisD90tmBsdE3SSlTcnU/5U9ufeK
	Cag==
X-Google-Smtp-Source: AGHT+IF8tacmAuWeALq6xxREnc2QVEqWZI4GKkJUwU86vBoh9hlZ4ssZobTSqTDtEVHZGiKR7nsPHQ==
X-Received: by 2002:a05:6512:3d8f:b0:539:96a1:e4cf with SMTP id 2adb3069b0e04-53d862cb3d1mr1843005e87.32.1731078852433;
        Fri, 08 Nov 2024 07:14:12 -0800 (PST)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d826aeb8fsm641570e87.239.2024.11.08.07.14.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 07:14:11 -0800 (PST)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f84907caso2403215e87.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 07:14:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXgYnqRmAb7L7c+mYmknW99cL3R3kZ9KMfQd1xnfgTNaUIST4JxguTMsbagOLPqv6a14IiaupP4eueL@vger.kernel.org
X-Received: by 2002:ac2:4c4a:0:b0:539:e97c:cb10 with SMTP id
 2adb3069b0e04-53d862ebfc3mr1963420e87.40.1731078850184; Fri, 08 Nov 2024
 07:14:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241108120311.87795-1-charles.goodix@gmail.com>
 <20241108120311.87795-2-charles.goodix@gmail.com> <173107281349.1752060.15353696141928017835.robh@kernel.org>
In-Reply-To: <173107281349.1752060.15353696141928017835.robh@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 8 Nov 2024 07:13:53 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Uc0PZZp-rupazy9tGfZMssGET=904cdUJXbhS=fMCUvg@mail.gmail.com>
Message-ID: <CAD=FV=Uc0PZZp-rupazy9tGfZMssGET=904cdUJXbhS=fMCUvg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: input: Goodix GT7986U SPI HID Touchscreen
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Charles Wang <charles.goodix@gmail.com>, conor.dooley@microchip.com, 
	linux-input@vger.kernel.org, bentiss@kernel.org, linux-kernel@vger.kernel.org, 
	dmitry.torokhov@gmail.com, hbarnor@chromium.org, devicetree@vger.kernel.org, 
	jikos@kernel.org, krzk@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 8, 2024 at 5:33=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
>
> On Fri, 08 Nov 2024 20:03:10 +0800, Charles Wang wrote:
> > The Goodix GT7986U touch controller report touch data according to the
> > HID protocol through the SPI bus. However, it is incompatible with
> > Microsoft's HID-over-SPI protocol.
> >
> > NOTE: these bindings are distinct from the bindings used with the
> > GT7986U when the chip is running I2C firmware. For some background,
> > see discussion on the mailing lists in the thread:
> >
> > https://lore.kernel.org/r/20241018020815.3098263-2-charles.goodix@gmail=
.com
> >
> > Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> > ---
> >  .../bindings/input/goodix,gt7986u-spifw.yaml  | 75 +++++++++++++++++++
> >  1 file changed, 75 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/input/goodix,gt79=
86u-spifw.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/input/goodix,gt7986u-spifw.yaml:16:7:=
 [error] syntax error: mapping values are not allowed here (syntax)

FWIW, I think it's objecting to the "NOTE: " in the description
looking like yaml. Maybe just change it to "Note that". It's also a
good idea to get yourself setup to validate your bindings _before_
posting them to the list.

-Doug

